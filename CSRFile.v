module CSRFile( // @[:chipyard.TestHarness.RocketConfig.fir@243616.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@243617.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@243618.4]
  input         io_ungated_clock, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input         io_interrupts_debug, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input         io_interrupts_mtip, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input         io_interrupts_msip, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input         io_interrupts_meip, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input         io_interrupts_seip, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [11:0] io_rw_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [2:0]  io_rw_cmd, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [63:0] io_rw_rdata, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [63:0] io_rw_wdata, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [11:0] io_decode_0_csr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_decode_0_fp_illegal, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_decode_0_fp_csr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_decode_0_read_illegal, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_decode_0_write_illegal, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_decode_0_write_flush, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_decode_0_system_illegal, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_csr_stall, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_eret, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_singleStep, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_debug, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_cease, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_wfi, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_status_isa, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_status_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_status_prv, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_sd, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [26:0] io_status_zero2, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_status_sxl, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_status_uxl, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_sd_rv32, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [7:0]  io_status_zero1, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_tsr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_tw, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_tvm, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_mxr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_sum, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_mprv, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_status_xs, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_status_fs, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_status_mpp, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_status_vs, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_spp, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_mpie, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_hpie, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_spie, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_upie, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_mie, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_hie, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_sie, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_status_uie, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [3:0]  io_ptbr_mode, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [43:0] io_ptbr_ppn, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [39:0] io_evec, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input         io_exception, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input         io_retire, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [63:0] io_cause, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [39:0] io_pc, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [39:0] io_tval, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [63:0] io_time, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [2:0]  io_fcsr_rm, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input         io_fcsr_flags_valid, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [4:0]  io_fcsr_flags_bits, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_interrupt, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [63:0] io_interrupt_cause, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_bp_0_control_action, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_bp_0_control_tmatch, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_bp_0_control_m, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_bp_0_control_s, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_bp_0_control_u, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_bp_0_control_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_bp_0_control_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_bp_0_control_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [38:0] io_bp_0_address, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_0_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_pmp_0_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_0_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_0_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_0_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [29:0] io_pmp_0_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_pmp_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_1_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_pmp_1_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_1_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_1_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_1_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [29:0] io_pmp_1_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_pmp_1_mask, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_2_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_pmp_2_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_2_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_2_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_2_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [29:0] io_pmp_2_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_pmp_2_mask, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_3_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_pmp_3_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_3_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_3_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_3_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [29:0] io_pmp_3_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_pmp_3_mask, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_4_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_pmp_4_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_4_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_4_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_4_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [29:0] io_pmp_4_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_pmp_4_mask, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_5_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_pmp_5_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_5_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_5_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_5_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [29:0] io_pmp_5_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_pmp_5_mask, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_6_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_pmp_6_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_6_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_6_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_6_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [29:0] io_pmp_6_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_pmp_6_mask, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_7_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [1:0]  io_pmp_7_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_7_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_7_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_pmp_7_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [29:0] io_pmp_7_addr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_pmp_7_mask, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  input  [31:0] io_inst_0, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_trace_0_valid, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [39:0] io_trace_0_iaddr, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [31:0] io_trace_0_insn, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output        io_trace_0_exception, // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
  output [63:0] io_customCSRs_0_value // @[:chipyard.TestHarness.RocketConfig.fir@243619.4]
);
  reg [1:0] reg_mstatus_prv; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_0;
  reg  reg_mstatus_tsr; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_1;
  reg  reg_mstatus_tw; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_2;
  reg  reg_mstatus_tvm; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_3;
  reg  reg_mstatus_mxr; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_4;
  reg  reg_mstatus_sum; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_5;
  reg  reg_mstatus_mprv; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_6;
  reg [1:0] reg_mstatus_fs; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_7;
  reg [1:0] reg_mstatus_mpp; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_8;
  reg  reg_mstatus_spp; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_9;
  reg  reg_mstatus_mpie; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_10;
  reg  reg_mstatus_spie; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_11;
  reg  reg_mstatus_mie; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_12;
  reg  reg_mstatus_sie; // @[CSR.scala 300:24:chipyard.TestHarness.RocketConfig.fir@243662.4]
  reg [31:0] _RAND_13;
  wire  system_insn; // @[CSR.scala 577:31:chipyard.TestHarness.RocketConfig.fir@244609.4]
  wire [31:0] _T_703; // @[CSR.scala 589:28:chipyard.TestHarness.RocketConfig.fir@244610.4]
  wire [31:0] _T_710; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244617.4]
  wire  _T_711; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244618.4]
  wire [31:0] _T_712; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244619.4]
  wire  _T_713; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244620.4]
  wire  _T_715; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@244622.4]
  wire  insn_ret; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244637.4]
  wire  _T_1557; // @[CSR.scala 727:36:chipyard.TestHarness.RocketConfig.fir@245562.6]
  reg [1:0] reg_dcsr_prv; // @[CSR.scala 308:21:chipyard.TestHarness.RocketConfig.fir@243690.4]
  reg [31:0] _RAND_14;
  wire [1:0] _GEN_93; // @[CSR.scala 733:53:chipyard.TestHarness.RocketConfig.fir@245579.8]
  wire [1:0] _GEN_102; // @[CSR.scala 727:52:chipyard.TestHarness.RocketConfig.fir@245564.6]
  wire [31:0] _T_704; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244611.4]
  wire  _T_705; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244612.4]
  wire  insn_call; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244633.4]
  wire  _T_708; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244615.4]
  wire  insn_break; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244635.4]
  wire  _T_1197; // @[CSR.scala 661:29:chipyard.TestHarness.RocketConfig.fir@245140.4]
  wire  exception; // @[CSR.scala 661:43:chipyard.TestHarness.RocketConfig.fir@245141.4]
  reg  reg_singleStepped; // @[CSR.scala 352:30:chipyard.TestHarness.RocketConfig.fir@243749.4]
  reg [31:0] _RAND_15;
  wire [3:0] _GEN_490; // @[CSR.scala 625:36:chipyard.TestHarness.RocketConfig.fir@245063.4]
  wire [3:0] _T_1143; // @[CSR.scala 625:36:chipyard.TestHarness.RocketConfig.fir@245064.4]
  wire [63:0] _T_1144; // @[CSR.scala 626:14:chipyard.TestHarness.RocketConfig.fir@245065.4]
  wire [63:0] cause; // @[CSR.scala 625:8:chipyard.TestHarness.RocketConfig.fir@245066.4]
  wire [7:0] cause_lsbs; // @[CSR.scala 627:25:chipyard.TestHarness.RocketConfig.fir@245067.4]
  wire  _T_1146; // @[CSR.scala 628:53:chipyard.TestHarness.RocketConfig.fir@245069.4]
  wire  causeIsDebugInt; // @[CSR.scala 628:39:chipyard.TestHarness.RocketConfig.fir@245070.4]
  wire  _T_1158; // @[CSR.scala 631:60:chipyard.TestHarness.RocketConfig.fir@245084.4]
  wire  _T_1148; // @[CSR.scala 629:29:chipyard.TestHarness.RocketConfig.fir@245072.4]
  wire  causeIsDebugTrigger; // @[CSR.scala 629:44:chipyard.TestHarness.RocketConfig.fir@245074.4]
  wire  _T_1159; // @[CSR.scala 631:79:chipyard.TestHarness.RocketConfig.fir@245085.4]
  wire  _T_1152; // @[CSR.scala 630:42:chipyard.TestHarness.RocketConfig.fir@245077.4]
  reg  reg_dcsr_ebreakm; // @[CSR.scala 308:21:chipyard.TestHarness.RocketConfig.fir@243690.4]
  reg [31:0] _RAND_16;
  reg  reg_dcsr_ebreaks; // @[CSR.scala 308:21:chipyard.TestHarness.RocketConfig.fir@243690.4]
  reg [31:0] _RAND_17;
  reg  reg_dcsr_ebreaku; // @[CSR.scala 308:21:chipyard.TestHarness.RocketConfig.fir@243690.4]
  reg [31:0] _RAND_18;
  wire [3:0] _T_1155; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@245080.4]
  wire [3:0] _T_1156; // @[CSR.scala 630:134:chipyard.TestHarness.RocketConfig.fir@245081.4]
  wire  causeIsDebugBreak; // @[CSR.scala 630:56:chipyard.TestHarness.RocketConfig.fir@245083.4]
  wire  _T_1160; // @[CSR.scala 631:102:chipyard.TestHarness.RocketConfig.fir@245086.4]
  reg  reg_debug; // @[CSR.scala 349:22:chipyard.TestHarness.RocketConfig.fir@243746.4]
  reg [31:0] _RAND_19;
  wire  trapToDebug; // @[CSR.scala 631:123:chipyard.TestHarness.RocketConfig.fir@245087.4]
  wire  _T_1232; // @[CSR.scala 678:13:chipyard.TestHarness.RocketConfig.fir@245206.8]
  wire [1:0] _GEN_42; // @[CSR.scala 678:25:chipyard.TestHarness.RocketConfig.fir@245207.8]
  wire  _T_1163; // @[CSR.scala 633:59:chipyard.TestHarness.RocketConfig.fir@245091.4]
  reg [63:0] reg_mideleg; // @[CSR.scala 360:18:chipyard.TestHarness.RocketConfig.fir@243754.4]
  reg [63:0] _RAND_20;
  wire [63:0] read_mideleg; // @[CSR.scala 361:36:chipyard.TestHarness.RocketConfig.fir@243755.4]
  wire [63:0] _T_1166; // @[CSR.scala 633:102:chipyard.TestHarness.RocketConfig.fir@245094.4]
  reg [63:0] reg_medeleg; // @[CSR.scala 364:18:chipyard.TestHarness.RocketConfig.fir@243757.4]
  reg [63:0] _RAND_21;
  wire [63:0] read_medeleg; // @[CSR.scala 365:36:chipyard.TestHarness.RocketConfig.fir@243758.4]
  wire [63:0] _T_1168; // @[CSR.scala 633:128:chipyard.TestHarness.RocketConfig.fir@245096.4]
  wire  _T_1170; // @[CSR.scala 633:74:chipyard.TestHarness.RocketConfig.fir@245098.4]
  wire  delegate; // @[CSR.scala 633:68:chipyard.TestHarness.RocketConfig.fir@245099.4]
  wire [1:0] _GEN_50; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  wire [1:0] _GEN_61; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire [1:0] _GEN_79; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire [1:0] new_prv; // @[CSR.scala 726:19:chipyard.TestHarness.RocketConfig.fir@245560.4]
  wire  _T_1; // @[CSR.scala 1062:35:chipyard.TestHarness.RocketConfig.fir@243666.4]
  reg [2:0] reg_dcsr_cause; // @[CSR.scala 308:21:chipyard.TestHarness.RocketConfig.fir@243690.4]
  reg [31:0] _RAND_22;
  reg  reg_dcsr_step; // @[CSR.scala 308:21:chipyard.TestHarness.RocketConfig.fir@243690.4]
  reg [31:0] _RAND_23;
  reg [39:0] reg_dpc; // @[CSR.scala 350:20:chipyard.TestHarness.RocketConfig.fir@243747.4]
  reg [63:0] _RAND_24;
  reg [63:0] reg_dscratch; // @[CSR.scala 351:25:chipyard.TestHarness.RocketConfig.fir@243748.4]
  reg [63:0] _RAND_25;
  reg  reg_bp_0_control_dmode; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_26;
  reg  reg_bp_0_control_action; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_27;
  reg [1:0] reg_bp_0_control_tmatch; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_28;
  reg  reg_bp_0_control_m; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_29;
  reg  reg_bp_0_control_s; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_30;
  reg  reg_bp_0_control_u; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_31;
  reg  reg_bp_0_control_x; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_32;
  reg  reg_bp_0_control_w; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_33;
  reg  reg_bp_0_control_r; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [31:0] _RAND_34;
  reg [38:0] reg_bp_0_address; // @[CSR.scala 355:19:chipyard.TestHarness.RocketConfig.fir@243751.4]
  reg [63:0] _RAND_35;
  reg  reg_pmp_0_cfg_l; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_36;
  reg [1:0] reg_pmp_0_cfg_a; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_37;
  reg  reg_pmp_0_cfg_x; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_38;
  reg  reg_pmp_0_cfg_w; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_39;
  reg  reg_pmp_0_cfg_r; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_40;
  reg [29:0] reg_pmp_0_addr; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_41;
  reg  reg_pmp_1_cfg_l; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_42;
  reg [1:0] reg_pmp_1_cfg_a; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_43;
  reg  reg_pmp_1_cfg_x; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_44;
  reg  reg_pmp_1_cfg_w; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_45;
  reg  reg_pmp_1_cfg_r; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_46;
  reg [29:0] reg_pmp_1_addr; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_47;
  reg  reg_pmp_2_cfg_l; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_48;
  reg [1:0] reg_pmp_2_cfg_a; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_49;
  reg  reg_pmp_2_cfg_x; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_50;
  reg  reg_pmp_2_cfg_w; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_51;
  reg  reg_pmp_2_cfg_r; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_52;
  reg [29:0] reg_pmp_2_addr; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_53;
  reg  reg_pmp_3_cfg_l; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_54;
  reg [1:0] reg_pmp_3_cfg_a; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_55;
  reg  reg_pmp_3_cfg_x; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_56;
  reg  reg_pmp_3_cfg_w; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_57;
  reg  reg_pmp_3_cfg_r; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_58;
  reg [29:0] reg_pmp_3_addr; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_59;
  reg  reg_pmp_4_cfg_l; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_60;
  reg [1:0] reg_pmp_4_cfg_a; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_61;
  reg  reg_pmp_4_cfg_x; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_62;
  reg  reg_pmp_4_cfg_w; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_63;
  reg  reg_pmp_4_cfg_r; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_64;
  reg [29:0] reg_pmp_4_addr; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_65;
  reg  reg_pmp_5_cfg_l; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_66;
  reg [1:0] reg_pmp_5_cfg_a; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_67;
  reg  reg_pmp_5_cfg_x; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_68;
  reg  reg_pmp_5_cfg_w; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_69;
  reg  reg_pmp_5_cfg_r; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_70;
  reg [29:0] reg_pmp_5_addr; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_71;
  reg  reg_pmp_6_cfg_l; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_72;
  reg [1:0] reg_pmp_6_cfg_a; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_73;
  reg  reg_pmp_6_cfg_x; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_74;
  reg  reg_pmp_6_cfg_w; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_75;
  reg  reg_pmp_6_cfg_r; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_76;
  reg [29:0] reg_pmp_6_addr; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_77;
  reg  reg_pmp_7_cfg_l; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_78;
  reg [1:0] reg_pmp_7_cfg_a; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_79;
  reg  reg_pmp_7_cfg_x; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_80;
  reg  reg_pmp_7_cfg_w; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_81;
  reg  reg_pmp_7_cfg_r; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_82;
  reg [29:0] reg_pmp_7_addr; // @[CSR.scala 356:20:chipyard.TestHarness.RocketConfig.fir@243752.4]
  reg [31:0] _RAND_83;
  reg [63:0] reg_mie; // @[CSR.scala 358:20:chipyard.TestHarness.RocketConfig.fir@243753.4]
  reg [63:0] _RAND_84;
  reg  reg_mip_seip; // @[CSR.scala 367:20:chipyard.TestHarness.RocketConfig.fir@243760.4]
  reg [31:0] _RAND_85;
  reg  reg_mip_stip; // @[CSR.scala 367:20:chipyard.TestHarness.RocketConfig.fir@243760.4]
  reg [31:0] _RAND_86;
  reg  reg_mip_ssip; // @[CSR.scala 367:20:chipyard.TestHarness.RocketConfig.fir@243760.4]
  reg [31:0] _RAND_87;
  reg [39:0] reg_mepc; // @[CSR.scala 368:21:chipyard.TestHarness.RocketConfig.fir@243761.4]
  reg [63:0] _RAND_88;
  reg [63:0] reg_mcause; // @[CSR.scala 369:27:chipyard.TestHarness.RocketConfig.fir@243762.4]
  reg [63:0] _RAND_89;
  reg [39:0] reg_mtval; // @[CSR.scala 370:22:chipyard.TestHarness.RocketConfig.fir@243763.4]
  reg [63:0] _RAND_90;
  reg [63:0] reg_mscratch; // @[CSR.scala 371:25:chipyard.TestHarness.RocketConfig.fir@243764.4]
  reg [63:0] _RAND_91;
  reg [31:0] reg_mtvec; // @[CSR.scala 374:27:chipyard.TestHarness.RocketConfig.fir@243765.4]
  reg [31:0] _RAND_92;
  reg [31:0] reg_mcounteren; // @[CSR.scala 380:18:chipyard.TestHarness.RocketConfig.fir@243766.4]
  reg [31:0] _RAND_93;
  wire [31:0] read_mcounteren; // @[CSR.scala 381:30:chipyard.TestHarness.RocketConfig.fir@243767.4]
  reg [31:0] reg_scounteren; // @[CSR.scala 384:18:chipyard.TestHarness.RocketConfig.fir@243769.4]
  reg [31:0] _RAND_94;
  wire [31:0] read_scounteren; // @[CSR.scala 385:36:chipyard.TestHarness.RocketConfig.fir@243770.4]
  reg [39:0] reg_sepc; // @[CSR.scala 388:21:chipyard.TestHarness.RocketConfig.fir@243772.4]
  reg [63:0] _RAND_95;
  reg [63:0] reg_scause; // @[CSR.scala 389:23:chipyard.TestHarness.RocketConfig.fir@243773.4]
  reg [63:0] _RAND_96;
  reg [39:0] reg_stval; // @[CSR.scala 390:22:chipyard.TestHarness.RocketConfig.fir@243774.4]
  reg [63:0] _RAND_97;
  reg [63:0] reg_sscratch; // @[CSR.scala 391:25:chipyard.TestHarness.RocketConfig.fir@243775.4]
  reg [63:0] _RAND_98;
  reg [38:0] reg_stvec; // @[CSR.scala 392:22:chipyard.TestHarness.RocketConfig.fir@243776.4]
  reg [63:0] _RAND_99;
  reg [3:0] reg_satp_mode; // @[CSR.scala 393:21:chipyard.TestHarness.RocketConfig.fir@243777.4]
  reg [31:0] _RAND_100;
  reg [43:0] reg_satp_ppn; // @[CSR.scala 393:21:chipyard.TestHarness.RocketConfig.fir@243777.4]
  reg [63:0] _RAND_101;
  reg  reg_wfi; // @[CSR.scala 394:50:chipyard.TestHarness.RocketConfig.fir@243778.4]
  reg [31:0] _RAND_102;
  reg [4:0] reg_fflags; // @[CSR.scala 396:23:chipyard.TestHarness.RocketConfig.fir@243779.4]
  reg [31:0] _RAND_103;
  reg [2:0] reg_frm; // @[CSR.scala 397:20:chipyard.TestHarness.RocketConfig.fir@243780.4]
  reg [31:0] _RAND_104;
  reg [5:0] _T_39; // @[Counters.scala 46:37:chipyard.TestHarness.RocketConfig.fir@243781.4]
  reg [31:0] _RAND_105;
  wire [5:0] _GEN_491; // @[Counters.scala 47:33:chipyard.TestHarness.RocketConfig.fir@243782.4]
  wire [6:0] _T_40; // @[Counters.scala 47:33:chipyard.TestHarness.RocketConfig.fir@243782.4]
  reg [57:0] _T_41; // @[Counters.scala 51:27:chipyard.TestHarness.RocketConfig.fir@243784.4]
  reg [63:0] _RAND_106;
  wire [57:0] _T_44; // @[Counters.scala 52:43:chipyard.TestHarness.RocketConfig.fir@243788.6]
  wire [63:0] _T_45; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243791.4]
  wire  _T_46; // @[CSR.scala 404:103:chipyard.TestHarness.RocketConfig.fir@243792.4]
  reg [5:0] _T_47; // @[Counters.scala 46:37:chipyard.TestHarness.RocketConfig.fir@243793.4]
  reg [31:0] _RAND_107;
  wire [5:0] _GEN_492; // @[Counters.scala 47:33:chipyard.TestHarness.RocketConfig.fir@243794.4]
  wire [6:0] _T_48; // @[Counters.scala 47:33:chipyard.TestHarness.RocketConfig.fir@243794.4]
  reg [57:0] _T_49; // @[Counters.scala 51:27:chipyard.TestHarness.RocketConfig.fir@243796.4]
  reg [63:0] _RAND_108;
  wire [57:0] _T_52; // @[Counters.scala 52:43:chipyard.TestHarness.RocketConfig.fir@243800.6]
  wire [63:0] _T_53; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243803.4]
  wire  mip_seip; // @[CSR.scala 415:57:chipyard.TestHarness.RocketConfig.fir@243810.4]
  wire [7:0] _T_61; // @[CSR.scala 417:22:chipyard.TestHarness.RocketConfig.fir@243819.4]
  wire [15:0] _T_69; // @[CSR.scala 417:22:chipyard.TestHarness.RocketConfig.fir@243827.4]
  wire [15:0] read_mip; // @[CSR.scala 417:29:chipyard.TestHarness.RocketConfig.fir@243828.4]
  wire [63:0] _GEN_493; // @[CSR.scala 420:56:chipyard.TestHarness.RocketConfig.fir@243829.4]
  wire [63:0] pending_interrupts; // @[CSR.scala 420:56:chipyard.TestHarness.RocketConfig.fir@243829.4]
  wire [14:0] d_interrupts; // @[CSR.scala 421:42:chipyard.TestHarness.RocketConfig.fir@243831.4]
  wire  _T_72; // @[CSR.scala 422:51:chipyard.TestHarness.RocketConfig.fir@243833.4]
  wire [63:0] _T_73; // @[CSR.scala 422:73:chipyard.TestHarness.RocketConfig.fir@243834.4]
  wire [63:0] _T_74; // @[CSR.scala 422:93:chipyard.TestHarness.RocketConfig.fir@243835.4]
  wire [63:0] _T_75; // @[CSR.scala 422:71:chipyard.TestHarness.RocketConfig.fir@243836.4]
  wire [63:0] m_interrupts; // @[CSR.scala 422:25:chipyard.TestHarness.RocketConfig.fir@243837.4]
  wire  _T_76; // @[CSR.scala 423:42:chipyard.TestHarness.RocketConfig.fir@243838.4]
  wire  _T_77; // @[CSR.scala 423:70:chipyard.TestHarness.RocketConfig.fir@243839.4]
  wire  _T_78; // @[CSR.scala 423:80:chipyard.TestHarness.RocketConfig.fir@243840.4]
  wire  _T_79; // @[CSR.scala 423:50:chipyard.TestHarness.RocketConfig.fir@243841.4]
  wire [63:0] _T_80; // @[CSR.scala 423:120:chipyard.TestHarness.RocketConfig.fir@243842.4]
  wire [63:0] s_interrupts; // @[CSR.scala 423:25:chipyard.TestHarness.RocketConfig.fir@243843.4]
  wire  _T_119; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243882.4]
  wire  _T_120; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243883.4]
  wire  _T_121; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243884.4]
  wire  _T_122; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243885.4]
  wire  _T_123; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243886.4]
  wire  _T_124; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243887.4]
  wire  _T_125; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243888.4]
  wire  _T_126; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243889.4]
  wire  _T_127; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243890.4]
  wire  _T_128; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243891.4]
  wire  _T_129; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243892.4]
  wire  _T_130; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243893.4]
  wire  _T_131; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243894.4]
  wire  _T_132; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243895.4]
  wire  _T_133; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243896.4]
  wire  _T_134; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243897.4]
  wire  _T_135; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243898.4]
  wire  _T_136; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243899.4]
  wire  _T_137; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243900.4]
  wire  _T_138; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243901.4]
  wire  _T_139; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243902.4]
  wire  _T_140; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243903.4]
  wire  _T_141; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243904.4]
  wire  _T_142; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243905.4]
  wire  _T_143; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243906.4]
  wire  _T_144; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243907.4]
  wire  _T_145; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243908.4]
  wire  _T_146; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243909.4]
  wire  _T_147; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243910.4]
  wire  _T_148; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243911.4]
  wire  _T_149; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243912.4]
  wire  _T_150; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243913.4]
  wire  _T_151; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243914.4]
  wire  _T_152; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243915.4]
  wire  _T_153; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243916.4]
  wire  _T_154; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243917.4]
  wire  anyInterrupt; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243918.4]
  wire [2:0] _T_193; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243957.4]
  wire [3:0] _T_194; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243958.4]
  wire [3:0] _T_195; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243959.4]
  wire [3:0] _T_196; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243960.4]
  wire [3:0] _T_197; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243961.4]
  wire [3:0] _T_198; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243962.4]
  wire [3:0] _T_199; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243963.4]
  wire [3:0] _T_200; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243964.4]
  wire [3:0] _T_201; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243965.4]
  wire [3:0] _T_202; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243966.4]
  wire [3:0] _T_203; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243967.4]
  wire [3:0] _T_204; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243968.4]
  wire [3:0] _T_205; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243969.4]
  wire [3:0] _T_206; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243970.4]
  wire [3:0] _T_207; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243971.4]
  wire [3:0] _T_208; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243972.4]
  wire [3:0] _T_209; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243973.4]
  wire [3:0] _T_210; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243974.4]
  wire [3:0] _T_211; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243975.4]
  wire [3:0] _T_212; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243976.4]
  wire [3:0] _T_213; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243977.4]
  wire [3:0] _T_214; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243978.4]
  wire [3:0] _T_215; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243979.4]
  wire [3:0] _T_216; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243980.4]
  wire [3:0] _T_217; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243981.4]
  wire [3:0] _T_218; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243982.4]
  wire [3:0] _T_219; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243983.4]
  wire [3:0] _T_220; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243984.4]
  wire [3:0] _T_221; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243985.4]
  wire [3:0] _T_222; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243986.4]
  wire [3:0] _T_223; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243987.4]
  wire [3:0] _T_224; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243988.4]
  wire [3:0] _T_225; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243989.4]
  wire [3:0] _T_226; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243990.4]
  wire [3:0] _T_227; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243991.4]
  wire [3:0] _T_228; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243992.4]
  wire [3:0] whichInterrupt; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243993.4]
  wire [63:0] _GEN_494; // @[CSR.scala 426:43:chipyard.TestHarness.RocketConfig.fir@243994.4]
  wire  _T_230; // @[CSR.scala 427:36:chipyard.TestHarness.RocketConfig.fir@243996.4]
  wire  _T_231; // @[CSR.scala 427:33:chipyard.TestHarness.RocketConfig.fir@243997.4]
  wire  _T_232; // @[CSR.scala 427:51:chipyard.TestHarness.RocketConfig.fir@243998.4]
  wire  _T_233; // @[CSR.scala 427:88:chipyard.TestHarness.RocketConfig.fir@243999.4]
  wire  _T_234; // @[CSR.scala 427:76:chipyard.TestHarness.RocketConfig.fir@244000.4]
  wire [30:0] _T_238; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244014.4]
  wire [30:0] _T_241; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244017.4]
  wire [30:0] _T_242; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244018.4]
  wire [30:0] _T_243; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244019.4]
  wire [32:0] _T_244; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244020.4]
  wire [30:0] _T_247; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244031.4]
  wire [30:0] _T_250; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244034.4]
  wire [30:0] _T_251; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244035.4]
  wire [30:0] _T_252; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244036.4]
  wire [32:0] _T_253; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244037.4]
  wire [30:0] _T_256; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244048.4]
  wire [30:0] _T_259; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244051.4]
  wire [30:0] _T_260; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244052.4]
  wire [30:0] _T_261; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244053.4]
  wire [32:0] _T_262; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244054.4]
  wire [30:0] _T_265; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244065.4]
  wire [30:0] _T_268; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244068.4]
  wire [30:0] _T_269; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244069.4]
  wire [30:0] _T_270; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244070.4]
  wire [32:0] _T_271; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244071.4]
  wire [30:0] _T_274; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244082.4]
  wire [30:0] _T_277; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244085.4]
  wire [30:0] _T_278; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244086.4]
  wire [30:0] _T_279; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244087.4]
  wire [32:0] _T_280; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244088.4]
  wire [30:0] _T_283; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244099.4]
  wire [30:0] _T_286; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244102.4]
  wire [30:0] _T_287; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244103.4]
  wire [30:0] _T_288; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244104.4]
  wire [32:0] _T_289; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244105.4]
  wire [30:0] _T_292; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244116.4]
  wire [30:0] _T_295; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244119.4]
  wire [30:0] _T_296; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244120.4]
  wire [30:0] _T_297; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244121.4]
  wire [32:0] _T_298; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244122.4]
  wire [30:0] _T_301; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244133.4]
  wire [30:0] _T_304; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244136.4]
  wire [30:0] _T_305; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244137.4]
  wire [30:0] _T_306; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244138.4]
  wire [32:0] _T_307; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244139.4]
  reg [63:0] reg_misa; // @[CSR.scala 445:21:chipyard.TestHarness.RocketConfig.fir@244149.4]
  reg [63:0] _RAND_109;
  wire [6:0] _T_313; // @[CSR.scala 446:38:chipyard.TestHarness.RocketConfig.fir@244155.4]
  wire [18:0] _T_321; // @[CSR.scala 446:38:chipyard.TestHarness.RocketConfig.fir@244163.4]
  wire [16:0] _T_328; // @[CSR.scala 446:38:chipyard.TestHarness.RocketConfig.fir@244170.4]
  wire [102:0] _T_337; // @[CSR.scala 446:38:chipyard.TestHarness.RocketConfig.fir@244179.4]
  wire [63:0] read_mstatus; // @[CSR.scala 446:40:chipyard.TestHarness.RocketConfig.fir@244180.4]
  wire [7:0] _T_339; // @[CSR.scala 1081:39:chipyard.TestHarness.RocketConfig.fir@244182.4]
  wire [31:0] _T_341; // @[package.scala 131:41:chipyard.TestHarness.RocketConfig.fir@244184.4]
  wire [31:0] _T_342; // @[package.scala 131:37:chipyard.TestHarness.RocketConfig.fir@244185.4]
  wire [31:0] _T_343; // @[package.scala 131:35:chipyard.TestHarness.RocketConfig.fir@244186.4]
  wire [63:0] read_mtvec; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244187.4]
  wire [7:0] _T_345; // @[CSR.scala 1081:39:chipyard.TestHarness.RocketConfig.fir@244189.4]
  wire [38:0] _T_347; // @[package.scala 131:41:chipyard.TestHarness.RocketConfig.fir@244191.4]
  wire [38:0] _T_348; // @[package.scala 131:37:chipyard.TestHarness.RocketConfig.fir@244192.4]
  wire [38:0] _T_349; // @[package.scala 131:35:chipyard.TestHarness.RocketConfig.fir@244193.4]
  wire [24:0] _T_352; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244196.4]
  wire [63:0] read_stvec; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244197.4]
  wire [6:0] _T_358; // @[CSR.scala 452:48:chipyard.TestHarness.RocketConfig.fir@244203.4]
  wire [63:0] _T_366; // @[CSR.scala 452:48:chipyard.TestHarness.RocketConfig.fir@244211.4]
  wire [24:0] _T_369; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244214.4]
  wire [63:0] _T_370; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244215.4]
  wire [39:0] _T_371; // @[CSR.scala 1080:28:chipyard.TestHarness.RocketConfig.fir@244216.4]
  wire [1:0] _T_373; // @[CSR.scala 1080:36:chipyard.TestHarness.RocketConfig.fir@244218.4]
  wire [39:0] _GEN_495; // @[CSR.scala 1080:31:chipyard.TestHarness.RocketConfig.fir@244219.4]
  wire [39:0] _T_374; // @[CSR.scala 1080:31:chipyard.TestHarness.RocketConfig.fir@244219.4]
  wire [39:0] _T_375; // @[CSR.scala 1080:26:chipyard.TestHarness.RocketConfig.fir@244220.4]
  wire [23:0] _T_378; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244223.4]
  wire [63:0] _T_379; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244224.4]
  wire [23:0] _T_382; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244227.4]
  wire [63:0] _T_383; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244228.4]
  wire [11:0] _T_389; // @[CSR.scala 466:27:chipyard.TestHarness.RocketConfig.fir@244234.4]
  wire [31:0] _T_396; // @[CSR.scala 466:27:chipyard.TestHarness.RocketConfig.fir@244241.4]
  wire [39:0] _T_397; // @[CSR.scala 1080:28:chipyard.TestHarness.RocketConfig.fir@244242.4]
  wire [39:0] _T_400; // @[CSR.scala 1080:31:chipyard.TestHarness.RocketConfig.fir@244245.4]
  wire [39:0] _T_401; // @[CSR.scala 1080:26:chipyard.TestHarness.RocketConfig.fir@244246.4]
  wire [23:0] _T_404; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244249.4]
  wire [63:0] _T_405; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244250.4]
  wire [7:0] read_fcsr; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244251.4]
  wire [63:0] _T_406; // @[CSR.scala 522:28:chipyard.TestHarness.RocketConfig.fir@244253.4]
  wire [63:0] _T_407; // @[CSR.scala 523:29:chipyard.TestHarness.RocketConfig.fir@244254.4]
  wire [6:0] _T_415; // @[CSR.scala 537:57:chipyard.TestHarness.RocketConfig.fir@244307.4]
  wire [18:0] _T_423; // @[CSR.scala 537:57:chipyard.TestHarness.RocketConfig.fir@244315.4]
  wire [16:0] _T_430; // @[CSR.scala 537:57:chipyard.TestHarness.RocketConfig.fir@244322.4]
  wire [102:0] _T_439; // @[CSR.scala 537:57:chipyard.TestHarness.RocketConfig.fir@244331.4]
  wire [23:0] _T_443; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244335.4]
  wire [63:0] _T_444; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244336.4]
  wire [63:0] _T_446; // @[CSR.scala 543:43:chipyard.TestHarness.RocketConfig.fir@244338.4]
  wire [39:0] _T_447; // @[CSR.scala 1080:28:chipyard.TestHarness.RocketConfig.fir@244339.4]
  wire [39:0] _T_450; // @[CSR.scala 1080:31:chipyard.TestHarness.RocketConfig.fir@244342.4]
  wire [39:0] _T_451; // @[CSR.scala 1080:26:chipyard.TestHarness.RocketConfig.fir@244343.4]
  wire [23:0] _T_454; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244346.4]
  wire [63:0] _T_455; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244347.4]
  wire [7:0] _T_461; // @[package.scala 36:38:chipyard.TestHarness.RocketConfig.fir@244362.4]
  wire [7:0] _T_471; // @[package.scala 36:38:chipyard.TestHarness.RocketConfig.fir@244372.4]
  wire [7:0] _T_481; // @[package.scala 36:38:chipyard.TestHarness.RocketConfig.fir@244382.4]
  wire [7:0] _T_491; // @[package.scala 36:38:chipyard.TestHarness.RocketConfig.fir@244392.4]
  wire [15:0] _T_497; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244398.4]
  wire [31:0] _T_499; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244400.4]
  wire [15:0] _T_500; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244401.4]
  wire [63:0] _T_503; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244404.4]
  reg [63:0] reg_custom_0; // @[CSR.scala 566:43:chipyard.TestHarness.RocketConfig.fir@244452.4]
  reg [63:0] _RAND_110;
  wire  _T_552; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244457.4]
  wire  _T_553; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244458.4]
  wire  _T_554; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244459.4]
  wire  _T_555; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244460.4]
  wire  _T_556; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244461.4]
  wire  _T_557; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244462.4]
  wire  _T_558; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244463.4]
  wire  _T_559; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244464.4]
  wire  _T_560; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244465.4]
  wire  _T_561; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244466.4]
  wire  _T_562; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244467.4]
  wire  _T_564; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244469.4]
  wire  _T_565; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244470.4]
  wire  _T_566; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244471.4]
  wire  _T_567; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244472.4]
  wire  _T_568; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244473.4]
  wire  _T_569; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244474.4]
  wire  _T_570; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244475.4]
  wire  _T_571; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244476.4]
  wire  _T_659; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244564.4]
  wire  _T_660; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244565.4]
  wire  _T_661; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244566.4]
  wire  _T_662; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244567.4]
  wire  _T_663; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244568.4]
  wire  _T_664; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244569.4]
  wire  _T_665; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244570.4]
  wire  _T_666; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244571.4]
  wire  _T_667; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244572.4]
  wire  _T_668; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244573.4]
  wire  _T_669; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244574.4]
  wire  _T_670; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244575.4]
  wire  _T_671; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244576.4]
  wire  _T_672; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244577.4]
  wire  _T_673; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244578.4]
  wire  _T_674; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244579.4]
  wire  _T_676; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244581.4]
  wire  _T_677; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244582.4]
  wire  _T_678; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244583.4]
  wire  _T_679; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244584.4]
  wire  _T_680; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244585.4]
  wire  _T_681; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244586.4]
  wire  _T_682; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244587.4]
  wire  _T_683; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244588.4]
  wire  _T_692; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244597.4]
  wire  _T_693; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244598.4]
  wire  _T_695; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244600.4]
  wire [63:0] _T_697; // @[CSR.scala 1058:9:chipyard.TestHarness.RocketConfig.fir@244602.4]
  wire [63:0] _T_698; // @[CSR.scala 1058:34:chipyard.TestHarness.RocketConfig.fir@244603.4]
  wire  _T_700; // @[CSR.scala 1058:59:chipyard.TestHarness.RocketConfig.fir@244605.4]
  wire [63:0] _T_701; // @[CSR.scala 1058:49:chipyard.TestHarness.RocketConfig.fir@244606.4]
  wire [63:0] _T_702; // @[CSR.scala 1058:45:chipyard.TestHarness.RocketConfig.fir@244607.4]
  wire [63:0] wdata; // @[CSR.scala 1058:43:chipyard.TestHarness.RocketConfig.fir@244608.4]
  wire [31:0] _T_716; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244623.4]
  wire  _T_717; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244624.4]
  wire [31:0] _T_719; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244626.4]
  wire  _T_720; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244627.4]
  wire  insn_cease; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244639.4]
  wire  insn_wfi; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244641.4]
  wire [31:0] _T_731; // @[CSR.scala 596:30:chipyard.TestHarness.RocketConfig.fir@244644.4]
  wire [31:0] _T_738; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244651.4]
  wire  _T_739; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244652.4]
  wire [31:0] _T_740; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244653.4]
  wire  _T_741; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244654.4]
  wire  _T_743; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@244656.4]
  wire [31:0] _T_747; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244660.4]
  wire  _T_748; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244661.4]
  wire [31:0] _T_750; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244663.4]
  wire  _T_751; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244664.4]
  wire  _T_759; // @[CSR.scala 598:63:chipyard.TestHarness.RocketConfig.fir@244672.4]
  wire  _T_761; // @[CSR.scala 598:74:chipyard.TestHarness.RocketConfig.fir@244674.4]
  wire  _T_762; // @[CSR.scala 598:71:chipyard.TestHarness.RocketConfig.fir@244675.4]
  wire  _T_765; // @[CSR.scala 599:73:chipyard.TestHarness.RocketConfig.fir@244678.4]
  wire  _T_766; // @[CSR.scala 599:70:chipyard.TestHarness.RocketConfig.fir@244679.4]
  wire  _T_769; // @[CSR.scala 600:75:chipyard.TestHarness.RocketConfig.fir@244682.4]
  wire  _T_770; // @[CSR.scala 600:72:chipyard.TestHarness.RocketConfig.fir@244683.4]
  wire [31:0] _T_773; // @[CSR.scala 602:68:chipyard.TestHarness.RocketConfig.fir@244686.4]
  wire  _T_775; // @[CSR.scala 602:50:chipyard.TestHarness.RocketConfig.fir@244688.4]
  wire  _T_776; // @[CSR.scala 603:44:chipyard.TestHarness.RocketConfig.fir@244689.4]
  wire [31:0] _T_778; // @[CSR.scala 603:71:chipyard.TestHarness.RocketConfig.fir@244691.4]
  wire  _T_780; // @[CSR.scala 603:53:chipyard.TestHarness.RocketConfig.fir@244693.4]
  wire  _T_781; // @[CSR.scala 602:84:chipyard.TestHarness.RocketConfig.fir@244694.4]
  wire  _T_782; // @[CSR.scala 604:39:chipyard.TestHarness.RocketConfig.fir@244695.4]
  wire  _T_784; // @[CSR.scala 604:48:chipyard.TestHarness.RocketConfig.fir@244697.4]
  wire [11:0] _T_790; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244705.4]
  wire  _T_799; // @[CSR.scala 608:44:chipyard.TestHarness.RocketConfig.fir@244716.4]
  wire  _T_800; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244717.4]
  wire  _T_801; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244718.4]
  wire  _T_802; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244719.4]
  wire  _T_803; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244720.4]
  wire  _T_804; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244721.4]
  wire  _T_805; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244722.4]
  wire  _T_806; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244723.4]
  wire  _T_807; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244724.4]
  wire  _T_808; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244725.4]
  wire  _T_809; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244726.4]
  wire  _T_810; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244727.4]
  wire  _T_811; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244728.4]
  wire  _T_812; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244729.4]
  wire  _T_813; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244730.4]
  wire  _T_814; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244731.4]
  wire  _T_815; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244732.4]
  wire  _T_816; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244733.4]
  wire  _T_817; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244734.4]
  wire  _T_818; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244735.4]
  wire  _T_819; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244736.4]
  wire  _T_820; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244737.4]
  wire  _T_821; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244738.4]
  wire  _T_822; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244739.4]
  wire  _T_823; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244740.4]
  wire  _T_824; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244741.4]
  wire  _T_825; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244742.4]
  wire  _T_826; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244743.4]
  wire  _T_827; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244744.4]
  wire  _T_828; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244745.4]
  wire  _T_829; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244746.4]
  wire  _T_830; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244747.4]
  wire  _T_831; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244748.4]
  wire  _T_832; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244749.4]
  wire  _T_833; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244750.4]
  wire  _T_834; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244751.4]
  wire  _T_835; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244752.4]
  wire  _T_836; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244753.4]
  wire  _T_837; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244754.4]
  wire  _T_838; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244755.4]
  wire  _T_839; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244756.4]
  wire  _T_840; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244757.4]
  wire  _T_841; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244758.4]
  wire  _T_842; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244759.4]
  wire  _T_843; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244760.4]
  wire  _T_844; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244761.4]
  wire  _T_845; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244762.4]
  wire  _T_846; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244763.4]
  wire  _T_847; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244764.4]
  wire  _T_848; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244765.4]
  wire  _T_849; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244766.4]
  wire  _T_850; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244767.4]
  wire  _T_851; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244768.4]
  wire  _T_852; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244769.4]
  wire  _T_853; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244770.4]
  wire  _T_854; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244771.4]
  wire  _T_855; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244772.4]
  wire  _T_856; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244773.4]
  wire  _T_857; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244774.4]
  wire  _T_858; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244775.4]
  wire  _T_859; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244776.4]
  wire  _T_860; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244777.4]
  wire  _T_861; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244778.4]
  wire  _T_862; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244779.4]
  wire  _T_863; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244780.4]
  wire  _T_864; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244781.4]
  wire  _T_865; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244782.4]
  wire  _T_866; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244783.4]
  wire  _T_867; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244784.4]
  wire  _T_868; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244785.4]
  wire  _T_869; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244786.4]
  wire  _T_870; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244787.4]
  wire  _T_871; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244788.4]
  wire  _T_872; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244789.4]
  wire  _T_873; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244790.4]
  wire  _T_874; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244791.4]
  wire  _T_875; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244792.4]
  wire  _T_876; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244793.4]
  wire  _T_877; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244794.4]
  wire  _T_878; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244795.4]
  wire  _T_879; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244796.4]
  wire  _T_880; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244797.4]
  wire  _T_881; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244798.4]
  wire  _T_882; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244799.4]
  wire  _T_883; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244800.4]
  wire  _T_884; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244801.4]
  wire  _T_885; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244802.4]
  wire  _T_886; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244803.4]
  wire  _T_887; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244804.4]
  wire  _T_888; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244805.4]
  wire  _T_889; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244806.4]
  wire  _T_890; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244807.4]
  wire  _T_891; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244808.4]
  wire  _T_892; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244809.4]
  wire  _T_893; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244810.4]
  wire  _T_894; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244811.4]
  wire  _T_895; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244812.4]
  wire  _T_896; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244813.4]
  wire  _T_897; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244814.4]
  wire  _T_898; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244815.4]
  wire  _T_899; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244816.4]
  wire  _T_900; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244817.4]
  wire  _T_901; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244818.4]
  wire  _T_902; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244819.4]
  wire  _T_903; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244820.4]
  wire  _T_904; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244821.4]
  wire  _T_905; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244822.4]
  wire  _T_906; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244823.4]
  wire  _T_907; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244824.4]
  wire  _T_908; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244825.4]
  wire  _T_909; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244826.4]
  wire  _T_910; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244827.4]
  wire  _T_911; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244828.4]
  wire  _T_912; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244829.4]
  wire  _T_913; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244830.4]
  wire  _T_914; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244831.4]
  wire  _T_915; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244832.4]
  wire  _T_916; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244833.4]
  wire  _T_917; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244834.4]
  wire  _T_918; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244835.4]
  wire  _T_919; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244836.4]
  wire  _T_920; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244837.4]
  wire  _T_921; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244838.4]
  wire  _T_922; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244839.4]
  wire  _T_923; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244840.4]
  wire  _T_924; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244841.4]
  wire  _T_925; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244842.4]
  wire  _T_926; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244843.4]
  wire  _T_927; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244844.4]
  wire  _T_928; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244845.4]
  wire  _T_929; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244846.4]
  wire  _T_930; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244847.4]
  wire  _T_931; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244848.4]
  wire  _T_932; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244849.4]
  wire  _T_933; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244850.4]
  wire  _T_934; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244851.4]
  wire  _T_935; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244852.4]
  wire  _T_936; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244853.4]
  wire  _T_937; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244854.4]
  wire  _T_938; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244855.4]
  wire  _T_939; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244856.4]
  wire  _T_940; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244857.4]
  wire  _T_941; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244858.4]
  wire  _T_942; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244859.4]
  wire  _T_943; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244860.4]
  wire  _T_944; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244861.4]
  wire  _T_945; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244862.4]
  wire  _T_946; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244863.4]
  wire  _T_947; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244864.4]
  wire  _T_948; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244865.4]
  wire  _T_949; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244866.4]
  wire  _T_950; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244867.4]
  wire  _T_951; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244868.4]
  wire  _T_952; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244869.4]
  wire  _T_953; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244870.4]
  wire  _T_954; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244871.4]
  wire  _T_955; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244872.4]
  wire  _T_956; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244873.4]
  wire  _T_957; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244874.4]
  wire  _T_958; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244875.4]
  wire  _T_959; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244876.4]
  wire  _T_960; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244877.4]
  wire  _T_961; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244878.4]
  wire  _T_962; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244879.4]
  wire  _T_963; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244880.4]
  wire  _T_964; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244881.4]
  wire  _T_965; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244882.4]
  wire  _T_966; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244883.4]
  wire  _T_967; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244884.4]
  wire  _T_968; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244885.4]
  wire  _T_969; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244886.4]
  wire  _T_970; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244887.4]
  wire  _T_971; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244888.4]
  wire  _T_972; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244889.4]
  wire  _T_973; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244890.4]
  wire  _T_974; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244891.4]
  wire  _T_975; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244892.4]
  wire  _T_976; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244893.4]
  wire  _T_977; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244894.4]
  wire  _T_978; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244895.4]
  wire  _T_979; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244896.4]
  wire  _T_980; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244897.4]
  wire  _T_981; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244898.4]
  wire  _T_982; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244899.4]
  wire  _T_983; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244900.4]
  wire  _T_984; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244901.4]
  wire  _T_985; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244902.4]
  wire  _T_986; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244903.4]
  wire  _T_987; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244904.4]
  wire  _T_988; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244905.4]
  wire  _T_989; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244906.4]
  wire  _T_990; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244907.4]
  wire  _T_991; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244908.4]
  wire  _T_992; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244909.4]
  wire  _T_993; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244910.4]
  wire  _T_994; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244911.4]
  wire  _T_995; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244912.4]
  wire  _T_996; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244913.4]
  wire  _T_997; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244914.4]
  wire  _T_998; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244915.4]
  wire  _T_999; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244916.4]
  wire  _T_1000; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244917.4]
  wire  _T_1001; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244918.4]
  wire  _T_1002; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244919.4]
  wire  _T_1003; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244920.4]
  wire  _T_1004; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244921.4]
  wire  _T_1005; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244922.4]
  wire  _T_1006; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244923.4]
  wire  _T_1007; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244924.4]
  wire  _T_1008; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244925.4]
  wire  _T_1009; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244926.4]
  wire  _T_1010; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244927.4]
  wire  _T_1011; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244928.4]
  wire  _T_1012; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244929.4]
  wire  _T_1013; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244930.4]
  wire  _T_1014; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244931.4]
  wire  _T_1015; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244932.4]
  wire  _T_1016; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244933.4]
  wire  _T_1017; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244934.4]
  wire  _T_1018; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244935.4]
  wire  _T_1019; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244936.4]
  wire  _T_1020; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244937.4]
  wire  _T_1021; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244938.4]
  wire  _T_1022; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244939.4]
  wire  _T_1023; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244940.4]
  wire  _T_1024; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244941.4]
  wire  _T_1025; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244942.4]
  wire  _T_1026; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244943.4]
  wire  _T_1027; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244944.4]
  wire  _T_1028; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244945.4]
  wire  _T_1029; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244946.4]
  wire  _T_1030; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244947.4]
  wire  _T_1031; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244948.4]
  wire  _T_1032; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244949.4]
  wire  _T_1033; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244950.4]
  wire  _T_1034; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244951.4]
  wire  _T_1035; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244952.4]
  wire  _T_1036; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244953.4]
  wire  _T_1037; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244954.4]
  wire  _T_1038; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244955.4]
  wire  _T_1039; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244956.4]
  wire  _T_1040; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244957.4]
  wire  _T_1041; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244958.4]
  wire  _T_1042; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244959.4]
  wire  _T_1043; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244960.4]
  wire  _T_1044; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244961.4]
  wire  _T_1045; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244962.4]
  wire  _T_1046; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244963.4]
  wire  _T_1047; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244964.4]
  wire  _T_1048; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244965.4]
  wire  _T_1049; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244966.4]
  wire  _T_1050; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244967.4]
  wire  _T_1051; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244968.4]
  wire  _T_1052; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244969.4]
  wire  _T_1053; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244970.4]
  wire  _T_1054; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244971.4]
  wire  _T_1055; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244972.4]
  wire  _T_1056; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244973.4]
  wire  _T_1057; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244974.4]
  wire  _T_1058; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244975.4]
  wire  _T_1059; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244976.4]
  wire  _T_1060; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244977.4]
  wire  _T_1061; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244978.4]
  wire  _T_1062; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244979.4]
  wire  _T_1063; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244980.4]
  wire  _T_1064; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244981.4]
  wire  _T_1065; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244982.4]
  wire  _T_1066; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244983.4]
  wire  _T_1067; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244984.4]
  wire  _T_1068; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244985.4]
  wire  _T_1069; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244986.4]
  wire  _T_1070; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244987.4]
  wire  _T_1071; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244988.4]
  wire  _T_1072; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244989.4]
  wire  _T_1073; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244990.4]
  wire  _T_1074; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244991.4]
  wire  _T_1075; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244992.4]
  wire  _T_1076; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244993.4]
  wire  _T_1077; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244994.4]
  wire  _T_1078; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244995.4]
  wire  _T_1079; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244996.4]
  wire  _T_1080; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244997.4]
  wire  _T_1081; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244998.4]
  wire  _T_1082; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244999.4]
  wire  _T_1083; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245000.4]
  wire  _T_1084; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245001.4]
  wire  _T_1085; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245002.4]
  wire  _T_1086; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245003.4]
  wire  _T_1087; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245004.4]
  wire  _T_1088; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245005.4]
  wire  _T_1089; // @[CSR.scala 609:7:chipyard.TestHarness.RocketConfig.fir@245006.4]
  wire  _T_1090; // @[CSR.scala 608:62:chipyard.TestHarness.RocketConfig.fir@245007.4]
  wire  _T_1092; // @[CSR.scala 610:35:chipyard.TestHarness.RocketConfig.fir@245009.4]
  wire  _T_1093; // @[CSR.scala 610:32:chipyard.TestHarness.RocketConfig.fir@245010.4]
  wire  _T_1094; // @[CSR.scala 609:32:chipyard.TestHarness.RocketConfig.fir@245011.4]
  wire  _T_1095; // @[package.scala 162:47:chipyard.TestHarness.RocketConfig.fir@245012.4]
  wire  _T_1096; // @[package.scala 162:60:chipyard.TestHarness.RocketConfig.fir@245013.4]
  wire  _T_1097; // @[package.scala 162:55:chipyard.TestHarness.RocketConfig.fir@245014.4]
  wire  _T_1098; // @[package.scala 162:47:chipyard.TestHarness.RocketConfig.fir@245015.4]
  wire  _T_1099; // @[package.scala 162:60:chipyard.TestHarness.RocketConfig.fir@245016.4]
  wire  _T_1100; // @[package.scala 162:55:chipyard.TestHarness.RocketConfig.fir@245017.4]
  wire  _T_1101; // @[CSR.scala 611:66:chipyard.TestHarness.RocketConfig.fir@245018.4]
  wire  _T_1102; // @[CSR.scala 611:133:chipyard.TestHarness.RocketConfig.fir@245019.4]
  wire  _T_1103; // @[CSR.scala 611:130:chipyard.TestHarness.RocketConfig.fir@245020.4]
  wire  _T_1104; // @[CSR.scala 610:53:chipyard.TestHarness.RocketConfig.fir@245021.4]
  wire [11:0] _T_1105; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@245022.4]
  wire  _T_1106; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@245023.4]
  wire  _T_1110; // @[CSR.scala 612:42:chipyard.TestHarness.RocketConfig.fir@245027.4]
  wire  _T_1111; // @[CSR.scala 611:148:chipyard.TestHarness.RocketConfig.fir@245028.4]
  wire  _T_1114; // @[CSR.scala 614:21:chipyard.TestHarness.RocketConfig.fir@245031.4]
  wire  _T_1118; // @[CSR.scala 616:40:chipyard.TestHarness.RocketConfig.fir@245037.4]
  wire  _T_1119; // @[CSR.scala 616:71:chipyard.TestHarness.RocketConfig.fir@245038.4]
  wire  _T_1120; // @[CSR.scala 616:57:chipyard.TestHarness.RocketConfig.fir@245039.4]
  wire  _T_1121; // @[CSR.scala 616:99:chipyard.TestHarness.RocketConfig.fir@245040.4]
  wire  _T_1122; // @[CSR.scala 616:130:chipyard.TestHarness.RocketConfig.fir@245041.4]
  wire  _T_1123; // @[CSR.scala 616:116:chipyard.TestHarness.RocketConfig.fir@245042.4]
  wire  _T_1124; // @[CSR.scala 616:85:chipyard.TestHarness.RocketConfig.fir@245043.4]
  wire  _T_1128; // @[CSR.scala 618:17:chipyard.TestHarness.RocketConfig.fir@245048.4]
  wire  _T_1129; // @[CSR.scala 618:14:chipyard.TestHarness.RocketConfig.fir@245049.4]
  wire  _T_1130; // @[CSR.scala 617:64:chipyard.TestHarness.RocketConfig.fir@245050.4]
  wire  _T_1131; // @[CSR.scala 619:17:chipyard.TestHarness.RocketConfig.fir@245051.4]
  wire  _T_1132; // @[CSR.scala 619:14:chipyard.TestHarness.RocketConfig.fir@245052.4]
  wire  _T_1133; // @[CSR.scala 618:28:chipyard.TestHarness.RocketConfig.fir@245053.4]
  wire  _T_1135; // @[CSR.scala 620:14:chipyard.TestHarness.RocketConfig.fir@245055.4]
  wire  _T_1137; // @[CSR.scala 620:32:chipyard.TestHarness.RocketConfig.fir@245057.4]
  wire  _T_1138; // @[CSR.scala 619:29:chipyard.TestHarness.RocketConfig.fir@245058.4]
  wire  _T_1140; // @[CSR.scala 621:17:chipyard.TestHarness.RocketConfig.fir@245060.4]
  wire [11:0] _T_1162; // @[CSR.scala 632:37:chipyard.TestHarness.RocketConfig.fir@245089.4]
  wire [11:0] debugTVec; // @[CSR.scala 632:22:chipyard.TestHarness.RocketConfig.fir@245090.4]
  wire [63:0] _T_1171; // @[CSR.scala 640:19:chipyard.TestHarness.RocketConfig.fir@245100.4]
  wire [7:0] _T_1173; // @[CSR.scala 641:59:chipyard.TestHarness.RocketConfig.fir@245102.4]
  wire [63:0] _T_1175; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@245104.4]
  wire  _T_1178; // @[CSR.scala 643:28:chipyard.TestHarness.RocketConfig.fir@245107.4]
  wire  _T_1180; // @[CSR.scala 643:94:chipyard.TestHarness.RocketConfig.fir@245109.4]
  wire  _T_1181; // @[CSR.scala 643:55:chipyard.TestHarness.RocketConfig.fir@245110.4]
  wire [63:0] _T_1183; // @[CSR.scala 644:56:chipyard.TestHarness.RocketConfig.fir@245112.4]
  wire [63:0] notDebugTVec; // @[CSR.scala 644:8:chipyard.TestHarness.RocketConfig.fir@245113.4]
  wire [63:0] tvec; // @[CSR.scala 646:17:chipyard.TestHarness.RocketConfig.fir@245114.4]
  wire  _T_1188; // @[CSR.scala 652:32:chipyard.TestHarness.RocketConfig.fir@245124.4]
  wire  _T_1189; // @[CSR.scala 652:53:chipyard.TestHarness.RocketConfig.fir@245125.4]
  wire  _T_1190; // @[CSR.scala 652:37:chipyard.TestHarness.RocketConfig.fir@245126.4]
  wire  _T_1191; // @[CSR.scala 652:74:chipyard.TestHarness.RocketConfig.fir@245127.4]
  wire  _T_1194; // @[CSR.scala 657:53:chipyard.TestHarness.RocketConfig.fir@245135.4]
  reg [1:0] _T_1196; // @[CSR.scala 657:24:chipyard.TestHarness.RocketConfig.fir@245137.4]
  reg [31:0] _RAND_111;
  wire [1:0] _T_1198; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@245142.4]
  wire [1:0] _T_1200; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@245144.4]
  wire [2:0] _T_1202; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@245146.4]
  wire  _T_1204; // @[CSR.scala 662:79:chipyard.TestHarness.RocketConfig.fir@245148.4]
  wire  _T_1206; // @[CSR.scala 662:9:chipyard.TestHarness.RocketConfig.fir@245150.4]
  wire  _T_1207; // @[CSR.scala 662:9:chipyard.TestHarness.RocketConfig.fir@245151.4]
  wire  _T_1209; // @[CSR.scala 664:18:chipyard.TestHarness.RocketConfig.fir@245157.4]
  wire  _T_1211; // @[CSR.scala 664:36:chipyard.TestHarness.RocketConfig.fir@245159.4]
  wire  _GEN_34; // @[CSR.scala 664:51:chipyard.TestHarness.RocketConfig.fir@245160.4]
  wire  _T_1212; // @[CSR.scala 665:28:chipyard.TestHarness.RocketConfig.fir@245163.4]
  wire  _T_1213; // @[CSR.scala 665:32:chipyard.TestHarness.RocketConfig.fir@245164.4]
  wire  _T_1214; // @[CSR.scala 665:55:chipyard.TestHarness.RocketConfig.fir@245165.4]
  wire  _T_1216; // @[CSR.scala 667:22:chipyard.TestHarness.RocketConfig.fir@245170.4]
  wire  _GEN_36; // @[CSR.scala 667:36:chipyard.TestHarness.RocketConfig.fir@245171.4]
  wire  _T_1224; // @[CSR.scala 670:10:chipyard.TestHarness.RocketConfig.fir@245188.4]
  wire  _T_1225; // @[CSR.scala 670:42:chipyard.TestHarness.RocketConfig.fir@245189.4]
  wire  _T_1226; // @[CSR.scala 670:29:chipyard.TestHarness.RocketConfig.fir@245190.4]
  wire  _T_1228; // @[CSR.scala 670:9:chipyard.TestHarness.RocketConfig.fir@245192.4]
  wire  _T_1229; // @[CSR.scala 670:9:chipyard.TestHarness.RocketConfig.fir@245193.4]
  wire [39:0] _T_1230; // @[CSR.scala 1079:28:chipyard.TestHarness.RocketConfig.fir@245198.4]
  wire [39:0] _T_1231; // @[CSR.scala 1079:31:chipyard.TestHarness.RocketConfig.fir@245199.4]
  wire [39:0] epc; // @[CSR.scala 1079:26:chipyard.TestHarness.RocketConfig.fir@245200.4]
  wire [1:0] _T_1233; // @[CSR.scala 681:86:chipyard.TestHarness.RocketConfig.fir@245210.10]
  wire [1:0] _T_1234; // @[CSR.scala 681:56:chipyard.TestHarness.RocketConfig.fir@245211.10]
  wire  _GEN_38; // @[CSR.scala 678:25:chipyard.TestHarness.RocketConfig.fir@245207.8]
  wire [39:0] _GEN_39; // @[CSR.scala 678:25:chipyard.TestHarness.RocketConfig.fir@245207.8]
  wire [39:0] _GEN_43; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  wire  _GEN_47; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  wire [1:0] _GEN_48; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  wire [39:0] _GEN_51; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  wire  _GEN_54; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  wire [1:0] _GEN_55; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  wire  _GEN_56; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  wire [39:0] _GEN_58; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire [39:0] _GEN_62; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire  _GEN_66; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire [1:0] _GEN_67; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire [39:0] _GEN_69; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire  _GEN_72; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire [1:0] _GEN_73; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire  _GEN_74; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  wire [39:0] _GEN_76; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire [39:0] _GEN_80; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire  _GEN_84; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire [1:0] _GEN_85; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire [39:0] _GEN_87; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire  _GEN_90; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire [1:0] _GEN_91; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire  _GEN_92; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  wire [39:0] _GEN_95; // @[CSR.scala 733:53:chipyard.TestHarness.RocketConfig.fir@245579.8]
  wire  _GEN_100; // @[CSR.scala 727:52:chipyard.TestHarness.RocketConfig.fir@245564.6]
  wire [1:0] _GEN_101; // @[CSR.scala 727:52:chipyard.TestHarness.RocketConfig.fir@245564.6]
  wire [39:0] _GEN_103; // @[CSR.scala 727:52:chipyard.TestHarness.RocketConfig.fir@245564.6]
  wire [1:0] _GEN_110; // @[CSR.scala 726:19:chipyard.TestHarness.RocketConfig.fir@245560.4]
  wire [63:0] _GEN_112; // @[CSR.scala 726:19:chipyard.TestHarness.RocketConfig.fir@245560.4]
  reg  _T_1579; // @[Reg.scala 27:20:chipyard.TestHarness.RocketConfig.fir@245607.4]
  reg [31:0] _RAND_112;
  wire  _GEN_117; // @[Reg.scala 28:19:chipyard.TestHarness.RocketConfig.fir@245608.4]
  wire [63:0] _T_1581; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245626.4]
  wire [63:0] _T_1582; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245627.4]
  wire [63:0] _T_1583; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245628.4]
  wire [63:0] _T_1584; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245629.4]
  wire [63:0] _T_1585; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245630.4]
  wire [15:0] _T_1586; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245631.4]
  wire [63:0] _T_1587; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245632.4]
  wire [63:0] _T_1588; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245633.4]
  wire [63:0] _T_1589; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245634.4]
  wire [63:0] _T_1590; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245635.4]
  wire [63:0] _T_1591; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245636.4]
  wire [31:0] _T_1593; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245638.4]
  wire [63:0] _T_1594; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245639.4]
  wire [63:0] _T_1595; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245640.4]
  wire [4:0] _T_1596; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245641.4]
  wire [2:0] _T_1597; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245642.4]
  wire [7:0] _T_1598; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245643.4]
  wire [63:0] _T_1599; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245644.4]
  wire [63:0] _T_1600; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245645.4]
  wire [31:0] _T_1688; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245733.4]
  wire [63:0] _T_1689; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245734.4]
  wire [63:0] _T_1690; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245735.4]
  wire [63:0] _T_1691; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245736.4]
  wire [63:0] _T_1692; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245737.4]
  wire [63:0] _T_1693; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245738.4]
  wire [63:0] _T_1694; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245739.4]
  wire [63:0] _T_1695; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245740.4]
  wire [63:0] _T_1696; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245741.4]
  wire [63:0] _T_1697; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245742.4]
  wire [63:0] _T_1698; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245743.4]
  wire [63:0] _T_1699; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245744.4]
  wire [31:0] _T_1700; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245745.4]
  wire [63:0] _T_1701; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245746.4]
  wire [63:0] _T_1702; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245747.4]
  wire [63:0] _T_1703; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245748.4]
  wire [29:0] _T_1705; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245750.4]
  wire [29:0] _T_1706; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245751.4]
  wire [29:0] _T_1707; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245752.4]
  wire [29:0] _T_1708; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245753.4]
  wire [29:0] _T_1709; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245754.4]
  wire [29:0] _T_1710; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245755.4]
  wire [29:0] _T_1711; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245756.4]
  wire [29:0] _T_1712; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245757.4]
  wire [63:0] _T_1721; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245766.4]
  wire [63:0] _T_1722; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245767.4]
  wire [63:0] _T_1724; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245769.4]
  wire [63:0] _T_1726; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245771.4]
  wire [63:0] _T_1727; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245772.4]
  wire [63:0] _T_1728; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245773.4]
  wire [63:0] _T_1729; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245774.4]
  wire [63:0] _GEN_502; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245775.4]
  wire [63:0] _T_1730; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245775.4]
  wire [63:0] _T_1731; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245776.4]
  wire [63:0] _T_1732; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245777.4]
  wire [63:0] _T_1733; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245778.4]
  wire [63:0] _T_1734; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245779.4]
  wire [63:0] _T_1735; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245780.4]
  wire [63:0] _GEN_503; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245782.4]
  wire [63:0] _T_1737; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245782.4]
  wire [63:0] _T_1738; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245783.4]
  wire [63:0] _T_1739; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245784.4]
  wire [63:0] _GEN_504; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245785.4]
  wire [63:0] _T_1740; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245785.4]
  wire [63:0] _GEN_505; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245786.4]
  wire [63:0] _T_1741; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245786.4]
  wire [63:0] _GEN_506; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245787.4]
  wire [63:0] _T_1742; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245787.4]
  wire [63:0] _T_1743; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245788.4]
  wire [63:0] _T_1744; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245789.4]
  wire [63:0] _GEN_507; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245877.4]
  wire [63:0] _T_1832; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245877.4]
  wire [63:0] _T_1833; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245878.4]
  wire [63:0] _T_1834; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245879.4]
  wire [63:0] _T_1835; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245880.4]
  wire [63:0] _T_1836; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245881.4]
  wire [63:0] _T_1837; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245882.4]
  wire [63:0] _T_1838; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245883.4]
  wire [63:0] _T_1839; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245884.4]
  wire [63:0] _T_1840; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245885.4]
  wire [63:0] _T_1841; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245886.4]
  wire [63:0] _T_1842; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245887.4]
  wire [63:0] _T_1843; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245888.4]
  wire [63:0] _GEN_508; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245889.4]
  wire [63:0] _T_1844; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245889.4]
  wire [63:0] _T_1845; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245890.4]
  wire [63:0] _T_1846; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245891.4]
  wire [63:0] _T_1847; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245892.4]
  wire [63:0] _GEN_509; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245894.4]
  wire [63:0] _T_1849; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245894.4]
  wire [63:0] _GEN_510; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245895.4]
  wire [63:0] _T_1850; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245895.4]
  wire [63:0] _GEN_511; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245896.4]
  wire [63:0] _T_1851; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245896.4]
  wire [63:0] _GEN_512; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245897.4]
  wire [63:0] _T_1852; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245897.4]
  wire [63:0] _GEN_513; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245898.4]
  wire [63:0] _T_1853; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245898.4]
  wire [63:0] _GEN_514; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245899.4]
  wire [63:0] _T_1854; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245899.4]
  wire [63:0] _GEN_515; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245900.4]
  wire [63:0] _T_1855; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245900.4]
  wire [63:0] _GEN_516; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245901.4]
  wire [63:0] _T_1856; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245901.4]
  wire [63:0] _T_1865; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245910.4]
  wire [63:0] _T_1866; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245911.4]
  wire  _T_1872; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@245920.6]
  wire  _T_1873; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@245921.6]
  wire  _T_1874; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@245922.6]
  wire [4:0] _T_3610; // @[CSR.scala 786:30:chipyard.TestHarness.RocketConfig.fir@248245.6]
  wire [4:0] _GEN_118; // @[CSR.scala 785:30:chipyard.TestHarness.RocketConfig.fir@248244.4]
  wire  _T_3614; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@248252.4]
  wire  csr_wen; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@248253.4]
  wire [102:0] _T_3628; // @[:chipyard.TestHarness.RocketConfig.fir@248271.8 :chipyard.TestHarness.RocketConfig.fir@248273.8]
  wire  _T_3660; // @[CSR.scala 1062:35:chipyard.TestHarness.RocketConfig.fir@248339.8]
  wire  _T_3662; // @[CSR.scala 1083:73:chipyard.TestHarness.RocketConfig.fir@248350.8]
  wire [1:0] _GEN_124; // @[CSR.scala 800:39:chipyard.TestHarness.RocketConfig.fir@248268.6]
  wire  _T_3667; // @[CSR.scala 830:33:chipyard.TestHarness.RocketConfig.fir@248359.8]
  wire  _T_3670; // @[CSR.scala 830:43:chipyard.TestHarness.RocketConfig.fir@248362.8]
  wire [63:0] _T_3671; // @[CSR.scala 832:25:chipyard.TestHarness.RocketConfig.fir@248364.10]
  wire  _T_3672; // @[CSR.scala 832:35:chipyard.TestHarness.RocketConfig.fir@248365.10]
  wire [3:0] _T_3673; // @[CSR.scala 832:38:chipyard.TestHarness.RocketConfig.fir@248366.10]
  wire [63:0] _GEN_517; // @[CSR.scala 832:32:chipyard.TestHarness.RocketConfig.fir@248367.10]
  wire [63:0] _T_3674; // @[CSR.scala 832:32:chipyard.TestHarness.RocketConfig.fir@248367.10]
  wire [63:0] _T_3675; // @[CSR.scala 832:23:chipyard.TestHarness.RocketConfig.fir@248368.10]
  wire [63:0] _T_3676; // @[CSR.scala 832:55:chipyard.TestHarness.RocketConfig.fir@248369.10]
  wire [63:0] _T_3678; // @[CSR.scala 832:73:chipyard.TestHarness.RocketConfig.fir@248371.10]
  wire [63:0] _T_3679; // @[CSR.scala 832:62:chipyard.TestHarness.RocketConfig.fir@248372.10]
  wire [15:0] _T_3694; // @[CSR.scala 840:59:chipyard.TestHarness.RocketConfig.fir@248391.8]
  wire [15:0] _T_3696; // @[CSR.scala 1058:9:chipyard.TestHarness.RocketConfig.fir@248393.8]
  wire [63:0] _GEN_518; // @[CSR.scala 1058:34:chipyard.TestHarness.RocketConfig.fir@248394.8]
  wire [63:0] _T_3697; // @[CSR.scala 1058:34:chipyard.TestHarness.RocketConfig.fir@248394.8]
  wire [63:0] _T_3702; // @[CSR.scala 1058:43:chipyard.TestHarness.RocketConfig.fir@248399.8]
  wire [63:0] _T_3721; // @[CSR.scala 847:59:chipyard.TestHarness.RocketConfig.fir@248442.8]
  wire [63:0] _T_3723; // @[CSR.scala 1079:31:chipyard.TestHarness.RocketConfig.fir@248447.8]
  wire [63:0] _T_3724; // @[CSR.scala 1079:26:chipyard.TestHarness.RocketConfig.fir@248448.8]
  wire [63:0] _GEN_140; // @[CSR.scala 848:40:chipyard.TestHarness.RocketConfig.fir@248445.6]
  wire [63:0] _GEN_142; // @[CSR.scala 851:40:chipyard.TestHarness.RocketConfig.fir@248454.6]
  wire [63:0] _T_3725; // @[CSR.scala 852:62:chipyard.TestHarness.RocketConfig.fir@248458.8]
  wire [63:0] _GEN_145; // @[CSR.scala 1076:31:chipyard.TestHarness.RocketConfig.fir@248465.6]
  wire [63:0] _GEN_147; // @[CSR.scala 1076:31:chipyard.TestHarness.RocketConfig.fir@248471.6]
  wire [63:0] _GEN_150; // @[CSR.scala 865:40:chipyard.TestHarness.RocketConfig.fir@248477.6]
  wire [63:0] _GEN_152; // @[CSR.scala 866:40:chipyard.TestHarness.RocketConfig.fir@248481.6]
  wire [63:0] _GEN_154; // @[CSR.scala 867:38:chipyard.TestHarness.RocketConfig.fir@248485.6]
  wire [63:0] _GEN_155; // @[CSR.scala 867:38:chipyard.TestHarness.RocketConfig.fir@248485.6]
  wire  _T_3748; // @[CSR.scala 1062:35:chipyard.TestHarness.RocketConfig.fir@248529.8]
  wire [63:0] _GEN_161; // @[CSR.scala 882:42:chipyard.TestHarness.RocketConfig.fir@248533.6]
  wire [1:0] _GEN_165; // @[CSR.scala 886:41:chipyard.TestHarness.RocketConfig.fir@248542.6]
  wire [63:0] _T_3789; // @[CSR.scala 900:54:chipyard.TestHarness.RocketConfig.fir@248622.8]
  wire [63:0] _T_3790; // @[CSR.scala 900:52:chipyard.TestHarness.RocketConfig.fir@248623.8]
  wire [63:0] _T_3791; // @[CSR.scala 900:78:chipyard.TestHarness.RocketConfig.fir@248624.8]
  wire [63:0] _T_3792; // @[CSR.scala 900:69:chipyard.TestHarness.RocketConfig.fir@248625.8]
  wire  _T_3816; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@248677.8]
  wire  _T_3817; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@248678.8]
  wire  _T_3818; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@248679.8]
  wire [3:0] _T_3819; // @[CSR.scala 908:44:chipyard.TestHarness.RocketConfig.fir@248681.10]
  wire [63:0] _T_3822; // @[CSR.scala 914:64:chipyard.TestHarness.RocketConfig.fir@248689.8]
  wire [63:0] _T_3824; // @[CSR.scala 914:81:chipyard.TestHarness.RocketConfig.fir@248691.8]
  wire [63:0] _GEN_177; // @[CSR.scala 916:42:chipyard.TestHarness.RocketConfig.fir@248697.6]
  wire [63:0] _GEN_178; // @[CSR.scala 917:42:chipyard.TestHarness.RocketConfig.fir@248703.6]
  wire [63:0] _T_3828; // @[CSR.scala 918:64:chipyard.TestHarness.RocketConfig.fir@248707.8]
  wire [63:0] _GEN_183; // @[CSR.scala 922:44:chipyard.TestHarness.RocketConfig.fir@248720.6]
  wire [63:0] _GEN_184; // @[CSR.scala 925:44:chipyard.TestHarness.RocketConfig.fir@248723.6]
  wire  _T_3831; // @[CSR.scala 931:37:chipyard.TestHarness.RocketConfig.fir@248730.6]
  wire  _T_3832; // @[CSR.scala 931:55:chipyard.TestHarness.RocketConfig.fir@248731.6]
  wire [63:0] _GEN_186; // @[CSR.scala 932:44:chipyard.TestHarness.RocketConfig.fir@248734.8]
  wire [63:0] _T_3866; // @[CSR.scala 1058:9:chipyard.TestHarness.RocketConfig.fir@248789.10]
  wire [63:0] _T_3867; // @[CSR.scala 1058:34:chipyard.TestHarness.RocketConfig.fir@248790.10]
  wire [63:0] _T_3872; // @[CSR.scala 1058:43:chipyard.TestHarness.RocketConfig.fir@248795.10]
  wire  _T_3890; // @[CSR.scala 941:38:chipyard.TestHarness.RocketConfig.fir@248831.10]
  wire  _GEN_187; // @[CSR.scala 943:51:chipyard.TestHarness.RocketConfig.fir@248838.10]
  wire [63:0] _GEN_203; // @[CSR.scala 931:70:chipyard.TestHarness.RocketConfig.fir@248733.6]
  wire  _T_3974; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@248977.6]
  wire  _T_3975; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@248978.6]
  wire  _T_3985; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@248999.8]
  wire  _T_3987; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249003.6]
  wire  _T_3989; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249005.6]
  wire  _T_3990; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249006.6]
  wire  _T_3991; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249007.6]
  wire  _T_3992; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249008.6]
  wire  _T_3993; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249009.6]
  wire [63:0] _GEN_258; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249010.6]
  wire  _T_3994; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249013.6]
  wire  _T_3995; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249014.6]
  wire  _T_4005; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249035.8]
  wire  _T_4007; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249039.6]
  wire  _T_4009; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249041.6]
  wire  _T_4010; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249042.6]
  wire  _T_4011; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249043.6]
  wire  _T_4012; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249044.6]
  wire  _T_4013; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249045.6]
  wire [63:0] _GEN_265; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249046.6]
  wire  _T_4014; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249049.6]
  wire  _T_4015; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249050.6]
  wire  _T_4025; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249071.8]
  wire  _T_4027; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249075.6]
  wire  _T_4029; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249077.6]
  wire  _T_4030; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249078.6]
  wire  _T_4031; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249079.6]
  wire  _T_4032; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249080.6]
  wire  _T_4033; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249081.6]
  wire [63:0] _GEN_272; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249082.6]
  wire  _T_4034; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249085.6]
  wire  _T_4035; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249086.6]
  wire  _T_4045; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249107.8]
  wire  _T_4047; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249111.6]
  wire  _T_4049; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249113.6]
  wire  _T_4050; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249114.6]
  wire  _T_4051; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249115.6]
  wire  _T_4052; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249116.6]
  wire  _T_4053; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249117.6]
  wire [63:0] _GEN_279; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249118.6]
  wire  _T_4054; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249121.6]
  wire  _T_4055; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249122.6]
  wire  _T_4065; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249143.8]
  wire  _T_4067; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249147.6]
  wire  _T_4069; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249149.6]
  wire  _T_4070; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249150.6]
  wire  _T_4071; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249151.6]
  wire  _T_4072; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249152.6]
  wire  _T_4073; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249153.6]
  wire [63:0] _GEN_286; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249154.6]
  wire  _T_4074; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249157.6]
  wire  _T_4075; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249158.6]
  wire  _T_4085; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249179.8]
  wire  _T_4087; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249183.6]
  wire  _T_4089; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249185.6]
  wire  _T_4090; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249186.6]
  wire  _T_4091; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249187.6]
  wire  _T_4092; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249188.6]
  wire  _T_4093; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249189.6]
  wire [63:0] _GEN_293; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249190.6]
  wire  _T_4094; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249193.6]
  wire  _T_4095; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249194.6]
  wire  _T_4105; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249215.8]
  wire  _T_4107; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249219.6]
  wire  _T_4109; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249221.6]
  wire  _T_4110; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249222.6]
  wire  _T_4111; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249223.6]
  wire  _T_4112; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249224.6]
  wire  _T_4113; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249225.6]
  wire [63:0] _GEN_300; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249226.6]
  wire  _T_4114; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249229.6]
  wire  _T_4115; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249230.6]
  wire  _T_4125; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249251.8]
  wire  _T_4131; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249259.6]
  wire  _T_4132; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249260.6]
  wire  _T_4133; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249261.6]
  wire [63:0] _GEN_307; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249262.6]
  wire [63:0] _T_4134; // @[CSR.scala 967:23:chipyard.TestHarness.RocketConfig.fir@249266.8]
  wire [63:0] _T_4136; // @[CSR.scala 967:38:chipyard.TestHarness.RocketConfig.fir@249268.8]
  wire [63:0] _T_4137; // @[CSR.scala 967:31:chipyard.TestHarness.RocketConfig.fir@249269.8]
  wire [1:0] _GEN_320; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_335; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_337; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_340; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_342; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_345; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_346; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_352; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_357; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_358; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_363; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_364; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_366; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_404; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_411; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_418; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_425; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_432; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_439; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_446; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire [63:0] _GEN_453; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  wire  _T_4163; // @[CSR.scala 1037:26:chipyard.TestHarness.RocketConfig.fir@249398.4]
  assign system_insn = io_rw_cmd == 3'h4; // @[CSR.scala 577:31:chipyard.TestHarness.RocketConfig.fir@244609.4]
  assign _T_703 = {io_rw_addr, 20'h0}; // @[CSR.scala 589:28:chipyard.TestHarness.RocketConfig.fir@244610.4]
  assign _T_710 = _T_703 & 32'h12400000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244617.4]
  assign _T_711 = _T_710 == 32'h10000000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244618.4]
  assign _T_712 = _T_703 & 32'h40000000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244619.4]
  assign _T_713 = _T_712 == 32'h40000000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244620.4]
  assign _T_715 = _T_711 | _T_713; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@244622.4]
  assign insn_ret = system_insn & _T_715; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244637.4]
  assign _T_1557 = ~io_rw_addr[9]; // @[CSR.scala 727:36:chipyard.TestHarness.RocketConfig.fir@245562.6]
  assign _GEN_93 = io_rw_addr[10] ? reg_dcsr_prv : reg_mstatus_mpp; // @[CSR.scala 733:53:chipyard.TestHarness.RocketConfig.fir@245579.8]
  assign _GEN_102 = _T_1557 ? {{1'd0}, reg_mstatus_spp} : _GEN_93; // @[CSR.scala 727:52:chipyard.TestHarness.RocketConfig.fir@245564.6]
  assign _T_704 = _T_703 & 32'h10100000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244611.4]
  assign _T_705 = _T_704 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244612.4]
  assign insn_call = system_insn & _T_705; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244633.4]
  assign _T_708 = _T_704 == 32'h100000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244615.4]
  assign insn_break = system_insn & _T_708; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244635.4]
  assign _T_1197 = insn_call | insn_break; // @[CSR.scala 661:29:chipyard.TestHarness.RocketConfig.fir@245140.4]
  assign exception = _T_1197 | io_exception; // @[CSR.scala 661:43:chipyard.TestHarness.RocketConfig.fir@245141.4]
  assign _GEN_490 = {{2'd0}, reg_mstatus_prv}; // @[CSR.scala 625:36:chipyard.TestHarness.RocketConfig.fir@245063.4]
  assign _T_1143 = _GEN_490 + 4'h8; // @[CSR.scala 625:36:chipyard.TestHarness.RocketConfig.fir@245064.4]
  assign _T_1144 = insn_break ? 64'h3 : io_cause; // @[CSR.scala 626:14:chipyard.TestHarness.RocketConfig.fir@245065.4]
  assign cause = insn_call ? {{60'd0}, _T_1143} : _T_1144; // @[CSR.scala 625:8:chipyard.TestHarness.RocketConfig.fir@245066.4]
  assign cause_lsbs = cause[7:0]; // @[CSR.scala 627:25:chipyard.TestHarness.RocketConfig.fir@245067.4]
  assign _T_1146 = cause_lsbs == 8'he; // @[CSR.scala 628:53:chipyard.TestHarness.RocketConfig.fir@245069.4]
  assign causeIsDebugInt = cause[63] & _T_1146; // @[CSR.scala 628:39:chipyard.TestHarness.RocketConfig.fir@245070.4]
  assign _T_1158 = reg_singleStepped | causeIsDebugInt; // @[CSR.scala 631:60:chipyard.TestHarness.RocketConfig.fir@245084.4]
  assign _T_1148 = ~cause[63]; // @[CSR.scala 629:29:chipyard.TestHarness.RocketConfig.fir@245072.4]
  assign causeIsDebugTrigger = _T_1148 & _T_1146; // @[CSR.scala 629:44:chipyard.TestHarness.RocketConfig.fir@245074.4]
  assign _T_1159 = _T_1158 | causeIsDebugTrigger; // @[CSR.scala 631:79:chipyard.TestHarness.RocketConfig.fir@245085.4]
  assign _T_1152 = _T_1148 & insn_break; // @[CSR.scala 630:42:chipyard.TestHarness.RocketConfig.fir@245077.4]
  assign _T_1155 = {reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@245080.4]
  assign _T_1156 = _T_1155 >> reg_mstatus_prv; // @[CSR.scala 630:134:chipyard.TestHarness.RocketConfig.fir@245081.4]
  assign causeIsDebugBreak = _T_1152 & _T_1156[0]; // @[CSR.scala 630:56:chipyard.TestHarness.RocketConfig.fir@245083.4]
  assign _T_1160 = _T_1159 | causeIsDebugBreak; // @[CSR.scala 631:102:chipyard.TestHarness.RocketConfig.fir@245086.4]
  assign trapToDebug = _T_1160 | reg_debug; // @[CSR.scala 631:123:chipyard.TestHarness.RocketConfig.fir@245087.4]
  assign _T_1232 = ~reg_debug; // @[CSR.scala 678:13:chipyard.TestHarness.RocketConfig.fir@245206.8]
  assign _GEN_42 = _T_1232 ? 2'h3 : reg_mstatus_prv; // @[CSR.scala 678:25:chipyard.TestHarness.RocketConfig.fir@245207.8]
  assign _T_1163 = reg_mstatus_prv <= 2'h1; // @[CSR.scala 633:59:chipyard.TestHarness.RocketConfig.fir@245091.4]
  assign read_mideleg = reg_mideleg & 64'h222; // @[CSR.scala 361:36:chipyard.TestHarness.RocketConfig.fir@243755.4]
  assign _T_1166 = read_mideleg >> cause_lsbs; // @[CSR.scala 633:102:chipyard.TestHarness.RocketConfig.fir@245094.4]
  assign read_medeleg = reg_medeleg & 64'hb15d; // @[CSR.scala 365:36:chipyard.TestHarness.RocketConfig.fir@243758.4]
  assign _T_1168 = read_medeleg >> cause_lsbs; // @[CSR.scala 633:128:chipyard.TestHarness.RocketConfig.fir@245096.4]
  assign _T_1170 = cause[63] ? _T_1166[0] : _T_1168[0]; // @[CSR.scala 633:74:chipyard.TestHarness.RocketConfig.fir@245098.4]
  assign delegate = _T_1163 & _T_1170; // @[CSR.scala 633:68:chipyard.TestHarness.RocketConfig.fir@245099.4]
  assign _GEN_50 = delegate ? 2'h1 : 2'h3; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  assign _GEN_61 = trapToDebug ? _GEN_42 : _GEN_50; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_79 = exception ? _GEN_61 : reg_mstatus_prv; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign new_prv = insn_ret ? _GEN_102 : _GEN_79; // @[CSR.scala 726:19:chipyard.TestHarness.RocketConfig.fir@245560.4]
  assign _T_1 = new_prv == 2'h2; // @[CSR.scala 1062:35:chipyard.TestHarness.RocketConfig.fir@243666.4]
  assign read_mcounteren = reg_mcounteren & 32'h7; // @[CSR.scala 381:30:chipyard.TestHarness.RocketConfig.fir@243767.4]
  assign read_scounteren = reg_scounteren & 32'h7; // @[CSR.scala 385:36:chipyard.TestHarness.RocketConfig.fir@243770.4]
  assign _GEN_491 = {{5'd0}, io_retire}; // @[Counters.scala 47:33:chipyard.TestHarness.RocketConfig.fir@243782.4]
  assign _T_40 = _T_39 + _GEN_491; // @[Counters.scala 47:33:chipyard.TestHarness.RocketConfig.fir@243782.4]
  assign _T_44 = _T_41 + 58'h1; // @[Counters.scala 52:43:chipyard.TestHarness.RocketConfig.fir@243788.6]
  assign _T_45 = {_T_41,_T_39}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243791.4]
  assign _T_46 = ~io_csr_stall; // @[CSR.scala 404:103:chipyard.TestHarness.RocketConfig.fir@243792.4]
  assign _GEN_492 = {{5'd0}, _T_46}; // @[Counters.scala 47:33:chipyard.TestHarness.RocketConfig.fir@243794.4]
  assign _T_48 = _T_47 + _GEN_492; // @[Counters.scala 47:33:chipyard.TestHarness.RocketConfig.fir@243794.4]
  assign _T_52 = _T_49 + 58'h1; // @[Counters.scala 52:43:chipyard.TestHarness.RocketConfig.fir@243800.6]
  assign _T_53 = {_T_49,_T_47}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243803.4]
  assign mip_seip = reg_mip_seip | io_interrupts_seip; // @[CSR.scala 415:57:chipyard.TestHarness.RocketConfig.fir@243810.4]
  assign _T_61 = {io_interrupts_mtip,1'h0,reg_mip_stip,1'h0,io_interrupts_msip,1'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 417:22:chipyard.TestHarness.RocketConfig.fir@243819.4]
  assign _T_69 = {4'h0,io_interrupts_meip,1'h0,mip_seip,1'h0,_T_61}; // @[CSR.scala 417:22:chipyard.TestHarness.RocketConfig.fir@243827.4]
  assign read_mip = _T_69 & 16'haaa; // @[CSR.scala 417:29:chipyard.TestHarness.RocketConfig.fir@243828.4]
  assign _GEN_493 = {{48'd0}, read_mip}; // @[CSR.scala 420:56:chipyard.TestHarness.RocketConfig.fir@243829.4]
  assign pending_interrupts = _GEN_493 & reg_mie; // @[CSR.scala 420:56:chipyard.TestHarness.RocketConfig.fir@243829.4]
  assign d_interrupts = {io_interrupts_debug, 14'h0}; // @[CSR.scala 421:42:chipyard.TestHarness.RocketConfig.fir@243831.4]
  assign _T_72 = _T_1163 | reg_mstatus_mie; // @[CSR.scala 422:51:chipyard.TestHarness.RocketConfig.fir@243833.4]
  assign _T_73 = ~pending_interrupts; // @[CSR.scala 422:73:chipyard.TestHarness.RocketConfig.fir@243834.4]
  assign _T_74 = _T_73 | read_mideleg; // @[CSR.scala 422:93:chipyard.TestHarness.RocketConfig.fir@243835.4]
  assign _T_75 = ~_T_74; // @[CSR.scala 422:71:chipyard.TestHarness.RocketConfig.fir@243836.4]
  assign m_interrupts = _T_72 ? _T_75 : 64'h0; // @[CSR.scala 422:25:chipyard.TestHarness.RocketConfig.fir@243837.4]
  assign _T_76 = reg_mstatus_prv < 2'h1; // @[CSR.scala 423:42:chipyard.TestHarness.RocketConfig.fir@243838.4]
  assign _T_77 = reg_mstatus_prv == 2'h1; // @[CSR.scala 423:70:chipyard.TestHarness.RocketConfig.fir@243839.4]
  assign _T_78 = _T_77 & reg_mstatus_sie; // @[CSR.scala 423:80:chipyard.TestHarness.RocketConfig.fir@243840.4]
  assign _T_79 = _T_76 | _T_78; // @[CSR.scala 423:50:chipyard.TestHarness.RocketConfig.fir@243841.4]
  assign _T_80 = pending_interrupts & read_mideleg; // @[CSR.scala 423:120:chipyard.TestHarness.RocketConfig.fir@243842.4]
  assign s_interrupts = _T_79 ? _T_80 : 64'h0; // @[CSR.scala 423:25:chipyard.TestHarness.RocketConfig.fir@243843.4]
  assign _T_119 = d_interrupts[14] | d_interrupts[13]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243882.4]
  assign _T_120 = _T_119 | d_interrupts[12]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243883.4]
  assign _T_121 = _T_120 | d_interrupts[11]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243884.4]
  assign _T_122 = _T_121 | d_interrupts[3]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243885.4]
  assign _T_123 = _T_122 | d_interrupts[7]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243886.4]
  assign _T_124 = _T_123 | d_interrupts[9]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243887.4]
  assign _T_125 = _T_124 | d_interrupts[1]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243888.4]
  assign _T_126 = _T_125 | d_interrupts[5]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243889.4]
  assign _T_127 = _T_126 | d_interrupts[8]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243890.4]
  assign _T_128 = _T_127 | d_interrupts[0]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243891.4]
  assign _T_129 = _T_128 | d_interrupts[4]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243892.4]
  assign _T_130 = _T_129 | m_interrupts[15]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243893.4]
  assign _T_131 = _T_130 | m_interrupts[14]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243894.4]
  assign _T_132 = _T_131 | m_interrupts[13]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243895.4]
  assign _T_133 = _T_132 | m_interrupts[12]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243896.4]
  assign _T_134 = _T_133 | m_interrupts[11]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243897.4]
  assign _T_135 = _T_134 | m_interrupts[3]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243898.4]
  assign _T_136 = _T_135 | m_interrupts[7]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243899.4]
  assign _T_137 = _T_136 | m_interrupts[9]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243900.4]
  assign _T_138 = _T_137 | m_interrupts[1]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243901.4]
  assign _T_139 = _T_138 | m_interrupts[5]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243902.4]
  assign _T_140 = _T_139 | m_interrupts[8]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243903.4]
  assign _T_141 = _T_140 | m_interrupts[0]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243904.4]
  assign _T_142 = _T_141 | m_interrupts[4]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243905.4]
  assign _T_143 = _T_142 | s_interrupts[15]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243906.4]
  assign _T_144 = _T_143 | s_interrupts[14]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243907.4]
  assign _T_145 = _T_144 | s_interrupts[13]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243908.4]
  assign _T_146 = _T_145 | s_interrupts[12]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243909.4]
  assign _T_147 = _T_146 | s_interrupts[11]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243910.4]
  assign _T_148 = _T_147 | s_interrupts[3]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243911.4]
  assign _T_149 = _T_148 | s_interrupts[7]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243912.4]
  assign _T_150 = _T_149 | s_interrupts[9]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243913.4]
  assign _T_151 = _T_150 | s_interrupts[1]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243914.4]
  assign _T_152 = _T_151 | s_interrupts[5]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243915.4]
  assign _T_153 = _T_152 | s_interrupts[8]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243916.4]
  assign _T_154 = _T_153 | s_interrupts[0]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243917.4]
  assign anyInterrupt = _T_154 | s_interrupts[4]; // @[CSR.scala 1052:90:chipyard.TestHarness.RocketConfig.fir@243918.4]
  assign _T_193 = s_interrupts[0] ? 3'h0 : 3'h4; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243957.4]
  assign _T_194 = s_interrupts[8] ? 4'h8 : {{1'd0}, _T_193}; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243958.4]
  assign _T_195 = s_interrupts[5] ? 4'h5 : _T_194; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243959.4]
  assign _T_196 = s_interrupts[1] ? 4'h1 : _T_195; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243960.4]
  assign _T_197 = s_interrupts[9] ? 4'h9 : _T_196; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243961.4]
  assign _T_198 = s_interrupts[7] ? 4'h7 : _T_197; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243962.4]
  assign _T_199 = s_interrupts[3] ? 4'h3 : _T_198; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243963.4]
  assign _T_200 = s_interrupts[11] ? 4'hb : _T_199; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243964.4]
  assign _T_201 = s_interrupts[12] ? 4'hc : _T_200; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243965.4]
  assign _T_202 = s_interrupts[13] ? 4'hd : _T_201; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243966.4]
  assign _T_203 = s_interrupts[14] ? 4'he : _T_202; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243967.4]
  assign _T_204 = s_interrupts[15] ? 4'hf : _T_203; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243968.4]
  assign _T_205 = m_interrupts[4] ? 4'h4 : _T_204; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243969.4]
  assign _T_206 = m_interrupts[0] ? 4'h0 : _T_205; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243970.4]
  assign _T_207 = m_interrupts[8] ? 4'h8 : _T_206; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243971.4]
  assign _T_208 = m_interrupts[5] ? 4'h5 : _T_207; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243972.4]
  assign _T_209 = m_interrupts[1] ? 4'h1 : _T_208; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243973.4]
  assign _T_210 = m_interrupts[9] ? 4'h9 : _T_209; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243974.4]
  assign _T_211 = m_interrupts[7] ? 4'h7 : _T_210; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243975.4]
  assign _T_212 = m_interrupts[3] ? 4'h3 : _T_211; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243976.4]
  assign _T_213 = m_interrupts[11] ? 4'hb : _T_212; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243977.4]
  assign _T_214 = m_interrupts[12] ? 4'hc : _T_213; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243978.4]
  assign _T_215 = m_interrupts[13] ? 4'hd : _T_214; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243979.4]
  assign _T_216 = m_interrupts[14] ? 4'he : _T_215; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243980.4]
  assign _T_217 = m_interrupts[15] ? 4'hf : _T_216; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243981.4]
  assign _T_218 = d_interrupts[4] ? 4'h4 : _T_217; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243982.4]
  assign _T_219 = d_interrupts[0] ? 4'h0 : _T_218; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243983.4]
  assign _T_220 = d_interrupts[8] ? 4'h8 : _T_219; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243984.4]
  assign _T_221 = d_interrupts[5] ? 4'h5 : _T_220; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243985.4]
  assign _T_222 = d_interrupts[1] ? 4'h1 : _T_221; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243986.4]
  assign _T_223 = d_interrupts[9] ? 4'h9 : _T_222; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243987.4]
  assign _T_224 = d_interrupts[7] ? 4'h7 : _T_223; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243988.4]
  assign _T_225 = d_interrupts[3] ? 4'h3 : _T_224; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243989.4]
  assign _T_226 = d_interrupts[11] ? 4'hb : _T_225; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243990.4]
  assign _T_227 = d_interrupts[12] ? 4'hc : _T_226; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243991.4]
  assign _T_228 = d_interrupts[13] ? 4'hd : _T_227; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243992.4]
  assign whichInterrupt = d_interrupts[14] ? 4'he : _T_228; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@243993.4]
  assign _GEN_494 = {{60'd0}, whichInterrupt}; // @[CSR.scala 426:43:chipyard.TestHarness.RocketConfig.fir@243994.4]
  assign _T_230 = ~io_singleStep; // @[CSR.scala 427:36:chipyard.TestHarness.RocketConfig.fir@243996.4]
  assign _T_231 = anyInterrupt & _T_230; // @[CSR.scala 427:33:chipyard.TestHarness.RocketConfig.fir@243997.4]
  assign _T_232 = _T_231 | reg_singleStepped; // @[CSR.scala 427:51:chipyard.TestHarness.RocketConfig.fir@243998.4]
  assign _T_233 = reg_debug | io_status_cease; // @[CSR.scala 427:88:chipyard.TestHarness.RocketConfig.fir@243999.4]
  assign _T_234 = ~_T_233; // @[CSR.scala 427:76:chipyard.TestHarness.RocketConfig.fir@244000.4]
  assign _T_238 = {reg_pmp_0_addr,reg_pmp_0_cfg_a[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244014.4]
  assign _T_241 = _T_238 + 31'h1; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244017.4]
  assign _T_242 = ~_T_241; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244018.4]
  assign _T_243 = _T_238 & _T_242; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244019.4]
  assign _T_244 = {_T_243,2'h3}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244020.4]
  assign _T_247 = {reg_pmp_1_addr,reg_pmp_1_cfg_a[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244031.4]
  assign _T_250 = _T_247 + 31'h1; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244034.4]
  assign _T_251 = ~_T_250; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244035.4]
  assign _T_252 = _T_247 & _T_251; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244036.4]
  assign _T_253 = {_T_252,2'h3}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244037.4]
  assign _T_256 = {reg_pmp_2_addr,reg_pmp_2_cfg_a[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244048.4]
  assign _T_259 = _T_256 + 31'h1; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244051.4]
  assign _T_260 = ~_T_259; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244052.4]
  assign _T_261 = _T_256 & _T_260; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244053.4]
  assign _T_262 = {_T_261,2'h3}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244054.4]
  assign _T_265 = {reg_pmp_3_addr,reg_pmp_3_cfg_a[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244065.4]
  assign _T_268 = _T_265 + 31'h1; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244068.4]
  assign _T_269 = ~_T_268; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244069.4]
  assign _T_270 = _T_265 & _T_269; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244070.4]
  assign _T_271 = {_T_270,2'h3}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244071.4]
  assign _T_274 = {reg_pmp_4_addr,reg_pmp_4_cfg_a[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244082.4]
  assign _T_277 = _T_274 + 31'h1; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244085.4]
  assign _T_278 = ~_T_277; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244086.4]
  assign _T_279 = _T_274 & _T_278; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244087.4]
  assign _T_280 = {_T_279,2'h3}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244088.4]
  assign _T_283 = {reg_pmp_5_addr,reg_pmp_5_cfg_a[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244099.4]
  assign _T_286 = _T_283 + 31'h1; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244102.4]
  assign _T_287 = ~_T_286; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244103.4]
  assign _T_288 = _T_283 & _T_287; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244104.4]
  assign _T_289 = {_T_288,2'h3}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244105.4]
  assign _T_292 = {reg_pmp_6_addr,reg_pmp_6_cfg_a[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244116.4]
  assign _T_295 = _T_292 + 31'h1; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244119.4]
  assign _T_296 = ~_T_295; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244120.4]
  assign _T_297 = _T_292 & _T_296; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244121.4]
  assign _T_298 = {_T_297,2'h3}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244122.4]
  assign _T_301 = {reg_pmp_7_addr,reg_pmp_7_cfg_a[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244133.4]
  assign _T_304 = _T_301 + 31'h1; // @[PMP.scala 60:23:chipyard.TestHarness.RocketConfig.fir@244136.4]
  assign _T_305 = ~_T_304; // @[PMP.scala 60:16:chipyard.TestHarness.RocketConfig.fir@244137.4]
  assign _T_306 = _T_301 & _T_305; // @[PMP.scala 60:14:chipyard.TestHarness.RocketConfig.fir@244138.4]
  assign _T_307 = {_T_306,2'h3}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244139.4]
  assign _T_313 = {io_status_hpie,io_status_spie,io_status_upie,io_status_mie,io_status_hie,io_status_sie,io_status_uie}; // @[CSR.scala 446:38:chipyard.TestHarness.RocketConfig.fir@244155.4]
  assign _T_321 = {io_status_sum,io_status_mprv,io_status_xs,io_status_fs,io_status_mpp,io_status_vs,io_status_spp,io_status_mpie,_T_313}; // @[CSR.scala 446:38:chipyard.TestHarness.RocketConfig.fir@244163.4]
  assign _T_328 = {io_status_sxl,io_status_uxl,io_status_sd_rv32,io_status_zero1,io_status_tsr,io_status_tw,io_status_tvm,io_status_mxr}; // @[CSR.scala 446:38:chipyard.TestHarness.RocketConfig.fir@244170.4]
  assign _T_337 = {io_status_debug,io_status_cease,io_status_wfi,io_status_isa,io_status_dprv,io_status_prv,io_status_sd,io_status_zero2,_T_328,_T_321}; // @[CSR.scala 446:38:chipyard.TestHarness.RocketConfig.fir@244179.4]
  assign read_mstatus = _T_337[63:0]; // @[CSR.scala 446:40:chipyard.TestHarness.RocketConfig.fir@244180.4]
  assign _T_339 = reg_mtvec[0] ? 8'hfe : 8'h2; // @[CSR.scala 1081:39:chipyard.TestHarness.RocketConfig.fir@244182.4]
  assign _T_341 = {{24'd0}, _T_339}; // @[package.scala 131:41:chipyard.TestHarness.RocketConfig.fir@244184.4]
  assign _T_342 = ~_T_341; // @[package.scala 131:37:chipyard.TestHarness.RocketConfig.fir@244185.4]
  assign _T_343 = reg_mtvec & _T_342; // @[package.scala 131:35:chipyard.TestHarness.RocketConfig.fir@244186.4]
  assign read_mtvec = {32'h0,_T_343}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244187.4]
  assign _T_345 = reg_stvec[0] ? 8'hfe : 8'h2; // @[CSR.scala 1081:39:chipyard.TestHarness.RocketConfig.fir@244189.4]
  assign _T_347 = {{31'd0}, _T_345}; // @[package.scala 131:41:chipyard.TestHarness.RocketConfig.fir@244191.4]
  assign _T_348 = ~_T_347; // @[package.scala 131:37:chipyard.TestHarness.RocketConfig.fir@244192.4]
  assign _T_349 = reg_stvec & _T_348; // @[package.scala 131:35:chipyard.TestHarness.RocketConfig.fir@244193.4]
  assign _T_352 = _T_349[38] ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244196.4]
  assign read_stvec = {_T_352,_T_349}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244197.4]
  assign _T_358 = {reg_bp_0_control_m,1'h0,reg_bp_0_control_s,reg_bp_0_control_u,reg_bp_0_control_x,reg_bp_0_control_w,reg_bp_0_control_r}; // @[CSR.scala 452:48:chipyard.TestHarness.RocketConfig.fir@244203.4]
  assign _T_366 = {4'h2,reg_bp_0_control_dmode,46'h40000000000,reg_bp_0_control_action,1'h0,2'h0,reg_bp_0_control_tmatch,_T_358}; // @[CSR.scala 452:48:chipyard.TestHarness.RocketConfig.fir@244211.4]
  assign _T_369 = reg_bp_0_address[38] ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244214.4]
  assign _T_370 = {_T_369,reg_bp_0_address}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244215.4]
  assign _T_371 = ~reg_mepc; // @[CSR.scala 1080:28:chipyard.TestHarness.RocketConfig.fir@244216.4]
  assign _T_373 = reg_misa[2] ? 2'h1 : 2'h3; // @[CSR.scala 1080:36:chipyard.TestHarness.RocketConfig.fir@244218.4]
  assign _GEN_495 = {{38'd0}, _T_373}; // @[CSR.scala 1080:31:chipyard.TestHarness.RocketConfig.fir@244219.4]
  assign _T_374 = _T_371 | _GEN_495; // @[CSR.scala 1080:31:chipyard.TestHarness.RocketConfig.fir@244219.4]
  assign _T_375 = ~_T_374; // @[CSR.scala 1080:26:chipyard.TestHarness.RocketConfig.fir@244220.4]
  assign _T_378 = _T_375[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244223.4]
  assign _T_379 = {_T_378,_T_375}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244224.4]
  assign _T_382 = reg_mtval[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244227.4]
  assign _T_383 = {_T_382,reg_mtval}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244228.4]
  assign _T_389 = {2'h0,1'h0,reg_dcsr_cause,3'h0,reg_dcsr_step,reg_dcsr_prv}; // @[CSR.scala 466:27:chipyard.TestHarness.RocketConfig.fir@244234.4]
  assign _T_396 = {4'h4,12'h0,reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku,_T_389}; // @[CSR.scala 466:27:chipyard.TestHarness.RocketConfig.fir@244241.4]
  assign _T_397 = ~reg_dpc; // @[CSR.scala 1080:28:chipyard.TestHarness.RocketConfig.fir@244242.4]
  assign _T_400 = _T_397 | _GEN_495; // @[CSR.scala 1080:31:chipyard.TestHarness.RocketConfig.fir@244245.4]
  assign _T_401 = ~_T_400; // @[CSR.scala 1080:26:chipyard.TestHarness.RocketConfig.fir@244246.4]
  assign _T_404 = _T_401[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244249.4]
  assign _T_405 = {_T_404,_T_401}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244250.4]
  assign read_fcsr = {reg_frm,reg_fflags}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244251.4]
  assign _T_406 = reg_mie & read_mideleg; // @[CSR.scala 522:28:chipyard.TestHarness.RocketConfig.fir@244253.4]
  assign _T_407 = _GEN_493 & read_mideleg; // @[CSR.scala 523:29:chipyard.TestHarness.RocketConfig.fir@244254.4]
  assign _T_415 = {1'h0,io_status_spie,2'h0,1'h0,io_status_sie,1'h0}; // @[CSR.scala 537:57:chipyard.TestHarness.RocketConfig.fir@244307.4]
  assign _T_423 = {io_status_sum,1'h0,io_status_xs,io_status_fs,2'h0,io_status_vs,io_status_spp,1'h0,_T_415}; // @[CSR.scala 537:57:chipyard.TestHarness.RocketConfig.fir@244315.4]
  assign _T_430 = {2'h0,io_status_uxl,io_status_sd_rv32,8'h0,2'h0,1'h0,io_status_mxr}; // @[CSR.scala 537:57:chipyard.TestHarness.RocketConfig.fir@244322.4]
  assign _T_439 = {35'h0,4'h0,io_status_sd,27'h0,_T_430,_T_423}; // @[CSR.scala 537:57:chipyard.TestHarness.RocketConfig.fir@244331.4]
  assign _T_443 = reg_stval[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244335.4]
  assign _T_444 = {_T_443,reg_stval}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244336.4]
  assign _T_446 = {reg_satp_mode,16'h0,reg_satp_ppn}; // @[CSR.scala 543:43:chipyard.TestHarness.RocketConfig.fir@244338.4]
  assign _T_447 = ~reg_sepc; // @[CSR.scala 1080:28:chipyard.TestHarness.RocketConfig.fir@244339.4]
  assign _T_450 = _T_447 | _GEN_495; // @[CSR.scala 1080:31:chipyard.TestHarness.RocketConfig.fir@244342.4]
  assign _T_451 = ~_T_450; // @[CSR.scala 1080:26:chipyard.TestHarness.RocketConfig.fir@244343.4]
  assign _T_454 = _T_451[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@244346.4]
  assign _T_455 = {_T_454,_T_451}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244347.4]
  assign _T_461 = {reg_pmp_0_cfg_l,2'h0,reg_pmp_0_cfg_a,reg_pmp_0_cfg_x,reg_pmp_0_cfg_w,reg_pmp_0_cfg_r}; // @[package.scala 36:38:chipyard.TestHarness.RocketConfig.fir@244362.4]
  assign _T_471 = {reg_pmp_2_cfg_l,2'h0,reg_pmp_2_cfg_a,reg_pmp_2_cfg_x,reg_pmp_2_cfg_w,reg_pmp_2_cfg_r}; // @[package.scala 36:38:chipyard.TestHarness.RocketConfig.fir@244372.4]
  assign _T_481 = {reg_pmp_4_cfg_l,2'h0,reg_pmp_4_cfg_a,reg_pmp_4_cfg_x,reg_pmp_4_cfg_w,reg_pmp_4_cfg_r}; // @[package.scala 36:38:chipyard.TestHarness.RocketConfig.fir@244382.4]
  assign _T_491 = {reg_pmp_6_cfg_l,2'h0,reg_pmp_6_cfg_a,reg_pmp_6_cfg_x,reg_pmp_6_cfg_w,reg_pmp_6_cfg_r}; // @[package.scala 36:38:chipyard.TestHarness.RocketConfig.fir@244392.4]
  assign _T_497 = {reg_pmp_1_cfg_l,2'h0,reg_pmp_1_cfg_a,reg_pmp_1_cfg_x,reg_pmp_1_cfg_w,reg_pmp_1_cfg_r,_T_461}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244398.4]
  assign _T_499 = {reg_pmp_3_cfg_l,2'h0,reg_pmp_3_cfg_a,reg_pmp_3_cfg_x,reg_pmp_3_cfg_w,reg_pmp_3_cfg_r,_T_471,_T_497}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244400.4]
  assign _T_500 = {reg_pmp_5_cfg_l,2'h0,reg_pmp_5_cfg_a,reg_pmp_5_cfg_x,reg_pmp_5_cfg_w,reg_pmp_5_cfg_r,_T_481}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244401.4]
  assign _T_503 = {reg_pmp_7_cfg_l,2'h0,reg_pmp_7_cfg_a,reg_pmp_7_cfg_x,reg_pmp_7_cfg_w,reg_pmp_7_cfg_r,_T_491,_T_500,_T_499}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@244404.4]
  assign _T_552 = io_rw_addr == 12'h7a1; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244457.4]
  assign _T_553 = io_rw_addr == 12'h7a2; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244458.4]
  assign _T_554 = io_rw_addr == 12'h301; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244459.4]
  assign _T_555 = io_rw_addr == 12'h300; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244460.4]
  assign _T_556 = io_rw_addr == 12'h305; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244461.4]
  assign _T_557 = io_rw_addr == 12'h344; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244462.4]
  assign _T_558 = io_rw_addr == 12'h304; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244463.4]
  assign _T_559 = io_rw_addr == 12'h340; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244464.4]
  assign _T_560 = io_rw_addr == 12'h341; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244465.4]
  assign _T_561 = io_rw_addr == 12'h343; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244466.4]
  assign _T_562 = io_rw_addr == 12'h342; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244467.4]
  assign _T_564 = io_rw_addr == 12'h7b0; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244469.4]
  assign _T_565 = io_rw_addr == 12'h7b1; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244470.4]
  assign _T_566 = io_rw_addr == 12'h7b2; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244471.4]
  assign _T_567 = io_rw_addr == 12'h1; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244472.4]
  assign _T_568 = io_rw_addr == 12'h2; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244473.4]
  assign _T_569 = io_rw_addr == 12'h3; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244474.4]
  assign _T_570 = io_rw_addr == 12'hb00; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244475.4]
  assign _T_571 = io_rw_addr == 12'hb02; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244476.4]
  assign _T_659 = io_rw_addr == 12'h306; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244564.4]
  assign _T_660 = io_rw_addr == 12'hc00; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244565.4]
  assign _T_661 = io_rw_addr == 12'hc02; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244566.4]
  assign _T_662 = io_rw_addr == 12'h100; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244567.4]
  assign _T_663 = io_rw_addr == 12'h144; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244568.4]
  assign _T_664 = io_rw_addr == 12'h104; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244569.4]
  assign _T_665 = io_rw_addr == 12'h140; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244570.4]
  assign _T_666 = io_rw_addr == 12'h142; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244571.4]
  assign _T_667 = io_rw_addr == 12'h143; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244572.4]
  assign _T_668 = io_rw_addr == 12'h180; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244573.4]
  assign _T_669 = io_rw_addr == 12'h141; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244574.4]
  assign _T_670 = io_rw_addr == 12'h105; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244575.4]
  assign _T_671 = io_rw_addr == 12'h106; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244576.4]
  assign _T_672 = io_rw_addr == 12'h303; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244577.4]
  assign _T_673 = io_rw_addr == 12'h302; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244578.4]
  assign _T_674 = io_rw_addr == 12'h3a0; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244579.4]
  assign _T_676 = io_rw_addr == 12'h3b0; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244581.4]
  assign _T_677 = io_rw_addr == 12'h3b1; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244582.4]
  assign _T_678 = io_rw_addr == 12'h3b2; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244583.4]
  assign _T_679 = io_rw_addr == 12'h3b3; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244584.4]
  assign _T_680 = io_rw_addr == 12'h3b4; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244585.4]
  assign _T_681 = io_rw_addr == 12'h3b5; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244586.4]
  assign _T_682 = io_rw_addr == 12'h3b6; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244587.4]
  assign _T_683 = io_rw_addr == 12'h3b7; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244588.4]
  assign _T_692 = io_rw_addr == 12'h7c1; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244597.4]
  assign _T_693 = io_rw_addr == 12'hf12; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244598.4]
  assign _T_695 = io_rw_addr == 12'hf13; // @[CSR.scala 574:73:chipyard.TestHarness.RocketConfig.fir@244600.4]
  assign _T_697 = io_rw_cmd[1] ? io_rw_rdata : 64'h0; // @[CSR.scala 1058:9:chipyard.TestHarness.RocketConfig.fir@244602.4]
  assign _T_698 = _T_697 | io_rw_wdata; // @[CSR.scala 1058:34:chipyard.TestHarness.RocketConfig.fir@244603.4]
  assign _T_700 = &io_rw_cmd[1:0]; // @[CSR.scala 1058:59:chipyard.TestHarness.RocketConfig.fir@244605.4]
  assign _T_701 = _T_700 ? io_rw_wdata : 64'h0; // @[CSR.scala 1058:49:chipyard.TestHarness.RocketConfig.fir@244606.4]
  assign _T_702 = ~_T_701; // @[CSR.scala 1058:45:chipyard.TestHarness.RocketConfig.fir@244607.4]
  assign wdata = _T_698 & _T_702; // @[CSR.scala 1058:43:chipyard.TestHarness.RocketConfig.fir@244608.4]
  assign _T_716 = _T_703 & 32'h20200000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244623.4]
  assign _T_717 = _T_716 == 32'h20000000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244624.4]
  assign _T_719 = _T_703 & 32'h32200000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244626.4]
  assign _T_720 = _T_719 == 32'h10000000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244627.4]
  assign insn_cease = system_insn & _T_717; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244639.4]
  assign insn_wfi = system_insn & _T_720; // @[CSR.scala 589:95:chipyard.TestHarness.RocketConfig.fir@244641.4]
  assign _T_731 = {io_decode_0_csr, 20'h0}; // @[CSR.scala 596:30:chipyard.TestHarness.RocketConfig.fir@244644.4]
  assign _T_738 = _T_731 & 32'h12400000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244651.4]
  assign _T_739 = _T_738 == 32'h10000000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244652.4]
  assign _T_740 = _T_731 & 32'h40000000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244653.4]
  assign _T_741 = _T_740 == 32'h40000000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244654.4]
  assign _T_743 = _T_739 | _T_741; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@244656.4]
  assign _T_747 = _T_731 & 32'h32200000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244660.4]
  assign _T_748 = _T_747 == 32'h10000000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244661.4]
  assign _T_750 = _T_731 & 32'h42000000; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244663.4]
  assign _T_751 = _T_750 == 32'h2000000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@244664.4]
  assign _T_759 = reg_mstatus_prv > 2'h1; // @[CSR.scala 598:63:chipyard.TestHarness.RocketConfig.fir@244672.4]
  assign _T_761 = ~reg_mstatus_tw; // @[CSR.scala 598:74:chipyard.TestHarness.RocketConfig.fir@244674.4]
  assign _T_762 = _T_759 | _T_761; // @[CSR.scala 598:71:chipyard.TestHarness.RocketConfig.fir@244675.4]
  assign _T_765 = ~reg_mstatus_tvm; // @[CSR.scala 599:73:chipyard.TestHarness.RocketConfig.fir@244678.4]
  assign _T_766 = _T_759 | _T_765; // @[CSR.scala 599:70:chipyard.TestHarness.RocketConfig.fir@244679.4]
  assign _T_769 = ~reg_mstatus_tsr; // @[CSR.scala 600:75:chipyard.TestHarness.RocketConfig.fir@244682.4]
  assign _T_770 = _T_759 | _T_769; // @[CSR.scala 600:72:chipyard.TestHarness.RocketConfig.fir@244683.4]
  assign _T_773 = read_mcounteren >> io_decode_0_csr[4:0]; // @[CSR.scala 602:68:chipyard.TestHarness.RocketConfig.fir@244686.4]
  assign _T_775 = _T_759 | _T_773[0]; // @[CSR.scala 602:50:chipyard.TestHarness.RocketConfig.fir@244688.4]
  assign _T_776 = reg_mstatus_prv >= 2'h1; // @[CSR.scala 603:44:chipyard.TestHarness.RocketConfig.fir@244689.4]
  assign _T_778 = read_scounteren >> io_decode_0_csr[4:0]; // @[CSR.scala 603:71:chipyard.TestHarness.RocketConfig.fir@244691.4]
  assign _T_780 = _T_776 | _T_778[0]; // @[CSR.scala 603:53:chipyard.TestHarness.RocketConfig.fir@244693.4]
  assign _T_781 = _T_775 & _T_780; // @[CSR.scala 602:84:chipyard.TestHarness.RocketConfig.fir@244694.4]
  assign _T_782 = io_status_fs == 2'h0; // @[CSR.scala 604:39:chipyard.TestHarness.RocketConfig.fir@244695.4]
  assign _T_784 = ~reg_misa[5]; // @[CSR.scala 604:48:chipyard.TestHarness.RocketConfig.fir@244697.4]
  assign _T_790 = io_decode_0_csr & 12'h900; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@244705.4]
  assign _T_799 = reg_mstatus_prv < io_decode_0_csr[9:8]; // @[CSR.scala 608:44:chipyard.TestHarness.RocketConfig.fir@244716.4]
  assign _T_800 = io_decode_0_csr == 12'h7a0; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244717.4]
  assign _T_801 = io_decode_0_csr == 12'h7a1; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244718.4]
  assign _T_802 = io_decode_0_csr == 12'h7a2; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244719.4]
  assign _T_803 = io_decode_0_csr == 12'h301; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244720.4]
  assign _T_804 = io_decode_0_csr == 12'h300; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244721.4]
  assign _T_805 = io_decode_0_csr == 12'h305; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244722.4]
  assign _T_806 = io_decode_0_csr == 12'h344; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244723.4]
  assign _T_807 = io_decode_0_csr == 12'h304; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244724.4]
  assign _T_808 = io_decode_0_csr == 12'h340; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244725.4]
  assign _T_809 = io_decode_0_csr == 12'h341; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244726.4]
  assign _T_810 = io_decode_0_csr == 12'h343; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244727.4]
  assign _T_811 = io_decode_0_csr == 12'h342; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244728.4]
  assign _T_812 = io_decode_0_csr == 12'hf14; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244729.4]
  assign _T_813 = io_decode_0_csr == 12'h7b0; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244730.4]
  assign _T_814 = io_decode_0_csr == 12'h7b1; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244731.4]
  assign _T_815 = io_decode_0_csr == 12'h7b2; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244732.4]
  assign _T_816 = io_decode_0_csr == 12'h1; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244733.4]
  assign _T_817 = io_decode_0_csr == 12'h2; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244734.4]
  assign _T_818 = io_decode_0_csr == 12'h3; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244735.4]
  assign _T_819 = io_decode_0_csr == 12'hb00; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244736.4]
  assign _T_820 = io_decode_0_csr == 12'hb02; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244737.4]
  assign _T_821 = io_decode_0_csr == 12'h323; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244738.4]
  assign _T_822 = io_decode_0_csr == 12'hb03; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244739.4]
  assign _T_823 = io_decode_0_csr == 12'hc03; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244740.4]
  assign _T_824 = io_decode_0_csr == 12'h324; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244741.4]
  assign _T_825 = io_decode_0_csr == 12'hb04; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244742.4]
  assign _T_826 = io_decode_0_csr == 12'hc04; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244743.4]
  assign _T_827 = io_decode_0_csr == 12'h325; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244744.4]
  assign _T_828 = io_decode_0_csr == 12'hb05; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244745.4]
  assign _T_829 = io_decode_0_csr == 12'hc05; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244746.4]
  assign _T_830 = io_decode_0_csr == 12'h326; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244747.4]
  assign _T_831 = io_decode_0_csr == 12'hb06; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244748.4]
  assign _T_832 = io_decode_0_csr == 12'hc06; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244749.4]
  assign _T_833 = io_decode_0_csr == 12'h327; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244750.4]
  assign _T_834 = io_decode_0_csr == 12'hb07; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244751.4]
  assign _T_835 = io_decode_0_csr == 12'hc07; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244752.4]
  assign _T_836 = io_decode_0_csr == 12'h328; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244753.4]
  assign _T_837 = io_decode_0_csr == 12'hb08; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244754.4]
  assign _T_838 = io_decode_0_csr == 12'hc08; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244755.4]
  assign _T_839 = io_decode_0_csr == 12'h329; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244756.4]
  assign _T_840 = io_decode_0_csr == 12'hb09; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244757.4]
  assign _T_841 = io_decode_0_csr == 12'hc09; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244758.4]
  assign _T_842 = io_decode_0_csr == 12'h32a; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244759.4]
  assign _T_843 = io_decode_0_csr == 12'hb0a; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244760.4]
  assign _T_844 = io_decode_0_csr == 12'hc0a; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244761.4]
  assign _T_845 = io_decode_0_csr == 12'h32b; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244762.4]
  assign _T_846 = io_decode_0_csr == 12'hb0b; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244763.4]
  assign _T_847 = io_decode_0_csr == 12'hc0b; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244764.4]
  assign _T_848 = io_decode_0_csr == 12'h32c; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244765.4]
  assign _T_849 = io_decode_0_csr == 12'hb0c; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244766.4]
  assign _T_850 = io_decode_0_csr == 12'hc0c; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244767.4]
  assign _T_851 = io_decode_0_csr == 12'h32d; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244768.4]
  assign _T_852 = io_decode_0_csr == 12'hb0d; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244769.4]
  assign _T_853 = io_decode_0_csr == 12'hc0d; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244770.4]
  assign _T_854 = io_decode_0_csr == 12'h32e; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244771.4]
  assign _T_855 = io_decode_0_csr == 12'hb0e; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244772.4]
  assign _T_856 = io_decode_0_csr == 12'hc0e; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244773.4]
  assign _T_857 = io_decode_0_csr == 12'h32f; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244774.4]
  assign _T_858 = io_decode_0_csr == 12'hb0f; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244775.4]
  assign _T_859 = io_decode_0_csr == 12'hc0f; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244776.4]
  assign _T_860 = io_decode_0_csr == 12'h330; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244777.4]
  assign _T_861 = io_decode_0_csr == 12'hb10; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244778.4]
  assign _T_862 = io_decode_0_csr == 12'hc10; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244779.4]
  assign _T_863 = io_decode_0_csr == 12'h331; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244780.4]
  assign _T_864 = io_decode_0_csr == 12'hb11; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244781.4]
  assign _T_865 = io_decode_0_csr == 12'hc11; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244782.4]
  assign _T_866 = io_decode_0_csr == 12'h332; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244783.4]
  assign _T_867 = io_decode_0_csr == 12'hb12; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244784.4]
  assign _T_868 = io_decode_0_csr == 12'hc12; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244785.4]
  assign _T_869 = io_decode_0_csr == 12'h333; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244786.4]
  assign _T_870 = io_decode_0_csr == 12'hb13; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244787.4]
  assign _T_871 = io_decode_0_csr == 12'hc13; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244788.4]
  assign _T_872 = io_decode_0_csr == 12'h334; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244789.4]
  assign _T_873 = io_decode_0_csr == 12'hb14; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244790.4]
  assign _T_874 = io_decode_0_csr == 12'hc14; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244791.4]
  assign _T_875 = io_decode_0_csr == 12'h335; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244792.4]
  assign _T_876 = io_decode_0_csr == 12'hb15; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244793.4]
  assign _T_877 = io_decode_0_csr == 12'hc15; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244794.4]
  assign _T_878 = io_decode_0_csr == 12'h336; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244795.4]
  assign _T_879 = io_decode_0_csr == 12'hb16; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244796.4]
  assign _T_880 = io_decode_0_csr == 12'hc16; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244797.4]
  assign _T_881 = io_decode_0_csr == 12'h337; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244798.4]
  assign _T_882 = io_decode_0_csr == 12'hb17; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244799.4]
  assign _T_883 = io_decode_0_csr == 12'hc17; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244800.4]
  assign _T_884 = io_decode_0_csr == 12'h338; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244801.4]
  assign _T_885 = io_decode_0_csr == 12'hb18; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244802.4]
  assign _T_886 = io_decode_0_csr == 12'hc18; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244803.4]
  assign _T_887 = io_decode_0_csr == 12'h339; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244804.4]
  assign _T_888 = io_decode_0_csr == 12'hb19; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244805.4]
  assign _T_889 = io_decode_0_csr == 12'hc19; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244806.4]
  assign _T_890 = io_decode_0_csr == 12'h33a; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244807.4]
  assign _T_891 = io_decode_0_csr == 12'hb1a; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244808.4]
  assign _T_892 = io_decode_0_csr == 12'hc1a; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244809.4]
  assign _T_893 = io_decode_0_csr == 12'h33b; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244810.4]
  assign _T_894 = io_decode_0_csr == 12'hb1b; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244811.4]
  assign _T_895 = io_decode_0_csr == 12'hc1b; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244812.4]
  assign _T_896 = io_decode_0_csr == 12'h33c; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244813.4]
  assign _T_897 = io_decode_0_csr == 12'hb1c; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244814.4]
  assign _T_898 = io_decode_0_csr == 12'hc1c; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244815.4]
  assign _T_899 = io_decode_0_csr == 12'h33d; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244816.4]
  assign _T_900 = io_decode_0_csr == 12'hb1d; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244817.4]
  assign _T_901 = io_decode_0_csr == 12'hc1d; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244818.4]
  assign _T_902 = io_decode_0_csr == 12'h33e; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244819.4]
  assign _T_903 = io_decode_0_csr == 12'hb1e; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244820.4]
  assign _T_904 = io_decode_0_csr == 12'hc1e; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244821.4]
  assign _T_905 = io_decode_0_csr == 12'h33f; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244822.4]
  assign _T_906 = io_decode_0_csr == 12'hb1f; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244823.4]
  assign _T_907 = io_decode_0_csr == 12'hc1f; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244824.4]
  assign _T_908 = io_decode_0_csr == 12'h306; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244825.4]
  assign _T_909 = io_decode_0_csr == 12'hc00; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244826.4]
  assign _T_910 = io_decode_0_csr == 12'hc02; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244827.4]
  assign _T_911 = io_decode_0_csr == 12'h100; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244828.4]
  assign _T_912 = io_decode_0_csr == 12'h144; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244829.4]
  assign _T_913 = io_decode_0_csr == 12'h104; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244830.4]
  assign _T_914 = io_decode_0_csr == 12'h140; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244831.4]
  assign _T_915 = io_decode_0_csr == 12'h142; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244832.4]
  assign _T_916 = io_decode_0_csr == 12'h143; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244833.4]
  assign _T_917 = io_decode_0_csr == 12'h180; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244834.4]
  assign _T_918 = io_decode_0_csr == 12'h141; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244835.4]
  assign _T_919 = io_decode_0_csr == 12'h105; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244836.4]
  assign _T_920 = io_decode_0_csr == 12'h106; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244837.4]
  assign _T_921 = io_decode_0_csr == 12'h303; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244838.4]
  assign _T_922 = io_decode_0_csr == 12'h302; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244839.4]
  assign _T_923 = io_decode_0_csr == 12'h3a0; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244840.4]
  assign _T_924 = io_decode_0_csr == 12'h3a2; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244841.4]
  assign _T_925 = io_decode_0_csr == 12'h3b0; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244842.4]
  assign _T_926 = io_decode_0_csr == 12'h3b1; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244843.4]
  assign _T_927 = io_decode_0_csr == 12'h3b2; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244844.4]
  assign _T_928 = io_decode_0_csr == 12'h3b3; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244845.4]
  assign _T_929 = io_decode_0_csr == 12'h3b4; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244846.4]
  assign _T_930 = io_decode_0_csr == 12'h3b5; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244847.4]
  assign _T_931 = io_decode_0_csr == 12'h3b6; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244848.4]
  assign _T_932 = io_decode_0_csr == 12'h3b7; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244849.4]
  assign _T_933 = io_decode_0_csr == 12'h3b8; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244850.4]
  assign _T_934 = io_decode_0_csr == 12'h3b9; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244851.4]
  assign _T_935 = io_decode_0_csr == 12'h3ba; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244852.4]
  assign _T_936 = io_decode_0_csr == 12'h3bb; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244853.4]
  assign _T_937 = io_decode_0_csr == 12'h3bc; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244854.4]
  assign _T_938 = io_decode_0_csr == 12'h3bd; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244855.4]
  assign _T_939 = io_decode_0_csr == 12'h3be; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244856.4]
  assign _T_940 = io_decode_0_csr == 12'h3bf; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244857.4]
  assign _T_941 = io_decode_0_csr == 12'h7c1; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244858.4]
  assign _T_942 = io_decode_0_csr == 12'hf12; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244859.4]
  assign _T_943 = io_decode_0_csr == 12'hf11; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244860.4]
  assign _T_944 = io_decode_0_csr == 12'hf13; // @[CSR.scala 592:99:chipyard.TestHarness.RocketConfig.fir@244861.4]
  assign _T_945 = _T_800 | _T_801; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244862.4]
  assign _T_946 = _T_945 | _T_802; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244863.4]
  assign _T_947 = _T_946 | _T_803; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244864.4]
  assign _T_948 = _T_947 | _T_804; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244865.4]
  assign _T_949 = _T_948 | _T_805; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244866.4]
  assign _T_950 = _T_949 | _T_806; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244867.4]
  assign _T_951 = _T_950 | _T_807; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244868.4]
  assign _T_952 = _T_951 | _T_808; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244869.4]
  assign _T_953 = _T_952 | _T_809; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244870.4]
  assign _T_954 = _T_953 | _T_810; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244871.4]
  assign _T_955 = _T_954 | _T_811; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244872.4]
  assign _T_956 = _T_955 | _T_812; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244873.4]
  assign _T_957 = _T_956 | _T_813; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244874.4]
  assign _T_958 = _T_957 | _T_814; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244875.4]
  assign _T_959 = _T_958 | _T_815; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244876.4]
  assign _T_960 = _T_959 | _T_816; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244877.4]
  assign _T_961 = _T_960 | _T_817; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244878.4]
  assign _T_962 = _T_961 | _T_818; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244879.4]
  assign _T_963 = _T_962 | _T_819; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244880.4]
  assign _T_964 = _T_963 | _T_820; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244881.4]
  assign _T_965 = _T_964 | _T_821; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244882.4]
  assign _T_966 = _T_965 | _T_822; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244883.4]
  assign _T_967 = _T_966 | _T_823; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244884.4]
  assign _T_968 = _T_967 | _T_824; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244885.4]
  assign _T_969 = _T_968 | _T_825; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244886.4]
  assign _T_970 = _T_969 | _T_826; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244887.4]
  assign _T_971 = _T_970 | _T_827; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244888.4]
  assign _T_972 = _T_971 | _T_828; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244889.4]
  assign _T_973 = _T_972 | _T_829; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244890.4]
  assign _T_974 = _T_973 | _T_830; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244891.4]
  assign _T_975 = _T_974 | _T_831; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244892.4]
  assign _T_976 = _T_975 | _T_832; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244893.4]
  assign _T_977 = _T_976 | _T_833; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244894.4]
  assign _T_978 = _T_977 | _T_834; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244895.4]
  assign _T_979 = _T_978 | _T_835; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244896.4]
  assign _T_980 = _T_979 | _T_836; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244897.4]
  assign _T_981 = _T_980 | _T_837; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244898.4]
  assign _T_982 = _T_981 | _T_838; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244899.4]
  assign _T_983 = _T_982 | _T_839; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244900.4]
  assign _T_984 = _T_983 | _T_840; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244901.4]
  assign _T_985 = _T_984 | _T_841; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244902.4]
  assign _T_986 = _T_985 | _T_842; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244903.4]
  assign _T_987 = _T_986 | _T_843; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244904.4]
  assign _T_988 = _T_987 | _T_844; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244905.4]
  assign _T_989 = _T_988 | _T_845; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244906.4]
  assign _T_990 = _T_989 | _T_846; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244907.4]
  assign _T_991 = _T_990 | _T_847; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244908.4]
  assign _T_992 = _T_991 | _T_848; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244909.4]
  assign _T_993 = _T_992 | _T_849; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244910.4]
  assign _T_994 = _T_993 | _T_850; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244911.4]
  assign _T_995 = _T_994 | _T_851; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244912.4]
  assign _T_996 = _T_995 | _T_852; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244913.4]
  assign _T_997 = _T_996 | _T_853; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244914.4]
  assign _T_998 = _T_997 | _T_854; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244915.4]
  assign _T_999 = _T_998 | _T_855; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244916.4]
  assign _T_1000 = _T_999 | _T_856; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244917.4]
  assign _T_1001 = _T_1000 | _T_857; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244918.4]
  assign _T_1002 = _T_1001 | _T_858; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244919.4]
  assign _T_1003 = _T_1002 | _T_859; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244920.4]
  assign _T_1004 = _T_1003 | _T_860; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244921.4]
  assign _T_1005 = _T_1004 | _T_861; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244922.4]
  assign _T_1006 = _T_1005 | _T_862; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244923.4]
  assign _T_1007 = _T_1006 | _T_863; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244924.4]
  assign _T_1008 = _T_1007 | _T_864; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244925.4]
  assign _T_1009 = _T_1008 | _T_865; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244926.4]
  assign _T_1010 = _T_1009 | _T_866; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244927.4]
  assign _T_1011 = _T_1010 | _T_867; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244928.4]
  assign _T_1012 = _T_1011 | _T_868; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244929.4]
  assign _T_1013 = _T_1012 | _T_869; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244930.4]
  assign _T_1014 = _T_1013 | _T_870; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244931.4]
  assign _T_1015 = _T_1014 | _T_871; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244932.4]
  assign _T_1016 = _T_1015 | _T_872; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244933.4]
  assign _T_1017 = _T_1016 | _T_873; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244934.4]
  assign _T_1018 = _T_1017 | _T_874; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244935.4]
  assign _T_1019 = _T_1018 | _T_875; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244936.4]
  assign _T_1020 = _T_1019 | _T_876; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244937.4]
  assign _T_1021 = _T_1020 | _T_877; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244938.4]
  assign _T_1022 = _T_1021 | _T_878; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244939.4]
  assign _T_1023 = _T_1022 | _T_879; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244940.4]
  assign _T_1024 = _T_1023 | _T_880; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244941.4]
  assign _T_1025 = _T_1024 | _T_881; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244942.4]
  assign _T_1026 = _T_1025 | _T_882; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244943.4]
  assign _T_1027 = _T_1026 | _T_883; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244944.4]
  assign _T_1028 = _T_1027 | _T_884; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244945.4]
  assign _T_1029 = _T_1028 | _T_885; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244946.4]
  assign _T_1030 = _T_1029 | _T_886; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244947.4]
  assign _T_1031 = _T_1030 | _T_887; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244948.4]
  assign _T_1032 = _T_1031 | _T_888; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244949.4]
  assign _T_1033 = _T_1032 | _T_889; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244950.4]
  assign _T_1034 = _T_1033 | _T_890; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244951.4]
  assign _T_1035 = _T_1034 | _T_891; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244952.4]
  assign _T_1036 = _T_1035 | _T_892; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244953.4]
  assign _T_1037 = _T_1036 | _T_893; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244954.4]
  assign _T_1038 = _T_1037 | _T_894; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244955.4]
  assign _T_1039 = _T_1038 | _T_895; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244956.4]
  assign _T_1040 = _T_1039 | _T_896; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244957.4]
  assign _T_1041 = _T_1040 | _T_897; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244958.4]
  assign _T_1042 = _T_1041 | _T_898; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244959.4]
  assign _T_1043 = _T_1042 | _T_899; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244960.4]
  assign _T_1044 = _T_1043 | _T_900; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244961.4]
  assign _T_1045 = _T_1044 | _T_901; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244962.4]
  assign _T_1046 = _T_1045 | _T_902; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244963.4]
  assign _T_1047 = _T_1046 | _T_903; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244964.4]
  assign _T_1048 = _T_1047 | _T_904; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244965.4]
  assign _T_1049 = _T_1048 | _T_905; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244966.4]
  assign _T_1050 = _T_1049 | _T_906; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244967.4]
  assign _T_1051 = _T_1050 | _T_907; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244968.4]
  assign _T_1052 = _T_1051 | _T_908; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244969.4]
  assign _T_1053 = _T_1052 | _T_909; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244970.4]
  assign _T_1054 = _T_1053 | _T_910; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244971.4]
  assign _T_1055 = _T_1054 | _T_911; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244972.4]
  assign _T_1056 = _T_1055 | _T_912; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244973.4]
  assign _T_1057 = _T_1056 | _T_913; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244974.4]
  assign _T_1058 = _T_1057 | _T_914; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244975.4]
  assign _T_1059 = _T_1058 | _T_915; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244976.4]
  assign _T_1060 = _T_1059 | _T_916; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244977.4]
  assign _T_1061 = _T_1060 | _T_917; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244978.4]
  assign _T_1062 = _T_1061 | _T_918; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244979.4]
  assign _T_1063 = _T_1062 | _T_919; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244980.4]
  assign _T_1064 = _T_1063 | _T_920; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244981.4]
  assign _T_1065 = _T_1064 | _T_921; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244982.4]
  assign _T_1066 = _T_1065 | _T_922; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244983.4]
  assign _T_1067 = _T_1066 | _T_923; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244984.4]
  assign _T_1068 = _T_1067 | _T_924; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244985.4]
  assign _T_1069 = _T_1068 | _T_925; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244986.4]
  assign _T_1070 = _T_1069 | _T_926; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244987.4]
  assign _T_1071 = _T_1070 | _T_927; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244988.4]
  assign _T_1072 = _T_1071 | _T_928; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244989.4]
  assign _T_1073 = _T_1072 | _T_929; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244990.4]
  assign _T_1074 = _T_1073 | _T_930; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244991.4]
  assign _T_1075 = _T_1074 | _T_931; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244992.4]
  assign _T_1076 = _T_1075 | _T_932; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244993.4]
  assign _T_1077 = _T_1076 | _T_933; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244994.4]
  assign _T_1078 = _T_1077 | _T_934; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244995.4]
  assign _T_1079 = _T_1078 | _T_935; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244996.4]
  assign _T_1080 = _T_1079 | _T_936; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244997.4]
  assign _T_1081 = _T_1080 | _T_937; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244998.4]
  assign _T_1082 = _T_1081 | _T_938; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@244999.4]
  assign _T_1083 = _T_1082 | _T_939; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245000.4]
  assign _T_1084 = _T_1083 | _T_940; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245001.4]
  assign _T_1085 = _T_1084 | _T_941; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245002.4]
  assign _T_1086 = _T_1085 | _T_942; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245003.4]
  assign _T_1087 = _T_1086 | _T_943; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245004.4]
  assign _T_1088 = _T_1087 | _T_944; // @[CSR.scala 592:115:chipyard.TestHarness.RocketConfig.fir@245005.4]
  assign _T_1089 = ~_T_1088; // @[CSR.scala 609:7:chipyard.TestHarness.RocketConfig.fir@245006.4]
  assign _T_1090 = _T_799 | _T_1089; // @[CSR.scala 608:62:chipyard.TestHarness.RocketConfig.fir@245007.4]
  assign _T_1092 = ~_T_766; // @[CSR.scala 610:35:chipyard.TestHarness.RocketConfig.fir@245009.4]
  assign _T_1093 = _T_917 & _T_1092; // @[CSR.scala 610:32:chipyard.TestHarness.RocketConfig.fir@245010.4]
  assign _T_1094 = _T_1090 | _T_1093; // @[CSR.scala 609:32:chipyard.TestHarness.RocketConfig.fir@245011.4]
  assign _T_1095 = io_decode_0_csr >= 12'hc00; // @[package.scala 162:47:chipyard.TestHarness.RocketConfig.fir@245012.4]
  assign _T_1096 = io_decode_0_csr < 12'hc20; // @[package.scala 162:60:chipyard.TestHarness.RocketConfig.fir@245013.4]
  assign _T_1097 = _T_1095 & _T_1096; // @[package.scala 162:55:chipyard.TestHarness.RocketConfig.fir@245014.4]
  assign _T_1098 = io_decode_0_csr >= 12'hc80; // @[package.scala 162:47:chipyard.TestHarness.RocketConfig.fir@245015.4]
  assign _T_1099 = io_decode_0_csr < 12'hca0; // @[package.scala 162:60:chipyard.TestHarness.RocketConfig.fir@245016.4]
  assign _T_1100 = _T_1098 & _T_1099; // @[package.scala 162:55:chipyard.TestHarness.RocketConfig.fir@245017.4]
  assign _T_1101 = _T_1097 | _T_1100; // @[CSR.scala 611:66:chipyard.TestHarness.RocketConfig.fir@245018.4]
  assign _T_1102 = ~_T_781; // @[CSR.scala 611:133:chipyard.TestHarness.RocketConfig.fir@245019.4]
  assign _T_1103 = _T_1101 & _T_1102; // @[CSR.scala 611:130:chipyard.TestHarness.RocketConfig.fir@245020.4]
  assign _T_1104 = _T_1094 | _T_1103; // @[CSR.scala 610:53:chipyard.TestHarness.RocketConfig.fir@245021.4]
  assign _T_1105 = io_decode_0_csr & 12'hc10; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@245022.4]
  assign _T_1106 = _T_1105 == 12'h410; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@245023.4]
  assign _T_1110 = _T_1106 & _T_1232; // @[CSR.scala 612:42:chipyard.TestHarness.RocketConfig.fir@245027.4]
  assign _T_1111 = _T_1104 | _T_1110; // @[CSR.scala 611:148:chipyard.TestHarness.RocketConfig.fir@245028.4]
  assign _T_1114 = io_decode_0_fp_csr & io_decode_0_fp_illegal; // @[CSR.scala 614:21:chipyard.TestHarness.RocketConfig.fir@245031.4]
  assign _T_1118 = io_decode_0_csr >= 12'h340; // @[CSR.scala 616:40:chipyard.TestHarness.RocketConfig.fir@245037.4]
  assign _T_1119 = io_decode_0_csr <= 12'h343; // @[CSR.scala 616:71:chipyard.TestHarness.RocketConfig.fir@245038.4]
  assign _T_1120 = _T_1118 & _T_1119; // @[CSR.scala 616:57:chipyard.TestHarness.RocketConfig.fir@245039.4]
  assign _T_1121 = io_decode_0_csr >= 12'h140; // @[CSR.scala 616:99:chipyard.TestHarness.RocketConfig.fir@245040.4]
  assign _T_1122 = io_decode_0_csr <= 12'h143; // @[CSR.scala 616:130:chipyard.TestHarness.RocketConfig.fir@245041.4]
  assign _T_1123 = _T_1121 & _T_1122; // @[CSR.scala 616:116:chipyard.TestHarness.RocketConfig.fir@245042.4]
  assign _T_1124 = _T_1120 | _T_1123; // @[CSR.scala 616:85:chipyard.TestHarness.RocketConfig.fir@245043.4]
  assign _T_1128 = ~_T_762; // @[CSR.scala 618:17:chipyard.TestHarness.RocketConfig.fir@245048.4]
  assign _T_1129 = _T_748 & _T_1128; // @[CSR.scala 618:14:chipyard.TestHarness.RocketConfig.fir@245049.4]
  assign _T_1130 = _T_799 | _T_1129; // @[CSR.scala 617:64:chipyard.TestHarness.RocketConfig.fir@245050.4]
  assign _T_1131 = ~_T_770; // @[CSR.scala 619:17:chipyard.TestHarness.RocketConfig.fir@245051.4]
  assign _T_1132 = _T_743 & _T_1131; // @[CSR.scala 619:14:chipyard.TestHarness.RocketConfig.fir@245052.4]
  assign _T_1133 = _T_1130 | _T_1132; // @[CSR.scala 618:28:chipyard.TestHarness.RocketConfig.fir@245053.4]
  assign _T_1135 = _T_743 & io_decode_0_csr[10]; // @[CSR.scala 620:14:chipyard.TestHarness.RocketConfig.fir@245055.4]
  assign _T_1137 = _T_1135 & _T_1232; // @[CSR.scala 620:32:chipyard.TestHarness.RocketConfig.fir@245057.4]
  assign _T_1138 = _T_1133 | _T_1137; // @[CSR.scala 619:29:chipyard.TestHarness.RocketConfig.fir@245058.4]
  assign _T_1140 = _T_751 & _T_1092; // @[CSR.scala 621:17:chipyard.TestHarness.RocketConfig.fir@245060.4]
  assign _T_1162 = insn_break ? 12'h800 : 12'h808; // @[CSR.scala 632:37:chipyard.TestHarness.RocketConfig.fir@245089.4]
  assign debugTVec = reg_debug ? _T_1162 : 12'h800; // @[CSR.scala 632:22:chipyard.TestHarness.RocketConfig.fir@245090.4]
  assign _T_1171 = delegate ? read_stvec : read_mtvec; // @[CSR.scala 640:19:chipyard.TestHarness.RocketConfig.fir@245100.4]
  assign _T_1173 = {cause[5:0], 2'h0}; // @[CSR.scala 641:59:chipyard.TestHarness.RocketConfig.fir@245102.4]
  assign _T_1175 = {_T_1171[63:8],_T_1173}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@245104.4]
  assign _T_1178 = _T_1171[0] & cause[63]; // @[CSR.scala 643:28:chipyard.TestHarness.RocketConfig.fir@245107.4]
  assign _T_1180 = cause_lsbs[7:6] == 2'h0; // @[CSR.scala 643:94:chipyard.TestHarness.RocketConfig.fir@245109.4]
  assign _T_1181 = _T_1178 & _T_1180; // @[CSR.scala 643:55:chipyard.TestHarness.RocketConfig.fir@245110.4]
  assign _T_1183 = {_T_1171[63:2], 2'h0}; // @[CSR.scala 644:56:chipyard.TestHarness.RocketConfig.fir@245112.4]
  assign notDebugTVec = _T_1181 ? _T_1175 : _T_1183; // @[CSR.scala 644:8:chipyard.TestHarness.RocketConfig.fir@245113.4]
  assign tvec = trapToDebug ? {{52'd0}, debugTVec} : notDebugTVec; // @[CSR.scala 646:17:chipyard.TestHarness.RocketConfig.fir@245114.4]
  assign _T_1188 = &io_status_fs; // @[CSR.scala 652:32:chipyard.TestHarness.RocketConfig.fir@245124.4]
  assign _T_1189 = &io_status_xs; // @[CSR.scala 652:53:chipyard.TestHarness.RocketConfig.fir@245125.4]
  assign _T_1190 = _T_1188 | _T_1189; // @[CSR.scala 652:37:chipyard.TestHarness.RocketConfig.fir@245126.4]
  assign _T_1191 = &io_status_vs; // @[CSR.scala 652:74:chipyard.TestHarness.RocketConfig.fir@245127.4]
  assign _T_1194 = reg_mstatus_mprv & _T_1232; // @[CSR.scala 657:53:chipyard.TestHarness.RocketConfig.fir@245135.4]
  assign _T_1198 = insn_ret + insn_call; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@245142.4]
  assign _T_1200 = insn_break + io_exception; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@245144.4]
  assign _T_1202 = _T_1198 + _T_1200; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@245146.4]
  assign _T_1204 = _T_1202 <= 3'h1; // @[CSR.scala 662:79:chipyard.TestHarness.RocketConfig.fir@245148.4]
  assign _T_1206 = _T_1204 | reset; // @[CSR.scala 662:9:chipyard.TestHarness.RocketConfig.fir@245150.4]
  assign _T_1207 = ~_T_1206; // @[CSR.scala 662:9:chipyard.TestHarness.RocketConfig.fir@245151.4]
  assign _T_1209 = insn_wfi & _T_230; // @[CSR.scala 664:18:chipyard.TestHarness.RocketConfig.fir@245157.4]
  assign _T_1211 = _T_1209 & _T_1232; // @[CSR.scala 664:36:chipyard.TestHarness.RocketConfig.fir@245159.4]
  assign _GEN_34 = _T_1211 | reg_wfi; // @[CSR.scala 664:51:chipyard.TestHarness.RocketConfig.fir@245160.4]
  assign _T_1212 = |pending_interrupts; // @[CSR.scala 665:28:chipyard.TestHarness.RocketConfig.fir@245163.4]
  assign _T_1213 = _T_1212 | io_interrupts_debug; // @[CSR.scala 665:32:chipyard.TestHarness.RocketConfig.fir@245164.4]
  assign _T_1214 = _T_1213 | exception; // @[CSR.scala 665:55:chipyard.TestHarness.RocketConfig.fir@245165.4]
  assign _T_1216 = io_retire | exception; // @[CSR.scala 667:22:chipyard.TestHarness.RocketConfig.fir@245170.4]
  assign _GEN_36 = _T_1216 | reg_singleStepped; // @[CSR.scala 667:36:chipyard.TestHarness.RocketConfig.fir@245171.4]
  assign _T_1224 = ~reg_singleStepped; // @[CSR.scala 670:10:chipyard.TestHarness.RocketConfig.fir@245188.4]
  assign _T_1225 = ~io_retire; // @[CSR.scala 670:42:chipyard.TestHarness.RocketConfig.fir@245189.4]
  assign _T_1226 = _T_1224 | _T_1225; // @[CSR.scala 670:29:chipyard.TestHarness.RocketConfig.fir@245190.4]
  assign _T_1228 = _T_1226 | reset; // @[CSR.scala 670:9:chipyard.TestHarness.RocketConfig.fir@245192.4]
  assign _T_1229 = ~_T_1228; // @[CSR.scala 670:9:chipyard.TestHarness.RocketConfig.fir@245193.4]
  assign _T_1230 = ~io_pc; // @[CSR.scala 1079:28:chipyard.TestHarness.RocketConfig.fir@245198.4]
  assign _T_1231 = _T_1230 | 40'h1; // @[CSR.scala 1079:31:chipyard.TestHarness.RocketConfig.fir@245199.4]
  assign epc = ~_T_1231; // @[CSR.scala 1079:26:chipyard.TestHarness.RocketConfig.fir@245200.4]
  assign _T_1233 = causeIsDebugTrigger ? 2'h2 : 2'h1; // @[CSR.scala 681:86:chipyard.TestHarness.RocketConfig.fir@245210.10]
  assign _T_1234 = causeIsDebugInt ? 2'h3 : _T_1233; // @[CSR.scala 681:56:chipyard.TestHarness.RocketConfig.fir@245211.10]
  assign _GEN_38 = _T_1232 | reg_debug; // @[CSR.scala 678:25:chipyard.TestHarness.RocketConfig.fir@245207.8]
  assign _GEN_39 = _T_1232 ? epc : reg_dpc; // @[CSR.scala 678:25:chipyard.TestHarness.RocketConfig.fir@245207.8]
  assign _GEN_43 = delegate ? epc : reg_sepc; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  assign _GEN_47 = delegate ? reg_mstatus_sie : reg_mstatus_spie; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  assign _GEN_48 = delegate ? reg_mstatus_prv : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  assign _GEN_51 = delegate ? reg_mepc : epc; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  assign _GEN_54 = delegate ? reg_mstatus_mpie : reg_mstatus_mie; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  assign _GEN_55 = delegate ? reg_mstatus_mpp : reg_mstatus_prv; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  assign _GEN_56 = delegate & reg_mstatus_mie; // @[CSR.scala 685:27:chipyard.TestHarness.RocketConfig.fir@245219.8]
  assign _GEN_58 = trapToDebug ? _GEN_39 : reg_dpc; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_62 = trapToDebug ? reg_sepc : _GEN_43; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_66 = trapToDebug ? reg_mstatus_spie : _GEN_47; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_67 = trapToDebug ? {{1'd0}, reg_mstatus_spp} : _GEN_48; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_69 = trapToDebug ? reg_mepc : _GEN_51; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_72 = trapToDebug ? reg_mstatus_mpie : _GEN_54; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_73 = trapToDebug ? reg_mstatus_mpp : _GEN_55; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_74 = trapToDebug ? reg_mstatus_mie : _GEN_56; // @[CSR.scala 677:24:chipyard.TestHarness.RocketConfig.fir@245205.6]
  assign _GEN_76 = exception ? _GEN_58 : reg_dpc; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign _GEN_80 = exception ? _GEN_62 : reg_sepc; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign _GEN_84 = exception ? _GEN_66 : reg_mstatus_spie; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign _GEN_85 = exception ? _GEN_67 : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign _GEN_87 = exception ? _GEN_69 : reg_mepc; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign _GEN_90 = exception ? _GEN_72 : reg_mstatus_mpie; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign _GEN_91 = exception ? _GEN_73 : reg_mstatus_mpp; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign _GEN_92 = exception ? _GEN_74 : reg_mstatus_mie; // @[CSR.scala 676:20:chipyard.TestHarness.RocketConfig.fir@245204.4]
  assign _GEN_95 = io_rw_addr[10] ? _T_401 : _T_375; // @[CSR.scala 733:53:chipyard.TestHarness.RocketConfig.fir@245579.8]
  assign _GEN_100 = _T_1557 | _GEN_84; // @[CSR.scala 727:52:chipyard.TestHarness.RocketConfig.fir@245564.6]
  assign _GEN_101 = _T_1557 ? 2'h0 : _GEN_85; // @[CSR.scala 727:52:chipyard.TestHarness.RocketConfig.fir@245564.6]
  assign _GEN_103 = _T_1557 ? _T_451 : _GEN_95; // @[CSR.scala 727:52:chipyard.TestHarness.RocketConfig.fir@245564.6]
  assign _GEN_110 = insn_ret ? _GEN_101 : _GEN_85; // @[CSR.scala 726:19:chipyard.TestHarness.RocketConfig.fir@245560.4]
  assign _GEN_112 = insn_ret ? {{24'd0}, _GEN_103} : tvec; // @[CSR.scala 726:19:chipyard.TestHarness.RocketConfig.fir@245560.4]
  assign _GEN_117 = insn_cease | _T_1579; // @[Reg.scala 28:19:chipyard.TestHarness.RocketConfig.fir@245608.4]
  assign _T_1581 = _T_552 ? _T_366 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245626.4]
  assign _T_1582 = _T_553 ? _T_370 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245627.4]
  assign _T_1583 = _T_554 ? reg_misa : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245628.4]
  assign _T_1584 = _T_555 ? read_mstatus : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245629.4]
  assign _T_1585 = _T_556 ? read_mtvec : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245630.4]
  assign _T_1586 = _T_557 ? read_mip : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245631.4]
  assign _T_1587 = _T_558 ? reg_mie : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245632.4]
  assign _T_1588 = _T_559 ? reg_mscratch : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245633.4]
  assign _T_1589 = _T_560 ? _T_379 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245634.4]
  assign _T_1590 = _T_561 ? _T_383 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245635.4]
  assign _T_1591 = _T_562 ? reg_mcause : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245636.4]
  assign _T_1593 = _T_564 ? _T_396 : 32'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245638.4]
  assign _T_1594 = _T_565 ? _T_405 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245639.4]
  assign _T_1595 = _T_566 ? reg_dscratch : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245640.4]
  assign _T_1596 = _T_567 ? reg_fflags : 5'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245641.4]
  assign _T_1597 = _T_568 ? reg_frm : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245642.4]
  assign _T_1598 = _T_569 ? read_fcsr : 8'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245643.4]
  assign _T_1599 = _T_570 ? _T_53 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245644.4]
  assign _T_1600 = _T_571 ? _T_45 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245645.4]
  assign _T_1688 = _T_659 ? read_mcounteren : 32'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245733.4]
  assign _T_1689 = _T_660 ? _T_53 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245734.4]
  assign _T_1690 = _T_661 ? _T_45 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245735.4]
  assign _T_1691 = _T_662 ? _T_439[63:0] : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245736.4]
  assign _T_1692 = _T_663 ? _T_407 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245737.4]
  assign _T_1693 = _T_664 ? _T_406 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245738.4]
  assign _T_1694 = _T_665 ? reg_sscratch : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245739.4]
  assign _T_1695 = _T_666 ? reg_scause : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245740.4]
  assign _T_1696 = _T_667 ? _T_444 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245741.4]
  assign _T_1697 = _T_668 ? _T_446 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245742.4]
  assign _T_1698 = _T_669 ? _T_455 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245743.4]
  assign _T_1699 = _T_670 ? read_stvec : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245744.4]
  assign _T_1700 = _T_671 ? read_scounteren : 32'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245745.4]
  assign _T_1701 = _T_672 ? read_mideleg : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245746.4]
  assign _T_1702 = _T_673 ? read_medeleg : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245747.4]
  assign _T_1703 = _T_674 ? _T_503 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245748.4]
  assign _T_1705 = _T_676 ? reg_pmp_0_addr : 30'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245750.4]
  assign _T_1706 = _T_677 ? reg_pmp_1_addr : 30'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245751.4]
  assign _T_1707 = _T_678 ? reg_pmp_2_addr : 30'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245752.4]
  assign _T_1708 = _T_679 ? reg_pmp_3_addr : 30'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245753.4]
  assign _T_1709 = _T_680 ? reg_pmp_4_addr : 30'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245754.4]
  assign _T_1710 = _T_681 ? reg_pmp_5_addr : 30'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245755.4]
  assign _T_1711 = _T_682 ? reg_pmp_6_addr : 30'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245756.4]
  assign _T_1712 = _T_683 ? reg_pmp_7_addr : 30'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245757.4]
  assign _T_1721 = _T_692 ? reg_custom_0 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245766.4]
  assign _T_1722 = _T_693 ? 64'h1 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245767.4]
  assign _T_1724 = _T_695 ? 64'h20181004 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245769.4]
  assign _T_1726 = _T_1581 | _T_1582; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245771.4]
  assign _T_1727 = _T_1726 | _T_1583; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245772.4]
  assign _T_1728 = _T_1727 | _T_1584; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245773.4]
  assign _T_1729 = _T_1728 | _T_1585; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245774.4]
  assign _GEN_502 = {{48'd0}, _T_1586}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245775.4]
  assign _T_1730 = _T_1729 | _GEN_502; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245775.4]
  assign _T_1731 = _T_1730 | _T_1587; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245776.4]
  assign _T_1732 = _T_1731 | _T_1588; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245777.4]
  assign _T_1733 = _T_1732 | _T_1589; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245778.4]
  assign _T_1734 = _T_1733 | _T_1590; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245779.4]
  assign _T_1735 = _T_1734 | _T_1591; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245780.4]
  assign _GEN_503 = {{32'd0}, _T_1593}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245782.4]
  assign _T_1737 = _T_1735 | _GEN_503; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245782.4]
  assign _T_1738 = _T_1737 | _T_1594; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245783.4]
  assign _T_1739 = _T_1738 | _T_1595; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245784.4]
  assign _GEN_504 = {{59'd0}, _T_1596}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245785.4]
  assign _T_1740 = _T_1739 | _GEN_504; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245785.4]
  assign _GEN_505 = {{61'd0}, _T_1597}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245786.4]
  assign _T_1741 = _T_1740 | _GEN_505; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245786.4]
  assign _GEN_506 = {{56'd0}, _T_1598}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245787.4]
  assign _T_1742 = _T_1741 | _GEN_506; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245787.4]
  assign _T_1743 = _T_1742 | _T_1599; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245788.4]
  assign _T_1744 = _T_1743 | _T_1600; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245789.4]
  assign _GEN_507 = {{32'd0}, _T_1688}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245877.4]
  assign _T_1832 = _T_1744 | _GEN_507; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245877.4]
  assign _T_1833 = _T_1832 | _T_1689; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245878.4]
  assign _T_1834 = _T_1833 | _T_1690; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245879.4]
  assign _T_1835 = _T_1834 | _T_1691; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245880.4]
  assign _T_1836 = _T_1835 | _T_1692; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245881.4]
  assign _T_1837 = _T_1836 | _T_1693; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245882.4]
  assign _T_1838 = _T_1837 | _T_1694; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245883.4]
  assign _T_1839 = _T_1838 | _T_1695; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245884.4]
  assign _T_1840 = _T_1839 | _T_1696; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245885.4]
  assign _T_1841 = _T_1840 | _T_1697; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245886.4]
  assign _T_1842 = _T_1841 | _T_1698; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245887.4]
  assign _T_1843 = _T_1842 | _T_1699; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245888.4]
  assign _GEN_508 = {{32'd0}, _T_1700}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245889.4]
  assign _T_1844 = _T_1843 | _GEN_508; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245889.4]
  assign _T_1845 = _T_1844 | _T_1701; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245890.4]
  assign _T_1846 = _T_1845 | _T_1702; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245891.4]
  assign _T_1847 = _T_1846 | _T_1703; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245892.4]
  assign _GEN_509 = {{34'd0}, _T_1705}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245894.4]
  assign _T_1849 = _T_1847 | _GEN_509; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245894.4]
  assign _GEN_510 = {{34'd0}, _T_1706}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245895.4]
  assign _T_1850 = _T_1849 | _GEN_510; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245895.4]
  assign _GEN_511 = {{34'd0}, _T_1707}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245896.4]
  assign _T_1851 = _T_1850 | _GEN_511; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245896.4]
  assign _GEN_512 = {{34'd0}, _T_1708}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245897.4]
  assign _T_1852 = _T_1851 | _GEN_512; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245897.4]
  assign _GEN_513 = {{34'd0}, _T_1709}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245898.4]
  assign _T_1853 = _T_1852 | _GEN_513; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245898.4]
  assign _GEN_514 = {{34'd0}, _T_1710}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245899.4]
  assign _T_1854 = _T_1853 | _GEN_514; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245899.4]
  assign _GEN_515 = {{34'd0}, _T_1711}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245900.4]
  assign _T_1855 = _T_1854 | _GEN_515; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245900.4]
  assign _GEN_516 = {{34'd0}, _T_1712}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245901.4]
  assign _T_1856 = _T_1855 | _GEN_516; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245901.4]
  assign _T_1865 = _T_1856 | _T_1721; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245910.4]
  assign _T_1866 = _T_1865 | _T_1722; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@245911.4]
  assign _T_1872 = io_rw_cmd == 3'h5; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@245920.6]
  assign _T_1873 = io_rw_cmd == 3'h6; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@245921.6]
  assign _T_1874 = io_rw_cmd == 3'h7; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@245922.6]
  assign _T_3610 = reg_fflags | io_fcsr_flags_bits; // @[CSR.scala 786:30:chipyard.TestHarness.RocketConfig.fir@248245.6]
  assign _GEN_118 = io_fcsr_flags_valid ? _T_3610 : reg_fflags; // @[CSR.scala 785:30:chipyard.TestHarness.RocketConfig.fir@248244.4]
  assign _T_3614 = _T_1873 | _T_1874; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@248252.4]
  assign csr_wen = _T_3614 | _T_1872; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@248253.4]
  assign _T_3628 = {{39'd0}, wdata}; // @[:chipyard.TestHarness.RocketConfig.fir@248271.8 :chipyard.TestHarness.RocketConfig.fir@248273.8]
  assign _T_3660 = _T_3628[12:11] == 2'h2; // @[CSR.scala 1062:35:chipyard.TestHarness.RocketConfig.fir@248339.8]
  assign _T_3662 = |_T_3628[14:13]; // @[CSR.scala 1083:73:chipyard.TestHarness.RocketConfig.fir@248350.8]
  assign _GEN_124 = _T_555 ? {{1'd0}, _T_3628[8]} : _GEN_110; // @[CSR.scala 800:39:chipyard.TestHarness.RocketConfig.fir@248268.6]
  assign _T_3667 = ~io_pc[1]; // @[CSR.scala 830:33:chipyard.TestHarness.RocketConfig.fir@248359.8]
  assign _T_3670 = _T_3667 | wdata[2]; // @[CSR.scala 830:43:chipyard.TestHarness.RocketConfig.fir@248362.8]
  assign _T_3671 = ~wdata; // @[CSR.scala 832:25:chipyard.TestHarness.RocketConfig.fir@248364.10]
  assign _T_3672 = ~wdata[5]; // @[CSR.scala 832:35:chipyard.TestHarness.RocketConfig.fir@248365.10]
  assign _T_3673 = {_T_3672, 3'h0}; // @[CSR.scala 832:38:chipyard.TestHarness.RocketConfig.fir@248366.10]
  assign _GEN_517 = {{60'd0}, _T_3673}; // @[CSR.scala 832:32:chipyard.TestHarness.RocketConfig.fir@248367.10]
  assign _T_3674 = _T_3671 | _GEN_517; // @[CSR.scala 832:32:chipyard.TestHarness.RocketConfig.fir@248367.10]
  assign _T_3675 = ~_T_3674; // @[CSR.scala 832:23:chipyard.TestHarness.RocketConfig.fir@248368.10]
  assign _T_3676 = _T_3675 & 64'h102d; // @[CSR.scala 832:55:chipyard.TestHarness.RocketConfig.fir@248369.10]
  assign _T_3678 = reg_misa & 64'hffffffffffffefd2; // @[CSR.scala 832:73:chipyard.TestHarness.RocketConfig.fir@248371.10]
  assign _T_3679 = _T_3676 | _T_3678; // @[CSR.scala 832:62:chipyard.TestHarness.RocketConfig.fir@248372.10]
  assign _T_3694 = {4'h0,2'h0,reg_mip_seip,1'h0,2'h0,reg_mip_stip,1'h0,2'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 840:59:chipyard.TestHarness.RocketConfig.fir@248391.8]
  assign _T_3696 = io_rw_cmd[1] ? _T_3694 : 16'h0; // @[CSR.scala 1058:9:chipyard.TestHarness.RocketConfig.fir@248393.8]
  assign _GEN_518 = {{48'd0}, _T_3696}; // @[CSR.scala 1058:34:chipyard.TestHarness.RocketConfig.fir@248394.8]
  assign _T_3697 = _GEN_518 | io_rw_wdata; // @[CSR.scala 1058:34:chipyard.TestHarness.RocketConfig.fir@248394.8]
  assign _T_3702 = _T_3697 & _T_702; // @[CSR.scala 1058:43:chipyard.TestHarness.RocketConfig.fir@248399.8]
  assign _T_3721 = wdata & 64'haaa; // @[CSR.scala 847:59:chipyard.TestHarness.RocketConfig.fir@248442.8]
  assign _T_3723 = _T_3671 | 64'h1; // @[CSR.scala 1079:31:chipyard.TestHarness.RocketConfig.fir@248447.8]
  assign _T_3724 = ~_T_3723; // @[CSR.scala 1079:26:chipyard.TestHarness.RocketConfig.fir@248448.8]
  assign _GEN_140 = _T_560 ? _T_3724 : {{24'd0}, _GEN_87}; // @[CSR.scala 848:40:chipyard.TestHarness.RocketConfig.fir@248445.6]
  assign _GEN_142 = _T_556 ? wdata : {{32'd0}, reg_mtvec}; // @[CSR.scala 851:40:chipyard.TestHarness.RocketConfig.fir@248454.6]
  assign _T_3725 = wdata & 64'h800000000000000f; // @[CSR.scala 852:62:chipyard.TestHarness.RocketConfig.fir@248458.8]
  assign _GEN_145 = _T_570 ? wdata : {{57'd0}, _T_48}; // @[CSR.scala 1076:31:chipyard.TestHarness.RocketConfig.fir@248465.6]
  assign _GEN_147 = _T_571 ? wdata : {{57'd0}, _T_40}; // @[CSR.scala 1076:31:chipyard.TestHarness.RocketConfig.fir@248471.6]
  assign _GEN_150 = _T_567 ? wdata : {{59'd0}, _GEN_118}; // @[CSR.scala 865:40:chipyard.TestHarness.RocketConfig.fir@248477.6]
  assign _GEN_152 = _T_568 ? wdata : {{61'd0}, reg_frm}; // @[CSR.scala 866:40:chipyard.TestHarness.RocketConfig.fir@248481.6]
  assign _GEN_154 = _T_569 ? wdata : _GEN_150; // @[CSR.scala 867:38:chipyard.TestHarness.RocketConfig.fir@248485.6]
  assign _GEN_155 = _T_569 ? {{5'd0}, wdata[63:5]} : _GEN_152; // @[CSR.scala 867:38:chipyard.TestHarness.RocketConfig.fir@248485.6]
  assign _T_3748 = wdata[1:0] == 2'h2; // @[CSR.scala 1062:35:chipyard.TestHarness.RocketConfig.fir@248529.8]
  assign _GEN_161 = _T_565 ? _T_3724 : {{24'd0}, _GEN_76}; // @[CSR.scala 882:42:chipyard.TestHarness.RocketConfig.fir@248533.6]
  assign _GEN_165 = _T_662 ? {{1'd0}, _T_3628[8]} : _GEN_124; // @[CSR.scala 886:41:chipyard.TestHarness.RocketConfig.fir@248542.6]
  assign _T_3789 = ~read_mideleg; // @[CSR.scala 900:54:chipyard.TestHarness.RocketConfig.fir@248622.8]
  assign _T_3790 = _GEN_493 & _T_3789; // @[CSR.scala 900:52:chipyard.TestHarness.RocketConfig.fir@248623.8]
  assign _T_3791 = wdata & read_mideleg; // @[CSR.scala 900:78:chipyard.TestHarness.RocketConfig.fir@248624.8]
  assign _T_3792 = _T_3790 | _T_3791; // @[CSR.scala 900:69:chipyard.TestHarness.RocketConfig.fir@248625.8]
  assign _T_3816 = wdata[63:60] == 4'h0; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@248677.8]
  assign _T_3817 = wdata[63:60] == 4'h8; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@248678.8]
  assign _T_3818 = _T_3816 | _T_3817; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@248679.8]
  assign _T_3819 = wdata[63:60] & 4'h8; // @[CSR.scala 908:44:chipyard.TestHarness.RocketConfig.fir@248681.10]
  assign _T_3822 = reg_mie & _T_3789; // @[CSR.scala 914:64:chipyard.TestHarness.RocketConfig.fir@248689.8]
  assign _T_3824 = _T_3822 | _T_3791; // @[CSR.scala 914:81:chipyard.TestHarness.RocketConfig.fir@248691.8]
  assign _GEN_177 = _T_669 ? _T_3724 : {{24'd0}, _GEN_80}; // @[CSR.scala 916:42:chipyard.TestHarness.RocketConfig.fir@248697.6]
  assign _GEN_178 = _T_670 ? wdata : {{25'd0}, reg_stvec}; // @[CSR.scala 917:42:chipyard.TestHarness.RocketConfig.fir@248703.6]
  assign _T_3828 = wdata & 64'h800000000000001f; // @[CSR.scala 918:64:chipyard.TestHarness.RocketConfig.fir@248707.8]
  assign _GEN_183 = _T_671 ? wdata : {{32'd0}, reg_scounteren}; // @[CSR.scala 922:44:chipyard.TestHarness.RocketConfig.fir@248720.6]
  assign _GEN_184 = _T_659 ? wdata : {{32'd0}, reg_mcounteren}; // @[CSR.scala 925:44:chipyard.TestHarness.RocketConfig.fir@248723.6]
  assign _T_3831 = ~reg_bp_0_control_dmode; // @[CSR.scala 931:37:chipyard.TestHarness.RocketConfig.fir@248730.6]
  assign _T_3832 = _T_3831 | reg_debug; // @[CSR.scala 931:55:chipyard.TestHarness.RocketConfig.fir@248731.6]
  assign _GEN_186 = _T_553 ? wdata : {{25'd0}, reg_bp_0_address}; // @[CSR.scala 932:44:chipyard.TestHarness.RocketConfig.fir@248734.8]
  assign _T_3866 = io_rw_cmd[1] ? _T_366 : 64'h0; // @[CSR.scala 1058:9:chipyard.TestHarness.RocketConfig.fir@248789.10]
  assign _T_3867 = _T_3866 | io_rw_wdata; // @[CSR.scala 1058:34:chipyard.TestHarness.RocketConfig.fir@248790.10]
  assign _T_3872 = _T_3867 & _T_702; // @[CSR.scala 1058:43:chipyard.TestHarness.RocketConfig.fir@248795.10]
  assign _T_3890 = _T_3872[59] & reg_debug; // @[CSR.scala 941:38:chipyard.TestHarness.RocketConfig.fir@248831.10]
  assign _GEN_187 = _T_3890 & _T_3872[12]; // @[CSR.scala 943:51:chipyard.TestHarness.RocketConfig.fir@248838.10]
  assign _GEN_203 = _T_3832 ? _GEN_186 : {{25'd0}, reg_bp_0_address}; // @[CSR.scala 931:70:chipyard.TestHarness.RocketConfig.fir@248733.6]
  assign _T_3974 = ~reg_pmp_0_cfg_l; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@248977.6]
  assign _T_3975 = _T_674 & _T_3974; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@248978.6]
  assign _T_3985 = wdata[1] & wdata[0]; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@248999.8]
  assign _T_3987 = ~reg_pmp_1_cfg_a[1]; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249003.6]
  assign _T_3989 = _T_3987 & reg_pmp_1_cfg_a[0]; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249005.6]
  assign _T_3990 = reg_pmp_1_cfg_l & _T_3989; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249006.6]
  assign _T_3991 = reg_pmp_0_cfg_l | _T_3990; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249007.6]
  assign _T_3992 = ~_T_3991; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249008.6]
  assign _T_3993 = _T_676 & _T_3992; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249009.6]
  assign _GEN_258 = _T_3993 ? wdata : {{34'd0}, reg_pmp_0_addr}; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249010.6]
  assign _T_3994 = ~reg_pmp_1_cfg_l; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249013.6]
  assign _T_3995 = _T_674 & _T_3994; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249014.6]
  assign _T_4005 = wdata[9] & wdata[8]; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249035.8]
  assign _T_4007 = ~reg_pmp_2_cfg_a[1]; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249039.6]
  assign _T_4009 = _T_4007 & reg_pmp_2_cfg_a[0]; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249041.6]
  assign _T_4010 = reg_pmp_2_cfg_l & _T_4009; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249042.6]
  assign _T_4011 = reg_pmp_1_cfg_l | _T_4010; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249043.6]
  assign _T_4012 = ~_T_4011; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249044.6]
  assign _T_4013 = _T_677 & _T_4012; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249045.6]
  assign _GEN_265 = _T_4013 ? wdata : {{34'd0}, reg_pmp_1_addr}; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249046.6]
  assign _T_4014 = ~reg_pmp_2_cfg_l; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249049.6]
  assign _T_4015 = _T_674 & _T_4014; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249050.6]
  assign _T_4025 = wdata[17] & wdata[16]; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249071.8]
  assign _T_4027 = ~reg_pmp_3_cfg_a[1]; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249075.6]
  assign _T_4029 = _T_4027 & reg_pmp_3_cfg_a[0]; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249077.6]
  assign _T_4030 = reg_pmp_3_cfg_l & _T_4029; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249078.6]
  assign _T_4031 = reg_pmp_2_cfg_l | _T_4030; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249079.6]
  assign _T_4032 = ~_T_4031; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249080.6]
  assign _T_4033 = _T_678 & _T_4032; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249081.6]
  assign _GEN_272 = _T_4033 ? wdata : {{34'd0}, reg_pmp_2_addr}; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249082.6]
  assign _T_4034 = ~reg_pmp_3_cfg_l; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249085.6]
  assign _T_4035 = _T_674 & _T_4034; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249086.6]
  assign _T_4045 = wdata[25] & wdata[24]; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249107.8]
  assign _T_4047 = ~reg_pmp_4_cfg_a[1]; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249111.6]
  assign _T_4049 = _T_4047 & reg_pmp_4_cfg_a[0]; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249113.6]
  assign _T_4050 = reg_pmp_4_cfg_l & _T_4049; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249114.6]
  assign _T_4051 = reg_pmp_3_cfg_l | _T_4050; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249115.6]
  assign _T_4052 = ~_T_4051; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249116.6]
  assign _T_4053 = _T_679 & _T_4052; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249117.6]
  assign _GEN_279 = _T_4053 ? wdata : {{34'd0}, reg_pmp_3_addr}; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249118.6]
  assign _T_4054 = ~reg_pmp_4_cfg_l; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249121.6]
  assign _T_4055 = _T_674 & _T_4054; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249122.6]
  assign _T_4065 = wdata[33] & wdata[32]; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249143.8]
  assign _T_4067 = ~reg_pmp_5_cfg_a[1]; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249147.6]
  assign _T_4069 = _T_4067 & reg_pmp_5_cfg_a[0]; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249149.6]
  assign _T_4070 = reg_pmp_5_cfg_l & _T_4069; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249150.6]
  assign _T_4071 = reg_pmp_4_cfg_l | _T_4070; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249151.6]
  assign _T_4072 = ~_T_4071; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249152.6]
  assign _T_4073 = _T_680 & _T_4072; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249153.6]
  assign _GEN_286 = _T_4073 ? wdata : {{34'd0}, reg_pmp_4_addr}; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249154.6]
  assign _T_4074 = ~reg_pmp_5_cfg_l; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249157.6]
  assign _T_4075 = _T_674 & _T_4074; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249158.6]
  assign _T_4085 = wdata[41] & wdata[40]; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249179.8]
  assign _T_4087 = ~reg_pmp_6_cfg_a[1]; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249183.6]
  assign _T_4089 = _T_4087 & reg_pmp_6_cfg_a[0]; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249185.6]
  assign _T_4090 = reg_pmp_6_cfg_l & _T_4089; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249186.6]
  assign _T_4091 = reg_pmp_5_cfg_l | _T_4090; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249187.6]
  assign _T_4092 = ~_T_4091; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249188.6]
  assign _T_4093 = _T_681 & _T_4092; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249189.6]
  assign _GEN_293 = _T_4093 ? wdata : {{34'd0}, reg_pmp_5_addr}; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249190.6]
  assign _T_4094 = ~reg_pmp_6_cfg_l; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249193.6]
  assign _T_4095 = _T_674 & _T_4094; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249194.6]
  assign _T_4105 = wdata[49] & wdata[48]; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249215.8]
  assign _T_4107 = ~reg_pmp_7_cfg_a[1]; // @[PMP.scala 49:13:chipyard.TestHarness.RocketConfig.fir@249219.6]
  assign _T_4109 = _T_4107 & reg_pmp_7_cfg_a[0]; // @[PMP.scala 49:20:chipyard.TestHarness.RocketConfig.fir@249221.6]
  assign _T_4110 = reg_pmp_7_cfg_l & _T_4109; // @[PMP.scala 51:62:chipyard.TestHarness.RocketConfig.fir@249222.6]
  assign _T_4111 = reg_pmp_6_cfg_l | _T_4110; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249223.6]
  assign _T_4112 = ~_T_4111; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249224.6]
  assign _T_4113 = _T_682 & _T_4112; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249225.6]
  assign _GEN_300 = _T_4113 ? wdata : {{34'd0}, reg_pmp_6_addr}; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249226.6]
  assign _T_4114 = ~reg_pmp_7_cfg_l; // @[CSR.scala 951:60:chipyard.TestHarness.RocketConfig.fir@249229.6]
  assign _T_4115 = _T_674 & _T_4114; // @[CSR.scala 951:57:chipyard.TestHarness.RocketConfig.fir@249230.6]
  assign _T_4125 = wdata[57] & wdata[56]; // @[CSR.scala 955:31:chipyard.TestHarness.RocketConfig.fir@249251.8]
  assign _T_4131 = reg_pmp_7_cfg_l | _T_4110; // @[PMP.scala 51:44:chipyard.TestHarness.RocketConfig.fir@249259.6]
  assign _T_4132 = ~_T_4131; // @[CSR.scala 960:48:chipyard.TestHarness.RocketConfig.fir@249260.6]
  assign _T_4133 = _T_683 & _T_4132; // @[CSR.scala 960:45:chipyard.TestHarness.RocketConfig.fir@249261.6]
  assign _GEN_307 = _T_4133 ? wdata : {{34'd0}, reg_pmp_7_addr}; // @[CSR.scala 960:71:chipyard.TestHarness.RocketConfig.fir@249262.6]
  assign _T_4134 = wdata & 64'h208; // @[CSR.scala 967:23:chipyard.TestHarness.RocketConfig.fir@249266.8]
  assign _T_4136 = reg_custom_0 & 64'hfffffffffffffdf7; // @[CSR.scala 967:38:chipyard.TestHarness.RocketConfig.fir@249268.8]
  assign _T_4137 = _T_4134 | _T_4136; // @[CSR.scala 967:31:chipyard.TestHarness.RocketConfig.fir@249269.8]
  assign _GEN_320 = csr_wen ? _GEN_165 : _GEN_110; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_335 = csr_wen ? _GEN_140 : {{24'd0}, _GEN_87}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_337 = csr_wen ? _GEN_142 : {{32'd0}, reg_mtvec}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_340 = csr_wen ? _GEN_145 : {{57'd0}, _T_48}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_342 = csr_wen ? _GEN_147 : {{57'd0}, _T_40}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_345 = csr_wen ? _GEN_154 : {{59'd0}, _GEN_118}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_346 = csr_wen ? _GEN_155 : {{61'd0}, reg_frm}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_352 = csr_wen ? _GEN_161 : {{24'd0}, _GEN_76}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_357 = csr_wen ? _GEN_177 : {{24'd0}, _GEN_80}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_358 = csr_wen ? _GEN_178 : {{25'd0}, reg_stvec}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_363 = csr_wen ? _GEN_183 : {{32'd0}, reg_scounteren}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_364 = csr_wen ? _GEN_184 : {{32'd0}, reg_mcounteren}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_366 = csr_wen ? _GEN_203 : {{25'd0}, reg_bp_0_address}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_404 = csr_wen ? _GEN_258 : {{34'd0}, reg_pmp_0_addr}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_411 = csr_wen ? _GEN_265 : {{34'd0}, reg_pmp_1_addr}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_418 = csr_wen ? _GEN_272 : {{34'd0}, reg_pmp_2_addr}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_425 = csr_wen ? _GEN_279 : {{34'd0}, reg_pmp_3_addr}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_432 = csr_wen ? _GEN_286 : {{34'd0}, reg_pmp_4_addr}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_439 = csr_wen ? _GEN_293 : {{34'd0}, reg_pmp_5_addr}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_446 = csr_wen ? _GEN_300 : {{34'd0}, reg_pmp_6_addr}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _GEN_453 = csr_wen ? _GEN_307 : {{34'd0}, reg_pmp_7_addr}; // @[CSR.scala 799:18:chipyard.TestHarness.RocketConfig.fir@248267.4]
  assign _T_4163 = io_retire > 1'h0; // @[CSR.scala 1037:26:chipyard.TestHarness.RocketConfig.fir@249398.4]
  assign io_rw_rdata = _T_1866 | _T_1724; // @[CSR.scala 757:15:chipyard.TestHarness.RocketConfig.fir@245916.4]
  assign io_decode_0_fp_illegal = _T_782 | _T_784; // @[CSR.scala 604:23:chipyard.TestHarness.RocketConfig.fir@244699.4]
  assign io_decode_0_fp_csr = _T_790 == 12'h0; // @[CSR.scala 606:19:chipyard.TestHarness.RocketConfig.fir@244709.4]
  assign io_decode_0_read_illegal = _T_1111 | _T_1114; // @[CSR.scala 608:25:chipyard.TestHarness.RocketConfig.fir@245033.4]
  assign io_decode_0_write_illegal = &io_decode_0_csr[11:10]; // @[CSR.scala 615:26:chipyard.TestHarness.RocketConfig.fir@245036.4]
  assign io_decode_0_write_flush = ~_T_1124; // @[CSR.scala 616:24:chipyard.TestHarness.RocketConfig.fir@245045.4]
  assign io_decode_0_system_illegal = _T_1138 | _T_1140; // @[CSR.scala 617:27:chipyard.TestHarness.RocketConfig.fir@245062.4]
  assign io_csr_stall = reg_wfi | io_status_cease; // @[CSR.scala 747:16:chipyard.TestHarness.RocketConfig.fir@245606.4]
  assign io_eret = _T_1197 | insn_ret; // @[CSR.scala 649:11:chipyard.TestHarness.RocketConfig.fir@245119.4]
  assign io_singleStep = reg_dcsr_step & _T_1232; // @[CSR.scala 650:17:chipyard.TestHarness.RocketConfig.fir@245122.4]
  assign io_status_debug = reg_debug; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4 CSR.scala 653:19:chipyard.TestHarness.RocketConfig.fir@245130.4]
  assign io_status_cease = _T_1579; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4 CSR.scala 748:19:chipyard.TestHarness.RocketConfig.fir@245611.4]
  assign io_status_wfi = reg_wfi; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4 CSR.scala 749:17:chipyard.TestHarness.RocketConfig.fir@245612.4]
  assign io_status_isa = reg_misa[31:0]; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4 CSR.scala 654:17:chipyard.TestHarness.RocketConfig.fir@245131.4]
  assign io_status_dprv = _T_1196; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4 CSR.scala 657:18:chipyard.TestHarness.RocketConfig.fir@245139.4]
  assign io_status_prv = reg_mstatus_prv; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_sd = _T_1190 | _T_1191; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4 CSR.scala 652:16:chipyard.TestHarness.RocketConfig.fir@245129.4]
  assign io_status_zero2 = 27'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_sxl = 2'h2; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4 CSR.scala 656:17:chipyard.TestHarness.RocketConfig.fir@245133.4]
  assign io_status_uxl = 2'h2; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4 CSR.scala 655:17:chipyard.TestHarness.RocketConfig.fir@245132.4]
  assign io_status_sd_rv32 = 1'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_zero1 = 8'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_tsr = reg_mstatus_tsr; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_tw = reg_mstatus_tw; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_tvm = reg_mstatus_tvm; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_mxr = reg_mstatus_mxr; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_sum = reg_mstatus_sum; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_mprv = reg_mstatus_mprv; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_xs = 2'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_fs = reg_mstatus_fs; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_mpp = reg_mstatus_mpp; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_vs = 2'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_spp = reg_mstatus_spp; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_mpie = reg_mstatus_mpie; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_hpie = 1'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_spie = reg_mstatus_spie; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_upie = 1'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_mie = reg_mstatus_mie; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_hie = 1'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_sie = reg_mstatus_sie; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_status_uie = 1'h0; // @[CSR.scala 651:13:chipyard.TestHarness.RocketConfig.fir@245123.4]
  assign io_ptbr_mode = reg_satp_mode; // @[CSR.scala 648:11:chipyard.TestHarness.RocketConfig.fir@245116.4]
  assign io_ptbr_ppn = reg_satp_ppn; // @[CSR.scala 648:11:chipyard.TestHarness.RocketConfig.fir@245116.4]
  assign io_evec = _GEN_112[39:0]; // @[CSR.scala 647:11:chipyard.TestHarness.RocketConfig.fir@245115.4 CSR.scala 732:15:chipyard.TestHarness.RocketConfig.fir@245574.8 CSR.scala 736:15:chipyard.TestHarness.RocketConfig.fir@245587.10 CSR.scala 742:15:chipyard.TestHarness.RocketConfig.fir@245601.10]
  assign io_time = {_T_49,_T_47}; // @[CSR.scala 746:11:chipyard.TestHarness.RocketConfig.fir@245604.4]
  assign io_fcsr_rm = reg_frm; // @[CSR.scala 784:14:chipyard.TestHarness.RocketConfig.fir@248243.4]
  assign io_interrupt = _T_232 & _T_234; // @[CSR.scala 427:16:chipyard.TestHarness.RocketConfig.fir@244002.4]
  assign io_interrupt_cause = 64'h8000000000000000 + _GEN_494; // @[CSR.scala 428:22:chipyard.TestHarness.RocketConfig.fir@244003.4]
  assign io_bp_0_control_action = reg_bp_0_control_action; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_bp_0_control_tmatch = reg_bp_0_control_tmatch; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_bp_0_control_m = reg_bp_0_control_m; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_bp_0_control_s = reg_bp_0_control_s; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_bp_0_control_u = reg_bp_0_control_u; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_bp_0_control_x = reg_bp_0_control_x; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_bp_0_control_w = reg_bp_0_control_w; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_bp_0_control_r = reg_bp_0_control_r; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_bp_0_address = reg_bp_0_address; // @[CSR.scala 429:9:chipyard.TestHarness.RocketConfig.fir@244004.4]
  assign io_pmp_0_cfg_l = reg_pmp_0_cfg_l; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244141.4]
  assign io_pmp_0_cfg_a = reg_pmp_0_cfg_a; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244141.4]
  assign io_pmp_0_cfg_x = reg_pmp_0_cfg_x; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244141.4]
  assign io_pmp_0_cfg_w = reg_pmp_0_cfg_w; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244141.4]
  assign io_pmp_0_cfg_r = reg_pmp_0_cfg_r; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244141.4]
  assign io_pmp_0_addr = reg_pmp_0_addr; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244141.4]
  assign io_pmp_0_mask = _T_244[31:0]; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244141.4]
  assign io_pmp_1_cfg_l = reg_pmp_1_cfg_l; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244142.4]
  assign io_pmp_1_cfg_a = reg_pmp_1_cfg_a; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244142.4]
  assign io_pmp_1_cfg_x = reg_pmp_1_cfg_x; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244142.4]
  assign io_pmp_1_cfg_w = reg_pmp_1_cfg_w; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244142.4]
  assign io_pmp_1_cfg_r = reg_pmp_1_cfg_r; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244142.4]
  assign io_pmp_1_addr = reg_pmp_1_addr; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244142.4]
  assign io_pmp_1_mask = _T_253[31:0]; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244142.4]
  assign io_pmp_2_cfg_l = reg_pmp_2_cfg_l; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244143.4]
  assign io_pmp_2_cfg_a = reg_pmp_2_cfg_a; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244143.4]
  assign io_pmp_2_cfg_x = reg_pmp_2_cfg_x; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244143.4]
  assign io_pmp_2_cfg_w = reg_pmp_2_cfg_w; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244143.4]
  assign io_pmp_2_cfg_r = reg_pmp_2_cfg_r; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244143.4]
  assign io_pmp_2_addr = reg_pmp_2_addr; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244143.4]
  assign io_pmp_2_mask = _T_262[31:0]; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244143.4]
  assign io_pmp_3_cfg_l = reg_pmp_3_cfg_l; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244144.4]
  assign io_pmp_3_cfg_a = reg_pmp_3_cfg_a; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244144.4]
  assign io_pmp_3_cfg_x = reg_pmp_3_cfg_x; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244144.4]
  assign io_pmp_3_cfg_w = reg_pmp_3_cfg_w; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244144.4]
  assign io_pmp_3_cfg_r = reg_pmp_3_cfg_r; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244144.4]
  assign io_pmp_3_addr = reg_pmp_3_addr; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244144.4]
  assign io_pmp_3_mask = _T_271[31:0]; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244144.4]
  assign io_pmp_4_cfg_l = reg_pmp_4_cfg_l; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244145.4]
  assign io_pmp_4_cfg_a = reg_pmp_4_cfg_a; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244145.4]
  assign io_pmp_4_cfg_x = reg_pmp_4_cfg_x; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244145.4]
  assign io_pmp_4_cfg_w = reg_pmp_4_cfg_w; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244145.4]
  assign io_pmp_4_cfg_r = reg_pmp_4_cfg_r; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244145.4]
  assign io_pmp_4_addr = reg_pmp_4_addr; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244145.4]
  assign io_pmp_4_mask = _T_280[31:0]; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244145.4]
  assign io_pmp_5_cfg_l = reg_pmp_5_cfg_l; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244146.4]
  assign io_pmp_5_cfg_a = reg_pmp_5_cfg_a; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244146.4]
  assign io_pmp_5_cfg_x = reg_pmp_5_cfg_x; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244146.4]
  assign io_pmp_5_cfg_w = reg_pmp_5_cfg_w; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244146.4]
  assign io_pmp_5_cfg_r = reg_pmp_5_cfg_r; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244146.4]
  assign io_pmp_5_addr = reg_pmp_5_addr; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244146.4]
  assign io_pmp_5_mask = _T_289[31:0]; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244146.4]
  assign io_pmp_6_cfg_l = reg_pmp_6_cfg_l; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244147.4]
  assign io_pmp_6_cfg_a = reg_pmp_6_cfg_a; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244147.4]
  assign io_pmp_6_cfg_x = reg_pmp_6_cfg_x; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244147.4]
  assign io_pmp_6_cfg_w = reg_pmp_6_cfg_w; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244147.4]
  assign io_pmp_6_cfg_r = reg_pmp_6_cfg_r; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244147.4]
  assign io_pmp_6_addr = reg_pmp_6_addr; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244147.4]
  assign io_pmp_6_mask = _T_298[31:0]; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244147.4]
  assign io_pmp_7_cfg_l = reg_pmp_7_cfg_l; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244148.4]
  assign io_pmp_7_cfg_a = reg_pmp_7_cfg_a; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244148.4]
  assign io_pmp_7_cfg_x = reg_pmp_7_cfg_x; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244148.4]
  assign io_pmp_7_cfg_w = reg_pmp_7_cfg_w; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244148.4]
  assign io_pmp_7_cfg_r = reg_pmp_7_cfg_r; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244148.4]
  assign io_pmp_7_addr = reg_pmp_7_addr; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244148.4]
  assign io_pmp_7_mask = _T_307[31:0]; // @[CSR.scala 430:10:chipyard.TestHarness.RocketConfig.fir@244148.4]
  assign io_trace_0_valid = _T_4163 | io_trace_0_exception; // @[CSR.scala 1037:13:chipyard.TestHarness.RocketConfig.fir@249400.4]
  assign io_trace_0_iaddr = io_pc; // @[CSR.scala 1039:13:chipyard.TestHarness.RocketConfig.fir@249402.4]
  assign io_trace_0_insn = io_inst_0; // @[CSR.scala 1038:12:chipyard.TestHarness.RocketConfig.fir@249401.4]
  assign io_trace_0_exception = _T_1197 | io_exception; // @[CSR.scala 1036:17:chipyard.TestHarness.RocketConfig.fir@249397.4]
  assign io_customCSRs_0_value = reg_custom_0; // @[CSR.scala 754:14:chipyard.TestHarness.RocketConfig.fir@245615.4]
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
  reg_mstatus_prv = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  reg_mstatus_tsr = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_mstatus_tw = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  reg_mstatus_tvm = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  reg_mstatus_mxr = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  reg_mstatus_sum = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  reg_mstatus_mprv = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  reg_mstatus_fs = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  reg_mstatus_mpp = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  reg_mstatus_spp = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  reg_mstatus_mpie = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  reg_mstatus_spie = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  reg_mstatus_mie = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  reg_mstatus_sie = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  reg_dcsr_prv = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  reg_singleStepped = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  reg_dcsr_ebreakm = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  reg_dcsr_ebreaks = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  reg_dcsr_ebreaku = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  reg_debug = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {2{`RANDOM}};
  reg_mideleg = _RAND_20[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {2{`RANDOM}};
  reg_medeleg = _RAND_21[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  reg_dcsr_cause = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  reg_dcsr_step = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {2{`RANDOM}};
  reg_dpc = _RAND_24[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {2{`RANDOM}};
  reg_dscratch = _RAND_25[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  reg_bp_0_control_dmode = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  reg_bp_0_control_action = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  reg_bp_0_control_tmatch = _RAND_28[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  reg_bp_0_control_m = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  reg_bp_0_control_s = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  reg_bp_0_control_u = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  reg_bp_0_control_x = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  reg_bp_0_control_w = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  reg_bp_0_control_r = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {2{`RANDOM}};
  reg_bp_0_address = _RAND_35[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  reg_pmp_0_cfg_l = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  reg_pmp_0_cfg_a = _RAND_37[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  reg_pmp_0_cfg_x = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  reg_pmp_0_cfg_w = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  reg_pmp_0_cfg_r = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  reg_pmp_0_addr = _RAND_41[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  reg_pmp_1_cfg_l = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  reg_pmp_1_cfg_a = _RAND_43[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  reg_pmp_1_cfg_x = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  reg_pmp_1_cfg_w = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  reg_pmp_1_cfg_r = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  reg_pmp_1_addr = _RAND_47[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  reg_pmp_2_cfg_l = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  reg_pmp_2_cfg_a = _RAND_49[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  reg_pmp_2_cfg_x = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  reg_pmp_2_cfg_w = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  reg_pmp_2_cfg_r = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  reg_pmp_2_addr = _RAND_53[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  reg_pmp_3_cfg_l = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  reg_pmp_3_cfg_a = _RAND_55[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  reg_pmp_3_cfg_x = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  reg_pmp_3_cfg_w = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  reg_pmp_3_cfg_r = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  reg_pmp_3_addr = _RAND_59[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  reg_pmp_4_cfg_l = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  reg_pmp_4_cfg_a = _RAND_61[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  reg_pmp_4_cfg_x = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  reg_pmp_4_cfg_w = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  reg_pmp_4_cfg_r = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  reg_pmp_4_addr = _RAND_65[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  reg_pmp_5_cfg_l = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  reg_pmp_5_cfg_a = _RAND_67[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  reg_pmp_5_cfg_x = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  reg_pmp_5_cfg_w = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  reg_pmp_5_cfg_r = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  reg_pmp_5_addr = _RAND_71[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  reg_pmp_6_cfg_l = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  reg_pmp_6_cfg_a = _RAND_73[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  reg_pmp_6_cfg_x = _RAND_74[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  reg_pmp_6_cfg_w = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  reg_pmp_6_cfg_r = _RAND_76[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  reg_pmp_6_addr = _RAND_77[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  reg_pmp_7_cfg_l = _RAND_78[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  reg_pmp_7_cfg_a = _RAND_79[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  reg_pmp_7_cfg_x = _RAND_80[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  reg_pmp_7_cfg_w = _RAND_81[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  reg_pmp_7_cfg_r = _RAND_82[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  reg_pmp_7_addr = _RAND_83[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {2{`RANDOM}};
  reg_mie = _RAND_84[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  reg_mip_seip = _RAND_85[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  reg_mip_stip = _RAND_86[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  reg_mip_ssip = _RAND_87[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {2{`RANDOM}};
  reg_mepc = _RAND_88[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {2{`RANDOM}};
  reg_mcause = _RAND_89[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {2{`RANDOM}};
  reg_mtval = _RAND_90[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {2{`RANDOM}};
  reg_mscratch = _RAND_91[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  reg_mtvec = _RAND_92[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  reg_mcounteren = _RAND_93[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  reg_scounteren = _RAND_94[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {2{`RANDOM}};
  reg_sepc = _RAND_95[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {2{`RANDOM}};
  reg_scause = _RAND_96[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {2{`RANDOM}};
  reg_stval = _RAND_97[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {2{`RANDOM}};
  reg_sscratch = _RAND_98[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {2{`RANDOM}};
  reg_stvec = _RAND_99[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{`RANDOM}};
  reg_satp_mode = _RAND_100[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {2{`RANDOM}};
  reg_satp_ppn = _RAND_101[43:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  reg_wfi = _RAND_102[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  reg_fflags = _RAND_103[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  reg_frm = _RAND_104[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{`RANDOM}};
  _T_39 = _RAND_105[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {2{`RANDOM}};
  _T_41 = _RAND_106[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{`RANDOM}};
  _T_47 = _RAND_107[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {2{`RANDOM}};
  _T_49 = _RAND_108[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {2{`RANDOM}};
  reg_misa = _RAND_109[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {2{`RANDOM}};
  reg_custom_0 = _RAND_110[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{`RANDOM}};
  _T_1196 = _RAND_111[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{`RANDOM}};
  _T_1579 = _RAND_112[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_mstatus_prv <= 2'h3;
    end else if (_T_1) begin
      reg_mstatus_prv <= 2'h0;
    end else if (insn_ret) begin
      if (_T_1557) begin
        reg_mstatus_prv <= {{1'd0}, reg_mstatus_spp};
      end else if (io_rw_addr[10]) begin
        reg_mstatus_prv <= reg_dcsr_prv;
      end else begin
        reg_mstatus_prv <= reg_mstatus_mpp;
      end
    end else if (exception) begin
      if (trapToDebug) begin
        if (_T_1232) begin
          reg_mstatus_prv <= 2'h3;
        end
      end else if (delegate) begin
        reg_mstatus_prv <= 2'h1;
      end else begin
        reg_mstatus_prv <= 2'h3;
      end
    end
    if (reset) begin
      reg_mstatus_tsr <= 1'h0;
    end else if (csr_wen) begin
      if (_T_555) begin
        reg_mstatus_tsr <= _T_3628[22];
      end
    end
    if (reset) begin
      reg_mstatus_tw <= 1'h0;
    end else if (csr_wen) begin
      if (_T_555) begin
        reg_mstatus_tw <= _T_3628[21];
      end
    end
    if (reset) begin
      reg_mstatus_tvm <= 1'h0;
    end else if (csr_wen) begin
      if (_T_555) begin
        reg_mstatus_tvm <= _T_3628[20];
      end
    end
    if (reset) begin
      reg_mstatus_mxr <= 1'h0;
    end else if (csr_wen) begin
      if (_T_662) begin
        reg_mstatus_mxr <= _T_3628[19];
      end else if (_T_555) begin
        reg_mstatus_mxr <= _T_3628[19];
      end
    end
    if (reset) begin
      reg_mstatus_sum <= 1'h0;
    end else if (csr_wen) begin
      if (_T_662) begin
        reg_mstatus_sum <= _T_3628[18];
      end else if (_T_555) begin
        reg_mstatus_sum <= _T_3628[18];
      end
    end
    if (reset) begin
      reg_mstatus_mprv <= 1'h0;
    end else if (csr_wen) begin
      if (_T_555) begin
        reg_mstatus_mprv <= _T_3628[17];
      end
    end
    if (reset) begin
      reg_mstatus_fs <= 2'h0;
    end else if (csr_wen) begin
      if (_T_662) begin
        if (_T_3662) begin
          reg_mstatus_fs <= 2'h3;
        end else begin
          reg_mstatus_fs <= 2'h0;
        end
      end else if (_T_555) begin
        if (_T_3662) begin
          reg_mstatus_fs <= 2'h3;
        end else begin
          reg_mstatus_fs <= 2'h0;
        end
      end
    end
    if (reset) begin
      reg_mstatus_mpp <= 2'h3;
    end else if (csr_wen) begin
      if (_T_555) begin
        if (_T_3660) begin
          reg_mstatus_mpp <= 2'h0;
        end else begin
          reg_mstatus_mpp <= _T_3628[12:11];
        end
      end else if (insn_ret) begin
        if (_T_1557) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (!(delegate)) begin
                reg_mstatus_mpp <= reg_mstatus_prv;
              end
            end
          end
        end else if (io_rw_addr[10]) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (!(delegate)) begin
                reg_mstatus_mpp <= reg_mstatus_prv;
              end
            end
          end
        end else begin
          reg_mstatus_mpp <= 2'h0;
        end
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mstatus_mpp <= reg_mstatus_prv;
          end
        end
      end
    end else if (insn_ret) begin
      if (_T_1557) begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (!(delegate)) begin
              reg_mstatus_mpp <= reg_mstatus_prv;
            end
          end
        end
      end else if (io_rw_addr[10]) begin
        reg_mstatus_mpp <= _GEN_91;
      end else begin
        reg_mstatus_mpp <= 2'h0;
      end
    end else begin
      reg_mstatus_mpp <= _GEN_91;
    end
    if (reset) begin
      reg_mstatus_spp <= 1'h0;
    end else begin
      reg_mstatus_spp <= _GEN_320[0];
    end
    if (reset) begin
      reg_mstatus_mpie <= 1'h0;
    end else if (csr_wen) begin
      if (_T_555) begin
        reg_mstatus_mpie <= _T_3628[7];
      end else if (insn_ret) begin
        if (_T_1557) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (!(delegate)) begin
                reg_mstatus_mpie <= reg_mstatus_mie;
              end
            end
          end
        end else if (io_rw_addr[10]) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (!(delegate)) begin
                reg_mstatus_mpie <= reg_mstatus_mie;
              end
            end
          end
        end else begin
          reg_mstatus_mpie <= 1'h1;
        end
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mstatus_mpie <= reg_mstatus_mie;
          end
        end
      end
    end else if (insn_ret) begin
      if (_T_1557) begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (!(delegate)) begin
              reg_mstatus_mpie <= reg_mstatus_mie;
            end
          end
        end
      end else if (io_rw_addr[10]) begin
        reg_mstatus_mpie <= _GEN_90;
      end else begin
        reg_mstatus_mpie <= 1'h1;
      end
    end else begin
      reg_mstatus_mpie <= _GEN_90;
    end
    if (reset) begin
      reg_mstatus_spie <= 1'h0;
    end else if (csr_wen) begin
      if (_T_662) begin
        reg_mstatus_spie <= _T_3628[5];
      end else if (_T_555) begin
        reg_mstatus_spie <= _T_3628[5];
      end else if (insn_ret) begin
        reg_mstatus_spie <= _GEN_100;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_mstatus_spie <= reg_mstatus_sie;
          end
        end
      end
    end else if (insn_ret) begin
      reg_mstatus_spie <= _GEN_100;
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          reg_mstatus_spie <= reg_mstatus_sie;
        end
      end
    end
    if (reset) begin
      reg_mstatus_mie <= 1'h0;
    end else if (csr_wen) begin
      if (_T_555) begin
        reg_mstatus_mie <= _T_3628[3];
      end else if (insn_ret) begin
        if (_T_1557) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              reg_mstatus_mie <= _GEN_56;
            end
          end
        end else if (io_rw_addr[10]) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              reg_mstatus_mie <= _GEN_56;
            end
          end
        end else begin
          reg_mstatus_mie <= reg_mstatus_mpie;
        end
      end else if (exception) begin
        if (!(trapToDebug)) begin
          reg_mstatus_mie <= _GEN_56;
        end
      end
    end else if (insn_ret) begin
      if (_T_1557) begin
        if (exception) begin
          if (!(trapToDebug)) begin
            reg_mstatus_mie <= _GEN_56;
          end
        end
      end else if (io_rw_addr[10]) begin
        reg_mstatus_mie <= _GEN_92;
      end else begin
        reg_mstatus_mie <= reg_mstatus_mpie;
      end
    end else begin
      reg_mstatus_mie <= _GEN_92;
    end
    if (reset) begin
      reg_mstatus_sie <= 1'h0;
    end else if (csr_wen) begin
      if (_T_662) begin
        reg_mstatus_sie <= _T_3628[1];
      end else if (_T_555) begin
        reg_mstatus_sie <= _T_3628[1];
      end else if (insn_ret) begin
        if (_T_1557) begin
          reg_mstatus_sie <= reg_mstatus_spie;
        end else if (exception) begin
          if (!(trapToDebug)) begin
            if (delegate) begin
              reg_mstatus_sie <= 1'h0;
            end
          end
        end
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_mstatus_sie <= 1'h0;
          end
        end
      end
    end else if (insn_ret) begin
      if (_T_1557) begin
        reg_mstatus_sie <= reg_mstatus_spie;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_mstatus_sie <= 1'h0;
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          reg_mstatus_sie <= 1'h0;
        end
      end
    end
    if (reset) begin
      reg_dcsr_prv <= 2'h3;
    end else if (csr_wen) begin
      if (_T_564) begin
        if (_T_3748) begin
          reg_dcsr_prv <= 2'h0;
        end else begin
          reg_dcsr_prv <= wdata[1:0];
        end
      end else if (exception) begin
        if (trapToDebug) begin
          if (_T_1232) begin
            reg_dcsr_prv <= reg_mstatus_prv;
          end
        end
      end
    end else if (exception) begin
      if (trapToDebug) begin
        if (_T_1232) begin
          reg_dcsr_prv <= reg_mstatus_prv;
        end
      end
    end
    if (_T_230) begin
      reg_singleStepped <= 1'h0;
    end else begin
      reg_singleStepped <= _GEN_36;
    end
    if (reset) begin
      reg_dcsr_ebreakm <= 1'h0;
    end else if (csr_wen) begin
      if (_T_564) begin
        reg_dcsr_ebreakm <= wdata[15];
      end
    end
    if (reset) begin
      reg_dcsr_ebreaks <= 1'h0;
    end else if (csr_wen) begin
      if (_T_564) begin
        reg_dcsr_ebreaks <= wdata[13];
      end
    end
    if (reset) begin
      reg_dcsr_ebreaku <= 1'h0;
    end else if (csr_wen) begin
      if (_T_564) begin
        reg_dcsr_ebreaku <= wdata[12];
      end
    end
    if (reset) begin
      reg_debug <= 1'h0;
    end else if (insn_ret) begin
      if (_T_1557) begin
        if (exception) begin
          if (trapToDebug) begin
            reg_debug <= _GEN_38;
          end
        end
      end else if (io_rw_addr[10]) begin
        reg_debug <= 1'h0;
      end else if (exception) begin
        if (trapToDebug) begin
          reg_debug <= _GEN_38;
        end
      end
    end else if (exception) begin
      if (trapToDebug) begin
        reg_debug <= _GEN_38;
      end
    end
    if (csr_wen) begin
      if (_T_672) begin
        reg_mideleg <= wdata;
      end
    end
    if (csr_wen) begin
      if (_T_673) begin
        reg_medeleg <= wdata;
      end
    end
    if (reset) begin
      reg_dcsr_cause <= 3'h0;
    end else if (exception) begin
      if (trapToDebug) begin
        if (_T_1232) begin
          if (reg_singleStepped) begin
            reg_dcsr_cause <= 3'h4;
          end else begin
            reg_dcsr_cause <= {{1'd0}, _T_1234};
          end
        end
      end
    end
    if (reset) begin
      reg_dcsr_step <= 1'h0;
    end else if (csr_wen) begin
      if (_T_564) begin
        reg_dcsr_step <= wdata[2];
      end
    end
    reg_dpc <= _GEN_352[39:0];
    if (csr_wen) begin
      if (_T_566) begin
        reg_dscratch <= wdata;
      end
    end
    if (reset) begin
      reg_bp_0_control_dmode <= 1'h0;
    end else if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_dmode <= _T_3890;
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_action <= 1'h0;
    end else if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_action <= _GEN_187;
        end
      end
    end
    if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_tmatch <= wdata[8:7];
        end
      end
    end
    if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_m <= wdata[6];
        end
      end
    end
    if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_s <= wdata[4];
        end
      end
    end
    if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_u <= wdata[3];
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_x <= 1'h0;
    end else if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_x <= wdata[2];
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_w <= 1'h0;
    end else if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_w <= wdata[1];
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_r <= 1'h0;
    end else if (csr_wen) begin
      if (_T_3832) begin
        if (_T_552) begin
          reg_bp_0_control_r <= wdata[0];
        end
      end
    end
    reg_bp_0_address <= _GEN_366[38:0];
    if (reset) begin
      reg_pmp_0_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_3975) begin
        reg_pmp_0_cfg_l <= wdata[7];
      end
    end
    if (reset) begin
      reg_pmp_0_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_3975) begin
        reg_pmp_0_cfg_a <= wdata[4:3];
      end
    end
    if (csr_wen) begin
      if (_T_3975) begin
        reg_pmp_0_cfg_x <= wdata[2];
      end
    end
    if (csr_wen) begin
      if (_T_3975) begin
        reg_pmp_0_cfg_w <= _T_3985;
      end
    end
    if (csr_wen) begin
      if (_T_3975) begin
        reg_pmp_0_cfg_r <= wdata[0];
      end
    end
    reg_pmp_0_addr <= _GEN_404[29:0];
    if (reset) begin
      reg_pmp_1_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_3995) begin
        reg_pmp_1_cfg_l <= wdata[15];
      end
    end
    if (reset) begin
      reg_pmp_1_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_3995) begin
        reg_pmp_1_cfg_a <= wdata[12:11];
      end
    end
    if (csr_wen) begin
      if (_T_3995) begin
        reg_pmp_1_cfg_x <= wdata[10];
      end
    end
    if (csr_wen) begin
      if (_T_3995) begin
        reg_pmp_1_cfg_w <= _T_4005;
      end
    end
    if (csr_wen) begin
      if (_T_3995) begin
        reg_pmp_1_cfg_r <= wdata[8];
      end
    end
    reg_pmp_1_addr <= _GEN_411[29:0];
    if (reset) begin
      reg_pmp_2_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4015) begin
        reg_pmp_2_cfg_l <= wdata[23];
      end
    end
    if (reset) begin
      reg_pmp_2_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_4015) begin
        reg_pmp_2_cfg_a <= wdata[20:19];
      end
    end
    if (csr_wen) begin
      if (_T_4015) begin
        reg_pmp_2_cfg_x <= wdata[18];
      end
    end
    if (csr_wen) begin
      if (_T_4015) begin
        reg_pmp_2_cfg_w <= _T_4025;
      end
    end
    if (csr_wen) begin
      if (_T_4015) begin
        reg_pmp_2_cfg_r <= wdata[16];
      end
    end
    reg_pmp_2_addr <= _GEN_418[29:0];
    if (reset) begin
      reg_pmp_3_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4035) begin
        reg_pmp_3_cfg_l <= wdata[31];
      end
    end
    if (reset) begin
      reg_pmp_3_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_4035) begin
        reg_pmp_3_cfg_a <= wdata[28:27];
      end
    end
    if (csr_wen) begin
      if (_T_4035) begin
        reg_pmp_3_cfg_x <= wdata[26];
      end
    end
    if (csr_wen) begin
      if (_T_4035) begin
        reg_pmp_3_cfg_w <= _T_4045;
      end
    end
    if (csr_wen) begin
      if (_T_4035) begin
        reg_pmp_3_cfg_r <= wdata[24];
      end
    end
    reg_pmp_3_addr <= _GEN_425[29:0];
    if (reset) begin
      reg_pmp_4_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4055) begin
        reg_pmp_4_cfg_l <= wdata[39];
      end
    end
    if (reset) begin
      reg_pmp_4_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_4055) begin
        reg_pmp_4_cfg_a <= wdata[36:35];
      end
    end
    if (csr_wen) begin
      if (_T_4055) begin
        reg_pmp_4_cfg_x <= wdata[34];
      end
    end
    if (csr_wen) begin
      if (_T_4055) begin
        reg_pmp_4_cfg_w <= _T_4065;
      end
    end
    if (csr_wen) begin
      if (_T_4055) begin
        reg_pmp_4_cfg_r <= wdata[32];
      end
    end
    reg_pmp_4_addr <= _GEN_432[29:0];
    if (reset) begin
      reg_pmp_5_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4075) begin
        reg_pmp_5_cfg_l <= wdata[47];
      end
    end
    if (reset) begin
      reg_pmp_5_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_4075) begin
        reg_pmp_5_cfg_a <= wdata[44:43];
      end
    end
    if (csr_wen) begin
      if (_T_4075) begin
        reg_pmp_5_cfg_x <= wdata[42];
      end
    end
    if (csr_wen) begin
      if (_T_4075) begin
        reg_pmp_5_cfg_w <= _T_4085;
      end
    end
    if (csr_wen) begin
      if (_T_4075) begin
        reg_pmp_5_cfg_r <= wdata[40];
      end
    end
    reg_pmp_5_addr <= _GEN_439[29:0];
    if (reset) begin
      reg_pmp_6_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4095) begin
        reg_pmp_6_cfg_l <= wdata[55];
      end
    end
    if (reset) begin
      reg_pmp_6_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_4095) begin
        reg_pmp_6_cfg_a <= wdata[52:51];
      end
    end
    if (csr_wen) begin
      if (_T_4095) begin
        reg_pmp_6_cfg_x <= wdata[50];
      end
    end
    if (csr_wen) begin
      if (_T_4095) begin
        reg_pmp_6_cfg_w <= _T_4105;
      end
    end
    if (csr_wen) begin
      if (_T_4095) begin
        reg_pmp_6_cfg_r <= wdata[48];
      end
    end
    reg_pmp_6_addr <= _GEN_446[29:0];
    if (reset) begin
      reg_pmp_7_cfg_l <= 1'h0;
    end else if (csr_wen) begin
      if (_T_4115) begin
        reg_pmp_7_cfg_l <= wdata[63];
      end
    end
    if (reset) begin
      reg_pmp_7_cfg_a <= 2'h0;
    end else if (csr_wen) begin
      if (_T_4115) begin
        reg_pmp_7_cfg_a <= wdata[60:59];
      end
    end
    if (csr_wen) begin
      if (_T_4115) begin
        reg_pmp_7_cfg_x <= wdata[58];
      end
    end
    if (csr_wen) begin
      if (_T_4115) begin
        reg_pmp_7_cfg_w <= _T_4125;
      end
    end
    if (csr_wen) begin
      if (_T_4115) begin
        reg_pmp_7_cfg_r <= wdata[56];
      end
    end
    reg_pmp_7_addr <= _GEN_453[29:0];
    if (csr_wen) begin
      if (_T_664) begin
        reg_mie <= _T_3824;
      end else if (_T_558) begin
        reg_mie <= _T_3721;
      end
    end
    if (csr_wen) begin
      if (_T_557) begin
        reg_mip_seip <= _T_3702[9];
      end
    end
    if (csr_wen) begin
      if (_T_557) begin
        reg_mip_stip <= _T_3702[5];
      end
    end
    if (csr_wen) begin
      if (_T_663) begin
        reg_mip_ssip <= _T_3792[1];
      end else if (_T_557) begin
        reg_mip_ssip <= _T_3702[1];
      end
    end
    reg_mepc <= _GEN_335[39:0];
    if (reset) begin
      reg_mcause <= 64'h0;
    end else if (csr_wen) begin
      if (_T_562) begin
        reg_mcause <= _T_3725;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            if (insn_call) begin
              reg_mcause <= {{60'd0}, _T_1143};
            end else if (insn_break) begin
              reg_mcause <= 64'h3;
            end else begin
              reg_mcause <= io_cause;
            end
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (!(delegate)) begin
          if (insn_call) begin
            reg_mcause <= {{60'd0}, _T_1143};
          end else if (insn_break) begin
            reg_mcause <= 64'h3;
          end else begin
            reg_mcause <= io_cause;
          end
        end
      end
    end
    if (csr_wen) begin
      if (_T_561) begin
        reg_mtval <= wdata[39:0];
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mtval <= io_tval;
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (!(delegate)) begin
          reg_mtval <= io_tval;
        end
      end
    end
    if (csr_wen) begin
      if (_T_559) begin
        reg_mscratch <= wdata;
      end
    end
    if (reset) begin
      reg_mtvec <= 32'h0;
    end else begin
      reg_mtvec <= _GEN_337[31:0];
    end
    reg_mcounteren <= _GEN_364[31:0];
    reg_scounteren <= _GEN_363[31:0];
    reg_sepc <= _GEN_357[39:0];
    if (csr_wen) begin
      if (_T_666) begin
        reg_scause <= _T_3828;
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            if (insn_call) begin
              reg_scause <= {{60'd0}, _T_1143};
            end else if (insn_break) begin
              reg_scause <= 64'h3;
            end else begin
              reg_scause <= io_cause;
            end
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          if (insn_call) begin
            reg_scause <= {{60'd0}, _T_1143};
          end else if (insn_break) begin
            reg_scause <= 64'h3;
          end else begin
            reg_scause <= io_cause;
          end
        end
      end
    end
    if (csr_wen) begin
      if (_T_667) begin
        reg_stval <= wdata[39:0];
      end else if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_stval <= io_tval;
          end
        end
      end
    end else if (exception) begin
      if (!(trapToDebug)) begin
        if (delegate) begin
          reg_stval <= io_tval;
        end
      end
    end
    if (csr_wen) begin
      if (_T_665) begin
        reg_sscratch <= wdata;
      end
    end
    reg_stvec <= _GEN_358[38:0];
    if (csr_wen) begin
      if (_T_668) begin
        if (_T_3818) begin
          reg_satp_mode <= _T_3819;
        end
      end
    end
    if (csr_wen) begin
      if (_T_668) begin
        if (_T_3818) begin
          reg_satp_ppn <= {{24'd0}, wdata[19:0]};
        end
      end
    end
    reg_fflags <= _GEN_345[4:0];
    reg_frm <= _GEN_346[2:0];
    if (reset) begin
      _T_39 <= 6'h0;
    end else begin
      _T_39 <= _GEN_342[5:0];
    end
    if (reset) begin
      _T_41 <= 58'h0;
    end else if (csr_wen) begin
      if (_T_571) begin
        _T_41 <= wdata[63:6];
      end else if (_T_40[6]) begin
        _T_41 <= _T_44;
      end
    end else if (_T_40[6]) begin
      _T_41 <= _T_44;
    end
    if (reset) begin
      reg_misa <= 64'h800000000094112d;
    end else if (csr_wen) begin
      if (_T_554) begin
        if (_T_3670) begin
          reg_misa <= _T_3679;
        end
      end
    end
    if (reset) begin
      reg_custom_0 <= 64'h208;
    end else if (csr_wen) begin
      if (_T_692) begin
        reg_custom_0 <= _T_4137;
      end
    end
    if (_T_1194) begin
      _T_1196 <= reg_mstatus_mpp;
    end else begin
      _T_1196 <= reg_mstatus_prv;
    end
    if (reset) begin
      _T_1579 <= 1'h0;
    end else begin
      _T_1579 <= _GEN_117;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1207) begin
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at CSR.scala:662 assert(PopCount(insn_ret :: insn_call :: insn_break :: io.exception :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n"); // @[CSR.scala 662:9:chipyard.TestHarness.RocketConfig.fir@245153.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1207) begin
          $fatal; // @[CSR.scala 662:9:chipyard.TestHarness.RocketConfig.fir@245154.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1229) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CSR.scala:670 assert(!reg_singleStepped || io.retire === UInt(0))\n"); // @[CSR.scala 670:9:chipyard.TestHarness.RocketConfig.fir@245195.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1229) begin
          $fatal; // @[CSR.scala 670:9:chipyard.TestHarness.RocketConfig.fir@245196.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
  always @(posedge io_ungated_clock) begin
    if (reset) begin
      reg_wfi <= 1'h0;
    end else if (_T_1214) begin
      reg_wfi <= 1'h0;
    end else begin
      reg_wfi <= _GEN_34;
    end
    if (reset) begin
      _T_47 <= 6'h0;
    end else begin
      _T_47 <= _GEN_340[5:0];
    end
    if (reset) begin
      _T_49 <= 58'h0;
    end else if (csr_wen) begin
      if (_T_570) begin
        _T_49 <= wdata[63:6];
      end else if (_T_48[6]) begin
        _T_49 <= _T_52;
      end
    end else if (_T_48[6]) begin
      _T_49 <= _T_52;
    end
  end
endmodule
