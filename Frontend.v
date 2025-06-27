module Frontend( // @[:chipyard.TestHarness.RocketConfig.fir@228716.2]
  input         gated_clock, // @[:chipyard.TestHarness.RocketConfig.fir@228717.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@228718.4]
  input         auto_icache_master_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@228719.4]
  output        auto_icache_master_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228719.4]
  output [31:0] auto_icache_master_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@228719.4]
  input         auto_icache_master_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228719.4]
  input  [2:0]  auto_icache_master_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@228719.4]
  input  [3:0]  auto_icache_master_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@228719.4]
  input  [63:0] auto_icache_master_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@228719.4]
  input         auto_icache_master_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@228719.4]
  input         io_cpu_might_request, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [39:0] io_cpu_req_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_req_bits_speculative, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_sfence_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_sfence_bits_rs1, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_sfence_bits_rs2, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [38:0] io_cpu_sfence_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_resp_ready, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output        io_cpu_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output        io_cpu_resp_bits_btb_taken, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output        io_cpu_resp_bits_btb_bridx, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output [4:0]  io_cpu_resp_bits_btb_entry, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output [7:0]  io_cpu_resp_bits_btb_bht_history, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output [39:0] io_cpu_resp_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output [31:0] io_cpu_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output        io_cpu_resp_bits_xcpt_pf_inst, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output        io_cpu_resp_bits_xcpt_ae_inst, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output        io_cpu_resp_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_btb_update_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [4:0]  io_cpu_btb_update_bits_prediction_entry, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [38:0] io_cpu_btb_update_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_btb_update_bits_isValid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [38:0] io_cpu_btb_update_bits_br_pc, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_cpu_btb_update_bits_cfiType, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_bht_update_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [7:0]  io_cpu_bht_update_bits_prediction_history, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [38:0] io_cpu_bht_update_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_bht_update_bits_branch, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_bht_update_bits_taken, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_bht_update_bits_mispredict, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_cpu_flush_icache, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output [39:0] io_cpu_npc, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output        io_ptw_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output        io_ptw_req_bits_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  output [26:0] io_ptw_req_bits_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_ae, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [53:0] io_ptw_resp_bits_pte_ppn, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_pte_d, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_pte_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_pte_g, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_pte_u, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_pte_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_pte_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_pte_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_pte_v, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_resp_bits_level, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_resp_bits_homogeneous, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [3:0]  io_ptw_ptbr_mode, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_status_debug, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_status_prv, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_0_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_pmp_0_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_0_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_0_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_0_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [29:0] io_ptw_pmp_0_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [31:0] io_ptw_pmp_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_1_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_pmp_1_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_1_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_1_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_1_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [29:0] io_ptw_pmp_1_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [31:0] io_ptw_pmp_1_mask, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_2_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_pmp_2_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_2_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_2_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_2_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [29:0] io_ptw_pmp_2_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [31:0] io_ptw_pmp_2_mask, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_3_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_pmp_3_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_3_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_3_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_3_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [29:0] io_ptw_pmp_3_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [31:0] io_ptw_pmp_3_mask, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_4_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_pmp_4_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_4_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_4_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_4_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [29:0] io_ptw_pmp_4_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [31:0] io_ptw_pmp_4_mask, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_5_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_pmp_5_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_5_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_5_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_5_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [29:0] io_ptw_pmp_5_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [31:0] io_ptw_pmp_5_mask, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_6_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_pmp_6_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_6_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_6_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_6_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [29:0] io_ptw_pmp_6_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [31:0] io_ptw_pmp_6_mask, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_7_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [1:0]  io_ptw_pmp_7_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_7_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_7_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input         io_ptw_pmp_7_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [29:0] io_ptw_pmp_7_addr, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [31:0] io_ptw_pmp_7_mask, // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
  input  [63:0] io_ptw_customCSRs_csrs_0_value // @[:chipyard.TestHarness.RocketConfig.fir@228720.4]
);
  wire  icache_clock; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_reset; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_auto_master_out_a_ready; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_auto_master_out_a_valid; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire [31:0] icache_auto_master_out_a_bits_address; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_auto_master_out_d_valid; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire [2:0] icache_auto_master_out_d_bits_opcode; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire [3:0] icache_auto_master_out_d_bits_size; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire [63:0] icache_auto_master_out_d_bits_data; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_auto_master_out_d_bits_corrupt; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_io_req_ready; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_io_req_valid; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire [38:0] icache_io_req_bits_addr; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire [31:0] icache_io_s1_paddr; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_io_s1_kill; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_io_s2_kill; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_io_resp_valid; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire [31:0] icache_io_resp_bits_data; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_io_resp_bits_replay; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_io_resp_bits_ae; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  icache_io_invalidate; // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
  wire  fq_clock; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_reset; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_enq_ready; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_enq_valid; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_enq_bits_btb_taken; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_enq_bits_btb_bridx; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [4:0] fq_io_enq_bits_btb_entry; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [7:0] fq_io_enq_bits_btb_bht_history; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [39:0] fq_io_enq_bits_pc; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [31:0] fq_io_enq_bits_data; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [1:0] fq_io_enq_bits_mask; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_enq_bits_xcpt_pf_inst; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_enq_bits_xcpt_ae_inst; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_enq_bits_replay; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_deq_ready; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_deq_valid; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_deq_bits_btb_taken; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_deq_bits_btb_bridx; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [4:0] fq_io_deq_bits_btb_entry; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [7:0] fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [39:0] fq_io_deq_bits_pc; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [31:0] fq_io_deq_bits_data; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  fq_io_deq_bits_replay; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire [4:0] fq_io_mask; // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
  wire  tlb_clock; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_reset; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_req_ready; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_req_valid; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [39:0] tlb_io_req_bits_vaddr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_resp_miss; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_resp_paddr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_resp_pf_inst; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_resp_ae_inst; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_resp_cacheable; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_sfence_valid; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_sfence_bits_rs1; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_sfence_bits_rs2; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [38:0] tlb_io_sfence_bits_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_req_ready; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_req_valid; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_req_bits_valid; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [26:0] tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_valid; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_ae; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [53:0] tlb_io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_pte_d; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_pte_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_pte_g; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_pte_u; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_pte_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_pte_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_pte_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_pte_v; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_resp_bits_level; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_resp_bits_homogeneous; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [3:0] tlb_io_ptw_ptbr_mode; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_status_debug; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_status_prv; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_0_cfg_l; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_pmp_0_cfg_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_0_cfg_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_0_cfg_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_0_cfg_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [29:0] tlb_io_ptw_pmp_0_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_ptw_pmp_0_mask; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_1_cfg_l; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_pmp_1_cfg_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_1_cfg_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_1_cfg_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_1_cfg_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [29:0] tlb_io_ptw_pmp_1_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_ptw_pmp_1_mask; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_2_cfg_l; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_pmp_2_cfg_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_2_cfg_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_2_cfg_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_2_cfg_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [29:0] tlb_io_ptw_pmp_2_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_ptw_pmp_2_mask; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_3_cfg_l; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_pmp_3_cfg_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_3_cfg_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_3_cfg_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_3_cfg_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [29:0] tlb_io_ptw_pmp_3_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_ptw_pmp_3_mask; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_4_cfg_l; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_pmp_4_cfg_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_4_cfg_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_4_cfg_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_4_cfg_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [29:0] tlb_io_ptw_pmp_4_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_ptw_pmp_4_mask; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_5_cfg_l; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_pmp_5_cfg_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_5_cfg_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_5_cfg_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_5_cfg_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [29:0] tlb_io_ptw_pmp_5_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_ptw_pmp_5_mask; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_6_cfg_l; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_pmp_6_cfg_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_6_cfg_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_6_cfg_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_6_cfg_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [29:0] tlb_io_ptw_pmp_6_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_ptw_pmp_6_mask; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_7_cfg_l; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [1:0] tlb_io_ptw_pmp_7_cfg_a; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_7_cfg_x; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_7_cfg_w; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_ptw_pmp_7_cfg_r; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [29:0] tlb_io_ptw_pmp_7_addr; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire [31:0] tlb_io_ptw_pmp_7_mask; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  tlb_io_kill; // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
  wire  btb_clock; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_reset; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [38:0] btb_io_req_bits_addr; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_resp_valid; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_resp_bits_taken; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_resp_bits_bridx; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [38:0] btb_io_resp_bits_target; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [4:0] btb_io_resp_bits_entry; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [7:0] btb_io_resp_bits_bht_history; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_resp_bits_bht_value; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_btb_update_valid; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [4:0] btb_io_btb_update_bits_prediction_entry; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [38:0] btb_io_btb_update_bits_pc; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_btb_update_bits_isValid; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [38:0] btb_io_btb_update_bits_br_pc; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [1:0] btb_io_btb_update_bits_cfiType; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_bht_update_valid; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [7:0] btb_io_bht_update_bits_prediction_history; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [38:0] btb_io_bht_update_bits_pc; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_bht_update_bits_branch; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_bht_update_bits_taken; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_bht_update_bits_mispredict; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_bht_advance_valid; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_bht_advance_bits_bht_value; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_ras_update_valid; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [1:0] btb_io_ras_update_bits_cfiType; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [38:0] btb_io_ras_update_bits_returnAddr; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_ras_head_valid; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire [38:0] btb_io_ras_head_bits; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  btb_io_flush; // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
  wire  _T_2; // @[Frontend.scala 90:29:chipyard.TestHarness.RocketConfig.fir@228743.4]
  wire  _T_3; // @[Frontend.scala 90:52:chipyard.TestHarness.RocketConfig.fir@228744.4]
  wire  _T_4; // @[Frontend.scala 90:75:chipyard.TestHarness.RocketConfig.fir@228745.4]
  wire  _T_5; // @[Frontend.scala 90:102:chipyard.TestHarness.RocketConfig.fir@228746.4]
  wire  _T_6; // @[Frontend.scala 90:10:chipyard.TestHarness.RocketConfig.fir@228747.4]
  wire  _T_7; // @[Frontend.scala 90:130:chipyard.TestHarness.RocketConfig.fir@228748.4]
  wire  _T_9; // @[Frontend.scala 90:9:chipyard.TestHarness.RocketConfig.fir@228750.4]
  wire  _T_10; // @[Frontend.scala 90:9:chipyard.TestHarness.RocketConfig.fir@228751.4]
  reg  s1_valid; // @[Frontend.scala 101:21:chipyard.TestHarness.RocketConfig.fir@228762.4]
  reg [31:0] _RAND_0;
  reg  s2_valid; // @[Frontend.scala 102:25:chipyard.TestHarness.RocketConfig.fir@228763.4]
  reg [31:0] _RAND_1;
  wire  _T_12; // @[Frontend.scala 104:5:chipyard.TestHarness.RocketConfig.fir@228765.4]
  wire  _T_14; // @[Frontend.scala 105:6:chipyard.TestHarness.RocketConfig.fir@228767.4]
  wire  _T_15; // @[Frontend.scala 105:45:chipyard.TestHarness.RocketConfig.fir@228768.4]
  wire  _T_16; // @[Frontend.scala 105:58:chipyard.TestHarness.RocketConfig.fir@228769.4]
  wire  _T_17; // @[Frontend.scala 105:55:chipyard.TestHarness.RocketConfig.fir@228770.4]
  wire  _T_18; // @[Frontend.scala 105:41:chipyard.TestHarness.RocketConfig.fir@228771.4]
  wire  _T_19; // @[Frontend.scala 104:40:chipyard.TestHarness.RocketConfig.fir@228772.4]
  wire  _T_21; // @[Frontend.scala 106:6:chipyard.TestHarness.RocketConfig.fir@228774.4]
  wire  _T_24; // @[Frontend.scala 106:55:chipyard.TestHarness.RocketConfig.fir@228777.4]
  wire  _T_25; // @[Frontend.scala 106:41:chipyard.TestHarness.RocketConfig.fir@228778.4]
  wire  s0_fq_has_space; // @[Frontend.scala 105:70:chipyard.TestHarness.RocketConfig.fir@228779.4]
  wire  s0_valid; // @[Frontend.scala 107:35:chipyard.TestHarness.RocketConfig.fir@228780.4]
  reg [39:0] s1_pc; // @[Frontend.scala 109:18:chipyard.TestHarness.RocketConfig.fir@228782.4]
  reg [63:0] _RAND_2;
  reg  s1_speculative; // @[Frontend.scala 110:27:chipyard.TestHarness.RocketConfig.fir@228783.4]
  reg [31:0] _RAND_3;
  reg [39:0] s2_pc; // @[Frontend.scala 111:22:chipyard.TestHarness.RocketConfig.fir@228787.4]
  reg [63:0] _RAND_4;
  reg  s2_btb_resp_valid; // @[Frontend.scala 112:44:chipyard.TestHarness.RocketConfig.fir@228788.4]
  reg [31:0] _RAND_5;
  reg  s2_btb_resp_bits_taken; // @[Frontend.scala 113:29:chipyard.TestHarness.RocketConfig.fir@228789.4]
  reg [31:0] _RAND_6;
  reg  s2_btb_resp_bits_bridx; // @[Frontend.scala 113:29:chipyard.TestHarness.RocketConfig.fir@228789.4]
  reg [31:0] _RAND_7;
  reg [4:0] s2_btb_resp_bits_entry; // @[Frontend.scala 113:29:chipyard.TestHarness.RocketConfig.fir@228789.4]
  reg [31:0] _RAND_8;
  reg [7:0] s2_btb_resp_bits_bht_history; // @[Frontend.scala 113:29:chipyard.TestHarness.RocketConfig.fir@228789.4]
  reg [31:0] _RAND_9;
  reg  s2_btb_resp_bits_bht_value; // @[Frontend.scala 113:29:chipyard.TestHarness.RocketConfig.fir@228789.4]
  reg [31:0] _RAND_10;
  wire  s2_btb_taken; // @[Frontend.scala 114:40:chipyard.TestHarness.RocketConfig.fir@228790.4]
  reg  s2_tlb_resp_miss; // @[Frontend.scala 115:24:chipyard.TestHarness.RocketConfig.fir@228791.4]
  reg [31:0] _RAND_11;
  reg  s2_tlb_resp_pf_inst; // @[Frontend.scala 115:24:chipyard.TestHarness.RocketConfig.fir@228791.4]
  reg [31:0] _RAND_12;
  reg  s2_tlb_resp_ae_inst; // @[Frontend.scala 115:24:chipyard.TestHarness.RocketConfig.fir@228791.4]
  reg [31:0] _RAND_13;
  reg  s2_tlb_resp_cacheable; // @[Frontend.scala 115:24:chipyard.TestHarness.RocketConfig.fir@228791.4]
  reg [31:0] _RAND_14;
  wire  s2_xcpt; // @[Frontend.scala 116:37:chipyard.TestHarness.RocketConfig.fir@228792.4]
  reg  s2_speculative; // @[Frontend.scala 117:27:chipyard.TestHarness.RocketConfig.fir@228793.4]
  reg [31:0] _RAND_15;
  reg  s2_partial_insn_valid; // @[Frontend.scala 118:38:chipyard.TestHarness.RocketConfig.fir@228794.4]
  reg [31:0] _RAND_16;
  reg [15:0] s2_partial_insn; // @[Frontend.scala 119:28:chipyard.TestHarness.RocketConfig.fir@228795.4]
  reg [31:0] _RAND_17;
  reg  wrong_path; // @[Frontend.scala 120:23:chipyard.TestHarness.RocketConfig.fir@228796.4]
  reg [31:0] _RAND_18;
  wire [39:0] _T_29; // @[Frontend.scala 122:22:chipyard.TestHarness.RocketConfig.fir@228797.4]
  wire [39:0] _T_30; // @[Frontend.scala 122:29:chipyard.TestHarness.RocketConfig.fir@228798.4]
  wire [39:0] s1_base_pc; // @[Frontend.scala 122:20:chipyard.TestHarness.RocketConfig.fir@228799.4]
  wire [39:0] ntpc; // @[Frontend.scala 123:25:chipyard.TestHarness.RocketConfig.fir@228801.4]
  wire  _T_32; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@228810.4]
  wire  _T_33; // @[Frontend.scala 128:29:chipyard.TestHarness.RocketConfig.fir@228811.4]
  wire  _T_34; // @[Frontend.scala 128:26:chipyard.TestHarness.RocketConfig.fir@228812.4]
  wire  _T_35; // @[Frontend.scala 128:72:chipyard.TestHarness.RocketConfig.fir@228813.4]
  reg  _T_37; // @[Frontend.scala 128:58:chipyard.TestHarness.RocketConfig.fir@228815.4]
  reg [31:0] _RAND_19;
  wire  s2_replay; // @[Frontend.scala 128:48:chipyard.TestHarness.RocketConfig.fir@228817.4]
  wire  _T_36; // @[Frontend.scala 128:69:chipyard.TestHarness.RocketConfig.fir@228814.4]
  wire  _T_105; // @[Frontend.scala 210:45:chipyard.TestHarness.RocketConfig.fir@228980.4]
  wire  _T_106; // @[Frontend.scala 211:34:chipyard.TestHarness.RocketConfig.fir@228981.4]
  wire  taken_prevRVI; // @[Frontend.scala 211:31:chipyard.TestHarness.RocketConfig.fir@228982.4]
  wire [15:0] taken_bits; // @[Frontend.scala 213:37:chipyard.TestHarness.RocketConfig.fir@228986.4]
  wire [31:0] taken_rviBits; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228989.4]
  wire  taken_rviJump; // @[Frontend.scala 217:34:chipyard.TestHarness.RocketConfig.fir@228993.4]
  wire  taken_rviJALR; // @[Frontend.scala 218:34:chipyard.TestHarness.RocketConfig.fir@228995.4]
  wire  _T_299; // @[Frontend.scala 232:29:chipyard.TestHarness.RocketConfig.fir@229194.4]
  wire  taken_rviBranch; // @[Frontend.scala 216:36:chipyard.TestHarness.RocketConfig.fir@228991.4]
  wire  _T_300; // @[Frontend.scala 232:53:chipyard.TestHarness.RocketConfig.fir@229195.4]
  wire  _T_301; // @[Frontend.scala 232:40:chipyard.TestHarness.RocketConfig.fir@229196.4]
  wire  _T_302; // @[Frontend.scala 232:17:chipyard.TestHarness.RocketConfig.fir@229197.4]
  wire  _T_108; // @[Frontend.scala 212:47:chipyard.TestHarness.RocketConfig.fir@228984.4]
  wire  taken_valid; // @[Frontend.scala 212:44:chipyard.TestHarness.RocketConfig.fir@228985.4]
  wire [15:0] _T_127; // @[Frontend.scala 223:26:chipyard.TestHarness.RocketConfig.fir@229014.4]
  wire  taken_rvcJump; // @[Frontend.scala 223:26:chipyard.TestHarness.RocketConfig.fir@229015.4]
  wire [15:0] _T_169; // @[Frontend.scala 227:26:chipyard.TestHarness.RocketConfig.fir@229060.4]
  wire  _T_170; // @[Frontend.scala 227:26:chipyard.TestHarness.RocketConfig.fir@229061.4]
  wire  _T_172; // @[Frontend.scala 227:62:chipyard.TestHarness.RocketConfig.fir@229063.4]
  wire  taken_rvcJALR; // @[Frontend.scala 227:49:chipyard.TestHarness.RocketConfig.fir@229064.4]
  wire  _T_303; // @[Frontend.scala 233:27:chipyard.TestHarness.RocketConfig.fir@229198.4]
  wire  _T_163; // @[Frontend.scala 225:24:chipyard.TestHarness.RocketConfig.fir@229052.4]
  wire  taken_rvcJR; // @[Frontend.scala 225:46:chipyard.TestHarness.RocketConfig.fir@229055.4]
  wire  _T_304; // @[Frontend.scala 233:38:chipyard.TestHarness.RocketConfig.fir@229199.4]
  wire  _T_122; // @[Frontend.scala 221:28:chipyard.TestHarness.RocketConfig.fir@229007.4]
  wire  _T_124; // @[Frontend.scala 221:60:chipyard.TestHarness.RocketConfig.fir@229009.4]
  wire  taken_rvcBranch; // @[Frontend.scala 221:52:chipyard.TestHarness.RocketConfig.fir@229010.4]
  wire  _T_305; // @[Frontend.scala 233:60:chipyard.TestHarness.RocketConfig.fir@229200.4]
  wire  _T_306; // @[Frontend.scala 233:47:chipyard.TestHarness.RocketConfig.fir@229201.4]
  wire  _T_307; // @[Frontend.scala 233:15:chipyard.TestHarness.RocketConfig.fir@229202.4]
  wire  taken_taken; // @[Frontend.scala 232:71:chipyard.TestHarness.RocketConfig.fir@229203.4]
  wire  taken_idx; // @[Frontend.scala 247:13:chipyard.TestHarness.RocketConfig.fir@229548.4]
  wire  _T_607; // @[Frontend.scala 256:15:chipyard.TestHarness.RocketConfig.fir@229571.6]
  wire  _T_372; // @[Frontend.scala 210:45:chipyard.TestHarness.RocketConfig.fir@229302.4]
  wire  _T_373; // @[Frontend.scala 211:34:chipyard.TestHarness.RocketConfig.fir@229303.4]
  wire  taken_prevRVI_1; // @[Frontend.scala 211:31:chipyard.TestHarness.RocketConfig.fir@229304.4]
  wire [15:0] taken_bits_1; // @[Frontend.scala 213:37:chipyard.TestHarness.RocketConfig.fir@229308.4]
  wire [31:0] taken_rviBits_1; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229311.4]
  wire  taken_rviJALR_1; // @[Frontend.scala 218:34:chipyard.TestHarness.RocketConfig.fir@229317.4]
  wire  _T_381; // @[Frontend.scala 219:34:chipyard.TestHarness.RocketConfig.fir@229319.4]
  wire  _T_382; // @[Frontend.scala 219:31:chipyard.TestHarness.RocketConfig.fir@229320.4]
  wire [4:0] _T_384; // @[Frontend.scala 219:66:chipyard.TestHarness.RocketConfig.fir@229322.4]
  wire  _T_385; // @[Frontend.scala 219:66:chipyard.TestHarness.RocketConfig.fir@229323.4]
  wire  taken_rviReturn_1; // @[Frontend.scala 219:46:chipyard.TestHarness.RocketConfig.fir@229324.4]
  wire  _T_575; // @[Frontend.scala 234:61:chipyard.TestHarness.RocketConfig.fir@229526.4]
  wire  _T_375; // @[Frontend.scala 212:47:chipyard.TestHarness.RocketConfig.fir@229306.4]
  wire  taken_valid_1; // @[Frontend.scala 212:44:chipyard.TestHarness.RocketConfig.fir@229307.4]
  wire [15:0] _T_429; // @[Frontend.scala 225:24:chipyard.TestHarness.RocketConfig.fir@229373.4]
  wire  _T_430; // @[Frontend.scala 225:24:chipyard.TestHarness.RocketConfig.fir@229374.4]
  wire  _T_432; // @[Frontend.scala 225:59:chipyard.TestHarness.RocketConfig.fir@229376.4]
  wire  taken_rvcJR_1; // @[Frontend.scala 225:46:chipyard.TestHarness.RocketConfig.fir@229377.4]
  wire [4:0] _T_434; // @[Frontend.scala 226:49:chipyard.TestHarness.RocketConfig.fir@229379.4]
  wire  _T_435; // @[Frontend.scala 226:49:chipyard.TestHarness.RocketConfig.fir@229380.4]
  wire  taken_rvcReturn_1; // @[Frontend.scala 226:29:chipyard.TestHarness.RocketConfig.fir@229381.4]
  wire  _T_576; // @[Frontend.scala 234:83:chipyard.TestHarness.RocketConfig.fir@229527.4]
  wire  _T_577; // @[Frontend.scala 234:74:chipyard.TestHarness.RocketConfig.fir@229528.4]
  wire  taken_predictReturn_1; // @[Frontend.scala 234:49:chipyard.TestHarness.RocketConfig.fir@229529.4]
  wire  _T_616; // @[Frontend.scala 260:26:chipyard.TestHarness.RocketConfig.fir@229584.8]
  wire  _T_114; // @[Frontend.scala 219:34:chipyard.TestHarness.RocketConfig.fir@228997.4]
  wire  _T_115; // @[Frontend.scala 219:31:chipyard.TestHarness.RocketConfig.fir@228998.4]
  wire [4:0] _T_117; // @[Frontend.scala 219:66:chipyard.TestHarness.RocketConfig.fir@229000.4]
  wire  _T_118; // @[Frontend.scala 219:66:chipyard.TestHarness.RocketConfig.fir@229001.4]
  wire  taken_rviReturn; // @[Frontend.scala 219:46:chipyard.TestHarness.RocketConfig.fir@229002.4]
  wire  _T_308; // @[Frontend.scala 234:61:chipyard.TestHarness.RocketConfig.fir@229204.4]
  wire [4:0] _T_167; // @[Frontend.scala 226:49:chipyard.TestHarness.RocketConfig.fir@229057.4]
  wire  _T_168; // @[Frontend.scala 226:49:chipyard.TestHarness.RocketConfig.fir@229058.4]
  wire  taken_rvcReturn; // @[Frontend.scala 226:29:chipyard.TestHarness.RocketConfig.fir@229059.4]
  wire  _T_309; // @[Frontend.scala 234:83:chipyard.TestHarness.RocketConfig.fir@229205.4]
  wire  _T_310; // @[Frontend.scala 234:74:chipyard.TestHarness.RocketConfig.fir@229206.4]
  wire  taken_predictReturn; // @[Frontend.scala 234:49:chipyard.TestHarness.RocketConfig.fir@229207.4]
  wire  _T_349; // @[Frontend.scala 260:26:chipyard.TestHarness.RocketConfig.fir@229262.8]
  wire  _GEN_45; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229250.6]
  wire  _GEN_78; // @[Frontend.scala 260:44:chipyard.TestHarness.RocketConfig.fir@229585.8]
  wire  _GEN_81; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229572.6]
  wire  useRAS; // @[Frontend.scala 247:25:chipyard.TestHarness.RocketConfig.fir@229549.4]
  wire  taken_rviBranch_1; // @[Frontend.scala 216:36:chipyard.TestHarness.RocketConfig.fir@229313.4]
  wire  _T_580; // @[Frontend.scala 236:53:chipyard.TestHarness.RocketConfig.fir@229533.4]
  wire [15:0] _T_388; // @[Frontend.scala 221:28:chipyard.TestHarness.RocketConfig.fir@229328.4]
  wire  _T_389; // @[Frontend.scala 221:28:chipyard.TestHarness.RocketConfig.fir@229329.4]
  wire  _T_391; // @[Frontend.scala 221:60:chipyard.TestHarness.RocketConfig.fir@229331.4]
  wire  taken_rvcBranch_1; // @[Frontend.scala 221:52:chipyard.TestHarness.RocketConfig.fir@229332.4]
  wire  _T_581; // @[Frontend.scala 236:75:chipyard.TestHarness.RocketConfig.fir@229534.4]
  wire  _T_582; // @[Frontend.scala 236:66:chipyard.TestHarness.RocketConfig.fir@229535.4]
  wire  taken_predictBranch_1; // @[Frontend.scala 236:41:chipyard.TestHarness.RocketConfig.fir@229536.4]
  wire  taken_rviJump_1; // @[Frontend.scala 217:34:chipyard.TestHarness.RocketConfig.fir@229315.4]
  wire  _T_578; // @[Frontend.scala 235:33:chipyard.TestHarness.RocketConfig.fir@229530.4]
  wire  taken_rvcJump_1; // @[Frontend.scala 223:26:chipyard.TestHarness.RocketConfig.fir@229337.4]
  wire  _T_579; // @[Frontend.scala 235:53:chipyard.TestHarness.RocketConfig.fir@229531.4]
  wire  taken_predictJump_1; // @[Frontend.scala 235:44:chipyard.TestHarness.RocketConfig.fir@229532.4]
  wire  _T_617; // @[Frontend.scala 263:44:chipyard.TestHarness.RocketConfig.fir@229588.8]
  wire  _T_618; // @[Frontend.scala 263:26:chipyard.TestHarness.RocketConfig.fir@229589.8]
  wire [39:0] _T_90; // @[Frontend.scala 203:24:chipyard.TestHarness.RocketConfig.fir@228944.4]
  wire [39:0] _T_91; // @[Frontend.scala 203:31:chipyard.TestHarness.RocketConfig.fir@228945.4]
  wire [39:0] s2_base_pc; // @[Frontend.scala 203:22:chipyard.TestHarness.RocketConfig.fir@228946.4]
  wire [39:0] taken_pc_1; // @[Frontend.scala 264:33:chipyard.TestHarness.RocketConfig.fir@229591.10]
  wire [39:0] _T_620; // @[Frontend.scala 267:36:chipyard.TestHarness.RocketConfig.fir@229593.10]
  wire [39:0] _T_622; // @[Frontend.scala 267:57:chipyard.TestHarness.RocketConfig.fir@229595.10]
  wire  _T_443; // @[RocketCore.scala 1005:53:chipyard.TestHarness.RocketConfig.fir@229391.4]
  wire  _T_498; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229446.4]
  wire [10:0] _T_497; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229445.4]
  wire [7:0] _T_495; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229443.4]
  wire  _T_494; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229442.4]
  wire [31:0] _T_502; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@229450.4]
  wire [7:0] _T_557; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229505.4]
  wire  _T_556; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229504.4]
  wire [31:0] _T_564; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@229512.4]
  wire [31:0] taken_rviImm_1; // @[Frontend.scala 229:23:chipyard.TestHarness.RocketConfig.fir@229513.4]
  wire [4:0] _T_399; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@229342.4]
  wire [12:0] _T_409; // @[Frontend.scala 224:66:chipyard.TestHarness.RocketConfig.fir@229352.4]
  wire [9:0] _T_412; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@229355.4]
  wire [20:0] _T_428; // @[Frontend.scala 224:106:chipyard.TestHarness.RocketConfig.fir@229371.4]
  wire [20:0] taken_rvcImm_1; // @[Frontend.scala 224:23:chipyard.TestHarness.RocketConfig.fir@229372.4]
  wire [31:0] _T_623; // @[Frontend.scala 267:69:chipyard.TestHarness.RocketConfig.fir@229596.10]
  wire [39:0] _GEN_127; // @[Frontend.scala 267:64:chipyard.TestHarness.RocketConfig.fir@229597.10]
  wire [39:0] _T_626; // @[Frontend.scala 268:34:chipyard.TestHarness.RocketConfig.fir@229600.10]
  wire  _T_313; // @[Frontend.scala 236:53:chipyard.TestHarness.RocketConfig.fir@229211.4]
  wire  _T_314; // @[Frontend.scala 236:75:chipyard.TestHarness.RocketConfig.fir@229212.4]
  wire  _T_315; // @[Frontend.scala 236:66:chipyard.TestHarness.RocketConfig.fir@229213.4]
  wire  taken_predictBranch; // @[Frontend.scala 236:41:chipyard.TestHarness.RocketConfig.fir@229214.4]
  wire  _T_311; // @[Frontend.scala 235:33:chipyard.TestHarness.RocketConfig.fir@229208.4]
  wire  _T_312; // @[Frontend.scala 235:53:chipyard.TestHarness.RocketConfig.fir@229209.4]
  wire  taken_predictJump; // @[Frontend.scala 235:44:chipyard.TestHarness.RocketConfig.fir@229210.4]
  wire  _T_350; // @[Frontend.scala 263:44:chipyard.TestHarness.RocketConfig.fir@229266.8]
  wire  _T_351; // @[Frontend.scala 263:26:chipyard.TestHarness.RocketConfig.fir@229267.8]
  wire [39:0] _T_352; // @[Frontend.scala 266:32:chipyard.TestHarness.RocketConfig.fir@229270.10]
  wire  _T_176; // @[RocketCore.scala 1005:53:chipyard.TestHarness.RocketConfig.fir@229069.4]
  wire  _T_231; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229124.4]
  wire [10:0] _T_230; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229123.4]
  wire [7:0] _T_228; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229121.4]
  wire  _T_227; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229120.4]
  wire [31:0] _T_235; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@229128.4]
  wire [7:0] _T_290; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229183.4]
  wire  _T_289; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229182.4]
  wire [31:0] _T_297; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@229190.4]
  wire [31:0] taken_rviImm; // @[Frontend.scala 229:23:chipyard.TestHarness.RocketConfig.fir@229191.4]
  wire [32:0] _T_353; // @[Frontend.scala 266:61:chipyard.TestHarness.RocketConfig.fir@229271.10]
  wire [4:0] _T_132; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@229020.4]
  wire [12:0] _T_142; // @[Frontend.scala 224:66:chipyard.TestHarness.RocketConfig.fir@229030.4]
  wire [9:0] _T_145; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@229033.4]
  wire [20:0] _T_161; // @[Frontend.scala 224:106:chipyard.TestHarness.RocketConfig.fir@229049.4]
  wire [20:0] taken_rvcImm; // @[Frontend.scala 224:23:chipyard.TestHarness.RocketConfig.fir@229050.4]
  wire [32:0] _T_354; // @[Frontend.scala 266:44:chipyard.TestHarness.RocketConfig.fir@229272.10]
  wire [39:0] _GEN_128; // @[Frontend.scala 266:39:chipyard.TestHarness.RocketConfig.fir@229273.10]
  wire [39:0] _T_357; // @[Frontend.scala 268:34:chipyard.TestHarness.RocketConfig.fir@229276.10]
  wire  predicted_taken; // @[Frontend.scala 194:29:chipyard.TestHarness.RocketConfig.fir@228931.4]
  wire [39:0] _T_89; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228934.6]
  wire [39:0] _GEN_28; // @[Frontend.scala 194:56:chipyard.TestHarness.RocketConfig.fir@228932.4]
  wire [39:0] _GEN_43; // @[Frontend.scala 263:61:chipyard.TestHarness.RocketConfig.fir@229268.8]
  wire [39:0] _GEN_46; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229250.6]
  wire [39:0] _GEN_79; // @[Frontend.scala 263:61:chipyard.TestHarness.RocketConfig.fir@229590.8]
  wire [39:0] _GEN_82; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229572.6]
  wire [39:0] _GEN_99; // @[Frontend.scala 247:25:chipyard.TestHarness.RocketConfig.fir@229549.4]
  wire [39:0] predicted_npc; // @[Frontend.scala 307:19:chipyard.TestHarness.RocketConfig.fir@229638.4]
  wire [39:0] npc; // @[Frontend.scala 129:16:chipyard.TestHarness.RocketConfig.fir@228819.4]
  wire  _T_39; // @[Frontend.scala 135:56:chipyard.TestHarness.RocketConfig.fir@228821.4]
  wire  _T_40; // @[Frontend.scala 135:53:chipyard.TestHarness.RocketConfig.fir@228822.4]
  wire  _T_41; // @[Frontend.scala 135:41:chipyard.TestHarness.RocketConfig.fir@228823.4]
  wire  s0_speculative; // @[Frontend.scala 135:72:chipyard.TestHarness.RocketConfig.fir@228824.4]
  wire  _T_44; // @[Frontend.scala 141:9:chipyard.TestHarness.RocketConfig.fir@228832.4]
  wire  _T_566; // @[Frontend.scala 232:29:chipyard.TestHarness.RocketConfig.fir@229516.4]
  wire  _T_567; // @[Frontend.scala 232:53:chipyard.TestHarness.RocketConfig.fir@229517.4]
  wire  _T_568; // @[Frontend.scala 232:40:chipyard.TestHarness.RocketConfig.fir@229518.4]
  wire  _T_569; // @[Frontend.scala 232:17:chipyard.TestHarness.RocketConfig.fir@229519.4]
  wire  _T_437; // @[Frontend.scala 227:26:chipyard.TestHarness.RocketConfig.fir@229383.4]
  wire  taken_rvcJALR_1; // @[Frontend.scala 227:49:chipyard.TestHarness.RocketConfig.fir@229386.4]
  wire  _T_570; // @[Frontend.scala 233:27:chipyard.TestHarness.RocketConfig.fir@229520.4]
  wire  _T_571; // @[Frontend.scala 233:38:chipyard.TestHarness.RocketConfig.fir@229521.4]
  wire  _T_572; // @[Frontend.scala 233:60:chipyard.TestHarness.RocketConfig.fir@229522.4]
  wire  _T_573; // @[Frontend.scala 233:47:chipyard.TestHarness.RocketConfig.fir@229523.4]
  wire  _T_574; // @[Frontend.scala 233:15:chipyard.TestHarness.RocketConfig.fir@229524.4]
  wire  taken_taken_1; // @[Frontend.scala 232:71:chipyard.TestHarness.RocketConfig.fir@229525.4]
  wire  taken; // @[Frontend.scala 288:19:chipyard.TestHarness.RocketConfig.fir@229637.4]
  wire  _GEN_116; // @[Frontend.scala 318:33:chipyard.TestHarness.RocketConfig.fir@229654.8]
  wire  _GEN_120; // @[Frontend.scala 314:20:chipyard.TestHarness.RocketConfig.fir@229649.6]
  wire  s2_redirect; // @[Frontend.scala 313:26:chipyard.TestHarness.RocketConfig.fir@229648.4]
  wire  _T_45; // @[Frontend.scala 142:17:chipyard.TestHarness.RocketConfig.fir@228834.6]
  wire  _GEN_0; // @[Frontend.scala 141:21:chipyard.TestHarness.RocketConfig.fir@228833.4]
  wire  _T_49; // @[Frontend.scala 162:36:chipyard.TestHarness.RocketConfig.fir@228856.4]
  wire  _T_52; // @[Frontend.scala 163:62:chipyard.TestHarness.RocketConfig.fir@228860.4]
  wire  s2_can_speculatively_refill; // @[Frontend.scala 163:59:chipyard.TestHarness.RocketConfig.fir@228861.4]
  wire  _T_53; // @[Frontend.scala 164:42:chipyard.TestHarness.RocketConfig.fir@228862.4]
  wire  _T_54; // @[Frontend.scala 164:39:chipyard.TestHarness.RocketConfig.fir@228863.4]
  reg  _T_59; // @[Frontend.scala 167:29:chipyard.TestHarness.RocketConfig.fir@228870.4]
  reg [31:0] _RAND_20;
  wire  _T_60; // @[Frontend.scala 167:40:chipyard.TestHarness.RocketConfig.fir@228872.4]
  wire  _T_61; // @[Frontend.scala 167:80:chipyard.TestHarness.RocketConfig.fir@228873.4]
  wire  _T_62; // @[Frontend.scala 167:98:chipyard.TestHarness.RocketConfig.fir@228874.4]
  wire  _T_63; // @[Frontend.scala 167:77:chipyard.TestHarness.RocketConfig.fir@228875.4]
  wire [39:0] _T_65; // @[Frontend.scala 169:28:chipyard.TestHarness.RocketConfig.fir@228879.4]
  wire [39:0] _T_66; // @[Frontend.scala 343:29:chipyard.TestHarness.RocketConfig.fir@228880.4]
  wire [39:0] _T_67; // @[Frontend.scala 343:33:chipyard.TestHarness.RocketConfig.fir@228881.4]
  wire [2:0] _T_70; // @[Frontend.scala 172:52:chipyard.TestHarness.RocketConfig.fir@228886.4]
  wire  _T_71; // @[Frontend.scala 173:79:chipyard.TestHarness.RocketConfig.fir@228888.4]
  wire  _T_72; // @[Frontend.scala 173:76:chipyard.TestHarness.RocketConfig.fir@228889.4]
  wire  _T_73; // @[Frontend.scala 173:104:chipyard.TestHarness.RocketConfig.fir@228890.4]
  wire  _T_74; // @[Frontend.scala 173:101:chipyard.TestHarness.RocketConfig.fir@228891.4]
  wire  _T_75; // @[Frontend.scala 173:55:chipyard.TestHarness.RocketConfig.fir@228892.4]
  wire  _T_77; // @[Frontend.scala 177:27:chipyard.TestHarness.RocketConfig.fir@228898.4]
  wire  _T_78; // @[Frontend.scala 177:113:chipyard.TestHarness.RocketConfig.fir@228899.4]
  wire  _T_79; // @[Frontend.scala 177:110:chipyard.TestHarness.RocketConfig.fir@228900.4]
  wire  _T_80; // @[Frontend.scala 177:10:chipyard.TestHarness.RocketConfig.fir@228901.4]
  wire  _T_82; // @[Frontend.scala 177:9:chipyard.TestHarness.RocketConfig.fir@228903.4]
  wire  _T_83; // @[Frontend.scala 177:9:chipyard.TestHarness.RocketConfig.fir@228904.4]
  wire  _T_84; // @[Frontend.scala 178:30:chipyard.TestHarness.RocketConfig.fir@228909.4]
  wire  _T_92; // @[Frontend.scala 294:11:chipyard.TestHarness.RocketConfig.fir@228957.4]
  wire  fetch_bubble_likely; // @[Frontend.scala 295:33:chipyard.TestHarness.RocketConfig.fir@228960.6]
  wire  _T_95; // @[Frontend.scala 296:54:chipyard.TestHarness.RocketConfig.fir@228962.6]
  wire  _T_96; // @[Frontend.scala 296:51:chipyard.TestHarness.RocketConfig.fir@228963.6]
  wire  _T_97; // @[Frontend.scala 296:66:chipyard.TestHarness.RocketConfig.fir@228964.6]
  wire  _T_633; // @[Frontend.scala 275:15:chipyard.TestHarness.RocketConfig.fir@229614.6]
  wire  _T_635; // @[Frontend.scala 275:52:chipyard.TestHarness.RocketConfig.fir@229616.6]
  wire  _T_636; // @[Frontend.scala 275:91:chipyard.TestHarness.RocketConfig.fir@229617.6]
  wire  _T_637; // @[Frontend.scala 275:106:chipyard.TestHarness.RocketConfig.fir@229618.6]
  wire  _T_638; // @[Frontend.scala 275:34:chipyard.TestHarness.RocketConfig.fir@229619.6]
  wire  _T_366; // @[Frontend.scala 275:52:chipyard.TestHarness.RocketConfig.fir@229292.6]
  wire  _T_367; // @[Frontend.scala 275:91:chipyard.TestHarness.RocketConfig.fir@229293.6]
  wire  _T_368; // @[Frontend.scala 275:106:chipyard.TestHarness.RocketConfig.fir@229294.6]
  wire  _T_369; // @[Frontend.scala 275:34:chipyard.TestHarness.RocketConfig.fir@229295.6]
  wire  _GEN_92; // @[Frontend.scala 275:125:chipyard.TestHarness.RocketConfig.fir@229620.6]
  wire  updateBTB; // @[Frontend.scala 247:25:chipyard.TestHarness.RocketConfig.fir@229549.4]
  wire  _T_98; // @[Frontend.scala 296:89:chipyard.TestHarness.RocketConfig.fir@228965.6]
  wire [1:0] _T_99; // @[Frontend.scala 300:63:chipyard.TestHarness.RocketConfig.fir@228970.6]
  wire [39:0] _GEN_129; // @[Frontend.scala 300:50:chipyard.TestHarness.RocketConfig.fir@228971.6]
  wire [39:0] _T_100; // @[Frontend.scala 300:50:chipyard.TestHarness.RocketConfig.fir@228971.6]
  wire [39:0] _GEN_36; // @[Frontend.scala 294:37:chipyard.TestHarness.RocketConfig.fir@228958.4]
  wire [39:0] _GEN_37; // @[Frontend.scala 294:37:chipyard.TestHarness.RocketConfig.fir@228958.4]
  wire [1:0] after_idx; // @[Frontend.scala 247:25:chipyard.TestHarness.RocketConfig.fir@229549.4]
  wire [2:0] _T_101; // @[Frontend.scala 304:66:chipyard.TestHarness.RocketConfig.fir@228975.4]
  wire [39:0] _GEN_130; // @[Frontend.scala 304:53:chipyard.TestHarness.RocketConfig.fir@228976.4]
  wire [39:0] _T_103; // @[Frontend.scala 304:53:chipyard.TestHarness.RocketConfig.fir@228977.4]
  wire  _T_119; // @[Frontend.scala 220:30:chipyard.TestHarness.RocketConfig.fir@229003.4]
  wire  taken_rviCall; // @[Frontend.scala 220:42:chipyard.TestHarness.RocketConfig.fir@229005.4]
  wire  _T_316; // @[Frontend.scala 238:22:chipyard.TestHarness.RocketConfig.fir@229215.4]
  wire  _T_317; // @[Frontend.scala 238:69:chipyard.TestHarness.RocketConfig.fir@229216.4]
  wire  _T_318; // @[Frontend.scala 238:43:chipyard.TestHarness.RocketConfig.fir@229217.4]
  wire  _T_319; // @[Frontend.scala 238:77:chipyard.TestHarness.RocketConfig.fir@229218.4]
  wire  _T_321; // @[Frontend.scala 238:86:chipyard.TestHarness.RocketConfig.fir@229220.4]
  wire  _GEN_39; // @[Frontend.scala 238:95:chipyard.TestHarness.RocketConfig.fir@229221.4]
  wire  _GEN_40; // @[Frontend.scala 238:95:chipyard.TestHarness.RocketConfig.fir@229221.4]
  wire  _T_326; // @[Frontend.scala 250:92:chipyard.TestHarness.RocketConfig.fir@229233.6]
  wire  _T_327; // @[Frontend.scala 250:80:chipyard.TestHarness.RocketConfig.fir@229234.6]
  wire  _T_328; // @[Frontend.scala 250:127:chipyard.TestHarness.RocketConfig.fir@229235.6]
  wire  _T_329; // @[Frontend.scala 250:115:chipyard.TestHarness.RocketConfig.fir@229236.6]
  wire  _T_330; // @[Frontend.scala 250:106:chipyard.TestHarness.RocketConfig.fir@229237.6]
  wire  _T_331; // @[Frontend.scala 250:68:chipyard.TestHarness.RocketConfig.fir@229238.6]
  wire  _T_332; // @[Frontend.scala 251:50:chipyard.TestHarness.RocketConfig.fir@229240.6]
  wire  _T_333; // @[Frontend.scala 252:50:chipyard.TestHarness.RocketConfig.fir@229241.6]
  wire  _T_334; // @[Frontend.scala 253:50:chipyard.TestHarness.RocketConfig.fir@229242.6]
  wire  _T_337; // @[Frontend.scala 253:46:chipyard.TestHarness.RocketConfig.fir@229245.6]
  wire [1:0] _T_338; // @[Frontend.scala 252:46:chipyard.TestHarness.RocketConfig.fir@229246.6]
  wire [1:0] _T_339; // @[Frontend.scala 251:46:chipyard.TestHarness.RocketConfig.fir@229247.6]
  wire  _T_342; // @[Frontend.scala 257:34:chipyard.TestHarness.RocketConfig.fir@229252.8]
  wire  _T_343; // @[Frontend.scala 257:46:chipyard.TestHarness.RocketConfig.fir@229253.8]
  wire  _T_344; // @[Frontend.scala 257:43:chipyard.TestHarness.RocketConfig.fir@229254.8]
  wire  _T_345; // @[Frontend.scala 257:64:chipyard.TestHarness.RocketConfig.fir@229255.8]
  wire  _T_346; // @[Frontend.scala 257:61:chipyard.TestHarness.RocketConfig.fir@229256.8]
  wire  _T_347; // @[Frontend.scala 257:80:chipyard.TestHarness.RocketConfig.fir@229257.8]
  wire  _T_348; // @[Frontend.scala 257:77:chipyard.TestHarness.RocketConfig.fir@229258.8]
  wire  _GEN_41; // @[Frontend.scala 257:96:chipyard.TestHarness.RocketConfig.fir@229259.8]
  wire  _GEN_44; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229250.6]
  wire  _GEN_47; // @[Frontend.scala 271:59:chipyard.TestHarness.RocketConfig.fir@229283.6]
  wire  taken_rvc_1; // @[Frontend.scala 210:45:chipyard.TestHarness.RocketConfig.fir@229310.4]
  wire  _T_386; // @[Frontend.scala 220:30:chipyard.TestHarness.RocketConfig.fir@229325.4]
  wire  taken_rviCall_1; // @[Frontend.scala 220:42:chipyard.TestHarness.RocketConfig.fir@229327.4]
  wire  _T_585; // @[Frontend.scala 238:43:chipyard.TestHarness.RocketConfig.fir@229539.4]
  wire  _T_586; // @[Frontend.scala 238:77:chipyard.TestHarness.RocketConfig.fir@229540.4]
  wire  _T_587; // @[Frontend.scala 238:89:chipyard.TestHarness.RocketConfig.fir@229541.4]
  wire  _T_588; // @[Frontend.scala 238:86:chipyard.TestHarness.RocketConfig.fir@229542.4]
  wire  _GEN_76; // @[Frontend.scala 238:95:chipyard.TestHarness.RocketConfig.fir@229543.4]
  wire  _T_593; // @[Frontend.scala 250:92:chipyard.TestHarness.RocketConfig.fir@229555.6]
  wire  _T_594; // @[Frontend.scala 250:80:chipyard.TestHarness.RocketConfig.fir@229556.6]
  wire  _T_595; // @[Frontend.scala 250:127:chipyard.TestHarness.RocketConfig.fir@229557.6]
  wire  _T_596; // @[Frontend.scala 250:115:chipyard.TestHarness.RocketConfig.fir@229558.6]
  wire  _T_597; // @[Frontend.scala 250:106:chipyard.TestHarness.RocketConfig.fir@229559.6]
  wire  _T_598; // @[Frontend.scala 250:68:chipyard.TestHarness.RocketConfig.fir@229560.6]
  wire  _T_599; // @[Frontend.scala 251:50:chipyard.TestHarness.RocketConfig.fir@229562.6]
  wire  _T_600; // @[Frontend.scala 252:50:chipyard.TestHarness.RocketConfig.fir@229563.6]
  wire  _T_601; // @[Frontend.scala 253:50:chipyard.TestHarness.RocketConfig.fir@229564.6]
  wire  _T_604; // @[Frontend.scala 253:46:chipyard.TestHarness.RocketConfig.fir@229567.6]
  wire [1:0] _T_605; // @[Frontend.scala 252:46:chipyard.TestHarness.RocketConfig.fir@229568.6]
  wire [1:0] _T_606; // @[Frontend.scala 251:46:chipyard.TestHarness.RocketConfig.fir@229569.6]
  wire  _T_609; // @[Frontend.scala 257:34:chipyard.TestHarness.RocketConfig.fir@229574.8]
  wire  _T_610; // @[Frontend.scala 257:46:chipyard.TestHarness.RocketConfig.fir@229575.8]
  wire  _T_611; // @[Frontend.scala 257:43:chipyard.TestHarness.RocketConfig.fir@229576.8]
  wire  _T_612; // @[Frontend.scala 257:64:chipyard.TestHarness.RocketConfig.fir@229577.8]
  wire  _T_613; // @[Frontend.scala 257:61:chipyard.TestHarness.RocketConfig.fir@229578.8]
  wire  _T_614; // @[Frontend.scala 257:80:chipyard.TestHarness.RocketConfig.fir@229579.8]
  wire  _T_615; // @[Frontend.scala 257:77:chipyard.TestHarness.RocketConfig.fir@229580.8]
  wire  _GEN_77; // @[Frontend.scala 257:96:chipyard.TestHarness.RocketConfig.fir@229581.8]
  wire  _GEN_83; // @[Frontend.scala 271:59:chipyard.TestHarness.RocketConfig.fir@229607.6]
  wire  _T_641; // @[Frontend.scala 283:23:chipyard.TestHarness.RocketConfig.fir@229628.6]
  wire  _T_643; // @[Frontend.scala 283:37:chipyard.TestHarness.RocketConfig.fir@229630.6]
  wire [15:0] _T_644; // @[Frontend.scala 285:37:chipyard.TestHarness.RocketConfig.fir@229633.8]
  wire  _T_646; // @[Frontend.scala 310:45:chipyard.TestHarness.RocketConfig.fir@229642.4]
  wire  _T_647; // @[Frontend.scala 310:28:chipyard.TestHarness.RocketConfig.fir@229643.4]
  wire  _GEN_117; // @[Frontend.scala 314:20:chipyard.TestHarness.RocketConfig.fir@229649.6]
  wire  _GEN_118; // @[Frontend.scala 314:20:chipyard.TestHarness.RocketConfig.fir@229649.6]
  wire [4:0] _GEN_119; // @[Frontend.scala 314:20:chipyard.TestHarness.RocketConfig.fir@229649.6]
  wire  _T_650; // @[Frontend.scala 322:12:chipyard.TestHarness.RocketConfig.fir@229659.4]
  wire  _T_652; // @[Frontend.scala 322:35:chipyard.TestHarness.RocketConfig.fir@229661.4]
  wire  _T_654; // @[Frontend.scala 322:11:chipyard.TestHarness.RocketConfig.fir@229663.4]
  wire  _T_655; // @[Frontend.scala 322:11:chipyard.TestHarness.RocketConfig.fir@229664.4]
  ICache icache ( // @[Frontend.scala 64:26:chipyard.TestHarness.RocketConfig.fir@228726.4]
    .clock(icache_clock),
    .reset(icache_reset),
    .auto_master_out_a_ready(icache_auto_master_out_a_ready),
    .auto_master_out_a_valid(icache_auto_master_out_a_valid),
    .auto_master_out_a_bits_address(icache_auto_master_out_a_bits_address),
    .auto_master_out_d_valid(icache_auto_master_out_d_valid),
    .auto_master_out_d_bits_opcode(icache_auto_master_out_d_bits_opcode),
    .auto_master_out_d_bits_size(icache_auto_master_out_d_bits_size),
    .auto_master_out_d_bits_data(icache_auto_master_out_d_bits_data),
    .auto_master_out_d_bits_corrupt(icache_auto_master_out_d_bits_corrupt),
    .io_req_ready(icache_io_req_ready),
    .io_req_valid(icache_io_req_valid),
    .io_req_bits_addr(icache_io_req_bits_addr),
    .io_s1_paddr(icache_io_s1_paddr),
    .io_s1_kill(icache_io_s1_kill),
    .io_s2_kill(icache_io_s2_kill),
    .io_resp_valid(icache_io_resp_valid),
    .io_resp_bits_data(icache_io_resp_bits_data),
    .io_resp_bits_replay(icache_io_resp_bits_replay),
    .io_resp_bits_ae(icache_io_resp_bits_ae),
    .io_invalidate(icache_io_invalidate)
  );
  ShiftQueue fq ( // @[Frontend.scala 85:57:chipyard.TestHarness.RocketConfig.fir@228736.4]
    .clock(fq_clock),
    .reset(fq_reset),
    .io_enq_ready(fq_io_enq_ready),
    .io_enq_valid(fq_io_enq_valid),
    .io_enq_bits_btb_taken(fq_io_enq_bits_btb_taken),
    .io_enq_bits_btb_bridx(fq_io_enq_bits_btb_bridx),
    .io_enq_bits_btb_entry(fq_io_enq_bits_btb_entry),
    .io_enq_bits_btb_bht_history(fq_io_enq_bits_btb_bht_history),
    .io_enq_bits_pc(fq_io_enq_bits_pc),
    .io_enq_bits_data(fq_io_enq_bits_data),
    .io_enq_bits_mask(fq_io_enq_bits_mask),
    .io_enq_bits_xcpt_pf_inst(fq_io_enq_bits_xcpt_pf_inst),
    .io_enq_bits_xcpt_ae_inst(fq_io_enq_bits_xcpt_ae_inst),
    .io_enq_bits_replay(fq_io_enq_bits_replay),
    .io_deq_ready(fq_io_deq_ready),
    .io_deq_valid(fq_io_deq_valid),
    .io_deq_bits_btb_taken(fq_io_deq_bits_btb_taken),
    .io_deq_bits_btb_bridx(fq_io_deq_bits_btb_bridx),
    .io_deq_bits_btb_entry(fq_io_deq_bits_btb_entry),
    .io_deq_bits_btb_bht_history(fq_io_deq_bits_btb_bht_history),
    .io_deq_bits_pc(fq_io_deq_bits_pc),
    .io_deq_bits_data(fq_io_deq_bits_data),
    .io_deq_bits_xcpt_pf_inst(fq_io_deq_bits_xcpt_pf_inst),
    .io_deq_bits_xcpt_ae_inst(fq_io_deq_bits_xcpt_ae_inst),
    .io_deq_bits_replay(fq_io_deq_bits_replay),
    .io_mask(fq_io_mask)
  );
  TLB_1 tlb ( // @[Frontend.scala 99:19:chipyard.TestHarness.RocketConfig.fir@228758.4]
    .clock(tlb_clock),
    .reset(tlb_reset),
    .io_req_ready(tlb_io_req_ready),
    .io_req_valid(tlb_io_req_valid),
    .io_req_bits_vaddr(tlb_io_req_bits_vaddr),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_paddr(tlb_io_resp_paddr),
    .io_resp_pf_inst(tlb_io_resp_pf_inst),
    .io_resp_ae_inst(tlb_io_resp_ae_inst),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_sfence_valid(tlb_io_sfence_valid),
    .io_sfence_bits_rs1(tlb_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(tlb_io_sfence_bits_rs2),
    .io_sfence_bits_addr(tlb_io_sfence_bits_addr),
    .io_ptw_req_ready(tlb_io_ptw_req_ready),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
    .io_ptw_req_bits_valid(tlb_io_ptw_req_bits_valid),
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
    .io_ptw_status_prv(tlb_io_ptw_status_prv),
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
    .io_ptw_pmp_7_mask(tlb_io_ptw_pmp_7_mask),
    .io_kill(tlb_io_kill)
  );
  BTB btb ( // @[Frontend.scala 181:21:chipyard.TestHarness.RocketConfig.fir@228913.4]
    .clock(btb_clock),
    .reset(btb_reset),
    .io_req_bits_addr(btb_io_req_bits_addr),
    .io_resp_valid(btb_io_resp_valid),
    .io_resp_bits_taken(btb_io_resp_bits_taken),
    .io_resp_bits_bridx(btb_io_resp_bits_bridx),
    .io_resp_bits_target(btb_io_resp_bits_target),
    .io_resp_bits_entry(btb_io_resp_bits_entry),
    .io_resp_bits_bht_history(btb_io_resp_bits_bht_history),
    .io_resp_bits_bht_value(btb_io_resp_bits_bht_value),
    .io_btb_update_valid(btb_io_btb_update_valid),
    .io_btb_update_bits_prediction_entry(btb_io_btb_update_bits_prediction_entry),
    .io_btb_update_bits_pc(btb_io_btb_update_bits_pc),
    .io_btb_update_bits_isValid(btb_io_btb_update_bits_isValid),
    .io_btb_update_bits_br_pc(btb_io_btb_update_bits_br_pc),
    .io_btb_update_bits_cfiType(btb_io_btb_update_bits_cfiType),
    .io_bht_update_valid(btb_io_bht_update_valid),
    .io_bht_update_bits_prediction_history(btb_io_bht_update_bits_prediction_history),
    .io_bht_update_bits_pc(btb_io_bht_update_bits_pc),
    .io_bht_update_bits_branch(btb_io_bht_update_bits_branch),
    .io_bht_update_bits_taken(btb_io_bht_update_bits_taken),
    .io_bht_update_bits_mispredict(btb_io_bht_update_bits_mispredict),
    .io_bht_advance_valid(btb_io_bht_advance_valid),
    .io_bht_advance_bits_bht_value(btb_io_bht_advance_bits_bht_value),
    .io_ras_update_valid(btb_io_ras_update_valid),
    .io_ras_update_bits_cfiType(btb_io_ras_update_bits_cfiType),
    .io_ras_update_bits_returnAddr(btb_io_ras_update_bits_returnAddr),
    .io_ras_head_valid(btb_io_ras_head_valid),
    .io_ras_head_bits(btb_io_ras_head_bits),
    .io_flush(btb_io_flush)
  );
  assign _T_2 = io_cpu_req_valid | io_cpu_sfence_valid; // @[Frontend.scala 90:29:chipyard.TestHarness.RocketConfig.fir@228743.4]
  assign _T_3 = _T_2 | io_cpu_flush_icache; // @[Frontend.scala 90:52:chipyard.TestHarness.RocketConfig.fir@228744.4]
  assign _T_4 = _T_3 | io_cpu_bht_update_valid; // @[Frontend.scala 90:75:chipyard.TestHarness.RocketConfig.fir@228745.4]
  assign _T_5 = _T_4 | io_cpu_btb_update_valid; // @[Frontend.scala 90:102:chipyard.TestHarness.RocketConfig.fir@228746.4]
  assign _T_6 = ~_T_5; // @[Frontend.scala 90:10:chipyard.TestHarness.RocketConfig.fir@228747.4]
  assign _T_7 = _T_6 | io_cpu_might_request; // @[Frontend.scala 90:130:chipyard.TestHarness.RocketConfig.fir@228748.4]
  assign _T_9 = _T_7 | reset; // @[Frontend.scala 90:9:chipyard.TestHarness.RocketConfig.fir@228750.4]
  assign _T_10 = ~_T_9; // @[Frontend.scala 90:9:chipyard.TestHarness.RocketConfig.fir@228751.4]
  assign _T_12 = ~fq_io_mask[2]; // @[Frontend.scala 104:5:chipyard.TestHarness.RocketConfig.fir@228765.4]
  assign _T_14 = ~fq_io_mask[3]; // @[Frontend.scala 105:6:chipyard.TestHarness.RocketConfig.fir@228767.4]
  assign _T_15 = ~s1_valid; // @[Frontend.scala 105:45:chipyard.TestHarness.RocketConfig.fir@228768.4]
  assign _T_16 = ~s2_valid; // @[Frontend.scala 105:58:chipyard.TestHarness.RocketConfig.fir@228769.4]
  assign _T_17 = _T_15 | _T_16; // @[Frontend.scala 105:55:chipyard.TestHarness.RocketConfig.fir@228770.4]
  assign _T_18 = _T_14 & _T_17; // @[Frontend.scala 105:41:chipyard.TestHarness.RocketConfig.fir@228771.4]
  assign _T_19 = _T_12 | _T_18; // @[Frontend.scala 104:40:chipyard.TestHarness.RocketConfig.fir@228772.4]
  assign _T_21 = ~fq_io_mask[4]; // @[Frontend.scala 106:6:chipyard.TestHarness.RocketConfig.fir@228774.4]
  assign _T_24 = _T_15 & _T_16; // @[Frontend.scala 106:55:chipyard.TestHarness.RocketConfig.fir@228777.4]
  assign _T_25 = _T_21 & _T_24; // @[Frontend.scala 106:41:chipyard.TestHarness.RocketConfig.fir@228778.4]
  assign s0_fq_has_space = _T_19 | _T_25; // @[Frontend.scala 105:70:chipyard.TestHarness.RocketConfig.fir@228779.4]
  assign s0_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 107:35:chipyard.TestHarness.RocketConfig.fir@228780.4]
  assign s2_btb_taken = s2_btb_resp_valid & s2_btb_resp_bits_taken; // @[Frontend.scala 114:40:chipyard.TestHarness.RocketConfig.fir@228790.4]
  assign s2_xcpt = s2_tlb_resp_ae_inst | s2_tlb_resp_pf_inst; // @[Frontend.scala 116:37:chipyard.TestHarness.RocketConfig.fir@228792.4]
  assign _T_29 = ~s1_pc; // @[Frontend.scala 122:22:chipyard.TestHarness.RocketConfig.fir@228797.4]
  assign _T_30 = _T_29 | 40'h3; // @[Frontend.scala 122:29:chipyard.TestHarness.RocketConfig.fir@228798.4]
  assign s1_base_pc = ~_T_30; // @[Frontend.scala 122:20:chipyard.TestHarness.RocketConfig.fir@228799.4]
  assign ntpc = s1_base_pc + 40'h4; // @[Frontend.scala 123:25:chipyard.TestHarness.RocketConfig.fir@228801.4]
  assign _T_32 = fq_io_enq_ready & fq_io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@228810.4]
  assign _T_33 = ~_T_32; // @[Frontend.scala 128:29:chipyard.TestHarness.RocketConfig.fir@228811.4]
  assign _T_34 = s2_valid & _T_33; // @[Frontend.scala 128:26:chipyard.TestHarness.RocketConfig.fir@228812.4]
  assign _T_35 = ~s0_valid; // @[Frontend.scala 128:72:chipyard.TestHarness.RocketConfig.fir@228813.4]
  assign s2_replay = _T_34 | _T_37; // @[Frontend.scala 128:48:chipyard.TestHarness.RocketConfig.fir@228817.4]
  assign _T_36 = s2_replay & _T_35; // @[Frontend.scala 128:69:chipyard.TestHarness.RocketConfig.fir@228814.4]
  assign _T_105 = s2_partial_insn[1:0] != 2'h3; // @[Frontend.scala 210:45:chipyard.TestHarness.RocketConfig.fir@228980.4]
  assign _T_106 = ~_T_105; // @[Frontend.scala 211:34:chipyard.TestHarness.RocketConfig.fir@228981.4]
  assign taken_prevRVI = s2_partial_insn_valid & _T_106; // @[Frontend.scala 211:31:chipyard.TestHarness.RocketConfig.fir@228982.4]
  assign taken_bits = fq_io_enq_bits_data[15:0]; // @[Frontend.scala 213:37:chipyard.TestHarness.RocketConfig.fir@228986.4]
  assign taken_rviBits = {taken_bits,s2_partial_insn}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228989.4]
  assign taken_rviJump = taken_rviBits[6:0] == 7'h6f; // @[Frontend.scala 217:34:chipyard.TestHarness.RocketConfig.fir@228993.4]
  assign taken_rviJALR = taken_rviBits[6:0] == 7'h67; // @[Frontend.scala 218:34:chipyard.TestHarness.RocketConfig.fir@228995.4]
  assign _T_299 = taken_rviJump | taken_rviJALR; // @[Frontend.scala 232:29:chipyard.TestHarness.RocketConfig.fir@229194.4]
  assign taken_rviBranch = taken_rviBits[6:0] == 7'h63; // @[Frontend.scala 216:36:chipyard.TestHarness.RocketConfig.fir@228991.4]
  assign _T_300 = taken_rviBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 232:53:chipyard.TestHarness.RocketConfig.fir@229195.4]
  assign _T_301 = _T_299 | _T_300; // @[Frontend.scala 232:40:chipyard.TestHarness.RocketConfig.fir@229196.4]
  assign _T_302 = taken_prevRVI & _T_301; // @[Frontend.scala 232:17:chipyard.TestHarness.RocketConfig.fir@229197.4]
  assign _T_108 = ~taken_prevRVI; // @[Frontend.scala 212:47:chipyard.TestHarness.RocketConfig.fir@228984.4]
  assign taken_valid = fq_io_enq_bits_mask[0] & _T_108; // @[Frontend.scala 212:44:chipyard.TestHarness.RocketConfig.fir@228985.4]
  assign _T_127 = taken_bits & 16'he003; // @[Frontend.scala 223:26:chipyard.TestHarness.RocketConfig.fir@229014.4]
  assign taken_rvcJump = 16'ha001 == _T_127; // @[Frontend.scala 223:26:chipyard.TestHarness.RocketConfig.fir@229015.4]
  assign _T_169 = taken_bits & 16'hf003; // @[Frontend.scala 227:26:chipyard.TestHarness.RocketConfig.fir@229060.4]
  assign _T_170 = 16'h9002 == _T_169; // @[Frontend.scala 227:26:chipyard.TestHarness.RocketConfig.fir@229061.4]
  assign _T_172 = taken_bits[6:2] == 5'h0; // @[Frontend.scala 227:62:chipyard.TestHarness.RocketConfig.fir@229063.4]
  assign taken_rvcJALR = _T_170 & _T_172; // @[Frontend.scala 227:49:chipyard.TestHarness.RocketConfig.fir@229064.4]
  assign _T_303 = taken_rvcJump | taken_rvcJALR; // @[Frontend.scala 233:27:chipyard.TestHarness.RocketConfig.fir@229198.4]
  assign _T_163 = 16'h8002 == _T_169; // @[Frontend.scala 225:24:chipyard.TestHarness.RocketConfig.fir@229052.4]
  assign taken_rvcJR = _T_163 & _T_172; // @[Frontend.scala 225:46:chipyard.TestHarness.RocketConfig.fir@229055.4]
  assign _T_304 = _T_303 | taken_rvcJR; // @[Frontend.scala 233:38:chipyard.TestHarness.RocketConfig.fir@229199.4]
  assign _T_122 = 16'hc001 == _T_127; // @[Frontend.scala 221:28:chipyard.TestHarness.RocketConfig.fir@229007.4]
  assign _T_124 = 16'he001 == _T_127; // @[Frontend.scala 221:60:chipyard.TestHarness.RocketConfig.fir@229009.4]
  assign taken_rvcBranch = _T_122 | _T_124; // @[Frontend.scala 221:52:chipyard.TestHarness.RocketConfig.fir@229010.4]
  assign _T_305 = taken_rvcBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 233:60:chipyard.TestHarness.RocketConfig.fir@229200.4]
  assign _T_306 = _T_304 | _T_305; // @[Frontend.scala 233:47:chipyard.TestHarness.RocketConfig.fir@229201.4]
  assign _T_307 = taken_valid & _T_306; // @[Frontend.scala 233:15:chipyard.TestHarness.RocketConfig.fir@229202.4]
  assign taken_taken = _T_302 | _T_307; // @[Frontend.scala 232:71:chipyard.TestHarness.RocketConfig.fir@229203.4]
  assign taken_idx = ~taken_taken; // @[Frontend.scala 247:13:chipyard.TestHarness.RocketConfig.fir@229548.4]
  assign _T_607 = ~s2_btb_taken; // @[Frontend.scala 256:15:chipyard.TestHarness.RocketConfig.fir@229571.6]
  assign _T_372 = taken_bits[1:0] != 2'h3; // @[Frontend.scala 210:45:chipyard.TestHarness.RocketConfig.fir@229302.4]
  assign _T_373 = ~_T_372; // @[Frontend.scala 211:34:chipyard.TestHarness.RocketConfig.fir@229303.4]
  assign taken_prevRVI_1 = taken_valid & _T_373; // @[Frontend.scala 211:31:chipyard.TestHarness.RocketConfig.fir@229304.4]
  assign taken_bits_1 = fq_io_enq_bits_data[31:16]; // @[Frontend.scala 213:37:chipyard.TestHarness.RocketConfig.fir@229308.4]
  assign taken_rviBits_1 = {taken_bits_1,taken_bits}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229311.4]
  assign taken_rviJALR_1 = taken_rviBits_1[6:0] == 7'h67; // @[Frontend.scala 218:34:chipyard.TestHarness.RocketConfig.fir@229317.4]
  assign _T_381 = ~taken_rviBits_1[7]; // @[Frontend.scala 219:34:chipyard.TestHarness.RocketConfig.fir@229319.4]
  assign _T_382 = taken_rviJALR_1 & _T_381; // @[Frontend.scala 219:31:chipyard.TestHarness.RocketConfig.fir@229320.4]
  assign _T_384 = taken_rviBits_1[19:15] & 5'h1b; // @[Frontend.scala 219:66:chipyard.TestHarness.RocketConfig.fir@229322.4]
  assign _T_385 = 5'h1 == _T_384; // @[Frontend.scala 219:66:chipyard.TestHarness.RocketConfig.fir@229323.4]
  assign taken_rviReturn_1 = _T_382 & _T_385; // @[Frontend.scala 219:46:chipyard.TestHarness.RocketConfig.fir@229324.4]
  assign _T_575 = taken_prevRVI_1 & taken_rviReturn_1; // @[Frontend.scala 234:61:chipyard.TestHarness.RocketConfig.fir@229526.4]
  assign _T_375 = ~taken_prevRVI_1; // @[Frontend.scala 212:47:chipyard.TestHarness.RocketConfig.fir@229306.4]
  assign taken_valid_1 = fq_io_enq_bits_mask[1] & _T_375; // @[Frontend.scala 212:44:chipyard.TestHarness.RocketConfig.fir@229307.4]
  assign _T_429 = taken_bits_1 & 16'hf003; // @[Frontend.scala 225:24:chipyard.TestHarness.RocketConfig.fir@229373.4]
  assign _T_430 = 16'h8002 == _T_429; // @[Frontend.scala 225:24:chipyard.TestHarness.RocketConfig.fir@229374.4]
  assign _T_432 = taken_bits_1[6:2] == 5'h0; // @[Frontend.scala 225:59:chipyard.TestHarness.RocketConfig.fir@229376.4]
  assign taken_rvcJR_1 = _T_430 & _T_432; // @[Frontend.scala 225:46:chipyard.TestHarness.RocketConfig.fir@229377.4]
  assign _T_434 = taken_bits_1[11:7] & 5'h1b; // @[Frontend.scala 226:49:chipyard.TestHarness.RocketConfig.fir@229379.4]
  assign _T_435 = 5'h1 == _T_434; // @[Frontend.scala 226:49:chipyard.TestHarness.RocketConfig.fir@229380.4]
  assign taken_rvcReturn_1 = taken_rvcJR_1 & _T_435; // @[Frontend.scala 226:29:chipyard.TestHarness.RocketConfig.fir@229381.4]
  assign _T_576 = taken_valid_1 & taken_rvcReturn_1; // @[Frontend.scala 234:83:chipyard.TestHarness.RocketConfig.fir@229527.4]
  assign _T_577 = _T_575 | _T_576; // @[Frontend.scala 234:74:chipyard.TestHarness.RocketConfig.fir@229528.4]
  assign taken_predictReturn_1 = btb_io_ras_head_valid & _T_577; // @[Frontend.scala 234:49:chipyard.TestHarness.RocketConfig.fir@229529.4]
  assign _T_616 = s2_valid & taken_predictReturn_1; // @[Frontend.scala 260:26:chipyard.TestHarness.RocketConfig.fir@229584.8]
  assign _T_114 = ~taken_rviBits[7]; // @[Frontend.scala 219:34:chipyard.TestHarness.RocketConfig.fir@228997.4]
  assign _T_115 = taken_rviJALR & _T_114; // @[Frontend.scala 219:31:chipyard.TestHarness.RocketConfig.fir@228998.4]
  assign _T_117 = taken_rviBits[19:15] & 5'h1b; // @[Frontend.scala 219:66:chipyard.TestHarness.RocketConfig.fir@229000.4]
  assign _T_118 = 5'h1 == _T_117; // @[Frontend.scala 219:66:chipyard.TestHarness.RocketConfig.fir@229001.4]
  assign taken_rviReturn = _T_115 & _T_118; // @[Frontend.scala 219:46:chipyard.TestHarness.RocketConfig.fir@229002.4]
  assign _T_308 = taken_prevRVI & taken_rviReturn; // @[Frontend.scala 234:61:chipyard.TestHarness.RocketConfig.fir@229204.4]
  assign _T_167 = taken_bits[11:7] & 5'h1b; // @[Frontend.scala 226:49:chipyard.TestHarness.RocketConfig.fir@229057.4]
  assign _T_168 = 5'h1 == _T_167; // @[Frontend.scala 226:49:chipyard.TestHarness.RocketConfig.fir@229058.4]
  assign taken_rvcReturn = taken_rvcJR & _T_168; // @[Frontend.scala 226:29:chipyard.TestHarness.RocketConfig.fir@229059.4]
  assign _T_309 = taken_valid & taken_rvcReturn; // @[Frontend.scala 234:83:chipyard.TestHarness.RocketConfig.fir@229205.4]
  assign _T_310 = _T_308 | _T_309; // @[Frontend.scala 234:74:chipyard.TestHarness.RocketConfig.fir@229206.4]
  assign taken_predictReturn = btb_io_ras_head_valid & _T_310; // @[Frontend.scala 234:49:chipyard.TestHarness.RocketConfig.fir@229207.4]
  assign _T_349 = s2_valid & taken_predictReturn; // @[Frontend.scala 260:26:chipyard.TestHarness.RocketConfig.fir@229262.8]
  assign _GEN_45 = _T_607 & _T_349; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229250.6]
  assign _GEN_78 = _T_616 | _GEN_45; // @[Frontend.scala 260:44:chipyard.TestHarness.RocketConfig.fir@229585.8]
  assign _GEN_81 = _T_607 ? _GEN_78 : _GEN_45; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229572.6]
  assign useRAS = taken_idx ? _GEN_81 : _GEN_45; // @[Frontend.scala 247:25:chipyard.TestHarness.RocketConfig.fir@229549.4]
  assign taken_rviBranch_1 = taken_rviBits_1[6:0] == 7'h63; // @[Frontend.scala 216:36:chipyard.TestHarness.RocketConfig.fir@229313.4]
  assign _T_580 = taken_prevRVI_1 & taken_rviBranch_1; // @[Frontend.scala 236:53:chipyard.TestHarness.RocketConfig.fir@229533.4]
  assign _T_388 = taken_bits_1 & 16'he003; // @[Frontend.scala 221:28:chipyard.TestHarness.RocketConfig.fir@229328.4]
  assign _T_389 = 16'hc001 == _T_388; // @[Frontend.scala 221:28:chipyard.TestHarness.RocketConfig.fir@229329.4]
  assign _T_391 = 16'he001 == _T_388; // @[Frontend.scala 221:60:chipyard.TestHarness.RocketConfig.fir@229331.4]
  assign taken_rvcBranch_1 = _T_389 | _T_391; // @[Frontend.scala 221:52:chipyard.TestHarness.RocketConfig.fir@229332.4]
  assign _T_581 = taken_valid_1 & taken_rvcBranch_1; // @[Frontend.scala 236:75:chipyard.TestHarness.RocketConfig.fir@229534.4]
  assign _T_582 = _T_580 | _T_581; // @[Frontend.scala 236:66:chipyard.TestHarness.RocketConfig.fir@229535.4]
  assign taken_predictBranch_1 = s2_btb_resp_bits_bht_value & _T_582; // @[Frontend.scala 236:41:chipyard.TestHarness.RocketConfig.fir@229536.4]
  assign taken_rviJump_1 = taken_rviBits_1[6:0] == 7'h6f; // @[Frontend.scala 217:34:chipyard.TestHarness.RocketConfig.fir@229315.4]
  assign _T_578 = taken_prevRVI_1 & taken_rviJump_1; // @[Frontend.scala 235:33:chipyard.TestHarness.RocketConfig.fir@229530.4]
  assign taken_rvcJump_1 = 16'ha001 == _T_388; // @[Frontend.scala 223:26:chipyard.TestHarness.RocketConfig.fir@229337.4]
  assign _T_579 = taken_valid_1 & taken_rvcJump_1; // @[Frontend.scala 235:53:chipyard.TestHarness.RocketConfig.fir@229531.4]
  assign taken_predictJump_1 = _T_578 | _T_579; // @[Frontend.scala 235:44:chipyard.TestHarness.RocketConfig.fir@229532.4]
  assign _T_617 = taken_predictBranch_1 | taken_predictJump_1; // @[Frontend.scala 263:44:chipyard.TestHarness.RocketConfig.fir@229588.8]
  assign _T_618 = s2_valid & _T_617; // @[Frontend.scala 263:26:chipyard.TestHarness.RocketConfig.fir@229589.8]
  assign _T_90 = ~s2_pc; // @[Frontend.scala 203:24:chipyard.TestHarness.RocketConfig.fir@228944.4]
  assign _T_91 = _T_90 | 40'h3; // @[Frontend.scala 203:31:chipyard.TestHarness.RocketConfig.fir@228945.4]
  assign s2_base_pc = ~_T_91; // @[Frontend.scala 203:22:chipyard.TestHarness.RocketConfig.fir@228946.4]
  assign taken_pc_1 = s2_base_pc | 40'h2; // @[Frontend.scala 264:33:chipyard.TestHarness.RocketConfig.fir@229591.10]
  assign _T_620 = taken_pc_1 - 40'h2; // @[Frontend.scala 267:36:chipyard.TestHarness.RocketConfig.fir@229593.10]
  assign _T_622 = taken_prevRVI_1 ? _T_620 : taken_pc_1; // @[Frontend.scala 267:57:chipyard.TestHarness.RocketConfig.fir@229595.10]
  assign _T_443 = taken_rviBits_1[31]; // @[RocketCore.scala 1005:53:chipyard.TestHarness.RocketConfig.fir@229391.4]
  assign _T_498 = taken_rviBits_1[31]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229446.4]
  assign _T_497 = {11{_T_443}}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229445.4]
  assign _T_495 = taken_rviBits_1[19:12]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229443.4]
  assign _T_494 = taken_rviBits_1[20]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229442.4]
  assign _T_502 = {_T_498,_T_497,_T_495,_T_494,taken_rviBits_1[30:25],taken_rviBits_1[24:21],1'h0}; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@229450.4]
  assign _T_557 = {8{_T_443}}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229505.4]
  assign _T_556 = taken_rviBits_1[7]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229504.4]
  assign _T_564 = {_T_498,_T_497,_T_557,_T_556,taken_rviBits_1[30:25],taken_rviBits_1[11:8],1'h0}; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@229512.4]
  assign taken_rviImm_1 = taken_rviBits_1[3] ? $signed(_T_502) : $signed(_T_564); // @[Frontend.scala 229:23:chipyard.TestHarness.RocketConfig.fir@229513.4]
  assign _T_399 = taken_bits_1[12] ? 5'h1f : 5'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@229342.4]
  assign _T_409 = {_T_399,taken_bits_1[6:5],taken_bits_1[2],taken_bits_1[11:10],taken_bits_1[4:3],1'h0}; // @[Frontend.scala 224:66:chipyard.TestHarness.RocketConfig.fir@229352.4]
  assign _T_412 = taken_bits_1[12] ? 10'h3ff : 10'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@229355.4]
  assign _T_428 = {_T_412,taken_bits_1[8],taken_bits_1[10:9],taken_bits_1[6],taken_bits_1[7],taken_bits_1[2],taken_bits_1[11],taken_bits_1[5:3],1'h0}; // @[Frontend.scala 224:106:chipyard.TestHarness.RocketConfig.fir@229371.4]
  assign taken_rvcImm_1 = taken_bits_1[14] ? $signed({{8{_T_409[12]}},_T_409}) : $signed(_T_428); // @[Frontend.scala 224:23:chipyard.TestHarness.RocketConfig.fir@229372.4]
  assign _T_623 = taken_prevRVI_1 ? $signed(taken_rviImm_1) : $signed({{11{taken_rvcImm_1[20]}},taken_rvcImm_1}); // @[Frontend.scala 267:69:chipyard.TestHarness.RocketConfig.fir@229596.10]
  assign _GEN_127 = {{8{_T_623[31]}},_T_623}; // @[Frontend.scala 267:64:chipyard.TestHarness.RocketConfig.fir@229597.10]
  assign _T_626 = $signed(_T_622) + $signed(_GEN_127); // @[Frontend.scala 268:34:chipyard.TestHarness.RocketConfig.fir@229600.10]
  assign _T_313 = taken_prevRVI & taken_rviBranch; // @[Frontend.scala 236:53:chipyard.TestHarness.RocketConfig.fir@229211.4]
  assign _T_314 = taken_valid & taken_rvcBranch; // @[Frontend.scala 236:75:chipyard.TestHarness.RocketConfig.fir@229212.4]
  assign _T_315 = _T_313 | _T_314; // @[Frontend.scala 236:66:chipyard.TestHarness.RocketConfig.fir@229213.4]
  assign taken_predictBranch = s2_btb_resp_bits_bht_value & _T_315; // @[Frontend.scala 236:41:chipyard.TestHarness.RocketConfig.fir@229214.4]
  assign _T_311 = taken_prevRVI & taken_rviJump; // @[Frontend.scala 235:33:chipyard.TestHarness.RocketConfig.fir@229208.4]
  assign _T_312 = taken_valid & taken_rvcJump; // @[Frontend.scala 235:53:chipyard.TestHarness.RocketConfig.fir@229209.4]
  assign taken_predictJump = _T_311 | _T_312; // @[Frontend.scala 235:44:chipyard.TestHarness.RocketConfig.fir@229210.4]
  assign _T_350 = taken_predictBranch | taken_predictJump; // @[Frontend.scala 263:44:chipyard.TestHarness.RocketConfig.fir@229266.8]
  assign _T_351 = s2_valid & _T_350; // @[Frontend.scala 263:26:chipyard.TestHarness.RocketConfig.fir@229267.8]
  assign _T_352 = ~_T_91; // @[Frontend.scala 266:32:chipyard.TestHarness.RocketConfig.fir@229270.10]
  assign _T_176 = taken_rviBits[31]; // @[RocketCore.scala 1005:53:chipyard.TestHarness.RocketConfig.fir@229069.4]
  assign _T_231 = taken_rviBits[31]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229124.4]
  assign _T_230 = {11{_T_176}}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229123.4]
  assign _T_228 = taken_rviBits[19:12]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229121.4]
  assign _T_227 = taken_rviBits[20]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229120.4]
  assign _T_235 = {_T_231,_T_230,_T_228,_T_227,taken_rviBits[30:25],taken_rviBits[24:21],1'h0}; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@229128.4]
  assign _T_290 = {8{_T_176}}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229183.4]
  assign _T_289 = taken_rviBits[7]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229182.4]
  assign _T_297 = {_T_231,_T_230,_T_290,_T_289,taken_rviBits[30:25],taken_rviBits[11:8],1'h0}; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@229190.4]
  assign taken_rviImm = taken_rviBits[3] ? $signed(_T_235) : $signed(_T_297); // @[Frontend.scala 229:23:chipyard.TestHarness.RocketConfig.fir@229191.4]
  assign _T_353 = $signed(taken_rviImm) - 32'sh2; // @[Frontend.scala 266:61:chipyard.TestHarness.RocketConfig.fir@229271.10]
  assign _T_132 = taken_bits[12] ? 5'h1f : 5'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@229020.4]
  assign _T_142 = {_T_132,taken_bits[6:5],taken_bits[2],taken_bits[11:10],taken_bits[4:3],1'h0}; // @[Frontend.scala 224:66:chipyard.TestHarness.RocketConfig.fir@229030.4]
  assign _T_145 = taken_bits[12] ? 10'h3ff : 10'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@229033.4]
  assign _T_161 = {_T_145,taken_bits[8],taken_bits[10:9],taken_bits[6],taken_bits[7],taken_bits[2],taken_bits[11],taken_bits[5:3],1'h0}; // @[Frontend.scala 224:106:chipyard.TestHarness.RocketConfig.fir@229049.4]
  assign taken_rvcImm = taken_bits[14] ? $signed({{8{_T_142[12]}},_T_142}) : $signed(_T_161); // @[Frontend.scala 224:23:chipyard.TestHarness.RocketConfig.fir@229050.4]
  assign _T_354 = taken_prevRVI ? $signed(_T_353) : $signed({{12{taken_rvcImm[20]}},taken_rvcImm}); // @[Frontend.scala 266:44:chipyard.TestHarness.RocketConfig.fir@229272.10]
  assign _GEN_128 = {{7{_T_354[32]}},_T_354}; // @[Frontend.scala 266:39:chipyard.TestHarness.RocketConfig.fir@229273.10]
  assign _T_357 = $signed(_T_352) + $signed(_GEN_128); // @[Frontend.scala 268:34:chipyard.TestHarness.RocketConfig.fir@229276.10]
  assign predicted_taken = btb_io_resp_valid & btb_io_resp_bits_taken; // @[Frontend.scala 194:29:chipyard.TestHarness.RocketConfig.fir@228931.4]
  assign _T_89 = {btb_io_resp_bits_target[38],btb_io_resp_bits_target}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228934.6]
  assign _GEN_28 = predicted_taken ? _T_89 : ntpc; // @[Frontend.scala 194:56:chipyard.TestHarness.RocketConfig.fir@228932.4]
  assign _GEN_43 = _T_351 ? _T_357 : _GEN_28; // @[Frontend.scala 263:61:chipyard.TestHarness.RocketConfig.fir@229268.8]
  assign _GEN_46 = _T_607 ? _GEN_43 : _GEN_28; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229250.6]
  assign _GEN_79 = _T_618 ? _T_626 : _GEN_46; // @[Frontend.scala 263:61:chipyard.TestHarness.RocketConfig.fir@229590.8]
  assign _GEN_82 = _T_607 ? _GEN_79 : _GEN_46; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229572.6]
  assign _GEN_99 = taken_idx ? _GEN_82 : _GEN_46; // @[Frontend.scala 247:25:chipyard.TestHarness.RocketConfig.fir@229549.4]
  assign predicted_npc = useRAS ? {{1'd0}, btb_io_ras_head_bits} : _GEN_99; // @[Frontend.scala 307:19:chipyard.TestHarness.RocketConfig.fir@229638.4]
  assign npc = s2_replay ? s2_pc : predicted_npc; // @[Frontend.scala 129:16:chipyard.TestHarness.RocketConfig.fir@228819.4]
  assign _T_39 = ~s2_speculative; // @[Frontend.scala 135:56:chipyard.TestHarness.RocketConfig.fir@228821.4]
  assign _T_40 = s2_valid & _T_39; // @[Frontend.scala 135:53:chipyard.TestHarness.RocketConfig.fir@228822.4]
  assign _T_41 = s1_speculative | _T_40; // @[Frontend.scala 135:41:chipyard.TestHarness.RocketConfig.fir@228823.4]
  assign s0_speculative = _T_41 | predicted_taken; // @[Frontend.scala 135:72:chipyard.TestHarness.RocketConfig.fir@228824.4]
  assign _T_44 = ~s2_replay; // @[Frontend.scala 141:9:chipyard.TestHarness.RocketConfig.fir@228832.4]
  assign _T_566 = taken_rviJump_1 | taken_rviJALR_1; // @[Frontend.scala 232:29:chipyard.TestHarness.RocketConfig.fir@229516.4]
  assign _T_567 = taken_rviBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 232:53:chipyard.TestHarness.RocketConfig.fir@229517.4]
  assign _T_568 = _T_566 | _T_567; // @[Frontend.scala 232:40:chipyard.TestHarness.RocketConfig.fir@229518.4]
  assign _T_569 = taken_prevRVI_1 & _T_568; // @[Frontend.scala 232:17:chipyard.TestHarness.RocketConfig.fir@229519.4]
  assign _T_437 = 16'h9002 == _T_429; // @[Frontend.scala 227:26:chipyard.TestHarness.RocketConfig.fir@229383.4]
  assign taken_rvcJALR_1 = _T_437 & _T_432; // @[Frontend.scala 227:49:chipyard.TestHarness.RocketConfig.fir@229386.4]
  assign _T_570 = taken_rvcJump_1 | taken_rvcJALR_1; // @[Frontend.scala 233:27:chipyard.TestHarness.RocketConfig.fir@229520.4]
  assign _T_571 = _T_570 | taken_rvcJR_1; // @[Frontend.scala 233:38:chipyard.TestHarness.RocketConfig.fir@229521.4]
  assign _T_572 = taken_rvcBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 233:60:chipyard.TestHarness.RocketConfig.fir@229522.4]
  assign _T_573 = _T_571 | _T_572; // @[Frontend.scala 233:47:chipyard.TestHarness.RocketConfig.fir@229523.4]
  assign _T_574 = taken_valid_1 & _T_573; // @[Frontend.scala 233:15:chipyard.TestHarness.RocketConfig.fir@229524.4]
  assign taken_taken_1 = _T_569 | _T_574; // @[Frontend.scala 232:71:chipyard.TestHarness.RocketConfig.fir@229525.4]
  assign taken = taken_taken | taken_taken_1; // @[Frontend.scala 288:19:chipyard.TestHarness.RocketConfig.fir@229637.4]
  assign _GEN_116 = _T_32 | io_cpu_req_valid; // @[Frontend.scala 318:33:chipyard.TestHarness.RocketConfig.fir@229654.8]
  assign _GEN_120 = taken ? _GEN_116 : io_cpu_req_valid; // @[Frontend.scala 314:20:chipyard.TestHarness.RocketConfig.fir@229649.6]
  assign s2_redirect = _T_607 ? _GEN_120 : io_cpu_req_valid; // @[Frontend.scala 313:26:chipyard.TestHarness.RocketConfig.fir@229648.4]
  assign _T_45 = ~s2_redirect; // @[Frontend.scala 142:17:chipyard.TestHarness.RocketConfig.fir@228834.6]
  assign _GEN_0 = _T_44 & _T_45; // @[Frontend.scala 141:21:chipyard.TestHarness.RocketConfig.fir@228833.4]
  assign _T_49 = s2_redirect | tlb_io_resp_miss; // @[Frontend.scala 162:36:chipyard.TestHarness.RocketConfig.fir@228856.4]
  assign _T_52 = ~io_ptw_customCSRs_csrs_0_value[3]; // @[Frontend.scala 163:62:chipyard.TestHarness.RocketConfig.fir@228860.4]
  assign s2_can_speculatively_refill = s2_tlb_resp_cacheable & _T_52; // @[Frontend.scala 163:59:chipyard.TestHarness.RocketConfig.fir@228861.4]
  assign _T_53 = ~s2_can_speculatively_refill; // @[Frontend.scala 164:42:chipyard.TestHarness.RocketConfig.fir@228862.4]
  assign _T_54 = s2_speculative & _T_53; // @[Frontend.scala 164:39:chipyard.TestHarness.RocketConfig.fir@228863.4]
  assign _T_60 = _T_59 & s2_valid; // @[Frontend.scala 167:40:chipyard.TestHarness.RocketConfig.fir@228872.4]
  assign _T_61 = ~s2_tlb_resp_miss; // @[Frontend.scala 167:80:chipyard.TestHarness.RocketConfig.fir@228873.4]
  assign _T_62 = _T_61 & icache_io_s2_kill; // @[Frontend.scala 167:98:chipyard.TestHarness.RocketConfig.fir@228874.4]
  assign _T_63 = icache_io_resp_valid | _T_62; // @[Frontend.scala 167:77:chipyard.TestHarness.RocketConfig.fir@228875.4]
  assign _T_65 = io_cpu_req_valid ? io_cpu_req_bits_pc : npc; // @[Frontend.scala 169:28:chipyard.TestHarness.RocketConfig.fir@228879.4]
  assign _T_66 = ~_T_65; // @[Frontend.scala 343:29:chipyard.TestHarness.RocketConfig.fir@228880.4]
  assign _T_67 = _T_66 | 40'h1; // @[Frontend.scala 343:33:chipyard.TestHarness.RocketConfig.fir@228881.4]
  assign _T_70 = 3'h3 << s2_pc[1]; // @[Frontend.scala 172:52:chipyard.TestHarness.RocketConfig.fir@228886.4]
  assign _T_71 = ~icache_io_resp_valid; // @[Frontend.scala 173:79:chipyard.TestHarness.RocketConfig.fir@228888.4]
  assign _T_72 = icache_io_s2_kill & _T_71; // @[Frontend.scala 173:76:chipyard.TestHarness.RocketConfig.fir@228889.4]
  assign _T_73 = ~s2_xcpt; // @[Frontend.scala 173:104:chipyard.TestHarness.RocketConfig.fir@228890.4]
  assign _T_74 = _T_72 & _T_73; // @[Frontend.scala 173:101:chipyard.TestHarness.RocketConfig.fir@228891.4]
  assign _T_75 = icache_io_resp_bits_replay | _T_74; // @[Frontend.scala 173:55:chipyard.TestHarness.RocketConfig.fir@228892.4]
  assign _T_77 = s2_speculative & io_ptw_customCSRs_csrs_0_value[3]; // @[Frontend.scala 177:27:chipyard.TestHarness.RocketConfig.fir@228898.4]
  assign _T_78 = ~icache_io_s2_kill; // @[Frontend.scala 177:113:chipyard.TestHarness.RocketConfig.fir@228899.4]
  assign _T_79 = _T_77 & _T_78; // @[Frontend.scala 177:110:chipyard.TestHarness.RocketConfig.fir@228900.4]
  assign _T_80 = ~_T_79; // @[Frontend.scala 177:10:chipyard.TestHarness.RocketConfig.fir@228901.4]
  assign _T_82 = _T_80 | reset; // @[Frontend.scala 177:9:chipyard.TestHarness.RocketConfig.fir@228903.4]
  assign _T_83 = ~_T_82; // @[Frontend.scala 177:9:chipyard.TestHarness.RocketConfig.fir@228904.4]
  assign _T_84 = icache_io_resp_valid & icache_io_resp_bits_ae; // @[Frontend.scala 178:30:chipyard.TestHarness.RocketConfig.fir@228909.4]
  assign _T_92 = ~io_cpu_btb_update_valid; // @[Frontend.scala 294:11:chipyard.TestHarness.RocketConfig.fir@228957.4]
  assign fetch_bubble_likely = ~fq_io_mask[1]; // @[Frontend.scala 295:33:chipyard.TestHarness.RocketConfig.fir@228960.6]
  assign _T_95 = ~wrong_path; // @[Frontend.scala 296:54:chipyard.TestHarness.RocketConfig.fir@228962.6]
  assign _T_96 = _T_32 & _T_95; // @[Frontend.scala 296:51:chipyard.TestHarness.RocketConfig.fir@228963.6]
  assign _T_97 = _T_96 & fetch_bubble_likely; // @[Frontend.scala 296:66:chipyard.TestHarness.RocketConfig.fir@228964.6]
  assign _T_633 = ~s2_btb_resp_valid; // @[Frontend.scala 275:15:chipyard.TestHarness.RocketConfig.fir@229614.6]
  assign _T_635 = taken_predictBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 275:52:chipyard.TestHarness.RocketConfig.fir@229616.6]
  assign _T_636 = _T_635 | taken_predictJump_1; // @[Frontend.scala 275:91:chipyard.TestHarness.RocketConfig.fir@229617.6]
  assign _T_637 = _T_636 | taken_predictReturn_1; // @[Frontend.scala 275:106:chipyard.TestHarness.RocketConfig.fir@229618.6]
  assign _T_638 = _T_633 & _T_637; // @[Frontend.scala 275:34:chipyard.TestHarness.RocketConfig.fir@229619.6]
  assign _T_366 = taken_predictBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 275:52:chipyard.TestHarness.RocketConfig.fir@229292.6]
  assign _T_367 = _T_366 | taken_predictJump; // @[Frontend.scala 275:91:chipyard.TestHarness.RocketConfig.fir@229293.6]
  assign _T_368 = _T_367 | taken_predictReturn; // @[Frontend.scala 275:106:chipyard.TestHarness.RocketConfig.fir@229294.6]
  assign _T_369 = _T_633 & _T_368; // @[Frontend.scala 275:34:chipyard.TestHarness.RocketConfig.fir@229295.6]
  assign _GEN_92 = _T_638 | _T_369; // @[Frontend.scala 275:125:chipyard.TestHarness.RocketConfig.fir@229620.6]
  assign updateBTB = taken_idx ? _GEN_92 : _T_369; // @[Frontend.scala 247:25:chipyard.TestHarness.RocketConfig.fir@229549.4]
  assign _T_98 = _T_97 & updateBTB; // @[Frontend.scala 296:89:chipyard.TestHarness.RocketConfig.fir@228965.6]
  assign _T_99 = {taken_idx, 1'h0}; // @[Frontend.scala 300:63:chipyard.TestHarness.RocketConfig.fir@228970.6]
  assign _GEN_129 = {{38'd0}, _T_99}; // @[Frontend.scala 300:50:chipyard.TestHarness.RocketConfig.fir@228971.6]
  assign _T_100 = s2_base_pc | _GEN_129; // @[Frontend.scala 300:50:chipyard.TestHarness.RocketConfig.fir@228971.6]
  assign _GEN_36 = _T_92 ? _T_100 : {{1'd0}, io_cpu_btb_update_bits_br_pc}; // @[Frontend.scala 294:37:chipyard.TestHarness.RocketConfig.fir@228958.4]
  assign _GEN_37 = _T_92 ? s2_base_pc : {{1'd0}, io_cpu_btb_update_bits_pc}; // @[Frontend.scala 294:37:chipyard.TestHarness.RocketConfig.fir@228958.4]
  assign after_idx = taken_idx ? 2'h2 : 2'h1; // @[Frontend.scala 247:25:chipyard.TestHarness.RocketConfig.fir@229549.4]
  assign _T_101 = {after_idx, 1'h0}; // @[Frontend.scala 304:66:chipyard.TestHarness.RocketConfig.fir@228975.4]
  assign _GEN_130 = {{37'd0}, _T_101}; // @[Frontend.scala 304:53:chipyard.TestHarness.RocketConfig.fir@228976.4]
  assign _T_103 = s2_base_pc + _GEN_130; // @[Frontend.scala 304:53:chipyard.TestHarness.RocketConfig.fir@228977.4]
  assign _T_119 = taken_rviJALR | taken_rviJump; // @[Frontend.scala 220:30:chipyard.TestHarness.RocketConfig.fir@229003.4]
  assign taken_rviCall = _T_119 & taken_rviBits[7]; // @[Frontend.scala 220:42:chipyard.TestHarness.RocketConfig.fir@229005.4]
  assign _T_316 = s2_valid & s2_btb_resp_valid; // @[Frontend.scala 238:22:chipyard.TestHarness.RocketConfig.fir@229215.4]
  assign _T_317 = ~s2_btb_resp_bits_bridx; // @[Frontend.scala 238:69:chipyard.TestHarness.RocketConfig.fir@229216.4]
  assign _T_318 = _T_316 & _T_317; // @[Frontend.scala 238:43:chipyard.TestHarness.RocketConfig.fir@229217.4]
  assign _T_319 = _T_318 & taken_valid; // @[Frontend.scala 238:77:chipyard.TestHarness.RocketConfig.fir@229218.4]
  assign _T_321 = _T_319 & _T_373; // @[Frontend.scala 238:86:chipyard.TestHarness.RocketConfig.fir@229220.4]
  assign _GEN_39 = _T_321 | _T_75; // @[Frontend.scala 238:95:chipyard.TestHarness.RocketConfig.fir@229221.4]
  assign _GEN_40 = _T_321 | wrong_path; // @[Frontend.scala 238:95:chipyard.TestHarness.RocketConfig.fir@229221.4]
  assign _T_326 = taken_rviCall | taken_rviReturn; // @[Frontend.scala 250:92:chipyard.TestHarness.RocketConfig.fir@229233.6]
  assign _T_327 = taken_prevRVI & _T_326; // @[Frontend.scala 250:80:chipyard.TestHarness.RocketConfig.fir@229234.6]
  assign _T_328 = taken_rvcJALR | taken_rvcReturn; // @[Frontend.scala 250:127:chipyard.TestHarness.RocketConfig.fir@229235.6]
  assign _T_329 = taken_valid & _T_328; // @[Frontend.scala 250:115:chipyard.TestHarness.RocketConfig.fir@229236.6]
  assign _T_330 = _T_327 | _T_329; // @[Frontend.scala 250:106:chipyard.TestHarness.RocketConfig.fir@229237.6]
  assign _T_331 = _T_96 & _T_330; // @[Frontend.scala 250:68:chipyard.TestHarness.RocketConfig.fir@229238.6]
  assign _T_332 = taken_prevRVI ? taken_rviReturn : taken_rvcReturn; // @[Frontend.scala 251:50:chipyard.TestHarness.RocketConfig.fir@229240.6]
  assign _T_333 = taken_prevRVI ? taken_rviCall : taken_rvcJALR; // @[Frontend.scala 252:50:chipyard.TestHarness.RocketConfig.fir@229241.6]
  assign _T_334 = taken_prevRVI ? taken_rviBranch : taken_rvcBranch; // @[Frontend.scala 253:50:chipyard.TestHarness.RocketConfig.fir@229242.6]
  assign _T_337 = _T_334 ? 1'h0 : 1'h1; // @[Frontend.scala 253:46:chipyard.TestHarness.RocketConfig.fir@229245.6]
  assign _T_338 = _T_333 ? 2'h2 : {{1'd0}, _T_337}; // @[Frontend.scala 252:46:chipyard.TestHarness.RocketConfig.fir@229246.6]
  assign _T_339 = _T_332 ? 2'h3 : _T_338; // @[Frontend.scala 251:46:chipyard.TestHarness.RocketConfig.fir@229247.6]
  assign _T_342 = _T_32 & taken_taken; // @[Frontend.scala 257:34:chipyard.TestHarness.RocketConfig.fir@229252.8]
  assign _T_343 = ~taken_predictBranch; // @[Frontend.scala 257:46:chipyard.TestHarness.RocketConfig.fir@229253.8]
  assign _T_344 = _T_342 & _T_343; // @[Frontend.scala 257:43:chipyard.TestHarness.RocketConfig.fir@229254.8]
  assign _T_345 = ~taken_predictJump; // @[Frontend.scala 257:64:chipyard.TestHarness.RocketConfig.fir@229255.8]
  assign _T_346 = _T_344 & _T_345; // @[Frontend.scala 257:61:chipyard.TestHarness.RocketConfig.fir@229256.8]
  assign _T_347 = ~taken_predictReturn; // @[Frontend.scala 257:80:chipyard.TestHarness.RocketConfig.fir@229257.8]
  assign _T_348 = _T_346 & _T_347; // @[Frontend.scala 257:77:chipyard.TestHarness.RocketConfig.fir@229258.8]
  assign _GEN_41 = _T_348 | _GEN_40; // @[Frontend.scala 257:96:chipyard.TestHarness.RocketConfig.fir@229259.8]
  assign _GEN_44 = _T_607 ? _GEN_41 : _GEN_40; // @[Frontend.scala 256:30:chipyard.TestHarness.RocketConfig.fir@229250.6]
  assign _GEN_47 = _T_315 & _T_96; // @[Frontend.scala 271:59:chipyard.TestHarness.RocketConfig.fir@229283.6]
  assign taken_rvc_1 = taken_bits_1[1:0] != 2'h3; // @[Frontend.scala 210:45:chipyard.TestHarness.RocketConfig.fir@229310.4]
  assign _T_386 = taken_rviJALR_1 | taken_rviJump_1; // @[Frontend.scala 220:30:chipyard.TestHarness.RocketConfig.fir@229325.4]
  assign taken_rviCall_1 = _T_386 & taken_rviBits_1[7]; // @[Frontend.scala 220:42:chipyard.TestHarness.RocketConfig.fir@229327.4]
  assign _T_585 = _T_316 & s2_btb_resp_bits_bridx; // @[Frontend.scala 238:43:chipyard.TestHarness.RocketConfig.fir@229539.4]
  assign _T_586 = _T_585 & taken_valid_1; // @[Frontend.scala 238:77:chipyard.TestHarness.RocketConfig.fir@229540.4]
  assign _T_587 = ~taken_rvc_1; // @[Frontend.scala 238:89:chipyard.TestHarness.RocketConfig.fir@229541.4]
  assign _T_588 = _T_586 & _T_587; // @[Frontend.scala 238:86:chipyard.TestHarness.RocketConfig.fir@229542.4]
  assign _GEN_76 = _T_588 | _GEN_44; // @[Frontend.scala 238:95:chipyard.TestHarness.RocketConfig.fir@229543.4]
  assign _T_593 = taken_rviCall_1 | taken_rviReturn_1; // @[Frontend.scala 250:92:chipyard.TestHarness.RocketConfig.fir@229555.6]
  assign _T_594 = taken_prevRVI_1 & _T_593; // @[Frontend.scala 250:80:chipyard.TestHarness.RocketConfig.fir@229556.6]
  assign _T_595 = taken_rvcJALR_1 | taken_rvcReturn_1; // @[Frontend.scala 250:127:chipyard.TestHarness.RocketConfig.fir@229557.6]
  assign _T_596 = taken_valid_1 & _T_595; // @[Frontend.scala 250:115:chipyard.TestHarness.RocketConfig.fir@229558.6]
  assign _T_597 = _T_594 | _T_596; // @[Frontend.scala 250:106:chipyard.TestHarness.RocketConfig.fir@229559.6]
  assign _T_598 = _T_96 & _T_597; // @[Frontend.scala 250:68:chipyard.TestHarness.RocketConfig.fir@229560.6]
  assign _T_599 = taken_prevRVI_1 ? taken_rviReturn_1 : taken_rvcReturn_1; // @[Frontend.scala 251:50:chipyard.TestHarness.RocketConfig.fir@229562.6]
  assign _T_600 = taken_prevRVI_1 ? taken_rviCall_1 : taken_rvcJALR_1; // @[Frontend.scala 252:50:chipyard.TestHarness.RocketConfig.fir@229563.6]
  assign _T_601 = taken_prevRVI_1 ? taken_rviBranch_1 : taken_rvcBranch_1; // @[Frontend.scala 253:50:chipyard.TestHarness.RocketConfig.fir@229564.6]
  assign _T_604 = _T_601 ? 1'h0 : 1'h1; // @[Frontend.scala 253:46:chipyard.TestHarness.RocketConfig.fir@229567.6]
  assign _T_605 = _T_600 ? 2'h2 : {{1'd0}, _T_604}; // @[Frontend.scala 252:46:chipyard.TestHarness.RocketConfig.fir@229568.6]
  assign _T_606 = _T_599 ? 2'h3 : _T_605; // @[Frontend.scala 251:46:chipyard.TestHarness.RocketConfig.fir@229569.6]
  assign _T_609 = _T_32 & taken_taken_1; // @[Frontend.scala 257:34:chipyard.TestHarness.RocketConfig.fir@229574.8]
  assign _T_610 = ~taken_predictBranch_1; // @[Frontend.scala 257:46:chipyard.TestHarness.RocketConfig.fir@229575.8]
  assign _T_611 = _T_609 & _T_610; // @[Frontend.scala 257:43:chipyard.TestHarness.RocketConfig.fir@229576.8]
  assign _T_612 = ~taken_predictJump_1; // @[Frontend.scala 257:64:chipyard.TestHarness.RocketConfig.fir@229577.8]
  assign _T_613 = _T_611 & _T_612; // @[Frontend.scala 257:61:chipyard.TestHarness.RocketConfig.fir@229578.8]
  assign _T_614 = ~taken_predictReturn_1; // @[Frontend.scala 257:80:chipyard.TestHarness.RocketConfig.fir@229579.8]
  assign _T_615 = _T_613 & _T_614; // @[Frontend.scala 257:77:chipyard.TestHarness.RocketConfig.fir@229580.8]
  assign _GEN_77 = _T_615 | _GEN_76; // @[Frontend.scala 257:96:chipyard.TestHarness.RocketConfig.fir@229581.8]
  assign _GEN_83 = _T_582 ? _T_96 : _GEN_47; // @[Frontend.scala 271:59:chipyard.TestHarness.RocketConfig.fir@229607.6]
  assign _T_641 = taken_valid_1 & taken_idx; // @[Frontend.scala 283:23:chipyard.TestHarness.RocketConfig.fir@229628.6]
  assign _T_643 = _T_641 & _T_587; // @[Frontend.scala 283:37:chipyard.TestHarness.RocketConfig.fir@229630.6]
  assign _T_644 = taken_bits_1 | 16'h3; // @[Frontend.scala 285:37:chipyard.TestHarness.RocketConfig.fir@229633.8]
  assign _T_646 = s2_btb_taken | taken; // @[Frontend.scala 310:45:chipyard.TestHarness.RocketConfig.fir@229642.4]
  assign _T_647 = _T_32 & _T_646; // @[Frontend.scala 310:28:chipyard.TestHarness.RocketConfig.fir@229643.4]
  assign _GEN_117 = taken ? taken_idx : s2_btb_resp_bits_bridx; // @[Frontend.scala 314:20:chipyard.TestHarness.RocketConfig.fir@229649.6]
  assign _GEN_118 = taken | s2_btb_taken; // @[Frontend.scala 314:20:chipyard.TestHarness.RocketConfig.fir@229649.6]
  assign _GEN_119 = taken ? 5'h1c : s2_btb_resp_bits_entry; // @[Frontend.scala 314:20:chipyard.TestHarness.RocketConfig.fir@229649.6]
  assign _T_650 = ~s2_partial_insn_valid; // @[Frontend.scala 322:12:chipyard.TestHarness.RocketConfig.fir@229659.4]
  assign _T_652 = _T_650 | fq_io_enq_bits_mask[0]; // @[Frontend.scala 322:35:chipyard.TestHarness.RocketConfig.fir@229661.4]
  assign _T_654 = _T_652 | reset; // @[Frontend.scala 322:11:chipyard.TestHarness.RocketConfig.fir@229663.4]
  assign _T_655 = ~_T_654; // @[Frontend.scala 322:11:chipyard.TestHarness.RocketConfig.fir@229664.4]
  assign auto_icache_master_out_a_valid = icache_auto_master_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@228733.4]
  assign auto_icache_master_out_a_bits_address = icache_auto_master_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@228733.4]
  assign io_cpu_resp_valid = fq_io_deq_valid; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_btb_taken = fq_io_deq_bits_btb_taken; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_btb_bridx = fq_io_deq_bits_btb_bridx; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_btb_entry = fq_io_deq_bits_btb_entry; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_btb_bht_history = fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_pc = fq_io_deq_bits_pc; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_data = fq_io_deq_bits_data; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_xcpt_pf_inst = fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_xcpt_ae_inst = fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_resp_bits_replay = fq_io_deq_bits_replay; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign io_cpu_npc = ~_T_67; // @[Frontend.scala 169:14:chipyard.TestHarness.RocketConfig.fir@228883.4]
  assign io_ptw_req_valid = tlb_io_ptw_req_valid; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign io_ptw_req_bits_valid = tlb_io_ptw_req_bits_valid; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign io_ptw_req_bits_bits_addr = tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign icache_clock = gated_clock; // @[:chipyard.TestHarness.RocketConfig.fir@228731.4 Frontend.scala 95:16:chipyard.TestHarness.RocketConfig.fir@228756.4]
  assign icache_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@228732.4]
  assign icache_auto_master_out_a_ready = auto_icache_master_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@228733.4]
  assign icache_auto_master_out_d_valid = auto_icache_master_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@228733.4]
  assign icache_auto_master_out_d_bits_opcode = auto_icache_master_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@228733.4]
  assign icache_auto_master_out_d_bits_size = auto_icache_master_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@228733.4]
  assign icache_auto_master_out_d_bits_data = auto_icache_master_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@228733.4]
  assign icache_auto_master_out_d_bits_corrupt = auto_icache_master_out_d_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@228733.4]
  assign icache_io_req_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 157:23:chipyard.TestHarness.RocketConfig.fir@228851.4]
  assign icache_io_req_bits_addr = io_cpu_npc[38:0]; // @[Frontend.scala 158:27:chipyard.TestHarness.RocketConfig.fir@228852.4]
  assign icache_io_s1_paddr = tlb_io_resp_paddr; // @[Frontend.scala 160:22:chipyard.TestHarness.RocketConfig.fir@228854.4]
  assign icache_io_s1_kill = _T_49 | s2_replay; // @[Frontend.scala 162:21:chipyard.TestHarness.RocketConfig.fir@228858.4]
  assign icache_io_s2_kill = _T_54 | s2_xcpt; // @[Frontend.scala 164:21:chipyard.TestHarness.RocketConfig.fir@228865.4]
  assign icache_io_invalidate = io_cpu_flush_icache; // @[Frontend.scala 159:24:chipyard.TestHarness.RocketConfig.fir@228853.4]
  assign fq_clock = gated_clock; // @[:chipyard.TestHarness.RocketConfig.fir@228738.4]
  assign fq_reset = reset | io_cpu_req_valid; // @[:chipyard.TestHarness.RocketConfig.fir@228739.4]
  assign fq_io_enq_valid = _T_60 & _T_63; // @[Frontend.scala 167:19:chipyard.TestHarness.RocketConfig.fir@228877.4]
  assign fq_io_enq_bits_btb_taken = _T_607 ? _GEN_118 : s2_btb_taken; // @[Frontend.scala 174:22:chipyard.TestHarness.RocketConfig.fir@228894.4 Frontend.scala 175:28:chipyard.TestHarness.RocketConfig.fir@228895.4 Frontend.scala 316:34:chipyard.TestHarness.RocketConfig.fir@229651.8]
  assign fq_io_enq_bits_btb_bridx = _T_607 ? _GEN_117 : s2_btb_resp_bits_bridx; // @[Frontend.scala 174:22:chipyard.TestHarness.RocketConfig.fir@228894.4 Frontend.scala 315:34:chipyard.TestHarness.RocketConfig.fir@229650.8]
  assign fq_io_enq_bits_btb_entry = _T_607 ? _GEN_119 : s2_btb_resp_bits_entry; // @[Frontend.scala 174:22:chipyard.TestHarness.RocketConfig.fir@228894.4 Frontend.scala 317:34:chipyard.TestHarness.RocketConfig.fir@229652.8]
  assign fq_io_enq_bits_btb_bht_history = s2_btb_resp_bits_bht_history; // @[Frontend.scala 174:22:chipyard.TestHarness.RocketConfig.fir@228894.4]
  assign fq_io_enq_bits_pc = s2_pc; // @[Frontend.scala 168:21:chipyard.TestHarness.RocketConfig.fir@228878.4]
  assign fq_io_enq_bits_data = icache_io_resp_bits_data; // @[Frontend.scala 171:23:chipyard.TestHarness.RocketConfig.fir@228884.4]
  assign fq_io_enq_bits_mask = _T_70[1:0]; // @[Frontend.scala 172:23:chipyard.TestHarness.RocketConfig.fir@228887.4]
  assign fq_io_enq_bits_xcpt_pf_inst = s2_tlb_resp_pf_inst; // @[Frontend.scala 176:23:chipyard.TestHarness.RocketConfig.fir@228896.4]
  assign fq_io_enq_bits_xcpt_ae_inst = _T_84 | s2_tlb_resp_ae_inst; // @[Frontend.scala 176:23:chipyard.TestHarness.RocketConfig.fir@228896.4 Frontend.scala 178:87:chipyard.TestHarness.RocketConfig.fir@228911.6]
  assign fq_io_enq_bits_replay = _T_588 | _GEN_39; // @[Frontend.scala 173:25:chipyard.TestHarness.RocketConfig.fir@228893.4 Frontend.scala 242:31:chipyard.TestHarness.RocketConfig.fir@229223.6 Frontend.scala 242:31:chipyard.TestHarness.RocketConfig.fir@229545.6]
  assign fq_io_deq_ready = io_cpu_resp_ready; // @[Frontend.scala 327:15:chipyard.TestHarness.RocketConfig.fir@229675.4]
  assign tlb_clock = gated_clock; // @[:chipyard.TestHarness.RocketConfig.fir@228760.4]
  assign tlb_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@228761.4]
  assign tlb_io_req_valid = s1_valid & _T_44; // @[Frontend.scala 149:20:chipyard.TestHarness.RocketConfig.fir@228843.4]
  assign tlb_io_req_bits_vaddr = s1_pc; // @[Frontend.scala 150:25:chipyard.TestHarness.RocketConfig.fir@228844.4]
  assign tlb_io_sfence_valid = io_cpu_sfence_valid; // @[Frontend.scala 153:17:chipyard.TestHarness.RocketConfig.fir@228847.4]
  assign tlb_io_sfence_bits_rs1 = io_cpu_sfence_bits_rs1; // @[Frontend.scala 153:17:chipyard.TestHarness.RocketConfig.fir@228847.4]
  assign tlb_io_sfence_bits_rs2 = io_cpu_sfence_bits_rs2; // @[Frontend.scala 153:17:chipyard.TestHarness.RocketConfig.fir@228847.4]
  assign tlb_io_sfence_bits_addr = io_cpu_sfence_bits_addr; // @[Frontend.scala 153:17:chipyard.TestHarness.RocketConfig.fir@228847.4]
  assign tlb_io_ptw_req_ready = io_ptw_req_ready; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_ae = io_ptw_resp_bits_ae; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_level = io_ptw_resp_bits_level; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_resp_bits_homogeneous = io_ptw_resp_bits_homogeneous; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_ptbr_mode = io_ptw_ptbr_mode; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_status_debug = io_ptw_status_debug; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_status_prv = io_ptw_status_prv; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_0_cfg_l = io_ptw_pmp_0_cfg_l; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_0_cfg_a = io_ptw_pmp_0_cfg_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_0_cfg_x = io_ptw_pmp_0_cfg_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_0_cfg_w = io_ptw_pmp_0_cfg_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_0_cfg_r = io_ptw_pmp_0_cfg_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_0_addr = io_ptw_pmp_0_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_0_mask = io_ptw_pmp_0_mask; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_1_cfg_l = io_ptw_pmp_1_cfg_l; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_1_cfg_a = io_ptw_pmp_1_cfg_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_1_cfg_x = io_ptw_pmp_1_cfg_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_1_cfg_w = io_ptw_pmp_1_cfg_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_1_cfg_r = io_ptw_pmp_1_cfg_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_1_addr = io_ptw_pmp_1_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_1_mask = io_ptw_pmp_1_mask; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_2_cfg_l = io_ptw_pmp_2_cfg_l; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_2_cfg_a = io_ptw_pmp_2_cfg_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_2_cfg_x = io_ptw_pmp_2_cfg_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_2_cfg_w = io_ptw_pmp_2_cfg_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_2_cfg_r = io_ptw_pmp_2_cfg_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_2_addr = io_ptw_pmp_2_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_2_mask = io_ptw_pmp_2_mask; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_3_cfg_l = io_ptw_pmp_3_cfg_l; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_3_cfg_a = io_ptw_pmp_3_cfg_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_3_cfg_x = io_ptw_pmp_3_cfg_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_3_cfg_w = io_ptw_pmp_3_cfg_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_3_cfg_r = io_ptw_pmp_3_cfg_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_3_addr = io_ptw_pmp_3_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_3_mask = io_ptw_pmp_3_mask; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_4_cfg_l = io_ptw_pmp_4_cfg_l; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_4_cfg_a = io_ptw_pmp_4_cfg_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_4_cfg_x = io_ptw_pmp_4_cfg_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_4_cfg_w = io_ptw_pmp_4_cfg_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_4_cfg_r = io_ptw_pmp_4_cfg_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_4_addr = io_ptw_pmp_4_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_4_mask = io_ptw_pmp_4_mask; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_5_cfg_l = io_ptw_pmp_5_cfg_l; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_5_cfg_a = io_ptw_pmp_5_cfg_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_5_cfg_x = io_ptw_pmp_5_cfg_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_5_cfg_w = io_ptw_pmp_5_cfg_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_5_cfg_r = io_ptw_pmp_5_cfg_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_5_addr = io_ptw_pmp_5_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_5_mask = io_ptw_pmp_5_mask; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_6_cfg_l = io_ptw_pmp_6_cfg_l; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_6_cfg_a = io_ptw_pmp_6_cfg_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_6_cfg_x = io_ptw_pmp_6_cfg_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_6_cfg_w = io_ptw_pmp_6_cfg_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_6_cfg_r = io_ptw_pmp_6_cfg_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_6_addr = io_ptw_pmp_6_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_6_mask = io_ptw_pmp_6_mask; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_7_cfg_l = io_ptw_pmp_7_cfg_l; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_7_cfg_a = io_ptw_pmp_7_cfg_a; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_7_cfg_x = io_ptw_pmp_7_cfg_x; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_7_cfg_w = io_ptw_pmp_7_cfg_w; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_7_cfg_r = io_ptw_pmp_7_cfg_r; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_7_addr = io_ptw_pmp_7_addr; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_ptw_pmp_7_mask = io_ptw_pmp_7_mask; // @[Frontend.scala 148:10:chipyard.TestHarness.RocketConfig.fir@228840.4]
  assign tlb_io_kill = ~s2_valid; // @[Frontend.scala 154:15:chipyard.TestHarness.RocketConfig.fir@228849.4]
  assign btb_clock = gated_clock; // @[:chipyard.TestHarness.RocketConfig.fir@228915.4]
  assign btb_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@228916.4]
  assign btb_io_req_bits_addr = s1_pc[38:0]; // @[Frontend.scala 184:26:chipyard.TestHarness.RocketConfig.fir@228919.4]
  assign btb_io_btb_update_valid = _T_92 ? _T_98 : io_cpu_btb_update_valid; // @[Frontend.scala 185:23:chipyard.TestHarness.RocketConfig.fir@228920.4 Frontend.scala 296:31:chipyard.TestHarness.RocketConfig.fir@228966.6]
  assign btb_io_btb_update_bits_prediction_entry = _T_92 ? 5'h1c : io_cpu_btb_update_bits_prediction_entry; // @[Frontend.scala 185:23:chipyard.TestHarness.RocketConfig.fir@228920.4 Frontend.scala 297:47:chipyard.TestHarness.RocketConfig.fir@228967.6]
  assign btb_io_btb_update_bits_pc = _GEN_37[38:0]; // @[Frontend.scala 185:23:chipyard.TestHarness.RocketConfig.fir@228920.4 Frontend.scala 301:33:chipyard.TestHarness.RocketConfig.fir@228973.6]
  assign btb_io_btb_update_bits_isValid = _T_92 | io_cpu_btb_update_bits_isValid; // @[Frontend.scala 185:23:chipyard.TestHarness.RocketConfig.fir@228920.4 Frontend.scala 298:38:chipyard.TestHarness.RocketConfig.fir@228968.6]
  assign btb_io_btb_update_bits_br_pc = _GEN_36[38:0]; // @[Frontend.scala 185:23:chipyard.TestHarness.RocketConfig.fir@228920.4 Frontend.scala 300:36:chipyard.TestHarness.RocketConfig.fir@228972.6]
  assign btb_io_btb_update_bits_cfiType = _T_92 ? btb_io_ras_update_bits_cfiType : io_cpu_btb_update_bits_cfiType; // @[Frontend.scala 185:23:chipyard.TestHarness.RocketConfig.fir@228920.4 Frontend.scala 299:38:chipyard.TestHarness.RocketConfig.fir@228969.6]
  assign btb_io_bht_update_valid = io_cpu_bht_update_valid; // @[Frontend.scala 186:23:chipyard.TestHarness.RocketConfig.fir@228921.4 Frontend.scala 201:50:chipyard.TestHarness.RocketConfig.fir@228942.6]
  assign btb_io_bht_update_bits_prediction_history = io_cpu_bht_update_bits_prediction_history; // @[Frontend.scala 186:23:chipyard.TestHarness.RocketConfig.fir@228921.4]
  assign btb_io_bht_update_bits_pc = io_cpu_bht_update_bits_pc; // @[Frontend.scala 186:23:chipyard.TestHarness.RocketConfig.fir@228921.4]
  assign btb_io_bht_update_bits_branch = io_cpu_bht_update_bits_branch; // @[Frontend.scala 186:23:chipyard.TestHarness.RocketConfig.fir@228921.4]
  assign btb_io_bht_update_bits_taken = io_cpu_bht_update_bits_taken; // @[Frontend.scala 186:23:chipyard.TestHarness.RocketConfig.fir@228921.4]
  assign btb_io_bht_update_bits_mispredict = io_cpu_bht_update_bits_mispredict; // @[Frontend.scala 186:23:chipyard.TestHarness.RocketConfig.fir@228921.4]
  assign btb_io_bht_advance_valid = taken_idx ? _GEN_83 : _GEN_47; // @[Frontend.scala 188:30:chipyard.TestHarness.RocketConfig.fir@228923.4 Frontend.scala 272:36:chipyard.TestHarness.RocketConfig.fir@229287.8 Frontend.scala 272:36:chipyard.TestHarness.RocketConfig.fir@229611.8]
  assign btb_io_bht_advance_bits_bht_value = s2_btb_resp_bits_bht_value; // @[Frontend.scala 273:35:chipyard.TestHarness.RocketConfig.fir@229288.8 Frontend.scala 273:35:chipyard.TestHarness.RocketConfig.fir@229612.8]
  assign btb_io_ras_update_valid = taken_idx ? _T_598 : _T_331; // @[Frontend.scala 187:29:chipyard.TestHarness.RocketConfig.fir@228922.4 Frontend.scala 250:33:chipyard.TestHarness.RocketConfig.fir@229239.6 Frontend.scala 250:33:chipyard.TestHarness.RocketConfig.fir@229561.6]
  assign btb_io_ras_update_bits_cfiType = taken_idx ? _T_606 : _T_339; // @[Frontend.scala 251:40:chipyard.TestHarness.RocketConfig.fir@229248.6 Frontend.scala 251:40:chipyard.TestHarness.RocketConfig.fir@229570.6]
  assign btb_io_ras_update_bits_returnAddr = _T_103[38:0]; // @[Frontend.scala 304:39:chipyard.TestHarness.RocketConfig.fir@228978.4]
  assign btb_io_flush = _T_588 | _T_321; // @[Frontend.scala 182:18:chipyard.TestHarness.RocketConfig.fir@228917.4 Frontend.scala 200:54:chipyard.TestHarness.RocketConfig.fir@228939.6 Frontend.scala 241:22:chipyard.TestHarness.RocketConfig.fir@229222.6 Frontend.scala 241:22:chipyard.TestHarness.RocketConfig.fir@229544.6]
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
  s2_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  s1_pc = _RAND_2[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s1_speculative = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  s2_pc = _RAND_4[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  s2_btb_resp_valid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  s2_btb_resp_bits_taken = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  s2_btb_resp_bits_bridx = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  s2_btb_resp_bits_entry = _RAND_8[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_history = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_value = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  s2_tlb_resp_miss = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  s2_tlb_resp_pf_inst = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  s2_tlb_resp_ae_inst = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s2_tlb_resp_cacheable = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  s2_speculative = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s2_partial_insn_valid = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s2_partial_insn = _RAND_17[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  wrong_path = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_37 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_59 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge gated_clock) begin
    s1_valid <= io_cpu_req_valid | s0_fq_has_space;
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _GEN_0;
    end
    s1_pc <= io_cpu_npc;
    if (io_cpu_req_valid) begin
      s1_speculative <= io_cpu_req_bits_speculative;
    end else if (s2_replay) begin
      s1_speculative <= s2_speculative;
    end else begin
      s1_speculative <= s0_speculative;
    end
    if (reset) begin
      s2_pc <= 40'h10040;
    end else if (_T_44) begin
      s2_pc <= s1_pc;
    end
    if (_T_44) begin
      s2_btb_resp_valid <= btb_io_resp_valid;
    end
    if (_T_44) begin
      s2_btb_resp_bits_taken <= btb_io_resp_bits_taken;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bridx <= btb_io_resp_bits_bridx;
    end
    if (_T_44) begin
      s2_btb_resp_bits_entry <= btb_io_resp_bits_entry;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bht_history <= btb_io_resp_bits_bht_history;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bht_value <= btb_io_resp_bits_bht_value;
    end
    if (_T_44) begin
      s2_tlb_resp_miss <= tlb_io_resp_miss;
    end
    if (_T_44) begin
      s2_tlb_resp_pf_inst <= tlb_io_resp_pf_inst;
    end
    if (_T_44) begin
      s2_tlb_resp_ae_inst <= tlb_io_resp_ae_inst;
    end
    if (_T_44) begin
      s2_tlb_resp_cacheable <= tlb_io_resp_cacheable;
    end
    if (reset) begin
      s2_speculative <= 1'h0;
    end else if (_T_44) begin
      s2_speculative <= s1_speculative;
    end
    if (reset) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (s2_redirect) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (_T_647) begin
      s2_partial_insn_valid <= 1'h0;
    end else if (_T_32) begin
      s2_partial_insn_valid <= _T_643;
    end
    if (_T_32) begin
      if (_T_643) begin
        s2_partial_insn <= _T_644;
      end
    end
    if (io_cpu_req_valid) begin
      wrong_path <= 1'h0;
    end else if (taken_idx) begin
      if (_T_607) begin
        wrong_path <= _GEN_77;
      end else begin
        wrong_path <= _GEN_76;
      end
    end else begin
      wrong_path <= _GEN_76;
    end
    _T_37 <= reset | _T_36;
    _T_59 <= s1_valid;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:90 assert(!(io.cpu.req.valid || io.cpu.sfence.valid || io.cpu.flush_icache || io.cpu.bht_update.valid || io.cpu.btb_update.valid) || io.cpu.might_request)\n"); // @[Frontend.scala 90:9:chipyard.TestHarness.RocketConfig.fir@228753.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_10) begin
          $fatal; // @[Frontend.scala 90:9:chipyard.TestHarness.RocketConfig.fir@228754.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_83) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:177 assert(!(s2_speculative && io.ptw.customCSRs.asInstanceOf[RocketCustomCSRs].disableSpeculativeICacheRefill && !icache.io.s2_kill))\n"); // @[Frontend.scala 177:9:chipyard.TestHarness.RocketConfig.fir@228906.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_83) begin
          $fatal; // @[Frontend.scala 177:9:chipyard.TestHarness.RocketConfig.fir@228907.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_655) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:322 assert(!s2_partial_insn_valid || fq.io.enq.bits.mask(0))\n"); // @[Frontend.scala 322:11:chipyard.TestHarness.RocketConfig.fir@229666.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_655) begin
          $fatal; // @[Frontend.scala 322:11:chipyard.TestHarness.RocketConfig.fir@229667.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
