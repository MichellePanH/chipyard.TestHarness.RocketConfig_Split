module IBuf( // @[:chipyard.TestHarness.RocketConfig.fir@243407.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@243408.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@243409.4]
  output        io_imem_ready, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input         io_imem_valid, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input         io_imem_bits_btb_taken, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input         io_imem_bits_btb_bridx, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input  [4:0]  io_imem_bits_btb_entry, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input  [7:0]  io_imem_bits_btb_bht_history, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input  [39:0] io_imem_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input  [31:0] io_imem_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input         io_imem_bits_xcpt_pf_inst, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input         io_imem_bits_xcpt_ae_inst, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input         io_imem_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input         io_kill, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [39:0] io_pc, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [4:0]  io_btb_resp_entry, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [7:0]  io_btb_resp_bht_history, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  input         io_inst_0_ready, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output        io_inst_0_valid, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output        io_inst_0_bits_xcpt0_pf_inst, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output        io_inst_0_bits_xcpt0_ae_inst, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output        io_inst_0_bits_xcpt1_pf_inst, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output        io_inst_0_bits_xcpt1_ae_inst, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output        io_inst_0_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output        io_inst_0_bits_rvc, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [31:0] io_inst_0_bits_inst_bits, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [4:0]  io_inst_0_bits_inst_rd, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [4:0]  io_inst_0_bits_inst_rs1, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [4:0]  io_inst_0_bits_inst_rs2, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [4:0]  io_inst_0_bits_inst_rs3, // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
  output [31:0] io_inst_0_bits_raw // @[:chipyard.TestHarness.RocketConfig.fir@243410.4]
);
  wire [31:0] RVCExpander_io_in; // @[IBuf.scala 86:21:chipyard.TestHarness.RocketConfig.fir@243537.4]
  wire [31:0] RVCExpander_io_out_bits; // @[IBuf.scala 86:21:chipyard.TestHarness.RocketConfig.fir@243537.4]
  wire [4:0] RVCExpander_io_out_rd; // @[IBuf.scala 86:21:chipyard.TestHarness.RocketConfig.fir@243537.4]
  wire [4:0] RVCExpander_io_out_rs1; // @[IBuf.scala 86:21:chipyard.TestHarness.RocketConfig.fir@243537.4]
  wire [4:0] RVCExpander_io_out_rs2; // @[IBuf.scala 86:21:chipyard.TestHarness.RocketConfig.fir@243537.4]
  wire [4:0] RVCExpander_io_out_rs3; // @[IBuf.scala 86:21:chipyard.TestHarness.RocketConfig.fir@243537.4]
  wire  RVCExpander_io_rvc; // @[IBuf.scala 86:21:chipyard.TestHarness.RocketConfig.fir@243537.4]
  reg  nBufValid; // @[IBuf.scala 34:47:chipyard.TestHarness.RocketConfig.fir@243415.4]
  reg [31:0] _RAND_0;
  reg [39:0] buf__pc; // @[IBuf.scala 35:16:chipyard.TestHarness.RocketConfig.fir@243416.4]
  reg [63:0] _RAND_1;
  reg [31:0] buf__data; // @[IBuf.scala 35:16:chipyard.TestHarness.RocketConfig.fir@243416.4]
  reg [31:0] _RAND_2;
  reg  buf__xcpt_pf_inst; // @[IBuf.scala 35:16:chipyard.TestHarness.RocketConfig.fir@243416.4]
  reg [31:0] _RAND_3;
  reg  buf__xcpt_ae_inst; // @[IBuf.scala 35:16:chipyard.TestHarness.RocketConfig.fir@243416.4]
  reg [31:0] _RAND_4;
  reg  buf__replay; // @[IBuf.scala 35:16:chipyard.TestHarness.RocketConfig.fir@243416.4]
  reg [31:0] _RAND_5;
  reg [4:0] ibufBTBResp_entry; // @[IBuf.scala 36:24:chipyard.TestHarness.RocketConfig.fir@243417.4]
  reg [31:0] _RAND_6;
  reg [7:0] ibufBTBResp_bht_history; // @[IBuf.scala 36:24:chipyard.TestHarness.RocketConfig.fir@243417.4]
  reg [31:0] _RAND_7;
  wire  pcWordBits; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@243418.4]
  wire [1:0] _T; // @[IBuf.scala 41:64:chipyard.TestHarness.RocketConfig.fir@243422.4]
  wire [1:0] _T_1; // @[IBuf.scala 41:16:chipyard.TestHarness.RocketConfig.fir@243423.4]
  wire [1:0] _GEN_56; // @[IBuf.scala 41:88:chipyard.TestHarness.RocketConfig.fir@243424.4]
  wire [1:0] nIC; // @[IBuf.scala 41:88:chipyard.TestHarness.RocketConfig.fir@243425.4]
  wire [1:0] _T_4; // @[IBuf.scala 43:19:chipyard.TestHarness.RocketConfig.fir@243428.4]
  wire [1:0] _GEN_57; // @[IBuf.scala 43:49:chipyard.TestHarness.RocketConfig.fir@243429.4]
  wire [1:0] nValid; // @[IBuf.scala 43:49:chipyard.TestHarness.RocketConfig.fir@243430.4]
  wire [3:0] _T_62; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@243505.4]
  wire [3:0] _T_64; // @[IBuf.scala 74:33:chipyard.TestHarness.RocketConfig.fir@243507.4]
  wire [1:0] valid; // @[IBuf.scala 74:37:chipyard.TestHarness.RocketConfig.fir@243508.4]
  wire [1:0] _T_93; // @[IBuf.scala 93:42:chipyard.TestHarness.RocketConfig.fir@243555.4]
  wire  _T_95; // @[IBuf.scala 93:34:chipyard.TestHarness.RocketConfig.fir@243557.4]
  wire [1:0] _T_65; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@243509.4]
  wire [1:0] bufMask; // @[IBuf.scala 75:37:chipyard.TestHarness.RocketConfig.fir@243511.4]
  wire [1:0] buf_replay; // @[IBuf.scala 77:23:chipyard.TestHarness.RocketConfig.fir@243516.4]
  wire  _T_98; // @[IBuf.scala 93:48:chipyard.TestHarness.RocketConfig.fir@243560.4]
  wire [1:0] _T_128; // @[IBuf.scala 102:71:chipyard.TestHarness.RocketConfig.fir@243604.6]
  wire [1:0] nReady; // @[IBuf.scala 102:56:chipyard.TestHarness.RocketConfig.fir@243599.4]
  wire [1:0] nICReady; // @[IBuf.scala 42:25:chipyard.TestHarness.RocketConfig.fir@243427.4]
  wire  _T_6; // @[IBuf.scala 44:47:chipyard.TestHarness.RocketConfig.fir@243431.4]
  wire  _T_7; // @[IBuf.scala 44:37:chipyard.TestHarness.RocketConfig.fir@243432.4]
  wire  _T_8; // @[IBuf.scala 44:73:chipyard.TestHarness.RocketConfig.fir@243433.4]
  wire [1:0] _T_10; // @[IBuf.scala 44:92:chipyard.TestHarness.RocketConfig.fir@243435.4]
  wire  _T_11; // @[IBuf.scala 44:85:chipyard.TestHarness.RocketConfig.fir@243436.4]
  wire  _T_12; // @[IBuf.scala 44:80:chipyard.TestHarness.RocketConfig.fir@243437.4]
  wire [1:0] _T_16; // @[IBuf.scala 48:64:chipyard.TestHarness.RocketConfig.fir@243443.6]
  wire [1:0] _T_17; // @[IBuf.scala 48:23:chipyard.TestHarness.RocketConfig.fir@243444.6]
  wire  _T_19; // @[IBuf.scala 54:27:chipyard.TestHarness.RocketConfig.fir@243447.6]
  wire  _T_20; // @[IBuf.scala 54:62:chipyard.TestHarness.RocketConfig.fir@243448.6]
  wire  _T_21; // @[IBuf.scala 54:50:chipyard.TestHarness.RocketConfig.fir@243449.6]
  wire  _T_25; // @[IBuf.scala 54:68:chipyard.TestHarness.RocketConfig.fir@243453.6]
  wire [1:0] _T_27; // @[IBuf.scala 55:32:chipyard.TestHarness.RocketConfig.fir@243456.8]
  wire [63:0] _T_32; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243463.8]
  wire [5:0] _T_33; // @[IBuf.scala 128:19:chipyard.TestHarness.RocketConfig.fir@243464.8]
  wire [63:0] _T_34; // @[IBuf.scala 128:10:chipyard.TestHarness.RocketConfig.fir@243465.8]
  wire [39:0] _T_37; // @[IBuf.scala 59:35:chipyard.TestHarness.RocketConfig.fir@243469.8]
  wire [2:0] _T_38; // @[IBuf.scala 59:80:chipyard.TestHarness.RocketConfig.fir@243470.8]
  wire [39:0] _GEN_65; // @[IBuf.scala 59:68:chipyard.TestHarness.RocketConfig.fir@243471.8]
  wire [39:0] _T_40; // @[IBuf.scala 59:68:chipyard.TestHarness.RocketConfig.fir@243472.8]
  wire [39:0] _T_41; // @[IBuf.scala 59:109:chipyard.TestHarness.RocketConfig.fir@243473.8]
  wire [39:0] _T_42; // @[IBuf.scala 59:49:chipyard.TestHarness.RocketConfig.fir@243474.8]
  wire [1:0] _GEN_0; // @[IBuf.scala 54:92:chipyard.TestHarness.RocketConfig.fir@243454.6]
  wire [1:0] _GEN_23; // @[IBuf.scala 47:29:chipyard.TestHarness.RocketConfig.fir@243440.4]
  wire [1:0] _GEN_46; // @[IBuf.scala 63:20:chipyard.TestHarness.RocketConfig.fir@243479.4]
  wire [1:0] _T_44; // @[IBuf.scala 68:32:chipyard.TestHarness.RocketConfig.fir@243483.4]
  wire [1:0] icShiftAmt; // @[IBuf.scala 68:44:chipyard.TestHarness.RocketConfig.fir@243485.4]
  wire [63:0] _T_49; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243489.4]
  wire [127:0] _T_53; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243493.4]
  wire [5:0] _T_54; // @[IBuf.scala 121:19:chipyard.TestHarness.RocketConfig.fir@243494.4]
  wire [190:0] _GEN_68; // @[IBuf.scala 121:10:chipyard.TestHarness.RocketConfig.fir@243495.4]
  wire [190:0] _T_55; // @[IBuf.scala 121:10:chipyard.TestHarness.RocketConfig.fir@243495.4]
  wire [31:0] icData; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@243496.4]
  wire [4:0] _T_57; // @[IBuf.scala 71:65:chipyard.TestHarness.RocketConfig.fir@243498.4]
  wire [62:0] _T_58; // @[IBuf.scala 71:51:chipyard.TestHarness.RocketConfig.fir@243499.4]
  wire [31:0] icMask; // @[IBuf.scala 71:92:chipyard.TestHarness.RocketConfig.fir@243500.4]
  wire [31:0] _T_59; // @[IBuf.scala 72:21:chipyard.TestHarness.RocketConfig.fir@243501.4]
  wire [31:0] _T_60; // @[IBuf.scala 72:43:chipyard.TestHarness.RocketConfig.fir@243502.4]
  wire [31:0] _T_61; // @[IBuf.scala 72:41:chipyard.TestHarness.RocketConfig.fir@243503.4]
  wire  xcpt_1_pf_inst; // @[IBuf.scala 76:53:chipyard.TestHarness.RocketConfig.fir@243515.4]
  wire  xcpt_1_ae_inst; // @[IBuf.scala 76:53:chipyard.TestHarness.RocketConfig.fir@243515.4]
  wire [1:0] _T_69; // @[IBuf.scala 78:65:chipyard.TestHarness.RocketConfig.fir@243517.4]
  wire [1:0] _T_70; // @[IBuf.scala 78:63:chipyard.TestHarness.RocketConfig.fir@243518.4]
  wire [1:0] _T_71; // @[IBuf.scala 78:35:chipyard.TestHarness.RocketConfig.fir@243519.4]
  wire [1:0] ic_replay; // @[IBuf.scala 78:30:chipyard.TestHarness.RocketConfig.fir@243520.4]
  wire  _T_72; // @[IBuf.scala 79:10:chipyard.TestHarness.RocketConfig.fir@243521.4]
  wire  _T_73; // @[IBuf.scala 79:28:chipyard.TestHarness.RocketConfig.fir@243522.4]
  wire  _T_74; // @[IBuf.scala 79:25:chipyard.TestHarness.RocketConfig.fir@243523.4]
  wire  _T_75; // @[IBuf.scala 79:78:chipyard.TestHarness.RocketConfig.fir@243524.4]
  wire  _T_76; // @[IBuf.scala 79:52:chipyard.TestHarness.RocketConfig.fir@243525.4]
  wire  _T_78; // @[IBuf.scala 79:9:chipyard.TestHarness.RocketConfig.fir@243527.4]
  wire  _T_79; // @[IBuf.scala 79:9:chipyard.TestHarness.RocketConfig.fir@243528.4]
  wire  _T_80; // @[IBuf.scala 82:26:chipyard.TestHarness.RocketConfig.fir@243534.4]
  wire  _T_84; // @[IBuf.scala 92:37:chipyard.TestHarness.RocketConfig.fir@243546.4]
  wire [1:0] _T_87; // @[IBuf.scala 92:61:chipyard.TestHarness.RocketConfig.fir@243549.4]
  wire  _T_89; // @[IBuf.scala 92:49:chipyard.TestHarness.RocketConfig.fir@243551.4]
  wire [1:0] _T_108; // @[IBuf.scala 96:63:chipyard.TestHarness.RocketConfig.fir@243572.4]
  wire [1:0] _T_109; // @[IBuf.scala 96:35:chipyard.TestHarness.RocketConfig.fir@243573.4]
  wire  _T_116; // @[IBuf.scala 100:25:chipyard.TestHarness.RocketConfig.fir@243588.4]
  wire [1:0] _T_119; // @[IBuf.scala 100:50:chipyard.TestHarness.RocketConfig.fir@243591.4]
  wire  _T_121; // @[IBuf.scala 100:40:chipyard.TestHarness.RocketConfig.fir@243593.4]
  RVCExpander RVCExpander ( // @[IBuf.scala 86:21:chipyard.TestHarness.RocketConfig.fir@243537.4]
    .io_in(RVCExpander_io_in),
    .io_out_bits(RVCExpander_io_out_bits),
    .io_out_rd(RVCExpander_io_out_rd),
    .io_out_rs1(RVCExpander_io_out_rs1),
    .io_out_rs2(RVCExpander_io_out_rs2),
    .io_out_rs3(RVCExpander_io_out_rs3),
    .io_rvc(RVCExpander_io_rvc)
  );
  assign pcWordBits = io_imem_bits_pc[1]; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@243418.4]
  assign _T = io_imem_bits_btb_bridx + 1'h1; // @[IBuf.scala 41:64:chipyard.TestHarness.RocketConfig.fir@243422.4]
  assign _T_1 = io_imem_bits_btb_taken ? _T : 2'h2; // @[IBuf.scala 41:16:chipyard.TestHarness.RocketConfig.fir@243423.4]
  assign _GEN_56 = {{1'd0}, pcWordBits}; // @[IBuf.scala 41:88:chipyard.TestHarness.RocketConfig.fir@243424.4]
  assign nIC = _T_1 - _GEN_56; // @[IBuf.scala 41:88:chipyard.TestHarness.RocketConfig.fir@243425.4]
  assign _T_4 = io_imem_valid ? nIC : 2'h0; // @[IBuf.scala 43:19:chipyard.TestHarness.RocketConfig.fir@243428.4]
  assign _GEN_57 = {{1'd0}, nBufValid}; // @[IBuf.scala 43:49:chipyard.TestHarness.RocketConfig.fir@243429.4]
  assign nValid = _T_4 + _GEN_57; // @[IBuf.scala 43:49:chipyard.TestHarness.RocketConfig.fir@243430.4]
  assign _T_62 = 4'h1 << nValid; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@243505.4]
  assign _T_64 = _T_62 - 4'h1; // @[IBuf.scala 74:33:chipyard.TestHarness.RocketConfig.fir@243507.4]
  assign valid = _T_64[1:0]; // @[IBuf.scala 74:37:chipyard.TestHarness.RocketConfig.fir@243508.4]
  assign _T_93 = {{1'd0}, valid[1]}; // @[IBuf.scala 93:42:chipyard.TestHarness.RocketConfig.fir@243555.4]
  assign _T_95 = RVCExpander_io_rvc | _T_93[0]; // @[IBuf.scala 93:34:chipyard.TestHarness.RocketConfig.fir@243557.4]
  assign _T_65 = 2'h1 << nBufValid; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@243509.4]
  assign bufMask = _T_65 - 2'h1; // @[IBuf.scala 75:37:chipyard.TestHarness.RocketConfig.fir@243511.4]
  assign buf_replay = buf__replay ? bufMask : 2'h0; // @[IBuf.scala 77:23:chipyard.TestHarness.RocketConfig.fir@243516.4]
  assign _T_98 = _T_95 | buf_replay[0]; // @[IBuf.scala 93:48:chipyard.TestHarness.RocketConfig.fir@243560.4]
  assign _T_128 = RVCExpander_io_rvc ? 2'h1 : 2'h2; // @[IBuf.scala 102:71:chipyard.TestHarness.RocketConfig.fir@243604.6]
  assign nReady = _T_98 ? _T_128 : 2'h0; // @[IBuf.scala 102:56:chipyard.TestHarness.RocketConfig.fir@243599.4]
  assign nICReady = nReady - _GEN_57; // @[IBuf.scala 42:25:chipyard.TestHarness.RocketConfig.fir@243427.4]
  assign _T_6 = nReady >= _GEN_57; // @[IBuf.scala 44:47:chipyard.TestHarness.RocketConfig.fir@243431.4]
  assign _T_7 = io_inst_0_ready & _T_6; // @[IBuf.scala 44:37:chipyard.TestHarness.RocketConfig.fir@243432.4]
  assign _T_8 = nICReady >= nIC; // @[IBuf.scala 44:73:chipyard.TestHarness.RocketConfig.fir@243433.4]
  assign _T_10 = nIC - nICReady; // @[IBuf.scala 44:92:chipyard.TestHarness.RocketConfig.fir@243435.4]
  assign _T_11 = 2'h1 >= _T_10; // @[IBuf.scala 44:85:chipyard.TestHarness.RocketConfig.fir@243436.4]
  assign _T_12 = _T_8 | _T_11; // @[IBuf.scala 44:80:chipyard.TestHarness.RocketConfig.fir@243437.4]
  assign _T_16 = _GEN_57 - nReady; // @[IBuf.scala 48:64:chipyard.TestHarness.RocketConfig.fir@243443.6]
  assign _T_17 = _T_6 ? 2'h0 : _T_16; // @[IBuf.scala 48:23:chipyard.TestHarness.RocketConfig.fir@243444.6]
  assign _T_19 = io_imem_valid & _T_6; // @[IBuf.scala 54:27:chipyard.TestHarness.RocketConfig.fir@243447.6]
  assign _T_20 = nICReady < nIC; // @[IBuf.scala 54:62:chipyard.TestHarness.RocketConfig.fir@243448.6]
  assign _T_21 = _T_19 & _T_20; // @[IBuf.scala 54:50:chipyard.TestHarness.RocketConfig.fir@243449.6]
  assign _T_25 = _T_21 & _T_11; // @[IBuf.scala 54:68:chipyard.TestHarness.RocketConfig.fir@243453.6]
  assign _T_27 = _GEN_56 + nICReady; // @[IBuf.scala 55:32:chipyard.TestHarness.RocketConfig.fir@243456.8]
  assign _T_32 = {io_imem_bits_data[31:16],io_imem_bits_data[31:16],io_imem_bits_data}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243463.8]
  assign _T_33 = {_T_27, 4'h0}; // @[IBuf.scala 128:19:chipyard.TestHarness.RocketConfig.fir@243464.8]
  assign _T_34 = _T_32 >> _T_33; // @[IBuf.scala 128:10:chipyard.TestHarness.RocketConfig.fir@243465.8]
  assign _T_37 = io_imem_bits_pc & 40'hfffffffffc; // @[IBuf.scala 59:35:chipyard.TestHarness.RocketConfig.fir@243469.8]
  assign _T_38 = {nICReady, 1'h0}; // @[IBuf.scala 59:80:chipyard.TestHarness.RocketConfig.fir@243470.8]
  assign _GEN_65 = {{37'd0}, _T_38}; // @[IBuf.scala 59:68:chipyard.TestHarness.RocketConfig.fir@243471.8]
  assign _T_40 = io_imem_bits_pc + _GEN_65; // @[IBuf.scala 59:68:chipyard.TestHarness.RocketConfig.fir@243472.8]
  assign _T_41 = _T_40 & 40'h3; // @[IBuf.scala 59:109:chipyard.TestHarness.RocketConfig.fir@243473.8]
  assign _T_42 = _T_37 | _T_41; // @[IBuf.scala 59:49:chipyard.TestHarness.RocketConfig.fir@243474.8]
  assign _GEN_0 = _T_25 ? _T_10 : _T_17; // @[IBuf.scala 54:92:chipyard.TestHarness.RocketConfig.fir@243454.6]
  assign _GEN_23 = io_inst_0_ready ? _GEN_0 : {{1'd0}, nBufValid}; // @[IBuf.scala 47:29:chipyard.TestHarness.RocketConfig.fir@243440.4]
  assign _GEN_46 = io_kill ? 2'h0 : _GEN_23; // @[IBuf.scala 63:20:chipyard.TestHarness.RocketConfig.fir@243479.4]
  assign _T_44 = 2'h2 + _GEN_57; // @[IBuf.scala 68:32:chipyard.TestHarness.RocketConfig.fir@243483.4]
  assign icShiftAmt = _T_44 - _GEN_56; // @[IBuf.scala 68:44:chipyard.TestHarness.RocketConfig.fir@243485.4]
  assign _T_49 = {io_imem_bits_data,io_imem_bits_data[15:0],io_imem_bits_data[15:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243489.4]
  assign _T_53 = {_T_49[63:48],_T_49[63:48],_T_49[63:48],_T_49[63:48],io_imem_bits_data,io_imem_bits_data[15:0],io_imem_bits_data[15:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@243493.4]
  assign _T_54 = {icShiftAmt, 4'h0}; // @[IBuf.scala 121:19:chipyard.TestHarness.RocketConfig.fir@243494.4]
  assign _GEN_68 = {{63'd0}, _T_53}; // @[IBuf.scala 121:10:chipyard.TestHarness.RocketConfig.fir@243495.4]
  assign _T_55 = _GEN_68 << _T_54; // @[IBuf.scala 121:10:chipyard.TestHarness.RocketConfig.fir@243495.4]
  assign icData = _T_55[95:64]; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@243496.4]
  assign _T_57 = {nBufValid, 4'h0}; // @[IBuf.scala 71:65:chipyard.TestHarness.RocketConfig.fir@243498.4]
  assign _T_58 = 63'hffffffff << _T_57; // @[IBuf.scala 71:51:chipyard.TestHarness.RocketConfig.fir@243499.4]
  assign icMask = _T_58[31:0]; // @[IBuf.scala 71:92:chipyard.TestHarness.RocketConfig.fir@243500.4]
  assign _T_59 = icData & icMask; // @[IBuf.scala 72:21:chipyard.TestHarness.RocketConfig.fir@243501.4]
  assign _T_60 = ~icMask; // @[IBuf.scala 72:43:chipyard.TestHarness.RocketConfig.fir@243502.4]
  assign _T_61 = buf__data & _T_60; // @[IBuf.scala 72:41:chipyard.TestHarness.RocketConfig.fir@243503.4]
  assign xcpt_1_pf_inst = bufMask[1] ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 76:53:chipyard.TestHarness.RocketConfig.fir@243515.4]
  assign xcpt_1_ae_inst = bufMask[1] ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 76:53:chipyard.TestHarness.RocketConfig.fir@243515.4]
  assign _T_69 = ~bufMask; // @[IBuf.scala 78:65:chipyard.TestHarness.RocketConfig.fir@243517.4]
  assign _T_70 = valid & _T_69; // @[IBuf.scala 78:63:chipyard.TestHarness.RocketConfig.fir@243518.4]
  assign _T_71 = io_imem_bits_replay ? _T_70 : 2'h0; // @[IBuf.scala 78:35:chipyard.TestHarness.RocketConfig.fir@243519.4]
  assign ic_replay = buf_replay | _T_71; // @[IBuf.scala 78:30:chipyard.TestHarness.RocketConfig.fir@243520.4]
  assign _T_72 = ~io_imem_valid; // @[IBuf.scala 79:10:chipyard.TestHarness.RocketConfig.fir@243521.4]
  assign _T_73 = ~io_imem_bits_btb_taken; // @[IBuf.scala 79:28:chipyard.TestHarness.RocketConfig.fir@243522.4]
  assign _T_74 = _T_72 | _T_73; // @[IBuf.scala 79:25:chipyard.TestHarness.RocketConfig.fir@243523.4]
  assign _T_75 = io_imem_bits_btb_bridx >= pcWordBits; // @[IBuf.scala 79:78:chipyard.TestHarness.RocketConfig.fir@243524.4]
  assign _T_76 = _T_74 | _T_75; // @[IBuf.scala 79:52:chipyard.TestHarness.RocketConfig.fir@243525.4]
  assign _T_78 = _T_76 | reset; // @[IBuf.scala 79:9:chipyard.TestHarness.RocketConfig.fir@243527.4]
  assign _T_79 = ~_T_78; // @[IBuf.scala 79:9:chipyard.TestHarness.RocketConfig.fir@243528.4]
  assign _T_80 = nBufValid > 1'h0; // @[IBuf.scala 82:26:chipyard.TestHarness.RocketConfig.fir@243534.4]
  assign _T_84 = ~RVCExpander_io_rvc; // @[IBuf.scala 92:37:chipyard.TestHarness.RocketConfig.fir@243546.4]
  assign _T_87 = {{1'd0}, ic_replay[1]}; // @[IBuf.scala 92:61:chipyard.TestHarness.RocketConfig.fir@243549.4]
  assign _T_89 = _T_84 & _T_87[0]; // @[IBuf.scala 92:49:chipyard.TestHarness.RocketConfig.fir@243551.4]
  assign _T_108 = {xcpt_1_pf_inst,xcpt_1_ae_inst}; // @[IBuf.scala 96:63:chipyard.TestHarness.RocketConfig.fir@243572.4]
  assign _T_109 = RVCExpander_io_rvc ? 2'h0 : _T_108; // @[IBuf.scala 96:35:chipyard.TestHarness.RocketConfig.fir@243573.4]
  assign _T_116 = bufMask[0] & RVCExpander_io_rvc; // @[IBuf.scala 100:25:chipyard.TestHarness.RocketConfig.fir@243588.4]
  assign _T_119 = {{1'd0}, bufMask[1]}; // @[IBuf.scala 100:50:chipyard.TestHarness.RocketConfig.fir@243591.4]
  assign _T_121 = _T_116 | _T_119[0]; // @[IBuf.scala 100:40:chipyard.TestHarness.RocketConfig.fir@243593.4]
  assign io_imem_ready = _T_7 & _T_12; // @[IBuf.scala 44:17:chipyard.TestHarness.RocketConfig.fir@243439.4]
  assign io_pc = _T_80 ? buf__pc : io_imem_bits_pc; // @[IBuf.scala 82:9:chipyard.TestHarness.RocketConfig.fir@243536.4]
  assign io_btb_resp_entry = _T_121 ? ibufBTBResp_entry : io_imem_bits_btb_entry; // @[IBuf.scala 81:15:chipyard.TestHarness.RocketConfig.fir@243533.4 IBuf.scala 100:71:chipyard.TestHarness.RocketConfig.fir@243595.6]
  assign io_btb_resp_bht_history = _T_121 ? ibufBTBResp_bht_history : io_imem_bits_btb_bht_history; // @[IBuf.scala 81:15:chipyard.TestHarness.RocketConfig.fir@243533.4 IBuf.scala 100:71:chipyard.TestHarness.RocketConfig.fir@243595.6]
  assign io_inst_0_valid = valid[0] & _T_98; // @[IBuf.scala 94:24:chipyard.TestHarness.RocketConfig.fir@243564.4]
  assign io_inst_0_bits_xcpt0_pf_inst = bufMask[0] ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 95:29:chipyard.TestHarness.RocketConfig.fir@243567.4]
  assign io_inst_0_bits_xcpt0_ae_inst = bufMask[0] ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 95:29:chipyard.TestHarness.RocketConfig.fir@243567.4]
  assign io_inst_0_bits_xcpt1_pf_inst = _T_109[1]; // @[IBuf.scala 96:29:chipyard.TestHarness.RocketConfig.fir@243583.4]
  assign io_inst_0_bits_xcpt1_ae_inst = _T_109[0]; // @[IBuf.scala 96:29:chipyard.TestHarness.RocketConfig.fir@243583.4]
  assign io_inst_0_bits_replay = ic_replay[0] | _T_89; // @[IBuf.scala 97:30:chipyard.TestHarness.RocketConfig.fir@243584.4]
  assign io_inst_0_bits_rvc = RVCExpander_io_rvc; // @[IBuf.scala 98:27:chipyard.TestHarness.RocketConfig.fir@243585.4]
  assign io_inst_0_bits_inst_bits = RVCExpander_io_out_bits; // @[IBuf.scala 88:26:chipyard.TestHarness.RocketConfig.fir@243542.4]
  assign io_inst_0_bits_inst_rd = RVCExpander_io_out_rd; // @[IBuf.scala 88:26:chipyard.TestHarness.RocketConfig.fir@243542.4]
  assign io_inst_0_bits_inst_rs1 = RVCExpander_io_out_rs1; // @[IBuf.scala 88:26:chipyard.TestHarness.RocketConfig.fir@243542.4]
  assign io_inst_0_bits_inst_rs2 = RVCExpander_io_out_rs2; // @[IBuf.scala 88:26:chipyard.TestHarness.RocketConfig.fir@243542.4]
  assign io_inst_0_bits_inst_rs3 = RVCExpander_io_out_rs3; // @[IBuf.scala 88:26:chipyard.TestHarness.RocketConfig.fir@243542.4]
  assign io_inst_0_bits_raw = _T_59 | _T_61; // @[IBuf.scala 89:25:chipyard.TestHarness.RocketConfig.fir@243543.4]
  assign RVCExpander_io_in = _T_59 | _T_61; // @[IBuf.scala 87:15:chipyard.TestHarness.RocketConfig.fir@243541.4]
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
  nBufValid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  buf__pc = _RAND_1[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  buf__data = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  buf__xcpt_pf_inst = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  buf__xcpt_ae_inst = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  buf__replay = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ibufBTBResp_entry = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ibufBTBResp_bht_history = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      nBufValid <= 1'h0;
    end else begin
      nBufValid <= _GEN_46[0];
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__pc <= _T_42;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__data <= {{16'd0}, _T_34[15:0]};
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__xcpt_pf_inst <= io_imem_bits_xcpt_pf_inst;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__xcpt_ae_inst <= io_imem_bits_xcpt_ae_inst;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__replay <= io_imem_bits_replay;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        ibufBTBResp_entry <= io_imem_bits_btb_entry;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        ibufBTBResp_bht_history <= io_imem_bits_btb_bht_history;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_79) begin
          $fwrite(32'h80000002,"Assertion failed\n    at IBuf.scala:79 assert(!io.imem.valid || !io.imem.bits.btb.taken || io.imem.bits.btb.bridx >= pcWordBits)\n"); // @[IBuf.scala 79:9:chipyard.TestHarness.RocketConfig.fir@243530.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_79) begin
          $fatal; // @[IBuf.scala 79:9:chipyard.TestHarness.RocketConfig.fir@243531.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
