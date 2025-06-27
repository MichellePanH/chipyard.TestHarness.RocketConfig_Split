module FPU( // @[:chipyard.TestHarness.RocketConfig.fir@239491.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@239492.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@239493.4]
  input  [31:0] io_inst, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input  [63:0] io_fromint_data, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input  [2:0]  io_fcsr_rm, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_fcsr_flags_valid, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output [4:0]  io_fcsr_flags_bits, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output [63:0] io_store_data, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output [63:0] io_toint_data, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input         io_dmem_resp_val, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input  [2:0]  io_dmem_resp_type, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input  [4:0]  io_dmem_resp_tag, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input  [63:0] io_dmem_resp_data, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input         io_valid, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_fcsr_rdy, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_nack_mem, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_illegal_rm, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input         io_killx, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  input         io_killm, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_dec_wen, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_dec_ren1, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_dec_ren2, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_dec_ren3, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_sboard_set, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output        io_sboard_clr, // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
  output [4:0]  io_sboard_clra // @[:chipyard.TestHarness.RocketConfig.fir@239494.4]
);
  wire [31:0] fp_decoder_io_inst; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_wen; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_ren1; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_ren2; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_ren3; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_swap12; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_swap23; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_singleIn; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_singleOut; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_fromint; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_toint; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_fastpipe; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_fma; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_div; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_sqrt; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  wire  fp_decoder_io_sigs_wflags; // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
  reg [64:0] regfile [0:31]; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  reg [95:0] _RAND_0;
  wire [64:0] regfile_ex_rs_0_data; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [4:0] regfile_ex_rs_0_addr; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [64:0] regfile_ex_rs_1_data; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [4:0] regfile_ex_rs_1_addr; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [64:0] regfile_ex_rs_2_data; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [4:0] regfile_ex_rs_2_addr; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [64:0] regfile__T_249_data; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [4:0] regfile__T_249_addr; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire  regfile__T_249_mask; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire  regfile__T_249_en; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [64:0] regfile__T_731_data; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire [4:0] regfile__T_731_addr; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire  regfile__T_731_mask; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire  regfile__T_731_en; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  wire  sfma_clock; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire  sfma_reset; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire  sfma_io_in_valid; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire  sfma_io_in_bits_ren3; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire  sfma_io_in_bits_swap23; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire [2:0] sfma_io_in_bits_rm; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire [1:0] sfma_io_in_bits_fmaCmd; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire [64:0] sfma_io_in_bits_in1; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire [64:0] sfma_io_in_bits_in2; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire [64:0] sfma_io_in_bits_in3; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire [64:0] sfma_io_out_bits_data; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire [4:0] sfma_io_out_bits_exc; // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
  wire  fpiu_clock; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire  fpiu_io_in_valid; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire  fpiu_io_in_bits_ren2; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire  fpiu_io_in_bits_singleIn; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire  fpiu_io_in_bits_singleOut; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire  fpiu_io_in_bits_wflags; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [2:0] fpiu_io_in_bits_rm; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [1:0] fpiu_io_in_bits_typ; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [64:0] fpiu_io_in_bits_in1; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [64:0] fpiu_io_in_bits_in2; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [2:0] fpiu_io_out_bits_in_rm; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [64:0] fpiu_io_out_bits_in_in1; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [64:0] fpiu_io_out_bits_in_in2; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire  fpiu_io_out_bits_lt; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [63:0] fpiu_io_out_bits_store; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [63:0] fpiu_io_out_bits_toint; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire [4:0] fpiu_io_out_bits_exc; // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
  wire  ifpu_clock; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire  ifpu_reset; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire  ifpu_io_in_valid; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire  ifpu_io_in_bits_singleIn; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire  ifpu_io_in_bits_wflags; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire [2:0] ifpu_io_in_bits_rm; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire [1:0] ifpu_io_in_bits_typ; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire [63:0] ifpu_io_in_bits_in1; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire [64:0] ifpu_io_out_bits_data; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire [4:0] ifpu_io_out_bits_exc; // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
  wire  fpmu_clock; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire  fpmu_reset; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire  fpmu_io_in_valid; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire  fpmu_io_in_bits_ren2; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire  fpmu_io_in_bits_singleOut; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire  fpmu_io_in_bits_wflags; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire [2:0] fpmu_io_in_bits_rm; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire [64:0] fpmu_io_in_bits_in1; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire [64:0] fpmu_io_in_bits_in2; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire [64:0] fpmu_io_out_bits_data; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire [4:0] fpmu_io_out_bits_exc; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire  fpmu_io_lt; // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
  wire  dfma_clock; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire  dfma_reset; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire  dfma_io_in_valid; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire  dfma_io_in_bits_ren3; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire  dfma_io_in_bits_swap23; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire [2:0] dfma_io_in_bits_rm; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire [1:0] dfma_io_in_bits_fmaCmd; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire [64:0] dfma_io_in_bits_in1; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire [64:0] dfma_io_in_bits_in2; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire [64:0] dfma_io_in_bits_in3; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire [64:0] dfma_io_out_bits_data; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire [4:0] dfma_io_out_bits_exc; // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
  wire  divSqrt_clock; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire  divSqrt_reset; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire  divSqrt_io_inReady; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire  divSqrt_io_inValid; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire  divSqrt_io_sqrtOp; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire [32:0] divSqrt_io_a; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire [32:0] divSqrt_io_b; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire [2:0] divSqrt_io_roundingMode; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire  divSqrt_io_outValid_div; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire  divSqrt_io_outValid_sqrt; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire [32:0] divSqrt_io_out; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire [4:0] divSqrt_io_exceptionFlags; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
  wire  divSqrt_1_clock; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire  divSqrt_1_reset; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire  divSqrt_1_io_inReady; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire  divSqrt_1_io_inValid; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire  divSqrt_1_io_sqrtOp; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire [64:0] divSqrt_1_io_a; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire [64:0] divSqrt_1_io_b; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire [2:0] divSqrt_1_io_roundingMode; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire  divSqrt_1_io_outValid_div; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire  divSqrt_1_io_outValid_sqrt; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire [64:0] divSqrt_1_io_out; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  wire [4:0] divSqrt_1_io_exceptionFlags; // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
  reg  ex_reg_valid; // @[FPU.scala 695:25:chipyard.TestHarness.RocketConfig.fir@239506.4]
  reg [31:0] _RAND_1;
  reg [31:0] ex_reg_inst; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239508.4]
  reg [31:0] _RAND_2;
  reg  ex_reg_ctrl_ren2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_3;
  reg  ex_reg_ctrl_ren3; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_4;
  reg  ex_reg_ctrl_swap23; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_5;
  reg  ex_reg_ctrl_singleIn; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_6;
  reg  ex_reg_ctrl_singleOut; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_7;
  reg  ex_reg_ctrl_fromint; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_8;
  reg  ex_reg_ctrl_toint; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_9;
  reg  ex_reg_ctrl_fastpipe; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_10;
  reg  ex_reg_ctrl_fma; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_11;
  reg  ex_reg_ctrl_div; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_12;
  reg  ex_reg_ctrl_sqrt; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_13;
  reg  ex_reg_ctrl_wflags; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239512.4]
  reg [31:0] _RAND_14;
  reg [4:0] ex_ra_0; // @[FPU.scala 698:31:chipyard.TestHarness.RocketConfig.fir@239531.4]
  reg [31:0] _RAND_15;
  reg [4:0] ex_ra_1; // @[FPU.scala 698:31:chipyard.TestHarness.RocketConfig.fir@239532.4]
  reg [31:0] _RAND_16;
  reg [4:0] ex_ra_2; // @[FPU.scala 698:31:chipyard.TestHarness.RocketConfig.fir@239533.4]
  reg [31:0] _RAND_17;
  reg  load_wb; // @[FPU.scala 701:20:chipyard.TestHarness.RocketConfig.fir@239534.4]
  reg [31:0] _RAND_18;
  reg  load_wb_double; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239537.4]
  reg [31:0] _RAND_19;
  reg [63:0] load_wb_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239541.4]
  reg [63:0] _RAND_20;
  reg [4:0] load_wb_tag; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239545.4]
  reg [31:0] _RAND_21;
  reg  mem_reg_valid; // @[FPU.scala 712:30:chipyard.TestHarness.RocketConfig.fir@239555.4]
  reg [31:0] _RAND_22;
  wire  killm; // @[FPU.scala 713:25:chipyard.TestHarness.RocketConfig.fir@239556.4]
  wire  _T_3; // @[FPU.scala 717:41:chipyard.TestHarness.RocketConfig.fir@239559.4]
  wire  killx; // @[FPU.scala 717:24:chipyard.TestHarness.RocketConfig.fir@239560.4]
  wire  _T_4; // @[FPU.scala 718:36:chipyard.TestHarness.RocketConfig.fir@239561.4]
  wire  _T_5; // @[FPU.scala 718:33:chipyard.TestHarness.RocketConfig.fir@239562.4]
  reg [31:0] mem_reg_inst; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239565.4]
  reg [31:0] _RAND_23;
  wire  _T_7; // @[FPU.scala 720:49:chipyard.TestHarness.RocketConfig.fir@239569.4]
  wire  _T_9; // @[FPU.scala 720:45:chipyard.TestHarness.RocketConfig.fir@239571.4]
  reg  wb_reg_valid; // @[FPU.scala 720:25:chipyard.TestHarness.RocketConfig.fir@239572.4]
  reg [31:0] _RAND_24;
  reg  mem_ctrl_singleOut; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239580.4]
  reg [31:0] _RAND_25;
  reg  mem_ctrl_fromint; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239580.4]
  reg [31:0] _RAND_26;
  reg  mem_ctrl_toint; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239580.4]
  reg [31:0] _RAND_27;
  reg  mem_ctrl_fastpipe; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239580.4]
  reg [31:0] _RAND_28;
  reg  mem_ctrl_fma; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239580.4]
  reg [31:0] _RAND_29;
  reg  mem_ctrl_div; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239580.4]
  reg [31:0] _RAND_30;
  reg  mem_ctrl_sqrt; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239580.4]
  reg [31:0] _RAND_31;
  reg  mem_ctrl_wflags; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239580.4]
  reg [31:0] _RAND_32;
  reg  wb_ctrl_toint; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@239599.4]
  reg [31:0] _RAND_33;
  wire [63:0] _T_11; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@239621.6]
  wire [63:0] _T_12; // @[FPU.scala 376:23:chipyard.TestHarness.RocketConfig.fir@239622.6]
  wire  _T_16; // @[rawFloatFromFN.scala 50:34:chipyard.TestHarness.RocketConfig.fir@239626.6]
  wire  _T_17; // @[rawFloatFromFN.scala 51:38:chipyard.TestHarness.RocketConfig.fir@239627.6]
  wire [5:0] _T_70; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239680.6]
  wire [5:0] _T_71; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239681.6]
  wire [5:0] _T_72; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239682.6]
  wire [5:0] _T_73; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239683.6]
  wire [5:0] _T_74; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239684.6]
  wire [5:0] _T_75; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239685.6]
  wire [5:0] _T_76; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239686.6]
  wire [5:0] _T_77; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239687.6]
  wire [5:0] _T_78; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239688.6]
  wire [5:0] _T_79; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239689.6]
  wire [5:0] _T_80; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239690.6]
  wire [5:0] _T_81; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239691.6]
  wire [5:0] _T_82; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239692.6]
  wire [5:0] _T_83; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239693.6]
  wire [5:0] _T_84; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239694.6]
  wire [5:0] _T_85; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239695.6]
  wire [5:0] _T_86; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239696.6]
  wire [5:0] _T_87; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239697.6]
  wire [5:0] _T_88; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239698.6]
  wire [5:0] _T_89; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239699.6]
  wire [5:0] _T_90; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239700.6]
  wire [5:0] _T_91; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239701.6]
  wire [5:0] _T_92; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239702.6]
  wire [5:0] _T_93; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239703.6]
  wire [5:0] _T_94; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239704.6]
  wire [5:0] _T_95; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239705.6]
  wire [5:0] _T_96; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239706.6]
  wire [5:0] _T_97; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239707.6]
  wire [5:0] _T_98; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239708.6]
  wire [5:0] _T_99; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239709.6]
  wire [5:0] _T_100; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239710.6]
  wire [5:0] _T_101; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239711.6]
  wire [5:0] _T_102; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239712.6]
  wire [5:0] _T_103; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239713.6]
  wire [5:0] _T_104; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239714.6]
  wire [5:0] _T_105; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239715.6]
  wire [5:0] _T_106; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239716.6]
  wire [5:0] _T_107; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239717.6]
  wire [5:0] _T_108; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239718.6]
  wire [5:0] _T_109; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239719.6]
  wire [5:0] _T_110; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239720.6]
  wire [5:0] _T_111; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239721.6]
  wire [5:0] _T_112; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239722.6]
  wire [5:0] _T_113; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239723.6]
  wire [5:0] _T_114; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239724.6]
  wire [5:0] _T_115; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239725.6]
  wire [5:0] _T_116; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239726.6]
  wire [5:0] _T_117; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239727.6]
  wire [5:0] _T_118; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239728.6]
  wire [5:0] _T_119; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239729.6]
  wire [5:0] _T_120; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239730.6]
  wire [114:0] _GEN_165; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@239731.6]
  wire [114:0] _T_121; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@239731.6]
  wire [51:0] _T_123; // @[rawFloatFromFN.scala 54:64:chipyard.TestHarness.RocketConfig.fir@239733.6]
  wire [11:0] _GEN_166; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@239734.6]
  wire [11:0] _T_124; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@239734.6]
  wire [11:0] _T_125; // @[rawFloatFromFN.scala 56:16:chipyard.TestHarness.RocketConfig.fir@239735.6]
  wire [1:0] _T_126; // @[rawFloatFromFN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@239736.6]
  wire [10:0] _GEN_167; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@239737.6]
  wire [10:0] _T_127; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@239737.6]
  wire [11:0] _GEN_168; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@239738.6]
  wire [11:0] _T_129; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@239739.6]
  wire  _T_130; // @[rawFloatFromFN.scala 62:34:chipyard.TestHarness.RocketConfig.fir@239740.6]
  wire  _T_132; // @[rawFloatFromFN.scala 63:62:chipyard.TestHarness.RocketConfig.fir@239742.6]
  wire  _T_134; // @[rawFloatFromFN.scala 66:36:chipyard.TestHarness.RocketConfig.fir@239745.6]
  wire  _T_135; // @[rawFloatFromFN.scala 66:33:chipyard.TestHarness.RocketConfig.fir@239746.6]
  wire [12:0] _T_138; // @[rawFloatFromFN.scala 70:48:chipyard.TestHarness.RocketConfig.fir@239753.6]
  wire  _T_139; // @[rawFloatFromFN.scala 72:29:chipyard.TestHarness.RocketConfig.fir@239755.6]
  wire [51:0] _T_140; // @[rawFloatFromFN.scala 72:42:chipyard.TestHarness.RocketConfig.fir@239756.6]
  wire [53:0] _T_142; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239758.6]
  wire [2:0] _T_144; // @[recFNFromFN.scala 48:16:chipyard.TestHarness.RocketConfig.fir@239761.6]
  wire [2:0] _GEN_169; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@239763.6]
  wire [2:0] _T_146; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@239763.6]
  wire [64:0] _T_151; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239768.6]
  wire  _T_155; // @[rawFloatFromFN.scala 50:34:chipyard.TestHarness.RocketConfig.fir@239772.6]
  wire  _T_156; // @[rawFloatFromFN.scala 51:38:chipyard.TestHarness.RocketConfig.fir@239773.6]
  wire [4:0] _T_180; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239797.6]
  wire [4:0] _T_181; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239798.6]
  wire [4:0] _T_182; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239799.6]
  wire [4:0] _T_183; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239800.6]
  wire [4:0] _T_184; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239801.6]
  wire [4:0] _T_185; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239802.6]
  wire [4:0] _T_186; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239803.6]
  wire [4:0] _T_187; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239804.6]
  wire [4:0] _T_188; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239805.6]
  wire [4:0] _T_189; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239806.6]
  wire [4:0] _T_190; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239807.6]
  wire [4:0] _T_191; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239808.6]
  wire [4:0] _T_192; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239809.6]
  wire [4:0] _T_193; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239810.6]
  wire [4:0] _T_194; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239811.6]
  wire [4:0] _T_195; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239812.6]
  wire [4:0] _T_196; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239813.6]
  wire [4:0] _T_197; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239814.6]
  wire [4:0] _T_198; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239815.6]
  wire [4:0] _T_199; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239816.6]
  wire [4:0] _T_200; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239817.6]
  wire [4:0] _T_201; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239818.6]
  wire [53:0] _GEN_170; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@239819.6]
  wire [53:0] _T_202; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@239819.6]
  wire [22:0] _T_204; // @[rawFloatFromFN.scala 54:64:chipyard.TestHarness.RocketConfig.fir@239821.6]
  wire [8:0] _GEN_171; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@239822.6]
  wire [8:0] _T_205; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@239822.6]
  wire [8:0] _T_206; // @[rawFloatFromFN.scala 56:16:chipyard.TestHarness.RocketConfig.fir@239823.6]
  wire [1:0] _T_207; // @[rawFloatFromFN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@239824.6]
  wire [7:0] _GEN_172; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@239825.6]
  wire [7:0] _T_208; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@239825.6]
  wire [8:0] _GEN_173; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@239826.6]
  wire [8:0] _T_210; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@239827.6]
  wire  _T_211; // @[rawFloatFromFN.scala 62:34:chipyard.TestHarness.RocketConfig.fir@239828.6]
  wire  _T_213; // @[rawFloatFromFN.scala 63:62:chipyard.TestHarness.RocketConfig.fir@239830.6]
  wire  _T_215; // @[rawFloatFromFN.scala 66:36:chipyard.TestHarness.RocketConfig.fir@239833.6]
  wire  _T_216; // @[rawFloatFromFN.scala 66:33:chipyard.TestHarness.RocketConfig.fir@239834.6]
  wire [9:0] _T_219; // @[rawFloatFromFN.scala 70:48:chipyard.TestHarness.RocketConfig.fir@239841.6]
  wire  _T_220; // @[rawFloatFromFN.scala 72:29:chipyard.TestHarness.RocketConfig.fir@239843.6]
  wire [22:0] _T_221; // @[rawFloatFromFN.scala 72:42:chipyard.TestHarness.RocketConfig.fir@239844.6]
  wire [24:0] _T_223; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239846.6]
  wire [2:0] _T_225; // @[recFNFromFN.scala 48:16:chipyard.TestHarness.RocketConfig.fir@239849.6]
  wire [2:0] _GEN_174; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@239851.6]
  wire [2:0] _T_227; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@239851.6]
  wire [32:0] _T_232; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239856.6]
  wire  _T_235; // @[FPU.scala 283:42:chipyard.TestHarness.RocketConfig.fir@239859.6]
  wire [64:0] _T_246; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239870.6]
  wire  _T_248; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@239872.6]
  wire [64:0] wdata; // @[FPU.scala 289:8:chipyard.TestHarness.RocketConfig.fir@239873.6]
  wire  _T_260; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@239886.6]
  wire  _T_261; // @[FPU.scala 330:19:chipyard.TestHarness.RocketConfig.fir@239887.6]
  wire  _T_264; // @[FPU.scala 330:96:chipyard.TestHarness.RocketConfig.fir@239890.6]
  wire  _T_265; // @[FPU.scala 330:55:chipyard.TestHarness.RocketConfig.fir@239891.6]
  wire  _T_266; // @[FPU.scala 330:31:chipyard.TestHarness.RocketConfig.fir@239892.6]
  wire  _T_269; // @[FPU.scala 736:11:chipyard.TestHarness.RocketConfig.fir@239895.6]
  wire  _T_270; // @[FPU.scala 736:11:chipyard.TestHarness.RocketConfig.fir@239896.6]
  wire  _T_277; // @[FPU.scala 744:13:chipyard.TestHarness.RocketConfig.fir@239913.8]
  wire  _T_283; // @[FPU.scala 750:32:chipyard.TestHarness.RocketConfig.fir@239933.8]
  wire  _T_284; // @[FPU.scala 750:29:chipyard.TestHarness.RocketConfig.fir@239934.8]
  wire  _T_288; // @[FPU.scala 754:38:chipyard.TestHarness.RocketConfig.fir@239946.4]
  wire  _T_290; // @[FPU.scala 777:33:chipyard.TestHarness.RocketConfig.fir@239953.4]
  wire  tag; // @[FPU.scala 758:15:chipyard.TestHarness.RocketConfig.fir@239958.4]
  wire [32:0] _T_296; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239965.4]
  wire  _T_298; // @[FPU.scala 277:84:chipyard.TestHarness.RocketConfig.fir@239967.4]
  wire [32:0] _T_319; // @[FPU.scala 317:31:chipyard.TestHarness.RocketConfig.fir@239988.4]
  wire [32:0] _T_320; // @[FPU.scala 317:26:chipyard.TestHarness.RocketConfig.fir@239989.4]
  wire [32:0] _T_325; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239995.4]
  wire  _T_327; // @[FPU.scala 277:84:chipyard.TestHarness.RocketConfig.fir@239997.4]
  wire [32:0] _T_348; // @[FPU.scala 317:31:chipyard.TestHarness.RocketConfig.fir@240018.4]
  wire [32:0] _T_349; // @[FPU.scala 317:26:chipyard.TestHarness.RocketConfig.fir@240019.4]
  wire [32:0] _T_354; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240025.4]
  wire  _T_356; // @[FPU.scala 277:84:chipyard.TestHarness.RocketConfig.fir@240027.4]
  wire [32:0] _T_377; // @[FPU.scala 317:31:chipyard.TestHarness.RocketConfig.fir@240048.4]
  wire [32:0] _T_378; // @[FPU.scala 317:26:chipyard.TestHarness.RocketConfig.fir@240049.4]
  wire  _T_381; // @[FPU.scala 765:39:chipyard.TestHarness.RocketConfig.fir@240054.4]
  wire  _T_383; // @[FPU.scala 765:53:chipyard.TestHarness.RocketConfig.fir@240056.4]
  wire [1:0] _GEN_175; // @[FPU.scala 765:36:chipyard.TestHarness.RocketConfig.fir@240057.4]
  wire  _T_385; // @[FPU.scala 781:51:chipyard.TestHarness.RocketConfig.fir@240071.4]
  wire  _T_386; // @[FPU.scala 781:66:chipyard.TestHarness.RocketConfig.fir@240072.4]
  wire  _T_387; // @[FPU.scala 781:103:chipyard.TestHarness.RocketConfig.fir@240073.4]
  wire  _T_388; // @[FPU.scala 781:82:chipyard.TestHarness.RocketConfig.fir@240074.4]
  wire [75:0] _T_398; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@240090.4]
  wire [11:0] _GEN_176; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240093.4]
  wire [11:0] _T_402; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240094.4]
  wire [11:0] _T_404; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@240096.4]
  wire  _T_405; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@240097.4]
  wire  _T_406; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@240098.4]
  wire  _T_407; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@240099.4]
  wire [11:0] _T_409; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240101.4]
  wire [11:0] _T_411; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@240103.4]
  wire [64:0] _T_413; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240105.4]
  wire  _T_418; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240110.4]
  wire [64:0] _T_420; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240112.4]
  wire [75:0] _T_430; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@240123.4]
  wire [11:0] _GEN_177; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240126.4]
  wire [11:0] _T_434; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240127.4]
  wire [11:0] _T_436; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@240129.4]
  wire  _T_437; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@240130.4]
  wire  _T_438; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@240131.4]
  wire  _T_439; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@240132.4]
  wire [11:0] _T_441; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240134.4]
  wire [11:0] _T_443; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@240136.4]
  wire [64:0] _T_445; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240138.4]
  wire  _T_450; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240143.4]
  wire [64:0] _T_452; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240145.4]
  wire [64:0] _T_495; // @[FPU.scala 793:29:chipyard.TestHarness.RocketConfig.fir@240212.4]
  reg [4:0] divSqrt_waddr; // @[FPU.scala 802:26:chipyard.TestHarness.RocketConfig.fir@240228.4]
  reg [31:0] _RAND_34;
  wire  _T_498; // @[FPU.scala 815:59:chipyard.TestHarness.RocketConfig.fir@240240.4]
  wire  _T_595; // @[FPU.scala 812:56:chipyard.TestHarness.RocketConfig.fir@240356.4]
  wire [1:0] _T_596; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240357.4]
  wire  _T_597; // @[FPU.scala 817:65:chipyard.TestHarness.RocketConfig.fir@240358.4]
  wire  _T_598; // @[FPU.scala 817:62:chipyard.TestHarness.RocketConfig.fir@240359.4]
  wire [2:0] _T_599; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240360.4]
  wire  _T_600; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240361.4]
  wire [1:0] _GEN_184; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240362.4]
  wire [1:0] _T_601; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240362.4]
  wire [2:0] _GEN_185; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240363.4]
  wire [2:0] memLatencyMask; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240363.4]
  reg [2:0] wen; // @[FPU.scala 835:16:chipyard.TestHarness.RocketConfig.fir@240364.4]
  reg [31:0] _RAND_35;
  reg [4:0] wbInfo_0_rd; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_36;
  reg  wbInfo_0_single; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_37;
  reg [1:0] wbInfo_0_pipeid; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_38;
  reg [4:0] wbInfo_1_rd; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_39;
  reg  wbInfo_1_single; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_40;
  reg [1:0] wbInfo_1_pipeid; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_41;
  reg [4:0] wbInfo_2_rd; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_42;
  reg  wbInfo_2_single; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_43;
  reg [1:0] wbInfo_2_pipeid; // @[FPU.scala 836:19:chipyard.TestHarness.RocketConfig.fir@240365.4]
  reg [31:0] _RAND_44;
  wire  _T_602; // @[FPU.scala 837:48:chipyard.TestHarness.RocketConfig.fir@240366.4]
  wire  _T_603; // @[FPU.scala 837:69:chipyard.TestHarness.RocketConfig.fir@240367.4]
  wire  mem_wen; // @[FPU.scala 837:31:chipyard.TestHarness.RocketConfig.fir@240368.4]
  wire [1:0] _T_604; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240369.4]
  wire [1:0] _T_605; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240370.4]
  wire  _T_606; // @[FPU.scala 812:56:chipyard.TestHarness.RocketConfig.fir@240371.4]
  wire [2:0] _T_607; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240372.4]
  wire  _T_609; // @[FPU.scala 817:62:chipyard.TestHarness.RocketConfig.fir@240374.4]
  wire [3:0] _T_610; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240375.4]
  wire [1:0] _T_611; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240376.4]
  wire [2:0] _GEN_186; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240377.4]
  wire [2:0] _T_612; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240377.4]
  wire [3:0] _GEN_187; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240378.4]
  wire [3:0] _T_613; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240378.4]
  wire [3:0] _GEN_188; // @[FPU.scala 838:62:chipyard.TestHarness.RocketConfig.fir@240379.4]
  wire [3:0] _T_614; // @[FPU.scala 838:62:chipyard.TestHarness.RocketConfig.fir@240379.4]
  wire  _T_615; // @[FPU.scala 838:89:chipyard.TestHarness.RocketConfig.fir@240380.4]
  wire  _T_616; // @[FPU.scala 838:43:chipyard.TestHarness.RocketConfig.fir@240381.4]
  wire [2:0] _T_617; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240382.4]
  wire [2:0] _T_618; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240383.4]
  wire [3:0] _T_620; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240385.4]
  wire [4:0] _T_623; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240388.4]
  wire [2:0] _T_624; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240389.4]
  wire [3:0] _GEN_189; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240390.4]
  wire [3:0] _T_625; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240390.4]
  wire [4:0] _GEN_190; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240391.4]
  wire [4:0] _T_626; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240391.4]
  wire [4:0] _GEN_191; // @[FPU.scala 838:101:chipyard.TestHarness.RocketConfig.fir@240392.4]
  wire [4:0] _T_627; // @[FPU.scala 838:101:chipyard.TestHarness.RocketConfig.fir@240392.4]
  wire  _T_628; // @[FPU.scala 838:128:chipyard.TestHarness.RocketConfig.fir@240393.4]
  wire  _T_629; // @[FPU.scala 838:93:chipyard.TestHarness.RocketConfig.fir@240394.4]
  reg  write_port_busy; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@240395.4]
  reg [31:0] _RAND_45;
  wire [2:0] _GEN_192; // @[FPU.scala 847:23:chipyard.TestHarness.RocketConfig.fir@240414.8]
  wire [2:0] _T_636; // @[FPU.scala 847:23:chipyard.TestHarness.RocketConfig.fir@240414.8]
  wire  _T_637; // @[FPU.scala 850:13:chipyard.TestHarness.RocketConfig.fir@240417.6]
  wire  _T_639; // @[FPU.scala 850:30:chipyard.TestHarness.RocketConfig.fir@240419.6]
  wire [1:0] _T_646; // @[FPU.scala 823:63:chipyard.TestHarness.RocketConfig.fir@240429.8]
  wire [1:0] _GEN_193; // @[FPU.scala 823:108:chipyard.TestHarness.RocketConfig.fir@240431.8]
  wire [1:0] _T_648; // @[FPU.scala 823:108:chipyard.TestHarness.RocketConfig.fir@240431.8]
  wire [1:0] _T_649; // @[FPU.scala 823:108:chipyard.TestHarness.RocketConfig.fir@240432.8]
  wire  _T_653; // @[FPU.scala 850:30:chipyard.TestHarness.RocketConfig.fir@240439.6]
  wire  _T_667; // @[FPU.scala 850:30:chipyard.TestHarness.RocketConfig.fir@240459.6]
  wire  divSqrt_typeTag; // @[FPU.scala 919:37:chipyard.TestHarness.RocketConfig.fir@240720.4]
  reg  divSqrt_killed; // @[FPU.scala 897:29:chipyard.TestHarness.RocketConfig.fir@240614.4]
  reg [31:0] _RAND_46;
  wire  _T_847; // @[FPU.scala 920:24:chipyard.TestHarness.RocketConfig.fir@240722.6]
  wire  _T_835; // @[FPU.scala 919:37:chipyard.TestHarness.RocketConfig.fir@240685.4]
  wire  _GEN_154; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240686.4]
  wire  divSqrt_wen; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240721.4]
  wire  _T_679; // @[FPU.scala 860:51:chipyard.TestHarness.RocketConfig.fir@240479.4]
  wire  wdouble; // @[FPU.scala 860:20:chipyard.TestHarness.RocketConfig.fir@240480.4]
  wire  _T_680; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240481.4]
  wire [64:0] _T_681; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240482.4]
  wire  _T_682; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240483.4]
  wire [64:0] _T_683; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240484.4]
  wire  _T_684; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240485.4]
  wire [64:0] _T_685; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240486.4]
  wire  _T_851; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@240727.6]
  wire [64:0] _T_849; // @[FPU.scala 358:25:chipyard.TestHarness.RocketConfig.fir@240725.6]
  wire [64:0] _T_852; // @[FPU.scala 359:10:chipyard.TestHarness.RocketConfig.fir@240728.6]
  wire [32:0] _GEN_155; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240686.4]
  wire [64:0] divSqrt_wdata; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240721.4]
  wire [64:0] _T_686; // @[FPU.scala 861:22:chipyard.TestHarness.RocketConfig.fir@240487.4]
  wire  _T_687; // @[FPU.scala 283:42:chipyard.TestHarness.RocketConfig.fir@240488.4]
  wire [64:0] _T_696; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240497.4]
  wire  _T_697; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@240498.4]
  wire [64:0] _T_698; // @[FPU.scala 289:8:chipyard.TestHarness.RocketConfig.fir@240499.4]
  wire [64:0] wdata_1; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240502.4]
  wire [4:0] _T_702; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240504.4]
  wire [4:0] _T_704; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240506.4]
  wire [4:0] wexc; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240508.4]
  wire  _T_709; // @[FPU.scala 863:35:chipyard.TestHarness.RocketConfig.fir@240512.4]
  wire  _T_720; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@240524.6]
  wire  _T_721; // @[FPU.scala 330:19:chipyard.TestHarness.RocketConfig.fir@240525.6]
  wire  _T_724; // @[FPU.scala 330:96:chipyard.TestHarness.RocketConfig.fir@240528.6]
  wire  _T_725; // @[FPU.scala 330:55:chipyard.TestHarness.RocketConfig.fir@240529.6]
  wire  _T_726; // @[FPU.scala 330:31:chipyard.TestHarness.RocketConfig.fir@240530.6]
  wire  _T_729; // @[FPU.scala 864:11:chipyard.TestHarness.RocketConfig.fir@240533.6]
  wire  _T_730; // @[FPU.scala 864:11:chipyard.TestHarness.RocketConfig.fir@240534.6]
  wire  wb_toint_valid; // @[FPU.scala 876:37:chipyard.TestHarness.RocketConfig.fir@240550.4]
  reg [4:0] wb_toint_exc; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@240551.4]
  reg [31:0] _RAND_47;
  wire  _T_735; // @[FPU.scala 878:41:chipyard.TestHarness.RocketConfig.fir@240555.4]
  wire [4:0] _T_738; // @[FPU.scala 880:8:chipyard.TestHarness.RocketConfig.fir@240559.4]
  wire [4:0] _GEN_156; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240686.4]
  wire [4:0] divSqrt_flags; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240721.4]
  wire [4:0] _T_739; // @[FPU.scala 881:8:chipyard.TestHarness.RocketConfig.fir@240560.4]
  wire [4:0] _T_740; // @[FPU.scala 880:48:chipyard.TestHarness.RocketConfig.fir@240561.4]
  wire [4:0] _T_742; // @[FPU.scala 882:8:chipyard.TestHarness.RocketConfig.fir@240563.4]
  wire  _T_744; // @[FPU.scala 884:47:chipyard.TestHarness.RocketConfig.fir@240566.4]
  wire  _T_745; // @[FPU.scala 884:72:chipyard.TestHarness.RocketConfig.fir@240567.4]
  wire  divSqrt_write_port_busy; // @[FPU.scala 884:65:chipyard.TestHarness.RocketConfig.fir@240568.4]
  wire  _T_746; // @[FPU.scala 885:33:chipyard.TestHarness.RocketConfig.fir@240569.4]
  wire  _T_747; // @[FPU.scala 885:68:chipyard.TestHarness.RocketConfig.fir@240570.4]
  wire  _T_748; // @[FPU.scala 885:51:chipyard.TestHarness.RocketConfig.fir@240571.4]
  wire  _T_750; // @[FPU.scala 885:87:chipyard.TestHarness.RocketConfig.fir@240573.4]
  wire  _T_752; // @[FPU.scala 885:120:chipyard.TestHarness.RocketConfig.fir@240575.4]
  wire  _T_843; // @[FPU.scala 912:13:chipyard.TestHarness.RocketConfig.fir@240710.4]
  wire  _T_832; // @[FPU.scala 912:13:chipyard.TestHarness.RocketConfig.fir@240675.4]
  wire  divSqrt_inFlight; // @[FPU.scala 912:34:chipyard.TestHarness.RocketConfig.fir@240711.4]
  wire  _T_753; // @[FPU.scala 885:131:chipyard.TestHarness.RocketConfig.fir@240576.4]
  wire  _T_755; // @[FPU.scala 886:34:chipyard.TestHarness.RocketConfig.fir@240579.4]
  wire  _T_762; // @[FPU.scala 889:96:chipyard.TestHarness.RocketConfig.fir@240588.4]
  reg  _T_764; // @[FPU.scala 889:55:chipyard.TestHarness.RocketConfig.fir@240590.4]
  reg [31:0] _RAND_48;
  wire  _T_770; // @[FPU.scala 890:60:chipyard.TestHarness.RocketConfig.fir@240598.4]
  wire  _T_775; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@240605.4]
  wire  _T_776; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@240606.4]
  wire  _T_777; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@240607.4]
  wire  _T_779; // @[FPU.scala 894:67:chipyard.TestHarness.RocketConfig.fir@240609.4]
  wire  _T_780; // @[FPU.scala 894:87:chipyard.TestHarness.RocketConfig.fir@240610.4]
  wire  _T_781; // @[FPU.scala 894:73:chipyard.TestHarness.RocketConfig.fir@240611.4]
  wire  _T_788; // @[FPU.scala 905:50:chipyard.TestHarness.RocketConfig.fir@240625.4]
  wire  _T_789; // @[FPU.scala 905:43:chipyard.TestHarness.RocketConfig.fir@240626.4]
  wire  _T_791; // @[FPU.scala 905:65:chipyard.TestHarness.RocketConfig.fir@240628.4]
  wire  _T_792; // @[FPU.scala 905:103:chipyard.TestHarness.RocketConfig.fir@240629.4]
  wire [75:0] _T_797; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@240636.4]
  wire [11:0] _T_801; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240640.4]
  wire [11:0] _T_803; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@240642.4]
  wire  _T_804; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@240643.4]
  wire  _T_805; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@240644.4]
  wire  _T_806; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@240645.4]
  wire [8:0] _T_808; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240647.4]
  wire [8:0] _T_810; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@240649.4]
  wire [9:0] _T_811; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240650.4]
  wire [75:0] _T_816; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@240656.4]
  wire [11:0] _T_820; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240660.4]
  wire [11:0] _T_822; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@240662.4]
  wire  _T_823; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@240663.4]
  wire  _T_824; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@240664.4]
  wire  _T_825; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@240665.4]
  wire [8:0] _T_827; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240667.4]
  wire [8:0] _T_829; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@240669.4]
  wire [9:0] _T_830; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240670.4]
  wire  _T_833; // @[FPU.scala 914:32:chipyard.TestHarness.RocketConfig.fir@240679.4]
  wire  _T_838; // @[FPU.scala 905:43:chipyard.TestHarness.RocketConfig.fir@240699.4]
  wire  _T_840; // @[FPU.scala 905:65:chipyard.TestHarness.RocketConfig.fir@240701.4]
  wire  _T_844; // @[FPU.scala 914:32:chipyard.TestHarness.RocketConfig.fir@240714.4]
  FPUDecoder fp_decoder ( // @[FPU.scala 691:26:chipyard.TestHarness.RocketConfig.fir@239501.4]
    .io_inst(fp_decoder_io_inst),
    .io_sigs_wen(fp_decoder_io_sigs_wen),
    .io_sigs_ren1(fp_decoder_io_sigs_ren1),
    .io_sigs_ren2(fp_decoder_io_sigs_ren2),
    .io_sigs_ren3(fp_decoder_io_sigs_ren3),
    .io_sigs_swap12(fp_decoder_io_sigs_swap12),
    .io_sigs_swap23(fp_decoder_io_sigs_swap23),
    .io_sigs_singleIn(fp_decoder_io_sigs_singleIn),
    .io_sigs_singleOut(fp_decoder_io_sigs_singleOut),
    .io_sigs_fromint(fp_decoder_io_sigs_fromint),
    .io_sigs_toint(fp_decoder_io_sigs_toint),
    .io_sigs_fastpipe(fp_decoder_io_sigs_fastpipe),
    .io_sigs_fma(fp_decoder_io_sigs_fma),
    .io_sigs_div(fp_decoder_io_sigs_div),
    .io_sigs_sqrt(fp_decoder_io_sigs_sqrt),
    .io_sigs_wflags(fp_decoder_io_sigs_wflags)
  );
  FPUFMAPipe sfma ( // @[FPU.scala 776:20:chipyard.TestHarness.RocketConfig.fir@239949.4]
    .clock(sfma_clock),
    .reset(sfma_reset),
    .io_in_valid(sfma_io_in_valid),
    .io_in_bits_ren3(sfma_io_in_bits_ren3),
    .io_in_bits_swap23(sfma_io_in_bits_swap23),
    .io_in_bits_rm(sfma_io_in_bits_rm),
    .io_in_bits_fmaCmd(sfma_io_in_bits_fmaCmd),
    .io_in_bits_in1(sfma_io_in_bits_in1),
    .io_in_bits_in2(sfma_io_in_bits_in2),
    .io_in_bits_in3(sfma_io_in_bits_in3),
    .io_out_bits_data(sfma_io_out_bits_data),
    .io_out_bits_exc(sfma_io_out_bits_exc)
  );
  FPToInt fpiu ( // @[FPU.scala 780:20:chipyard.TestHarness.RocketConfig.fir@240067.4]
    .clock(fpiu_clock),
    .io_in_valid(fpiu_io_in_valid),
    .io_in_bits_ren2(fpiu_io_in_bits_ren2),
    .io_in_bits_singleIn(fpiu_io_in_bits_singleIn),
    .io_in_bits_singleOut(fpiu_io_in_bits_singleOut),
    .io_in_bits_wflags(fpiu_io_in_bits_wflags),
    .io_in_bits_rm(fpiu_io_in_bits_rm),
    .io_in_bits_typ(fpiu_io_in_bits_typ),
    .io_in_bits_in1(fpiu_io_in_bits_in1),
    .io_in_bits_in2(fpiu_io_in_bits_in2),
    .io_out_bits_in_rm(fpiu_io_out_bits_in_rm),
    .io_out_bits_in_in1(fpiu_io_out_bits_in_in1),
    .io_out_bits_in_in2(fpiu_io_out_bits_in_in2),
    .io_out_bits_lt(fpiu_io_out_bits_lt),
    .io_out_bits_store(fpiu_io_out_bits_store),
    .io_out_bits_toint(fpiu_io_out_bits_toint),
    .io_out_bits_exc(fpiu_io_out_bits_exc)
  );
  IntToFP ifpu ( // @[FPU.scala 790:20:chipyard.TestHarness.RocketConfig.fir@240205.4]
    .clock(ifpu_clock),
    .reset(ifpu_reset),
    .io_in_valid(ifpu_io_in_valid),
    .io_in_bits_singleIn(ifpu_io_in_bits_singleIn),
    .io_in_bits_wflags(ifpu_io_in_bits_wflags),
    .io_in_bits_rm(ifpu_io_in_bits_rm),
    .io_in_bits_typ(ifpu_io_in_bits_typ),
    .io_in_bits_in1(ifpu_io_in_bits_in1),
    .io_out_bits_data(ifpu_io_out_bits_data),
    .io_out_bits_exc(ifpu_io_out_bits_exc)
  );
  FPToFP fpmu ( // @[FPU.scala 795:20:chipyard.TestHarness.RocketConfig.fir@240214.4]
    .clock(fpmu_clock),
    .reset(fpmu_reset),
    .io_in_valid(fpmu_io_in_valid),
    .io_in_bits_ren2(fpmu_io_in_bits_ren2),
    .io_in_bits_singleOut(fpmu_io_in_bits_singleOut),
    .io_in_bits_wflags(fpmu_io_in_bits_wflags),
    .io_in_bits_rm(fpmu_io_in_bits_rm),
    .io_in_bits_in1(fpmu_io_in_bits_in1),
    .io_in_bits_in2(fpmu_io_in_bits_in2),
    .io_out_bits_data(fpmu_io_out_bits_data),
    .io_out_bits_exc(fpmu_io_out_bits_exc),
    .io_lt(fpmu_io_lt)
  );
  FPUFMAPipe_1 dfma ( // @[FPU.scala 814:28:chipyard.TestHarness.RocketConfig.fir@240235.4]
    .clock(dfma_clock),
    .reset(dfma_reset),
    .io_in_valid(dfma_io_in_valid),
    .io_in_bits_ren3(dfma_io_in_bits_ren3),
    .io_in_bits_swap23(dfma_io_in_bits_swap23),
    .io_in_bits_rm(dfma_io_in_bits_rm),
    .io_in_bits_fmaCmd(dfma_io_in_bits_fmaCmd),
    .io_in_bits_in1(dfma_io_in_bits_in1),
    .io_in_bits_in2(dfma_io_in_bits_in2),
    .io_in_bits_in3(dfma_io_in_bits_in3),
    .io_out_bits_data(dfma_io_out_bits_data),
    .io_out_bits_exc(dfma_io_out_bits_exc)
  );
  DivSqrtRecFN_small divSqrt ( // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240621.4]
    .clock(divSqrt_clock),
    .reset(divSqrt_reset),
    .io_inReady(divSqrt_io_inReady),
    .io_inValid(divSqrt_io_inValid),
    .io_sqrtOp(divSqrt_io_sqrtOp),
    .io_a(divSqrt_io_a),
    .io_b(divSqrt_io_b),
    .io_roundingMode(divSqrt_io_roundingMode),
    .io_outValid_div(divSqrt_io_outValid_div),
    .io_outValid_sqrt(divSqrt_io_outValid_sqrt),
    .io_out(divSqrt_io_out),
    .io_exceptionFlags(divSqrt_io_exceptionFlags)
  );
  DivSqrtRecFN_small_1 divSqrt_1 ( // @[FPU.scala 904:27:chipyard.TestHarness.RocketConfig.fir@240694.4]
    .clock(divSqrt_1_clock),
    .reset(divSqrt_1_reset),
    .io_inReady(divSqrt_1_io_inReady),
    .io_inValid(divSqrt_1_io_inValid),
    .io_sqrtOp(divSqrt_1_io_sqrtOp),
    .io_a(divSqrt_1_io_a),
    .io_b(divSqrt_1_io_b),
    .io_roundingMode(divSqrt_1_io_roundingMode),
    .io_outValid_div(divSqrt_1_io_outValid_div),
    .io_outValid_sqrt(divSqrt_1_io_outValid_sqrt),
    .io_out(divSqrt_1_io_out),
    .io_exceptionFlags(divSqrt_1_io_exceptionFlags)
  );
  assign regfile_ex_rs_0_addr = ex_ra_0;
  assign regfile_ex_rs_0_data = regfile[regfile_ex_rs_0_addr]; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  assign regfile_ex_rs_1_addr = ex_ra_1;
  assign regfile_ex_rs_1_data = regfile[regfile_ex_rs_1_addr]; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  assign regfile_ex_rs_2_addr = ex_ra_2;
  assign regfile_ex_rs_2_data = regfile[regfile_ex_rs_2_addr]; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
  assign regfile__T_249_data = _T_248 ? _T_246 : _T_151;
  assign regfile__T_249_addr = load_wb_tag;
  assign regfile__T_249_mask = 1'h1;
  assign regfile__T_249_en = load_wb;
  assign regfile__T_731_data = wdouble ? _T_686 : _T_698;
  assign regfile__T_731_addr = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd;
  assign regfile__T_731_mask = 1'h1;
  assign regfile__T_731_en = wen[0] | divSqrt_wen;
  assign killm = io_killm | io_nack_mem; // @[FPU.scala 713:25:chipyard.TestHarness.RocketConfig.fir@239556.4]
  assign _T_3 = mem_reg_valid & killm; // @[FPU.scala 717:41:chipyard.TestHarness.RocketConfig.fir@239559.4]
  assign killx = io_killx | _T_3; // @[FPU.scala 717:24:chipyard.TestHarness.RocketConfig.fir@239560.4]
  assign _T_4 = ~killx; // @[FPU.scala 718:36:chipyard.TestHarness.RocketConfig.fir@239561.4]
  assign _T_5 = ex_reg_valid & _T_4; // @[FPU.scala 718:33:chipyard.TestHarness.RocketConfig.fir@239562.4]
  assign _T_7 = ~killm; // @[FPU.scala 720:49:chipyard.TestHarness.RocketConfig.fir@239569.4]
  assign _T_9 = mem_reg_valid & _T_7; // @[FPU.scala 720:45:chipyard.TestHarness.RocketConfig.fir@239571.4]
  assign _T_11 = load_wb_double ? 64'h0 : 64'hffffffff00000000; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@239621.6]
  assign _T_12 = _T_11 | load_wb_data; // @[FPU.scala 376:23:chipyard.TestHarness.RocketConfig.fir@239622.6]
  assign _T_16 = _T_12[62:52] == 11'h0; // @[rawFloatFromFN.scala 50:34:chipyard.TestHarness.RocketConfig.fir@239626.6]
  assign _T_17 = _T_12[51:0] == 52'h0; // @[rawFloatFromFN.scala 51:38:chipyard.TestHarness.RocketConfig.fir@239627.6]
  assign _T_70 = _T_12[1] ? 6'h32 : 6'h33; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239680.6]
  assign _T_71 = _T_12[2] ? 6'h31 : _T_70; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239681.6]
  assign _T_72 = _T_12[3] ? 6'h30 : _T_71; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239682.6]
  assign _T_73 = _T_12[4] ? 6'h2f : _T_72; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239683.6]
  assign _T_74 = _T_12[5] ? 6'h2e : _T_73; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239684.6]
  assign _T_75 = _T_12[6] ? 6'h2d : _T_74; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239685.6]
  assign _T_76 = _T_12[7] ? 6'h2c : _T_75; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239686.6]
  assign _T_77 = _T_12[8] ? 6'h2b : _T_76; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239687.6]
  assign _T_78 = _T_12[9] ? 6'h2a : _T_77; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239688.6]
  assign _T_79 = _T_12[10] ? 6'h29 : _T_78; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239689.6]
  assign _T_80 = _T_12[11] ? 6'h28 : _T_79; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239690.6]
  assign _T_81 = _T_12[12] ? 6'h27 : _T_80; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239691.6]
  assign _T_82 = _T_12[13] ? 6'h26 : _T_81; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239692.6]
  assign _T_83 = _T_12[14] ? 6'h25 : _T_82; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239693.6]
  assign _T_84 = _T_12[15] ? 6'h24 : _T_83; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239694.6]
  assign _T_85 = _T_12[16] ? 6'h23 : _T_84; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239695.6]
  assign _T_86 = _T_12[17] ? 6'h22 : _T_85; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239696.6]
  assign _T_87 = _T_12[18] ? 6'h21 : _T_86; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239697.6]
  assign _T_88 = _T_12[19] ? 6'h20 : _T_87; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239698.6]
  assign _T_89 = _T_12[20] ? 6'h1f : _T_88; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239699.6]
  assign _T_90 = _T_12[21] ? 6'h1e : _T_89; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239700.6]
  assign _T_91 = _T_12[22] ? 6'h1d : _T_90; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239701.6]
  assign _T_92 = _T_12[23] ? 6'h1c : _T_91; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239702.6]
  assign _T_93 = _T_12[24] ? 6'h1b : _T_92; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239703.6]
  assign _T_94 = _T_12[25] ? 6'h1a : _T_93; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239704.6]
  assign _T_95 = _T_12[26] ? 6'h19 : _T_94; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239705.6]
  assign _T_96 = _T_12[27] ? 6'h18 : _T_95; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239706.6]
  assign _T_97 = _T_12[28] ? 6'h17 : _T_96; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239707.6]
  assign _T_98 = _T_12[29] ? 6'h16 : _T_97; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239708.6]
  assign _T_99 = _T_12[30] ? 6'h15 : _T_98; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239709.6]
  assign _T_100 = _T_12[31] ? 6'h14 : _T_99; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239710.6]
  assign _T_101 = _T_12[32] ? 6'h13 : _T_100; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239711.6]
  assign _T_102 = _T_12[33] ? 6'h12 : _T_101; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239712.6]
  assign _T_103 = _T_12[34] ? 6'h11 : _T_102; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239713.6]
  assign _T_104 = _T_12[35] ? 6'h10 : _T_103; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239714.6]
  assign _T_105 = _T_12[36] ? 6'hf : _T_104; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239715.6]
  assign _T_106 = _T_12[37] ? 6'he : _T_105; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239716.6]
  assign _T_107 = _T_12[38] ? 6'hd : _T_106; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239717.6]
  assign _T_108 = _T_12[39] ? 6'hc : _T_107; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239718.6]
  assign _T_109 = _T_12[40] ? 6'hb : _T_108; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239719.6]
  assign _T_110 = _T_12[41] ? 6'ha : _T_109; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239720.6]
  assign _T_111 = _T_12[42] ? 6'h9 : _T_110; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239721.6]
  assign _T_112 = _T_12[43] ? 6'h8 : _T_111; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239722.6]
  assign _T_113 = _T_12[44] ? 6'h7 : _T_112; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239723.6]
  assign _T_114 = _T_12[45] ? 6'h6 : _T_113; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239724.6]
  assign _T_115 = _T_12[46] ? 6'h5 : _T_114; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239725.6]
  assign _T_116 = _T_12[47] ? 6'h4 : _T_115; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239726.6]
  assign _T_117 = _T_12[48] ? 6'h3 : _T_116; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239727.6]
  assign _T_118 = _T_12[49] ? 6'h2 : _T_117; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239728.6]
  assign _T_119 = _T_12[50] ? 6'h1 : _T_118; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239729.6]
  assign _T_120 = _T_12[51] ? 6'h0 : _T_119; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239730.6]
  assign _GEN_165 = {{63'd0}, _T_12[51:0]}; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@239731.6]
  assign _T_121 = _GEN_165 << _T_120; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@239731.6]
  assign _T_123 = {_T_121[50:0], 1'h0}; // @[rawFloatFromFN.scala 54:64:chipyard.TestHarness.RocketConfig.fir@239733.6]
  assign _GEN_166 = {{6'd0}, _T_120}; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@239734.6]
  assign _T_124 = _GEN_166 ^ 12'hfff; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@239734.6]
  assign _T_125 = _T_16 ? _T_124 : {{1'd0}, _T_12[62:52]}; // @[rawFloatFromFN.scala 56:16:chipyard.TestHarness.RocketConfig.fir@239735.6]
  assign _T_126 = _T_16 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@239736.6]
  assign _GEN_167 = {{9'd0}, _T_126}; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@239737.6]
  assign _T_127 = 11'h400 | _GEN_167; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@239737.6]
  assign _GEN_168 = {{1'd0}, _T_127}; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@239738.6]
  assign _T_129 = _T_125 + _GEN_168; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@239739.6]
  assign _T_130 = _T_16 & _T_17; // @[rawFloatFromFN.scala 62:34:chipyard.TestHarness.RocketConfig.fir@239740.6]
  assign _T_132 = _T_129[11:10] == 2'h3; // @[rawFloatFromFN.scala 63:62:chipyard.TestHarness.RocketConfig.fir@239742.6]
  assign _T_134 = ~_T_17; // @[rawFloatFromFN.scala 66:36:chipyard.TestHarness.RocketConfig.fir@239745.6]
  assign _T_135 = _T_132 & _T_134; // @[rawFloatFromFN.scala 66:33:chipyard.TestHarness.RocketConfig.fir@239746.6]
  assign _T_138 = {1'b0,$signed(_T_129)}; // @[rawFloatFromFN.scala 70:48:chipyard.TestHarness.RocketConfig.fir@239753.6]
  assign _T_139 = ~_T_130; // @[rawFloatFromFN.scala 72:29:chipyard.TestHarness.RocketConfig.fir@239755.6]
  assign _T_140 = _T_16 ? _T_123 : _T_12[51:0]; // @[rawFloatFromFN.scala 72:42:chipyard.TestHarness.RocketConfig.fir@239756.6]
  assign _T_142 = {1'h0,_T_139,_T_140}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239758.6]
  assign _T_144 = _T_130 ? 3'h0 : _T_138[11:9]; // @[recFNFromFN.scala 48:16:chipyard.TestHarness.RocketConfig.fir@239761.6]
  assign _GEN_169 = {{2'd0}, _T_135}; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@239763.6]
  assign _T_146 = _T_144 | _GEN_169; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@239763.6]
  assign _T_151 = {_T_12[63],_T_146,_T_138[8:0],_T_142[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239768.6]
  assign _T_155 = _T_12[30:23] == 8'h0; // @[rawFloatFromFN.scala 50:34:chipyard.TestHarness.RocketConfig.fir@239772.6]
  assign _T_156 = _T_12[22:0] == 23'h0; // @[rawFloatFromFN.scala 51:38:chipyard.TestHarness.RocketConfig.fir@239773.6]
  assign _T_180 = _T_12[1] ? 5'h15 : 5'h16; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239797.6]
  assign _T_181 = _T_12[2] ? 5'h14 : _T_180; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239798.6]
  assign _T_182 = _T_12[3] ? 5'h13 : _T_181; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239799.6]
  assign _T_183 = _T_12[4] ? 5'h12 : _T_182; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239800.6]
  assign _T_184 = _T_12[5] ? 5'h11 : _T_183; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239801.6]
  assign _T_185 = _T_12[6] ? 5'h10 : _T_184; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239802.6]
  assign _T_186 = _T_12[7] ? 5'hf : _T_185; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239803.6]
  assign _T_187 = _T_12[8] ? 5'he : _T_186; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239804.6]
  assign _T_188 = _T_12[9] ? 5'hd : _T_187; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239805.6]
  assign _T_189 = _T_12[10] ? 5'hc : _T_188; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239806.6]
  assign _T_190 = _T_12[11] ? 5'hb : _T_189; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239807.6]
  assign _T_191 = _T_12[12] ? 5'ha : _T_190; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239808.6]
  assign _T_192 = _T_12[13] ? 5'h9 : _T_191; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239809.6]
  assign _T_193 = _T_12[14] ? 5'h8 : _T_192; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239810.6]
  assign _T_194 = _T_12[15] ? 5'h7 : _T_193; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239811.6]
  assign _T_195 = _T_12[16] ? 5'h6 : _T_194; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239812.6]
  assign _T_196 = _T_12[17] ? 5'h5 : _T_195; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239813.6]
  assign _T_197 = _T_12[18] ? 5'h4 : _T_196; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239814.6]
  assign _T_198 = _T_12[19] ? 5'h3 : _T_197; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239815.6]
  assign _T_199 = _T_12[20] ? 5'h2 : _T_198; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239816.6]
  assign _T_200 = _T_12[21] ? 5'h1 : _T_199; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239817.6]
  assign _T_201 = _T_12[22] ? 5'h0 : _T_200; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@239818.6]
  assign _GEN_170 = {{31'd0}, _T_12[22:0]}; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@239819.6]
  assign _T_202 = _GEN_170 << _T_201; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@239819.6]
  assign _T_204 = {_T_202[21:0], 1'h0}; // @[rawFloatFromFN.scala 54:64:chipyard.TestHarness.RocketConfig.fir@239821.6]
  assign _GEN_171 = {{4'd0}, _T_201}; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@239822.6]
  assign _T_205 = _GEN_171 ^ 9'h1ff; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@239822.6]
  assign _T_206 = _T_155 ? _T_205 : {{1'd0}, _T_12[30:23]}; // @[rawFloatFromFN.scala 56:16:chipyard.TestHarness.RocketConfig.fir@239823.6]
  assign _T_207 = _T_155 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@239824.6]
  assign _GEN_172 = {{6'd0}, _T_207}; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@239825.6]
  assign _T_208 = 8'h80 | _GEN_172; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@239825.6]
  assign _GEN_173 = {{1'd0}, _T_208}; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@239826.6]
  assign _T_210 = _T_206 + _GEN_173; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@239827.6]
  assign _T_211 = _T_155 & _T_156; // @[rawFloatFromFN.scala 62:34:chipyard.TestHarness.RocketConfig.fir@239828.6]
  assign _T_213 = _T_210[8:7] == 2'h3; // @[rawFloatFromFN.scala 63:62:chipyard.TestHarness.RocketConfig.fir@239830.6]
  assign _T_215 = ~_T_156; // @[rawFloatFromFN.scala 66:36:chipyard.TestHarness.RocketConfig.fir@239833.6]
  assign _T_216 = _T_213 & _T_215; // @[rawFloatFromFN.scala 66:33:chipyard.TestHarness.RocketConfig.fir@239834.6]
  assign _T_219 = {1'b0,$signed(_T_210)}; // @[rawFloatFromFN.scala 70:48:chipyard.TestHarness.RocketConfig.fir@239841.6]
  assign _T_220 = ~_T_211; // @[rawFloatFromFN.scala 72:29:chipyard.TestHarness.RocketConfig.fir@239843.6]
  assign _T_221 = _T_155 ? _T_204 : _T_12[22:0]; // @[rawFloatFromFN.scala 72:42:chipyard.TestHarness.RocketConfig.fir@239844.6]
  assign _T_223 = {1'h0,_T_220,_T_221}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239846.6]
  assign _T_225 = _T_211 ? 3'h0 : _T_219[8:6]; // @[recFNFromFN.scala 48:16:chipyard.TestHarness.RocketConfig.fir@239849.6]
  assign _GEN_174 = {{2'd0}, _T_216}; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@239851.6]
  assign _T_227 = _T_225 | _GEN_174; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@239851.6]
  assign _T_232 = {_T_12[31],_T_227,_T_219[5:0],_T_223[22:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239856.6]
  assign _T_235 = &_T_151[51:32]; // @[FPU.scala 283:42:chipyard.TestHarness.RocketConfig.fir@239859.6]
  assign _T_246 = {_T_151[64:61],_T_235,_T_151[59:53],_T_232[31],_T_151[51:32],_T_232[32],_T_232[30:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239870.6]
  assign _T_248 = &_T_151[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@239872.6]
  assign wdata = _T_248 ? _T_246 : _T_151; // @[FPU.scala 289:8:chipyard.TestHarness.RocketConfig.fir@239873.6]
  assign _T_260 = &wdata[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@239886.6]
  assign _T_261 = ~_T_260; // @[FPU.scala 330:19:chipyard.TestHarness.RocketConfig.fir@239887.6]
  assign _T_264 = &wdata[51:32]; // @[FPU.scala 330:96:chipyard.TestHarness.RocketConfig.fir@239890.6]
  assign _T_265 = wdata[60] == _T_264; // @[FPU.scala 330:55:chipyard.TestHarness.RocketConfig.fir@239891.6]
  assign _T_266 = _T_261 | _T_265; // @[FPU.scala 330:31:chipyard.TestHarness.RocketConfig.fir@239892.6]
  assign _T_269 = _T_266 | reset; // @[FPU.scala 736:11:chipyard.TestHarness.RocketConfig.fir@239895.6]
  assign _T_270 = ~_T_269; // @[FPU.scala 736:11:chipyard.TestHarness.RocketConfig.fir@239896.6]
  assign _T_277 = ~fp_decoder_io_sigs_swap12; // @[FPU.scala 744:13:chipyard.TestHarness.RocketConfig.fir@239913.8]
  assign _T_283 = ~fp_decoder_io_sigs_swap23; // @[FPU.scala 750:32:chipyard.TestHarness.RocketConfig.fir@239933.8]
  assign _T_284 = _T_277 & _T_283; // @[FPU.scala 750:29:chipyard.TestHarness.RocketConfig.fir@239934.8]
  assign _T_288 = ex_reg_inst[14:12] == 3'h7; // @[FPU.scala 754:38:chipyard.TestHarness.RocketConfig.fir@239946.4]
  assign _T_290 = ex_reg_valid & ex_reg_ctrl_fma; // @[FPU.scala 777:33:chipyard.TestHarness.RocketConfig.fir@239953.4]
  assign tag = ~ex_reg_ctrl_singleIn; // @[FPU.scala 758:15:chipyard.TestHarness.RocketConfig.fir@239958.4]
  assign _T_296 = {regfile_ex_rs_0_data[31],regfile_ex_rs_0_data[52],regfile_ex_rs_0_data[30:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239965.4]
  assign _T_298 = &regfile_ex_rs_0_data[64:60]; // @[FPU.scala 277:84:chipyard.TestHarness.RocketConfig.fir@239967.4]
  assign _T_319 = _T_298 ? 33'h0 : 33'he0400000; // @[FPU.scala 317:31:chipyard.TestHarness.RocketConfig.fir@239988.4]
  assign _T_320 = _T_296 | _T_319; // @[FPU.scala 317:26:chipyard.TestHarness.RocketConfig.fir@239989.4]
  assign _T_325 = {regfile_ex_rs_1_data[31],regfile_ex_rs_1_data[52],regfile_ex_rs_1_data[30:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@239995.4]
  assign _T_327 = &regfile_ex_rs_1_data[64:60]; // @[FPU.scala 277:84:chipyard.TestHarness.RocketConfig.fir@239997.4]
  assign _T_348 = _T_327 ? 33'h0 : 33'he0400000; // @[FPU.scala 317:31:chipyard.TestHarness.RocketConfig.fir@240018.4]
  assign _T_349 = _T_325 | _T_348; // @[FPU.scala 317:26:chipyard.TestHarness.RocketConfig.fir@240019.4]
  assign _T_354 = {regfile_ex_rs_2_data[31],regfile_ex_rs_2_data[52],regfile_ex_rs_2_data[30:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240025.4]
  assign _T_356 = &regfile_ex_rs_2_data[64:60]; // @[FPU.scala 277:84:chipyard.TestHarness.RocketConfig.fir@240027.4]
  assign _T_377 = _T_356 ? 33'h0 : 33'he0400000; // @[FPU.scala 317:31:chipyard.TestHarness.RocketConfig.fir@240048.4]
  assign _T_378 = _T_354 | _T_377; // @[FPU.scala 317:26:chipyard.TestHarness.RocketConfig.fir@240049.4]
  assign _T_381 = ~ex_reg_ctrl_ren3; // @[FPU.scala 765:39:chipyard.TestHarness.RocketConfig.fir@240054.4]
  assign _T_383 = _T_381 & ex_reg_inst[27]; // @[FPU.scala 765:53:chipyard.TestHarness.RocketConfig.fir@240056.4]
  assign _GEN_175 = {{1'd0}, _T_383}; // @[FPU.scala 765:36:chipyard.TestHarness.RocketConfig.fir@240057.4]
  assign _T_385 = ex_reg_ctrl_toint | ex_reg_ctrl_div; // @[FPU.scala 781:51:chipyard.TestHarness.RocketConfig.fir@240071.4]
  assign _T_386 = _T_385 | ex_reg_ctrl_sqrt; // @[FPU.scala 781:66:chipyard.TestHarness.RocketConfig.fir@240072.4]
  assign _T_387 = ex_reg_ctrl_fastpipe & ex_reg_ctrl_wflags; // @[FPU.scala 781:103:chipyard.TestHarness.RocketConfig.fir@240073.4]
  assign _T_388 = _T_386 | _T_387; // @[FPU.scala 781:82:chipyard.TestHarness.RocketConfig.fir@240074.4]
  assign _T_398 = {_T_296[22:0], 53'h0}; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@240090.4]
  assign _GEN_176 = {{3'd0}, _T_296[31:23]}; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240093.4]
  assign _T_402 = _GEN_176 + 12'h800; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240094.4]
  assign _T_404 = _T_402 - 12'h100; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@240096.4]
  assign _T_405 = _T_296[31:29] == 3'h0; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@240097.4]
  assign _T_406 = _T_296[31:29] >= 3'h6; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@240098.4]
  assign _T_407 = _T_405 | _T_406; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@240099.4]
  assign _T_409 = {_T_296[31:29],_T_404[8:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240101.4]
  assign _T_411 = _T_407 ? _T_409 : _T_404; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@240103.4]
  assign _T_413 = {_T_296[32],_T_411,_T_398[75:24]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240105.4]
  assign _T_418 = tag | _T_298; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240110.4]
  assign _T_420 = tag ? regfile_ex_rs_0_data : _T_413; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240112.4]
  assign _T_430 = {_T_325[22:0], 53'h0}; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@240123.4]
  assign _GEN_177 = {{3'd0}, _T_325[31:23]}; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240126.4]
  assign _T_434 = _GEN_177 + 12'h800; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240127.4]
  assign _T_436 = _T_434 - 12'h100; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@240129.4]
  assign _T_437 = _T_325[31:29] == 3'h0; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@240130.4]
  assign _T_438 = _T_325[31:29] >= 3'h6; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@240131.4]
  assign _T_439 = _T_437 | _T_438; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@240132.4]
  assign _T_441 = {_T_325[31:29],_T_436[8:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240134.4]
  assign _T_443 = _T_439 ? _T_441 : _T_436; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@240136.4]
  assign _T_445 = {_T_325[32],_T_443,_T_430[75:24]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240138.4]
  assign _T_450 = tag | _T_327; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240143.4]
  assign _T_452 = tag ? regfile_ex_rs_1_data : _T_445; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240145.4]
  assign _T_495 = {{1'd0}, io_fromint_data}; // @[FPU.scala 793:29:chipyard.TestHarness.RocketConfig.fir@240212.4]
  assign _T_498 = ~ex_reg_ctrl_singleOut; // @[FPU.scala 815:59:chipyard.TestHarness.RocketConfig.fir@240240.4]
  assign _T_595 = mem_ctrl_fma & mem_ctrl_singleOut; // @[FPU.scala 812:56:chipyard.TestHarness.RocketConfig.fir@240356.4]
  assign _T_596 = _T_595 ? 2'h2 : 2'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240357.4]
  assign _T_597 = ~mem_ctrl_singleOut; // @[FPU.scala 817:65:chipyard.TestHarness.RocketConfig.fir@240358.4]
  assign _T_598 = mem_ctrl_fma & _T_597; // @[FPU.scala 817:62:chipyard.TestHarness.RocketConfig.fir@240359.4]
  assign _T_599 = _T_598 ? 3'h4 : 3'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240360.4]
  assign _T_600 = mem_ctrl_fastpipe | mem_ctrl_fromint; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240361.4]
  assign _GEN_184 = {{1'd0}, _T_600}; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240362.4]
  assign _T_601 = _GEN_184 | _T_596; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240362.4]
  assign _GEN_185 = {{1'd0}, _T_601}; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240363.4]
  assign memLatencyMask = _GEN_185 | _T_599; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240363.4]
  assign _T_602 = mem_ctrl_fma | mem_ctrl_fastpipe; // @[FPU.scala 837:48:chipyard.TestHarness.RocketConfig.fir@240366.4]
  assign _T_603 = _T_602 | mem_ctrl_fromint; // @[FPU.scala 837:69:chipyard.TestHarness.RocketConfig.fir@240367.4]
  assign mem_wen = mem_reg_valid & _T_603; // @[FPU.scala 837:31:chipyard.TestHarness.RocketConfig.fir@240368.4]
  assign _T_604 = ex_reg_ctrl_fastpipe ? 2'h2 : 2'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240369.4]
  assign _T_605 = ex_reg_ctrl_fromint ? 2'h2 : 2'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240370.4]
  assign _T_606 = ex_reg_ctrl_fma & ex_reg_ctrl_singleOut; // @[FPU.scala 812:56:chipyard.TestHarness.RocketConfig.fir@240371.4]
  assign _T_607 = _T_606 ? 3'h4 : 3'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240372.4]
  assign _T_609 = ex_reg_ctrl_fma & _T_498; // @[FPU.scala 817:62:chipyard.TestHarness.RocketConfig.fir@240374.4]
  assign _T_610 = _T_609 ? 4'h8 : 4'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240375.4]
  assign _T_611 = _T_604 | _T_605; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240376.4]
  assign _GEN_186 = {{1'd0}, _T_611}; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240377.4]
  assign _T_612 = _GEN_186 | _T_607; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240377.4]
  assign _GEN_187 = {{1'd0}, _T_612}; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240378.4]
  assign _T_613 = _GEN_187 | _T_610; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240378.4]
  assign _GEN_188 = {{1'd0}, memLatencyMask}; // @[FPU.scala 838:62:chipyard.TestHarness.RocketConfig.fir@240379.4]
  assign _T_614 = _GEN_188 & _T_613; // @[FPU.scala 838:62:chipyard.TestHarness.RocketConfig.fir@240379.4]
  assign _T_615 = |_T_614; // @[FPU.scala 838:89:chipyard.TestHarness.RocketConfig.fir@240380.4]
  assign _T_616 = mem_wen & _T_615; // @[FPU.scala 838:43:chipyard.TestHarness.RocketConfig.fir@240381.4]
  assign _T_617 = ex_reg_ctrl_fastpipe ? 3'h4 : 3'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240382.4]
  assign _T_618 = ex_reg_ctrl_fromint ? 3'h4 : 3'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240383.4]
  assign _T_620 = _T_606 ? 4'h8 : 4'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240385.4]
  assign _T_623 = _T_609 ? 5'h10 : 5'h0; // @[FPU.scala 821:23:chipyard.TestHarness.RocketConfig.fir@240388.4]
  assign _T_624 = _T_617 | _T_618; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240389.4]
  assign _GEN_189 = {{1'd0}, _T_624}; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240390.4]
  assign _T_625 = _GEN_189 | _T_620; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240390.4]
  assign _GEN_190 = {{1'd0}, _T_625}; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240391.4]
  assign _T_626 = _GEN_190 | _T_623; // @[FPU.scala 821:78:chipyard.TestHarness.RocketConfig.fir@240391.4]
  assign _GEN_191 = {{2'd0}, wen}; // @[FPU.scala 838:101:chipyard.TestHarness.RocketConfig.fir@240392.4]
  assign _T_627 = _GEN_191 & _T_626; // @[FPU.scala 838:101:chipyard.TestHarness.RocketConfig.fir@240392.4]
  assign _T_628 = |_T_627; // @[FPU.scala 838:128:chipyard.TestHarness.RocketConfig.fir@240393.4]
  assign _T_629 = _T_616 | _T_628; // @[FPU.scala 838:93:chipyard.TestHarness.RocketConfig.fir@240394.4]
  assign _GEN_192 = {{1'd0}, wen[2:1]}; // @[FPU.scala 847:23:chipyard.TestHarness.RocketConfig.fir@240414.8]
  assign _T_636 = _GEN_192 | memLatencyMask; // @[FPU.scala 847:23:chipyard.TestHarness.RocketConfig.fir@240414.8]
  assign _T_637 = ~write_port_busy; // @[FPU.scala 850:13:chipyard.TestHarness.RocketConfig.fir@240417.6]
  assign _T_639 = _T_637 & memLatencyMask[0]; // @[FPU.scala 850:30:chipyard.TestHarness.RocketConfig.fir@240419.6]
  assign _T_646 = _T_598 ? 2'h3 : 2'h0; // @[FPU.scala 823:63:chipyard.TestHarness.RocketConfig.fir@240429.8]
  assign _GEN_193 = {{1'd0}, mem_ctrl_fromint}; // @[FPU.scala 823:108:chipyard.TestHarness.RocketConfig.fir@240431.8]
  assign _T_648 = _GEN_193 | _T_596; // @[FPU.scala 823:108:chipyard.TestHarness.RocketConfig.fir@240431.8]
  assign _T_649 = _T_648 | _T_646; // @[FPU.scala 823:108:chipyard.TestHarness.RocketConfig.fir@240432.8]
  assign _T_653 = _T_637 & memLatencyMask[1]; // @[FPU.scala 850:30:chipyard.TestHarness.RocketConfig.fir@240439.6]
  assign _T_667 = _T_637 & memLatencyMask[2]; // @[FPU.scala 850:30:chipyard.TestHarness.RocketConfig.fir@240459.6]
  assign divSqrt_typeTag = divSqrt_1_io_outValid_div | divSqrt_1_io_outValid_sqrt; // @[FPU.scala 919:37:chipyard.TestHarness.RocketConfig.fir@240720.4]
  assign _T_847 = ~divSqrt_killed; // @[FPU.scala 920:24:chipyard.TestHarness.RocketConfig.fir@240722.6]
  assign _T_835 = divSqrt_io_outValid_div | divSqrt_io_outValid_sqrt; // @[FPU.scala 919:37:chipyard.TestHarness.RocketConfig.fir@240685.4]
  assign _GEN_154 = _T_835 & _T_847; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240686.4]
  assign divSqrt_wen = divSqrt_typeTag ? _T_847 : _GEN_154; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240721.4]
  assign _T_679 = ~wbInfo_0_single; // @[FPU.scala 860:51:chipyard.TestHarness.RocketConfig.fir@240479.4]
  assign wdouble = divSqrt_wen ? divSqrt_typeTag : _T_679; // @[FPU.scala 860:20:chipyard.TestHarness.RocketConfig.fir@240480.4]
  assign _T_680 = wbInfo_0_pipeid == 2'h1; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240481.4]
  assign _T_681 = _T_680 ? ifpu_io_out_bits_data : fpmu_io_out_bits_data; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240482.4]
  assign _T_682 = wbInfo_0_pipeid == 2'h2; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240483.4]
  assign _T_683 = _T_682 ? sfma_io_out_bits_data : _T_681; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240484.4]
  assign _T_684 = wbInfo_0_pipeid == 2'h3; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240485.4]
  assign _T_685 = _T_684 ? dfma_io_out_bits_data : _T_683; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240486.4]
  assign _T_851 = &divSqrt_1_io_out[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@240727.6]
  assign _T_849 = divSqrt_1_io_out & 65'h1efefffffffffffff; // @[FPU.scala 358:25:chipyard.TestHarness.RocketConfig.fir@240725.6]
  assign _T_852 = _T_851 ? _T_849 : divSqrt_1_io_out; // @[FPU.scala 359:10:chipyard.TestHarness.RocketConfig.fir@240728.6]
  assign _GEN_155 = divSqrt_io_out; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240686.4]
  assign divSqrt_wdata = divSqrt_typeTag ? _T_852 : {{32'd0}, _GEN_155}; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240721.4]
  assign _T_686 = divSqrt_wen ? divSqrt_wdata : _T_685; // @[FPU.scala 861:22:chipyard.TestHarness.RocketConfig.fir@240487.4]
  assign _T_687 = &20'hfffff; // @[FPU.scala 283:42:chipyard.TestHarness.RocketConfig.fir@240488.4]
  assign _T_696 = {4'hf,_T_687,7'h7f,_T_686[31],20'hfffff,_T_686[32],_T_686[30:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240497.4]
  assign _T_697 = &3'h7; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@240498.4]
  assign _T_698 = _T_697 ? _T_696 : 65'h1ffffffffffffffff; // @[FPU.scala 289:8:chipyard.TestHarness.RocketConfig.fir@240499.4]
  assign wdata_1 = wdouble ? _T_686 : _T_698; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240502.4]
  assign _T_702 = _T_680 ? ifpu_io_out_bits_exc : fpmu_io_out_bits_exc; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240504.4]
  assign _T_704 = _T_682 ? sfma_io_out_bits_exc : _T_702; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240506.4]
  assign wexc = _T_684 ? dfma_io_out_bits_exc : _T_704; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240508.4]
  assign _T_709 = wen[0] | divSqrt_wen; // @[FPU.scala 863:35:chipyard.TestHarness.RocketConfig.fir@240512.4]
  assign _T_720 = &wdata_1[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@240524.6]
  assign _T_721 = ~_T_720; // @[FPU.scala 330:19:chipyard.TestHarness.RocketConfig.fir@240525.6]
  assign _T_724 = &wdata_1[51:32]; // @[FPU.scala 330:96:chipyard.TestHarness.RocketConfig.fir@240528.6]
  assign _T_725 = wdata_1[60] == _T_724; // @[FPU.scala 330:55:chipyard.TestHarness.RocketConfig.fir@240529.6]
  assign _T_726 = _T_721 | _T_725; // @[FPU.scala 330:31:chipyard.TestHarness.RocketConfig.fir@240530.6]
  assign _T_729 = _T_726 | reset; // @[FPU.scala 864:11:chipyard.TestHarness.RocketConfig.fir@240533.6]
  assign _T_730 = ~_T_729; // @[FPU.scala 864:11:chipyard.TestHarness.RocketConfig.fir@240534.6]
  assign wb_toint_valid = wb_reg_valid & wb_ctrl_toint; // @[FPU.scala 876:37:chipyard.TestHarness.RocketConfig.fir@240550.4]
  assign _T_735 = wb_toint_valid | divSqrt_wen; // @[FPU.scala 878:41:chipyard.TestHarness.RocketConfig.fir@240555.4]
  assign _T_738 = wb_toint_valid ? wb_toint_exc : 5'h0; // @[FPU.scala 880:8:chipyard.TestHarness.RocketConfig.fir@240559.4]
  assign _GEN_156 = divSqrt_io_exceptionFlags; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240686.4]
  assign divSqrt_flags = divSqrt_typeTag ? divSqrt_1_io_exceptionFlags : _GEN_156; // @[FPU.scala 919:66:chipyard.TestHarness.RocketConfig.fir@240721.4]
  assign _T_739 = divSqrt_wen ? divSqrt_flags : 5'h0; // @[FPU.scala 881:8:chipyard.TestHarness.RocketConfig.fir@240560.4]
  assign _T_740 = _T_738 | _T_739; // @[FPU.scala 880:48:chipyard.TestHarness.RocketConfig.fir@240561.4]
  assign _T_742 = wen[0] ? wexc : 5'h0; // @[FPU.scala 882:8:chipyard.TestHarness.RocketConfig.fir@240563.4]
  assign _T_744 = mem_ctrl_div | mem_ctrl_sqrt; // @[FPU.scala 884:47:chipyard.TestHarness.RocketConfig.fir@240566.4]
  assign _T_745 = |wen; // @[FPU.scala 884:72:chipyard.TestHarness.RocketConfig.fir@240567.4]
  assign divSqrt_write_port_busy = _T_744 & _T_745; // @[FPU.scala 884:65:chipyard.TestHarness.RocketConfig.fir@240568.4]
  assign _T_746 = ex_reg_valid & ex_reg_ctrl_wflags; // @[FPU.scala 885:33:chipyard.TestHarness.RocketConfig.fir@240569.4]
  assign _T_747 = mem_reg_valid & mem_ctrl_wflags; // @[FPU.scala 885:68:chipyard.TestHarness.RocketConfig.fir@240570.4]
  assign _T_748 = _T_746 | _T_747; // @[FPU.scala 885:51:chipyard.TestHarness.RocketConfig.fir@240571.4]
  assign _T_750 = _T_748 | wb_toint_valid; // @[FPU.scala 885:87:chipyard.TestHarness.RocketConfig.fir@240573.4]
  assign _T_752 = _T_750 | _T_745; // @[FPU.scala 885:120:chipyard.TestHarness.RocketConfig.fir@240575.4]
  assign _T_843 = ~divSqrt_1_io_inReady; // @[FPU.scala 912:13:chipyard.TestHarness.RocketConfig.fir@240710.4]
  assign _T_832 = ~divSqrt_io_inReady; // @[FPU.scala 912:13:chipyard.TestHarness.RocketConfig.fir@240675.4]
  assign divSqrt_inFlight = _T_843 | _T_832; // @[FPU.scala 912:34:chipyard.TestHarness.RocketConfig.fir@240711.4]
  assign _T_753 = _T_752 | divSqrt_inFlight; // @[FPU.scala 885:131:chipyard.TestHarness.RocketConfig.fir@240576.4]
  assign _T_755 = write_port_busy | divSqrt_write_port_busy; // @[FPU.scala 886:34:chipyard.TestHarness.RocketConfig.fir@240579.4]
  assign _T_762 = _T_598 | mem_ctrl_div; // @[FPU.scala 889:96:chipyard.TestHarness.RocketConfig.fir@240588.4]
  assign _T_770 = wen[0] & _T_684; // @[FPU.scala 890:60:chipyard.TestHarness.RocketConfig.fir@240598.4]
  assign _T_775 = io_inst[14:12] == 3'h5; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@240605.4]
  assign _T_776 = io_inst[14:12] == 3'h6; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@240606.4]
  assign _T_777 = _T_775 | _T_776; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@240607.4]
  assign _T_779 = io_inst[14:12] == 3'h7; // @[FPU.scala 894:67:chipyard.TestHarness.RocketConfig.fir@240609.4]
  assign _T_780 = io_fcsr_rm >= 3'h5; // @[FPU.scala 894:87:chipyard.TestHarness.RocketConfig.fir@240610.4]
  assign _T_781 = _T_779 & _T_780; // @[FPU.scala 894:73:chipyard.TestHarness.RocketConfig.fir@240611.4]
  assign _T_788 = ~_T_597; // @[FPU.scala 905:50:chipyard.TestHarness.RocketConfig.fir@240625.4]
  assign _T_789 = mem_reg_valid & _T_788; // @[FPU.scala 905:43:chipyard.TestHarness.RocketConfig.fir@240626.4]
  assign _T_791 = _T_789 & _T_744; // @[FPU.scala 905:65:chipyard.TestHarness.RocketConfig.fir@240628.4]
  assign _T_792 = ~divSqrt_inFlight; // @[FPU.scala 905:103:chipyard.TestHarness.RocketConfig.fir@240629.4]
  assign _T_797 = {fpiu_io_out_bits_in_in1[51:0], 24'h0}; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@240636.4]
  assign _T_801 = fpiu_io_out_bits_in_in1[63:52] + 12'h100; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240640.4]
  assign _T_803 = _T_801 - 12'h800; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@240642.4]
  assign _T_804 = fpiu_io_out_bits_in_in1[63:61] == 3'h0; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@240643.4]
  assign _T_805 = fpiu_io_out_bits_in_in1[63:61] >= 3'h6; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@240644.4]
  assign _T_806 = _T_804 | _T_805; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@240645.4]
  assign _T_808 = {fpiu_io_out_bits_in_in1[63:61],_T_803[5:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240647.4]
  assign _T_810 = _T_806 ? _T_808 : _T_803[8:0]; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@240649.4]
  assign _T_811 = {fpiu_io_out_bits_in_in1[64],_T_810}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240650.4]
  assign _T_816 = {fpiu_io_out_bits_in_in2[51:0], 24'h0}; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@240656.4]
  assign _T_820 = fpiu_io_out_bits_in_in2[63:52] + 12'h100; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@240660.4]
  assign _T_822 = _T_820 - 12'h800; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@240662.4]
  assign _T_823 = fpiu_io_out_bits_in_in2[63:61] == 3'h0; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@240663.4]
  assign _T_824 = fpiu_io_out_bits_in_in2[63:61] >= 3'h6; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@240664.4]
  assign _T_825 = _T_823 | _T_824; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@240665.4]
  assign _T_827 = {fpiu_io_out_bits_in_in2[63:61],_T_822[5:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240667.4]
  assign _T_829 = _T_825 ? _T_827 : _T_822[8:0]; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@240669.4]
  assign _T_830 = {fpiu_io_out_bits_in_in2[64],_T_829}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240670.4]
  assign _T_833 = divSqrt_io_inValid & divSqrt_io_inReady; // @[FPU.scala 914:32:chipyard.TestHarness.RocketConfig.fir@240679.4]
  assign _T_838 = mem_reg_valid & _T_597; // @[FPU.scala 905:43:chipyard.TestHarness.RocketConfig.fir@240699.4]
  assign _T_840 = _T_838 & _T_744; // @[FPU.scala 905:65:chipyard.TestHarness.RocketConfig.fir@240701.4]
  assign _T_844 = divSqrt_1_io_inValid & divSqrt_1_io_inReady; // @[FPU.scala 914:32:chipyard.TestHarness.RocketConfig.fir@240714.4]
  assign io_fcsr_flags_valid = _T_735 | wen[0]; // @[FPU.scala 878:23:chipyard.TestHarness.RocketConfig.fir@240558.4]
  assign io_fcsr_flags_bits = _T_740 | _T_742; // @[FPU.scala 879:22:chipyard.TestHarness.RocketConfig.fir@240565.4]
  assign io_store_data = fpiu_io_out_bits_store; // @[FPU.scala 783:17:chipyard.TestHarness.RocketConfig.fir@240197.4]
  assign io_toint_data = fpiu_io_out_bits_toint; // @[FPU.scala 784:17:chipyard.TestHarness.RocketConfig.fir@240198.4]
  assign io_fcsr_rdy = ~_T_753; // @[FPU.scala 885:15:chipyard.TestHarness.RocketConfig.fir@240578.4]
  assign io_nack_mem = _T_755 | divSqrt_inFlight; // @[FPU.scala 886:15:chipyard.TestHarness.RocketConfig.fir@240581.4]
  assign io_illegal_rm = _T_777 | _T_781; // @[FPU.scala 894:17:chipyard.TestHarness.RocketConfig.fir@240613.4]
  assign io_dec_wen = fp_decoder_io_sigs_wen; // @[FPU.scala 887:10:chipyard.TestHarness.RocketConfig.fir@240582.4]
  assign io_dec_ren1 = fp_decoder_io_sigs_ren1; // @[FPU.scala 887:10:chipyard.TestHarness.RocketConfig.fir@240582.4]
  assign io_dec_ren2 = fp_decoder_io_sigs_ren2; // @[FPU.scala 887:10:chipyard.TestHarness.RocketConfig.fir@240582.4]
  assign io_dec_ren3 = fp_decoder_io_sigs_ren3; // @[FPU.scala 887:10:chipyard.TestHarness.RocketConfig.fir@240582.4]
  assign io_sboard_set = wb_reg_valid & _T_764; // @[FPU.scala 889:17:chipyard.TestHarness.RocketConfig.fir@240593.4]
  assign io_sboard_clr = divSqrt_wen | _T_770; // @[FPU.scala 890:17:chipyard.TestHarness.RocketConfig.fir@240601.4]
  assign io_sboard_clra = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd; // @[FPU.scala 891:18:chipyard.TestHarness.RocketConfig.fir@240602.4]
  assign fp_decoder_io_inst = io_inst; // @[FPU.scala 692:22:chipyard.TestHarness.RocketConfig.fir@239505.4]
  assign sfma_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@239951.4]
  assign sfma_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@239952.4]
  assign sfma_io_in_valid = _T_290 & ex_reg_ctrl_singleOut; // @[FPU.scala 777:20:chipyard.TestHarness.RocketConfig.fir@239955.4]
  assign sfma_io_in_bits_ren3 = ex_reg_ctrl_ren3; // @[FPU.scala 778:19:chipyard.TestHarness.RocketConfig.fir@240066.4]
  assign sfma_io_in_bits_swap23 = ex_reg_ctrl_swap23; // @[FPU.scala 778:19:chipyard.TestHarness.RocketConfig.fir@240066.4]
  assign sfma_io_in_bits_rm = _T_288 ? io_fcsr_rm : ex_reg_inst[14:12]; // @[FPU.scala 778:19:chipyard.TestHarness.RocketConfig.fir@240066.4]
  assign sfma_io_in_bits_fmaCmd = ex_reg_inst[3:2] | _GEN_175; // @[FPU.scala 778:19:chipyard.TestHarness.RocketConfig.fir@240066.4]
  assign sfma_io_in_bits_in1 = {{32'd0}, _T_320}; // @[FPU.scala 778:19:chipyard.TestHarness.RocketConfig.fir@240066.4]
  assign sfma_io_in_bits_in2 = {{32'd0}, _T_349}; // @[FPU.scala 778:19:chipyard.TestHarness.RocketConfig.fir@240066.4]
  assign sfma_io_in_bits_in3 = {{32'd0}, _T_378}; // @[FPU.scala 778:19:chipyard.TestHarness.RocketConfig.fir@240066.4]
  assign fpiu_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@240069.4]
  assign fpiu_io_in_valid = ex_reg_valid & _T_388; // @[FPU.scala 781:20:chipyard.TestHarness.RocketConfig.fir@240076.4]
  assign fpiu_io_in_bits_ren2 = ex_reg_ctrl_ren2; // @[FPU.scala 782:19:chipyard.TestHarness.RocketConfig.fir@240196.4]
  assign fpiu_io_in_bits_singleIn = ex_reg_ctrl_singleIn; // @[FPU.scala 782:19:chipyard.TestHarness.RocketConfig.fir@240196.4]
  assign fpiu_io_in_bits_singleOut = ex_reg_ctrl_singleOut; // @[FPU.scala 782:19:chipyard.TestHarness.RocketConfig.fir@240196.4]
  assign fpiu_io_in_bits_wflags = ex_reg_ctrl_wflags; // @[FPU.scala 782:19:chipyard.TestHarness.RocketConfig.fir@240196.4]
  assign fpiu_io_in_bits_rm = _T_288 ? io_fcsr_rm : ex_reg_inst[14:12]; // @[FPU.scala 782:19:chipyard.TestHarness.RocketConfig.fir@240196.4]
  assign fpiu_io_in_bits_typ = ex_reg_inst[21:20]; // @[FPU.scala 782:19:chipyard.TestHarness.RocketConfig.fir@240196.4]
  assign fpiu_io_in_bits_in1 = _T_418 ? _T_420 : 65'he008000000000000; // @[FPU.scala 782:19:chipyard.TestHarness.RocketConfig.fir@240196.4]
  assign fpiu_io_in_bits_in2 = _T_450 ? _T_452 : 65'he008000000000000; // @[FPU.scala 782:19:chipyard.TestHarness.RocketConfig.fir@240196.4]
  assign ifpu_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@240207.4]
  assign ifpu_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@240208.4]
  assign ifpu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fromint; // @[FPU.scala 791:20:chipyard.TestHarness.RocketConfig.fir@240210.4]
  assign ifpu_io_in_bits_singleIn = fpiu_io_in_bits_singleIn; // @[FPU.scala 792:19:chipyard.TestHarness.RocketConfig.fir@240211.4]
  assign ifpu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[FPU.scala 792:19:chipyard.TestHarness.RocketConfig.fir@240211.4]
  assign ifpu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[FPU.scala 792:19:chipyard.TestHarness.RocketConfig.fir@240211.4]
  assign ifpu_io_in_bits_typ = fpiu_io_in_bits_typ; // @[FPU.scala 792:19:chipyard.TestHarness.RocketConfig.fir@240211.4]
  assign ifpu_io_in_bits_in1 = _T_495[63:0]; // @[FPU.scala 792:19:chipyard.TestHarness.RocketConfig.fir@240211.4 FPU.scala 793:23:chipyard.TestHarness.RocketConfig.fir@240213.4]
  assign fpmu_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@240216.4]
  assign fpmu_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@240217.4]
  assign fpmu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fastpipe; // @[FPU.scala 796:20:chipyard.TestHarness.RocketConfig.fir@240219.4]
  assign fpmu_io_in_bits_ren2 = fpiu_io_in_bits_ren2; // @[FPU.scala 797:19:chipyard.TestHarness.RocketConfig.fir@240220.4]
  assign fpmu_io_in_bits_singleOut = fpiu_io_in_bits_singleOut; // @[FPU.scala 797:19:chipyard.TestHarness.RocketConfig.fir@240220.4]
  assign fpmu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[FPU.scala 797:19:chipyard.TestHarness.RocketConfig.fir@240220.4]
  assign fpmu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[FPU.scala 797:19:chipyard.TestHarness.RocketConfig.fir@240220.4]
  assign fpmu_io_in_bits_in1 = fpiu_io_in_bits_in1; // @[FPU.scala 797:19:chipyard.TestHarness.RocketConfig.fir@240220.4]
  assign fpmu_io_in_bits_in2 = fpiu_io_in_bits_in2; // @[FPU.scala 797:19:chipyard.TestHarness.RocketConfig.fir@240220.4]
  assign fpmu_io_lt = fpiu_io_out_bits_lt; // @[FPU.scala 798:14:chipyard.TestHarness.RocketConfig.fir@240221.4]
  assign dfma_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@240237.4]
  assign dfma_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@240238.4]
  assign dfma_io_in_valid = _T_290 & _T_498; // @[FPU.scala 815:28:chipyard.TestHarness.RocketConfig.fir@240242.4]
  assign dfma_io_in_bits_ren3 = ex_reg_ctrl_ren3; // @[FPU.scala 816:27:chipyard.TestHarness.RocketConfig.fir@240353.4]
  assign dfma_io_in_bits_swap23 = ex_reg_ctrl_swap23; // @[FPU.scala 816:27:chipyard.TestHarness.RocketConfig.fir@240353.4]
  assign dfma_io_in_bits_rm = _T_288 ? io_fcsr_rm : ex_reg_inst[14:12]; // @[FPU.scala 816:27:chipyard.TestHarness.RocketConfig.fir@240353.4]
  assign dfma_io_in_bits_fmaCmd = ex_reg_inst[3:2] | _GEN_175; // @[FPU.scala 816:27:chipyard.TestHarness.RocketConfig.fir@240353.4]
  assign dfma_io_in_bits_in1 = regfile_ex_rs_0_data; // @[FPU.scala 816:27:chipyard.TestHarness.RocketConfig.fir@240353.4]
  assign dfma_io_in_bits_in2 = regfile_ex_rs_1_data; // @[FPU.scala 816:27:chipyard.TestHarness.RocketConfig.fir@240353.4]
  assign dfma_io_in_bits_in3 = regfile_ex_rs_2_data; // @[FPU.scala 816:27:chipyard.TestHarness.RocketConfig.fir@240353.4]
  assign divSqrt_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@240623.4]
  assign divSqrt_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@240624.4]
  assign divSqrt_io_inValid = _T_791 & _T_792; // @[FPU.scala 905:26:chipyard.TestHarness.RocketConfig.fir@240631.4]
  assign divSqrt_io_sqrtOp = mem_ctrl_sqrt; // @[FPU.scala 906:25:chipyard.TestHarness.RocketConfig.fir@240632.4]
  assign divSqrt_io_a = {_T_811,_T_797[75:53]}; // @[FPU.scala 907:20:chipyard.TestHarness.RocketConfig.fir@240652.4]
  assign divSqrt_io_b = {_T_830,_T_816[75:53]}; // @[FPU.scala 908:20:chipyard.TestHarness.RocketConfig.fir@240672.4]
  assign divSqrt_io_roundingMode = fpiu_io_out_bits_in_rm; // @[FPU.scala 909:31:chipyard.TestHarness.RocketConfig.fir@240673.4]
  assign divSqrt_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@240696.4]
  assign divSqrt_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@240697.4]
  assign divSqrt_1_io_inValid = _T_840 & _T_792; // @[FPU.scala 905:26:chipyard.TestHarness.RocketConfig.fir@240704.4]
  assign divSqrt_1_io_sqrtOp = mem_ctrl_sqrt; // @[FPU.scala 906:25:chipyard.TestHarness.RocketConfig.fir@240705.4]
  assign divSqrt_1_io_a = fpiu_io_out_bits_in_in1; // @[FPU.scala 907:20:chipyard.TestHarness.RocketConfig.fir@240706.4]
  assign divSqrt_1_io_b = fpiu_io_out_bits_in_in2; // @[FPU.scala 908:20:chipyard.TestHarness.RocketConfig.fir@240707.4]
  assign divSqrt_1_io_roundingMode = fpiu_io_out_bits_in_rm; // @[FPU.scala 909:31:chipyard.TestHarness.RocketConfig.fir@240708.4]
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
  _RAND_0 = {3{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[64:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ex_reg_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ex_reg_inst = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  ex_reg_ctrl_ren2 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  ex_reg_ctrl_ren3 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  ex_reg_ctrl_swap23 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ex_reg_ctrl_singleIn = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ex_reg_ctrl_singleOut = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  ex_reg_ctrl_fromint = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  ex_reg_ctrl_toint = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  ex_reg_ctrl_fastpipe = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  ex_reg_ctrl_fma = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  ex_reg_ctrl_div = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  ex_reg_ctrl_sqrt = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  ex_reg_ctrl_wflags = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  ex_ra_0 = _RAND_15[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  ex_ra_1 = _RAND_16[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  ex_ra_2 = _RAND_17[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  load_wb = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  load_wb_double = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {2{`RANDOM}};
  load_wb_data = _RAND_20[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  load_wb_tag = _RAND_21[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  mem_reg_valid = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  mem_reg_inst = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  wb_reg_valid = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem_ctrl_singleOut = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem_ctrl_fromint = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem_ctrl_toint = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem_ctrl_fastpipe = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem_ctrl_fma = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  mem_ctrl_div = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  mem_ctrl_sqrt = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  mem_ctrl_wflags = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  wb_ctrl_toint = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  divSqrt_waddr = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  wen = _RAND_35[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  wbInfo_0_rd = _RAND_36[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  wbInfo_0_single = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  wbInfo_0_pipeid = _RAND_38[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  wbInfo_1_rd = _RAND_39[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  wbInfo_1_single = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  wbInfo_1_pipeid = _RAND_41[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  wbInfo_2_rd = _RAND_42[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  wbInfo_2_single = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  wbInfo_2_pipeid = _RAND_44[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  write_port_busy = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  divSqrt_killed = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  wb_toint_exc = _RAND_47[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_764 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(regfile__T_249_en & regfile__T_249_mask) begin
      regfile[regfile__T_249_addr] <= regfile__T_249_data; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
    end
    if(regfile__T_731_en & regfile__T_731_mask) begin
      regfile[regfile__T_731_addr] <= regfile__T_731_data; // @[FPU.scala 732:20:chipyard.TestHarness.RocketConfig.fir@239618.4]
    end
    if (reset) begin
      ex_reg_valid <= 1'h0;
    end else begin
      ex_reg_valid <= io_valid;
    end
    if (io_valid) begin
      ex_reg_inst <= io_inst;
    end
    if (io_valid) begin
      ex_reg_ctrl_ren2 <= fp_decoder_io_sigs_ren2;
    end
    if (io_valid) begin
      ex_reg_ctrl_ren3 <= fp_decoder_io_sigs_ren3;
    end
    if (io_valid) begin
      ex_reg_ctrl_swap23 <= fp_decoder_io_sigs_swap23;
    end
    if (io_valid) begin
      ex_reg_ctrl_singleIn <= fp_decoder_io_sigs_singleIn;
    end
    if (io_valid) begin
      ex_reg_ctrl_singleOut <= fp_decoder_io_sigs_singleOut;
    end
    if (io_valid) begin
      ex_reg_ctrl_fromint <= fp_decoder_io_sigs_fromint;
    end
    if (io_valid) begin
      ex_reg_ctrl_toint <= fp_decoder_io_sigs_toint;
    end
    if (io_valid) begin
      ex_reg_ctrl_fastpipe <= fp_decoder_io_sigs_fastpipe;
    end
    if (io_valid) begin
      ex_reg_ctrl_fma <= fp_decoder_io_sigs_fma;
    end
    if (io_valid) begin
      ex_reg_ctrl_div <= fp_decoder_io_sigs_div;
    end
    if (io_valid) begin
      ex_reg_ctrl_sqrt <= fp_decoder_io_sigs_sqrt;
    end
    if (io_valid) begin
      ex_reg_ctrl_wflags <= fp_decoder_io_sigs_wflags;
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (fp_decoder_io_sigs_swap12) begin
          ex_ra_0 <= io_inst[24:20];
        end else if (fp_decoder_io_sigs_ren1) begin
          if (_T_277) begin
            ex_ra_0 <= io_inst[19:15];
          end
        end
      end else if (fp_decoder_io_sigs_ren1) begin
        if (_T_277) begin
          ex_ra_0 <= io_inst[19:15];
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (_T_284) begin
          ex_ra_1 <= io_inst[24:20];
        end else if (fp_decoder_io_sigs_ren1) begin
          if (fp_decoder_io_sigs_swap12) begin
            ex_ra_1 <= io_inst[19:15];
          end
        end
      end else if (fp_decoder_io_sigs_ren1) begin
        if (fp_decoder_io_sigs_swap12) begin
          ex_ra_1 <= io_inst[19:15];
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren3) begin
        ex_ra_2 <= io_inst[31:27];
      end else if (fp_decoder_io_sigs_ren2) begin
        if (fp_decoder_io_sigs_swap23) begin
          ex_ra_2 <= io_inst[24:20];
        end
      end
    end
    load_wb <= io_dmem_resp_val;
    if (io_dmem_resp_val) begin
      load_wb_double <= io_dmem_resp_type[0];
    end
    if (io_dmem_resp_val) begin
      load_wb_data <= io_dmem_resp_data;
    end
    if (io_dmem_resp_val) begin
      load_wb_tag <= io_dmem_resp_tag;
    end
    if (reset) begin
      mem_reg_valid <= 1'h0;
    end else begin
      mem_reg_valid <= _T_5;
    end
    if (ex_reg_valid) begin
      mem_reg_inst <= ex_reg_inst;
    end
    if (reset) begin
      wb_reg_valid <= 1'h0;
    end else begin
      wb_reg_valid <= _T_9;
    end
    if (ex_reg_valid) begin
      mem_ctrl_singleOut <= ex_reg_ctrl_singleOut;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fromint <= ex_reg_ctrl_fromint;
    end
    if (ex_reg_valid) begin
      mem_ctrl_toint <= ex_reg_ctrl_toint;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fastpipe <= ex_reg_ctrl_fastpipe;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fma <= ex_reg_ctrl_fma;
    end
    if (ex_reg_valid) begin
      mem_ctrl_div <= ex_reg_ctrl_div;
    end
    if (ex_reg_valid) begin
      mem_ctrl_sqrt <= ex_reg_ctrl_sqrt;
    end
    if (ex_reg_valid) begin
      mem_ctrl_wflags <= ex_reg_ctrl_wflags;
    end
    if (mem_reg_valid) begin
      wb_ctrl_toint <= mem_ctrl_toint;
    end
    if (_T_844) begin
      divSqrt_waddr <= mem_reg_inst[11:7];
    end else if (_T_833) begin
      divSqrt_waddr <= mem_reg_inst[11:7];
    end
    if (reset) begin
      wen <= 3'h0;
    end else if (mem_wen) begin
      if (_T_7) begin
        wen <= _T_636;
      end else begin
        wen <= {{1'd0}, wen[2:1]};
      end
    end else begin
      wen <= {{1'd0}, wen[2:1]};
    end
    if (mem_wen) begin
      if (_T_639) begin
        wbInfo_0_rd <= mem_reg_inst[11:7];
      end else if (wen[1]) begin
        wbInfo_0_rd <= wbInfo_1_rd;
      end
    end else if (wen[1]) begin
      wbInfo_0_rd <= wbInfo_1_rd;
    end
    if (mem_wen) begin
      if (_T_639) begin
        wbInfo_0_single <= mem_ctrl_singleOut;
      end else if (wen[1]) begin
        wbInfo_0_single <= wbInfo_1_single;
      end
    end else if (wen[1]) begin
      wbInfo_0_single <= wbInfo_1_single;
    end
    if (mem_wen) begin
      if (_T_639) begin
        wbInfo_0_pipeid <= _T_649;
      end else if (wen[1]) begin
        wbInfo_0_pipeid <= wbInfo_1_pipeid;
      end
    end else if (wen[1]) begin
      wbInfo_0_pipeid <= wbInfo_1_pipeid;
    end
    if (mem_wen) begin
      if (_T_653) begin
        wbInfo_1_rd <= mem_reg_inst[11:7];
      end else if (wen[2]) begin
        wbInfo_1_rd <= wbInfo_2_rd;
      end
    end else if (wen[2]) begin
      wbInfo_1_rd <= wbInfo_2_rd;
    end
    if (mem_wen) begin
      if (_T_653) begin
        wbInfo_1_single <= mem_ctrl_singleOut;
      end else if (wen[2]) begin
        wbInfo_1_single <= wbInfo_2_single;
      end
    end else if (wen[2]) begin
      wbInfo_1_single <= wbInfo_2_single;
    end
    if (mem_wen) begin
      if (_T_653) begin
        wbInfo_1_pipeid <= _T_649;
      end else if (wen[2]) begin
        wbInfo_1_pipeid <= wbInfo_2_pipeid;
      end
    end else if (wen[2]) begin
      wbInfo_1_pipeid <= wbInfo_2_pipeid;
    end
    if (mem_wen) begin
      if (_T_667) begin
        wbInfo_2_rd <= mem_reg_inst[11:7];
      end
    end
    if (mem_wen) begin
      if (_T_667) begin
        wbInfo_2_single <= mem_ctrl_singleOut;
      end
    end
    if (mem_wen) begin
      if (_T_667) begin
        wbInfo_2_pipeid <= _T_649;
      end
    end
    if (ex_reg_valid) begin
      write_port_busy <= _T_629;
    end
    if (_T_844) begin
      divSqrt_killed <= killm;
    end else if (_T_833) begin
      divSqrt_killed <= killm;
    end
    if (mem_ctrl_toint) begin
      wb_toint_exc <= fpiu_io_out_bits_exc;
    end
    _T_764 <= _T_762 | mem_ctrl_sqrt;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (load_wb & _T_270) begin
          $fwrite(32'h80000002,"Assertion failed\n    at FPU.scala:736 assert(consistent(wdata))\n"); // @[FPU.scala 736:11:chipyard.TestHarness.RocketConfig.fir@239898.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (load_wb & _T_270) begin
          $fatal; // @[FPU.scala 736:11:chipyard.TestHarness.RocketConfig.fir@239899.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_709 & _T_730) begin
          $fwrite(32'h80000002,"Assertion failed\n    at FPU.scala:864 assert(consistent(wdata))\n"); // @[FPU.scala 864:11:chipyard.TestHarness.RocketConfig.fir@240536.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_709 & _T_730) begin
          $fatal; // @[FPU.scala 864:11:chipyard.TestHarness.RocketConfig.fir@240537.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
