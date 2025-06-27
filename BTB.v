module BTB( // @[:chipyard.TestHarness.RocketConfig.fir@227490.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@227491.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@227492.4]
  input  [38:0] io_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output        io_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output        io_resp_bits_taken, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output        io_resp_bits_bridx, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output [38:0] io_resp_bits_target, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output [4:0]  io_resp_bits_entry, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output [7:0]  io_resp_bits_bht_history, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output        io_resp_bits_bht_value, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_btb_update_valid, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input  [4:0]  io_btb_update_bits_prediction_entry, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input  [38:0] io_btb_update_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_btb_update_bits_isValid, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input  [38:0] io_btb_update_bits_br_pc, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input  [1:0]  io_btb_update_bits_cfiType, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_bht_update_valid, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input  [7:0]  io_bht_update_bits_prediction_history, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input  [38:0] io_bht_update_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_bht_update_bits_branch, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_bht_update_bits_taken, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_bht_update_bits_mispredict, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_bht_advance_valid, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_bht_advance_bits_bht_value, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_ras_update_valid, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input  [1:0]  io_ras_update_bits_cfiType, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input  [38:0] io_ras_update_bits_returnAddr, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output        io_ras_head_valid, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  output [38:0] io_ras_head_bits, // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
  input         io_flush // @[:chipyard.TestHarness.RocketConfig.fir@227493.4]
);
  reg  _T_883 [0:511]; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
  reg [31:0] _RAND_0;
  wire  _T_883__T_952_data; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
  wire [8:0] _T_883__T_952_addr; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
  wire  _T_883__T_965_data; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
  wire [8:0] _T_883__T_965_addr; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
  wire  _T_883__T_965_mask; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
  wire  _T_883__T_965_en; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
  reg [12:0] idxs_0; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_1;
  reg [12:0] idxs_1; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_2;
  reg [12:0] idxs_2; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_3;
  reg [12:0] idxs_3; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_4;
  reg [12:0] idxs_4; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_5;
  reg [12:0] idxs_5; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_6;
  reg [12:0] idxs_6; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_7;
  reg [12:0] idxs_7; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_8;
  reg [12:0] idxs_8; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_9;
  reg [12:0] idxs_9; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_10;
  reg [12:0] idxs_10; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_11;
  reg [12:0] idxs_11; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_12;
  reg [12:0] idxs_12; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_13;
  reg [12:0] idxs_13; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_14;
  reg [12:0] idxs_14; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_15;
  reg [12:0] idxs_15; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_16;
  reg [12:0] idxs_16; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_17;
  reg [12:0] idxs_17; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_18;
  reg [12:0] idxs_18; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_19;
  reg [12:0] idxs_19; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_20;
  reg [12:0] idxs_20; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_21;
  reg [12:0] idxs_21; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_22;
  reg [12:0] idxs_22; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_23;
  reg [12:0] idxs_23; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_24;
  reg [12:0] idxs_24; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_25;
  reg [12:0] idxs_25; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_26;
  reg [12:0] idxs_26; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_27;
  reg [12:0] idxs_27; // @[BTB.scala 188:17:chipyard.TestHarness.RocketConfig.fir@227498.4]
  reg [31:0] _RAND_28;
  reg [2:0] idxPages_0; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_29;
  reg [2:0] idxPages_1; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_30;
  reg [2:0] idxPages_2; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_31;
  reg [2:0] idxPages_3; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_32;
  reg [2:0] idxPages_4; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_33;
  reg [2:0] idxPages_5; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_34;
  reg [2:0] idxPages_6; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_35;
  reg [2:0] idxPages_7; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_36;
  reg [2:0] idxPages_8; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_37;
  reg [2:0] idxPages_9; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_38;
  reg [2:0] idxPages_10; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_39;
  reg [2:0] idxPages_11; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_40;
  reg [2:0] idxPages_12; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_41;
  reg [2:0] idxPages_13; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_42;
  reg [2:0] idxPages_14; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_43;
  reg [2:0] idxPages_15; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_44;
  reg [2:0] idxPages_16; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_45;
  reg [2:0] idxPages_17; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_46;
  reg [2:0] idxPages_18; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_47;
  reg [2:0] idxPages_19; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_48;
  reg [2:0] idxPages_20; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_49;
  reg [2:0] idxPages_21; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_50;
  reg [2:0] idxPages_22; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_51;
  reg [2:0] idxPages_23; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_52;
  reg [2:0] idxPages_24; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_53;
  reg [2:0] idxPages_25; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_54;
  reg [2:0] idxPages_26; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_55;
  reg [2:0] idxPages_27; // @[BTB.scala 189:21:chipyard.TestHarness.RocketConfig.fir@227499.4]
  reg [31:0] _RAND_56;
  reg [12:0] tgts_0; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_57;
  reg [12:0] tgts_1; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_58;
  reg [12:0] tgts_2; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_59;
  reg [12:0] tgts_3; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_60;
  reg [12:0] tgts_4; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_61;
  reg [12:0] tgts_5; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_62;
  reg [12:0] tgts_6; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_63;
  reg [12:0] tgts_7; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_64;
  reg [12:0] tgts_8; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_65;
  reg [12:0] tgts_9; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_66;
  reg [12:0] tgts_10; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_67;
  reg [12:0] tgts_11; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_68;
  reg [12:0] tgts_12; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_69;
  reg [12:0] tgts_13; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_70;
  reg [12:0] tgts_14; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_71;
  reg [12:0] tgts_15; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_72;
  reg [12:0] tgts_16; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_73;
  reg [12:0] tgts_17; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_74;
  reg [12:0] tgts_18; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_75;
  reg [12:0] tgts_19; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_76;
  reg [12:0] tgts_20; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_77;
  reg [12:0] tgts_21; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_78;
  reg [12:0] tgts_22; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_79;
  reg [12:0] tgts_23; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_80;
  reg [12:0] tgts_24; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_81;
  reg [12:0] tgts_25; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_82;
  reg [12:0] tgts_26; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_83;
  reg [12:0] tgts_27; // @[BTB.scala 190:17:chipyard.TestHarness.RocketConfig.fir@227500.4]
  reg [31:0] _RAND_84;
  reg [2:0] tgtPages_0; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_85;
  reg [2:0] tgtPages_1; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_86;
  reg [2:0] tgtPages_2; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_87;
  reg [2:0] tgtPages_3; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_88;
  reg [2:0] tgtPages_4; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_89;
  reg [2:0] tgtPages_5; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_90;
  reg [2:0] tgtPages_6; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_91;
  reg [2:0] tgtPages_7; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_92;
  reg [2:0] tgtPages_8; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_93;
  reg [2:0] tgtPages_9; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_94;
  reg [2:0] tgtPages_10; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_95;
  reg [2:0] tgtPages_11; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_96;
  reg [2:0] tgtPages_12; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_97;
  reg [2:0] tgtPages_13; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_98;
  reg [2:0] tgtPages_14; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_99;
  reg [2:0] tgtPages_15; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_100;
  reg [2:0] tgtPages_16; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_101;
  reg [2:0] tgtPages_17; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_102;
  reg [2:0] tgtPages_18; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_103;
  reg [2:0] tgtPages_19; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_104;
  reg [2:0] tgtPages_20; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_105;
  reg [2:0] tgtPages_21; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_106;
  reg [2:0] tgtPages_22; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_107;
  reg [2:0] tgtPages_23; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_108;
  reg [2:0] tgtPages_24; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_109;
  reg [2:0] tgtPages_25; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_110;
  reg [2:0] tgtPages_26; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_111;
  reg [2:0] tgtPages_27; // @[BTB.scala 191:21:chipyard.TestHarness.RocketConfig.fir@227501.4]
  reg [31:0] _RAND_112;
  reg [24:0] pages_0; // @[BTB.scala 192:18:chipyard.TestHarness.RocketConfig.fir@227502.4]
  reg [31:0] _RAND_113;
  reg [24:0] pages_1; // @[BTB.scala 192:18:chipyard.TestHarness.RocketConfig.fir@227502.4]
  reg [31:0] _RAND_114;
  reg [24:0] pages_2; // @[BTB.scala 192:18:chipyard.TestHarness.RocketConfig.fir@227502.4]
  reg [31:0] _RAND_115;
  reg [24:0] pages_3; // @[BTB.scala 192:18:chipyard.TestHarness.RocketConfig.fir@227502.4]
  reg [31:0] _RAND_116;
  reg [24:0] pages_4; // @[BTB.scala 192:18:chipyard.TestHarness.RocketConfig.fir@227502.4]
  reg [31:0] _RAND_117;
  reg [24:0] pages_5; // @[BTB.scala 192:18:chipyard.TestHarness.RocketConfig.fir@227502.4]
  reg [31:0] _RAND_118;
  reg [5:0] pageValid; // @[BTB.scala 193:22:chipyard.TestHarness.RocketConfig.fir@227503.4]
  reg [31:0] _RAND_119;
  reg [27:0] isValid; // @[BTB.scala 195:20:chipyard.TestHarness.RocketConfig.fir@227504.4]
  reg [31:0] _RAND_120;
  reg [1:0] cfiType_0; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_121;
  reg [1:0] cfiType_1; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_122;
  reg [1:0] cfiType_2; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_123;
  reg [1:0] cfiType_3; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_124;
  reg [1:0] cfiType_4; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_125;
  reg [1:0] cfiType_5; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_126;
  reg [1:0] cfiType_6; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_127;
  reg [1:0] cfiType_7; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_128;
  reg [1:0] cfiType_8; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_129;
  reg [1:0] cfiType_9; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_130;
  reg [1:0] cfiType_10; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_131;
  reg [1:0] cfiType_11; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_132;
  reg [1:0] cfiType_12; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_133;
  reg [1:0] cfiType_13; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_134;
  reg [1:0] cfiType_14; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_135;
  reg [1:0] cfiType_15; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_136;
  reg [1:0] cfiType_16; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_137;
  reg [1:0] cfiType_17; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_138;
  reg [1:0] cfiType_18; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_139;
  reg [1:0] cfiType_19; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_140;
  reg [1:0] cfiType_20; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_141;
  reg [1:0] cfiType_21; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_142;
  reg [1:0] cfiType_22; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_143;
  reg [1:0] cfiType_23; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_144;
  reg [1:0] cfiType_24; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_145;
  reg [1:0] cfiType_25; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_146;
  reg [1:0] cfiType_26; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_147;
  reg [1:0] cfiType_27; // @[BTB.scala 196:20:chipyard.TestHarness.RocketConfig.fir@227505.4]
  reg [31:0] _RAND_148;
  reg  brIdx_0; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_149;
  reg  brIdx_1; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_150;
  reg  brIdx_2; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_151;
  reg  brIdx_3; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_152;
  reg  brIdx_4; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_153;
  reg  brIdx_5; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_154;
  reg  brIdx_6; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_155;
  reg  brIdx_7; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_156;
  reg  brIdx_8; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_157;
  reg  brIdx_9; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_158;
  reg  brIdx_10; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_159;
  reg  brIdx_11; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_160;
  reg  brIdx_12; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_161;
  reg  brIdx_13; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_162;
  reg  brIdx_14; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_163;
  reg  brIdx_15; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_164;
  reg  brIdx_16; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_165;
  reg  brIdx_17; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_166;
  reg  brIdx_18; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_167;
  reg  brIdx_19; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_168;
  reg  brIdx_20; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_169;
  reg  brIdx_21; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_170;
  reg  brIdx_22; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_171;
  reg  brIdx_23; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_172;
  reg  brIdx_24; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_173;
  reg  brIdx_25; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_174;
  reg  brIdx_26; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_175;
  reg  brIdx_27; // @[BTB.scala 197:18:chipyard.TestHarness.RocketConfig.fir@227506.4]
  reg [31:0] _RAND_176;
  reg  r_btb_updatePipe_valid; // @[Valid.scala 117:22:chipyard.TestHarness.RocketConfig.fir@227507.4]
  reg [31:0] _RAND_177;
  reg [4:0] r_btb_updatePipe_bits_prediction_entry; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@227509.4]
  reg [31:0] _RAND_178;
  reg [38:0] r_btb_updatePipe_bits_pc; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@227509.4]
  reg [63:0] _RAND_179;
  reg  r_btb_updatePipe_bits_isValid; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@227509.4]
  reg [31:0] _RAND_180;
  reg [38:0] r_btb_updatePipe_bits_br_pc; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@227509.4]
  reg [63:0] _RAND_181;
  reg [1:0] r_btb_updatePipe_bits_cfiType; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@227509.4]
  reg [31:0] _RAND_182;
  wire  _T_1; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227531.4]
  wire  _T_2; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227532.4]
  wire  _T_3; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227533.4]
  wire  _T_4; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227534.4]
  wire  _T_5; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227535.4]
  wire  _T_6; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227536.4]
  wire [5:0] _T_11; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227541.4]
  wire [5:0] pageHit; // @[BTB.scala 202:15:chipyard.TestHarness.RocketConfig.fir@227542.4]
  wire  _T_13; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227544.4]
  wire  _T_14; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227545.4]
  wire  _T_15; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227546.4]
  wire  _T_16; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227547.4]
  wire  _T_17; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227548.4]
  wire  _T_18; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227549.4]
  wire  _T_19; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227550.4]
  wire  _T_20; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227551.4]
  wire  _T_21; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227552.4]
  wire  _T_22; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227553.4]
  wire  _T_23; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227554.4]
  wire  _T_24; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227555.4]
  wire  _T_25; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227556.4]
  wire  _T_26; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227557.4]
  wire  _T_27; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227558.4]
  wire  _T_28; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227559.4]
  wire  _T_29; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227560.4]
  wire  _T_30; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227561.4]
  wire  _T_31; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227562.4]
  wire  _T_32; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227563.4]
  wire  _T_33; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227564.4]
  wire  _T_34; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227565.4]
  wire  _T_35; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227566.4]
  wire  _T_36; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227567.4]
  wire  _T_37; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227568.4]
  wire  _T_38; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227569.4]
  wire  _T_39; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227570.4]
  wire  _T_40; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227571.4]
  wire [6:0] _T_46; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227577.4]
  wire [13:0] _T_53; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227584.4]
  wire [6:0] _T_59; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227590.4]
  wire [27:0] _T_67; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227598.4]
  wire [27:0] idxHit; // @[BTB.scala 206:32:chipyard.TestHarness.RocketConfig.fir@227599.4]
  wire  _T_69; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227601.4]
  wire  _T_70; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227602.4]
  wire  _T_71; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227603.4]
  wire  _T_72; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227604.4]
  wire  _T_73; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227605.4]
  wire  _T_74; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227606.4]
  wire [5:0] _T_79; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227611.4]
  wire [5:0] updatePageHit; // @[BTB.scala 202:15:chipyard.TestHarness.RocketConfig.fir@227612.4]
  wire  updateHit; // @[BTB.scala 220:48:chipyard.TestHarness.RocketConfig.fir@227613.4]
  wire  useUpdatePageHit; // @[BTB.scala 222:40:chipyard.TestHarness.RocketConfig.fir@227614.4]
  wire  usePageHit; // @[BTB.scala 223:28:chipyard.TestHarness.RocketConfig.fir@227615.4]
  wire  doIdxPageRepl; // @[BTB.scala 224:23:chipyard.TestHarness.RocketConfig.fir@227616.4]
  reg [2:0] nextPageRepl; // @[BTB.scala 225:25:chipyard.TestHarness.RocketConfig.fir@227617.4]
  reg [31:0] _RAND_183;
  wire [5:0] _T_82; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227620.4]
  wire [7:0] _T_83; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@227621.4]
  wire [7:0] _T_84; // @[BTB.scala 226:70:chipyard.TestHarness.RocketConfig.fir@227622.4]
  wire [7:0] _GEN_432; // @[BTB.scala 226:65:chipyard.TestHarness.RocketConfig.fir@227623.4]
  wire [7:0] idxPageRepl; // @[BTB.scala 226:65:chipyard.TestHarness.RocketConfig.fir@227623.4]
  wire [7:0] idxPageUpdateOH; // @[BTB.scala 227:28:chipyard.TestHarness.RocketConfig.fir@227624.4]
  wire  _T_87; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@227627.4]
  wire [3:0] _T_88; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@227628.4]
  wire  _T_91; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@227631.4]
  wire [1:0] _T_92; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@227632.4]
  wire [2:0] idxPageUpdate; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227635.4]
  wire [7:0] idxPageReplEn; // @[BTB.scala 229:26:chipyard.TestHarness.RocketConfig.fir@227636.4]
  wire  samePage; // @[BTB.scala 231:45:chipyard.TestHarness.RocketConfig.fir@227639.4]
  wire  _T_97; // @[BTB.scala 232:23:chipyard.TestHarness.RocketConfig.fir@227640.4]
  wire  _T_98; // @[BTB.scala 232:36:chipyard.TestHarness.RocketConfig.fir@227641.4]
  wire  doTgtPageRepl; // @[BTB.scala 232:33:chipyard.TestHarness.RocketConfig.fir@227642.4]
  wire [5:0] _T_101; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227645.4]
  wire [7:0] tgtPageRepl; // @[BTB.scala 233:24:chipyard.TestHarness.RocketConfig.fir@227646.4]
  wire [7:0] _T_102; // @[BTB.scala 234:45:chipyard.TestHarness.RocketConfig.fir@227647.4]
  wire [7:0] _GEN_433; // @[BTB.scala 234:40:chipyard.TestHarness.RocketConfig.fir@227648.4]
  wire [7:0] _T_103; // @[BTB.scala 234:40:chipyard.TestHarness.RocketConfig.fir@227648.4]
  wire  _T_106; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@227651.4]
  wire [3:0] _T_107; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@227652.4]
  wire  _T_110; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@227655.4]
  wire [1:0] _T_111; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@227656.4]
  wire [2:0] tgtPageUpdate; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227659.4]
  wire [7:0] tgtPageReplEn; // @[BTB.scala 235:26:chipyard.TestHarness.RocketConfig.fir@227660.4]
  wire  _T_114; // @[BTB.scala 237:46:chipyard.TestHarness.RocketConfig.fir@227661.4]
  wire  _T_115; // @[BTB.scala 237:28:chipyard.TestHarness.RocketConfig.fir@227662.4]
  wire  _T_116; // @[BTB.scala 238:30:chipyard.TestHarness.RocketConfig.fir@227664.6]
  wire [1:0] _T_117; // @[BTB.scala 239:40:chipyard.TestHarness.RocketConfig.fir@227665.6]
  wire [2:0] _GEN_434; // @[BTB.scala 239:29:chipyard.TestHarness.RocketConfig.fir@227666.6]
  wire [2:0] _T_119; // @[BTB.scala 239:29:chipyard.TestHarness.RocketConfig.fir@227667.6]
  wire  _T_120; // @[BTB.scala 240:30:chipyard.TestHarness.RocketConfig.fir@227668.6]
  reg [26:0] _T_123; // @[Replacement.scala 42:30:chipyard.TestHarness.RocketConfig.fir@227673.4]
  reg [31:0] _RAND_184;
  wire [27:0] _T_124; // @[Replacement.scala 61:31:chipyard.TestHarness.RocketConfig.fir@227674.4]
  wire [27:0] _T_128; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227678.4]
  wire [1:0] _T_131; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227681.4]
  wire [5:0] _T_132; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227682.4]
  wire  _T_134; // @[Replacement.scala 64:70:chipyard.TestHarness.RocketConfig.fir@227684.4]
  wire [27:0] _T_135; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227685.4]
  wire  _T_137; // @[Replacement.scala 65:32:chipyard.TestHarness.RocketConfig.fir@227687.4]
  wire [2:0] _T_138; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227688.4]
  wire [5:0] _T_139; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227689.4]
  wire  _T_141; // @[Replacement.scala 64:70:chipyard.TestHarness.RocketConfig.fir@227691.4]
  wire [27:0] _T_142; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227692.4]
  wire  _T_144; // @[Replacement.scala 65:32:chipyard.TestHarness.RocketConfig.fir@227694.4]
  wire [3:0] _T_145; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227695.4]
  wire [5:0] _T_146; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227696.4]
  wire  _T_148; // @[Replacement.scala 64:70:chipyard.TestHarness.RocketConfig.fir@227698.4]
  wire [27:0] _T_149; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227699.4]
  wire  _T_151; // @[Replacement.scala 65:32:chipyard.TestHarness.RocketConfig.fir@227701.4]
  wire [4:0] _T_152; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227702.4]
  wire [5:0] _T_153; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227703.4]
  wire  _T_155; // @[Replacement.scala 64:70:chipyard.TestHarness.RocketConfig.fir@227705.4]
  wire [27:0] _T_156; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227706.4]
  wire  _T_158; // @[Replacement.scala 65:32:chipyard.TestHarness.RocketConfig.fir@227708.4]
  wire [5:0] _T_159; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227709.4]
  wire [4:0] waddr; // @[BTB.scala 244:18:chipyard.TestHarness.RocketConfig.fir@227711.4]
  reg  r_respPipe_valid; // @[Valid.scala 117:22:chipyard.TestHarness.RocketConfig.fir@227712.4]
  reg [31:0] _RAND_185;
  reg  r_respPipe_bits_taken; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@227714.4]
  reg [31:0] _RAND_186;
  reg [4:0] r_respPipe_bits_entry; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@227714.4]
  reg [31:0] _RAND_187;
  wire  _T_161; // @[BTB.scala 246:22:chipyard.TestHarness.RocketConfig.fir@227729.4]
  wire  _T_162; // @[BTB.scala 246:43:chipyard.TestHarness.RocketConfig.fir@227730.4]
  wire [4:0] _T_163; // @[BTB.scala 247:20:chipyard.TestHarness.RocketConfig.fir@227732.6]
  wire  _T_166; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227735.6]
  wire [27:0] _T_168; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227737.6]
  wire [27:0] _T_169; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227738.6]
  wire [27:0] _T_170; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227739.6]
  wire [27:0] _T_171; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227740.6]
  wire [27:0] _T_172; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227741.6]
  wire [1:0] _T_173; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227742.6]
  wire  _T_175; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227744.6]
  wire [3:0] _T_176; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227745.6]
  wire [27:0] _GEN_436; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227746.6]
  wire [27:0] _T_177; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227746.6]
  wire [27:0] _T_178; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227747.6]
  wire [27:0] _T_179; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227748.6]
  wire [27:0] _T_180; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227749.6]
  wire [27:0] _T_181; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227750.6]
  wire [2:0] _T_182; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227751.6]
  wire  _T_184; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227753.6]
  wire [7:0] _T_185; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227754.6]
  wire [27:0] _GEN_438; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227755.6]
  wire [27:0] _T_186; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227755.6]
  wire [27:0] _T_187; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227756.6]
  wire [27:0] _T_188; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227757.6]
  wire [27:0] _T_189; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227758.6]
  wire [27:0] _T_190; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227759.6]
  wire [3:0] _T_191; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227760.6]
  wire  _T_193; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227762.6]
  wire [15:0] _T_194; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227763.6]
  wire [27:0] _GEN_440; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227764.6]
  wire [27:0] _T_195; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227764.6]
  wire [27:0] _T_196; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227765.6]
  wire [27:0] _T_197; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227766.6]
  wire [27:0] _T_198; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227767.6]
  wire [27:0] _T_199; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227768.6]
  wire [4:0] _T_200; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227769.6]
  wire  _T_202; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227771.6]
  wire [31:0] _T_203; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227772.6]
  wire [31:0] _GEN_442; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227773.6]
  wire [31:0] _T_204; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227773.6]
  wire [27:0] _T_205; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227774.6]
  wire [31:0] _GEN_443; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227775.6]
  wire [31:0] _T_206; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227775.6]
  wire [31:0] _T_207; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227776.6]
  wire [31:0] _T_208; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227777.6]
  wire [31:0] _T_211; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@227783.6]
  wire [3:0] _T_214; // @[BTB.scala 254:38:chipyard.TestHarness.RocketConfig.fir@227788.6]
  wire [31:0] _GEN_444; // @[BTB.scala 257:55:chipyard.TestHarness.RocketConfig.fir@227792.6]
  wire [31:0] _T_215; // @[BTB.scala 257:55:chipyard.TestHarness.RocketConfig.fir@227792.6]
  wire [31:0] _T_216; // @[BTB.scala 257:73:chipyard.TestHarness.RocketConfig.fir@227793.6]
  wire [31:0] _T_217; // @[BTB.scala 257:71:chipyard.TestHarness.RocketConfig.fir@227794.6]
  wire [31:0] _T_218; // @[BTB.scala 257:19:chipyard.TestHarness.RocketConfig.fir@227795.6]
  wire  _T_221; // @[BTB.scala 262:25:chipyard.TestHarness.RocketConfig.fir@227800.6]
  wire [7:0] _T_222; // @[BTB.scala 268:24:chipyard.TestHarness.RocketConfig.fir@227801.6]
  wire [7:0] _T_229; // @[BTB.scala 270:24:chipyard.TestHarness.RocketConfig.fir@227817.6]
  wire [7:0] _GEN_446; // @[BTB.scala 272:28:chipyard.TestHarness.RocketConfig.fir@227833.6]
  wire [7:0] _T_236; // @[BTB.scala 272:28:chipyard.TestHarness.RocketConfig.fir@227833.6]
  wire [7:0] _T_237; // @[BTB.scala 272:44:chipyard.TestHarness.RocketConfig.fir@227834.6]
  wire [31:0] _GEN_338; // @[BTB.scala 250:29:chipyard.TestHarness.RocketConfig.fir@227782.4]
  wire [7:0] _GEN_373; // @[BTB.scala 250:29:chipyard.TestHarness.RocketConfig.fir@227782.4]
  wire [6:0] _T_238; // @[BTB.scala 275:29:chipyard.TestHarness.RocketConfig.fir@227837.4]
  wire [2:0] _T_267; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227866.4]
  wire [2:0] _T_268; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227867.4]
  wire [2:0] _T_269; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227868.4]
  wire [2:0] _T_270; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227869.4]
  wire [2:0] _T_271; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227870.4]
  wire [2:0] _T_272; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227871.4]
  wire [2:0] _T_273; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227872.4]
  wire [2:0] _T_274; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227873.4]
  wire [2:0] _T_275; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227874.4]
  wire [2:0] _T_276; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227875.4]
  wire [2:0] _T_277; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227876.4]
  wire [2:0] _T_278; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227877.4]
  wire [2:0] _T_279; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227878.4]
  wire [2:0] _T_280; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227879.4]
  wire [2:0] _T_281; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227880.4]
  wire [2:0] _T_282; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227881.4]
  wire [2:0] _T_283; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227882.4]
  wire [2:0] _T_284; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227883.4]
  wire [2:0] _T_285; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227884.4]
  wire [2:0] _T_286; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227885.4]
  wire [2:0] _T_287; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227886.4]
  wire [2:0] _T_288; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227887.4]
  wire [2:0] _T_289; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227888.4]
  wire [2:0] _T_290; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227889.4]
  wire [2:0] _T_291; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227890.4]
  wire [2:0] _T_292; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227891.4]
  wire [2:0] _T_293; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227892.4]
  wire [2:0] _T_294; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227893.4]
  wire [2:0] _T_295; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227894.4]
  wire [2:0] _T_296; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227895.4]
  wire [2:0] _T_297; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227896.4]
  wire [2:0] _T_298; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227897.4]
  wire [2:0] _T_299; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227898.4]
  wire [2:0] _T_300; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227899.4]
  wire [2:0] _T_301; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227900.4]
  wire [2:0] _T_302; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227901.4]
  wire [2:0] _T_303; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227902.4]
  wire [2:0] _T_304; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227903.4]
  wire [2:0] _T_305; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227904.4]
  wire [2:0] _T_306; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227905.4]
  wire [2:0] _T_307; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227906.4]
  wire [2:0] _T_308; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227907.4]
  wire [2:0] _T_309; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227908.4]
  wire [2:0] _T_310; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227909.4]
  wire [2:0] _T_311; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227910.4]
  wire [2:0] _T_312; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227911.4]
  wire [2:0] _T_313; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227912.4]
  wire [2:0] _T_314; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227913.4]
  wire [2:0] _T_315; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227914.4]
  wire [2:0] _T_316; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227915.4]
  wire [2:0] _T_317; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227916.4]
  wire [2:0] _T_318; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227917.4]
  wire [2:0] _T_319; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227918.4]
  wire [2:0] _T_320; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227919.4]
  wire [2:0] _T_321; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227920.4]
  wire [6:0] _T_323; // @[BTB.scala 275:34:chipyard.TestHarness.RocketConfig.fir@227923.4]
  wire [2:0] _T_353; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227955.4]
  wire [2:0] _T_354; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227956.4]
  wire [2:0] _T_355; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227957.4]
  wire [2:0] _T_356; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227958.4]
  wire [2:0] _T_357; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227959.4]
  wire [2:0] _T_358; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227960.4]
  wire [2:0] _T_359; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227961.4]
  wire [2:0] _T_360; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227962.4]
  wire [2:0] _T_361; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227963.4]
  wire [2:0] _T_362; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227964.4]
  wire [2:0] _T_363; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227965.4]
  wire [2:0] _T_364; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227966.4]
  wire [2:0] _T_365; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227967.4]
  wire [2:0] _T_366; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227968.4]
  wire [2:0] _T_367; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227969.4]
  wire [2:0] _T_368; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227970.4]
  wire [2:0] _T_369; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227971.4]
  wire [2:0] _T_370; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227972.4]
  wire [2:0] _T_371; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227973.4]
  wire [2:0] _T_372; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227974.4]
  wire [2:0] _T_373; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227975.4]
  wire [2:0] _T_374; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227976.4]
  wire [2:0] _T_375; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227977.4]
  wire [2:0] _T_376; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227978.4]
  wire [2:0] _T_377; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227979.4]
  wire [2:0] _T_378; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227980.4]
  wire [2:0] _T_379; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227981.4]
  wire [2:0] _T_380; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227982.4]
  wire [2:0] _T_381; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227983.4]
  wire [2:0] _T_382; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227984.4]
  wire [2:0] _T_383; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227985.4]
  wire [2:0] _T_384; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227986.4]
  wire [2:0] _T_385; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227987.4]
  wire [2:0] _T_386; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227988.4]
  wire [2:0] _T_387; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227989.4]
  wire [2:0] _T_388; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227990.4]
  wire [2:0] _T_389; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227991.4]
  wire [2:0] _T_390; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227992.4]
  wire [2:0] _T_391; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227993.4]
  wire [2:0] _T_392; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227994.4]
  wire [2:0] _T_393; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227995.4]
  wire [2:0] _T_394; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227996.4]
  wire [2:0] _T_395; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227997.4]
  wire [2:0] _T_396; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227998.4]
  wire [2:0] _T_397; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227999.4]
  wire [2:0] _T_398; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228000.4]
  wire [2:0] _T_399; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228001.4]
  wire [2:0] _T_400; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228002.4]
  wire [2:0] _T_401; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228003.4]
  wire [2:0] _T_402; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228004.4]
  wire [2:0] _T_403; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228005.4]
  wire [2:0] _T_404; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228006.4]
  wire [2:0] _T_405; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228007.4]
  wire [2:0] _T_406; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228008.4]
  wire [2:0] _T_407; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228009.4]
  wire [12:0] _T_437; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228040.4]
  wire [12:0] _T_438; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228041.4]
  wire [12:0] _T_439; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228042.4]
  wire [12:0] _T_440; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228043.4]
  wire [12:0] _T_441; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228044.4]
  wire [12:0] _T_442; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228045.4]
  wire [12:0] _T_443; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228046.4]
  wire [12:0] _T_444; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228047.4]
  wire [12:0] _T_445; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228048.4]
  wire [12:0] _T_446; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228049.4]
  wire [12:0] _T_447; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228050.4]
  wire [12:0] _T_448; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228051.4]
  wire [12:0] _T_449; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228052.4]
  wire [12:0] _T_450; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228053.4]
  wire [12:0] _T_451; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228054.4]
  wire [12:0] _T_452; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228055.4]
  wire [12:0] _T_453; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228056.4]
  wire [12:0] _T_454; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228057.4]
  wire [12:0] _T_455; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228058.4]
  wire [12:0] _T_456; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228059.4]
  wire [12:0] _T_457; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228060.4]
  wire [12:0] _T_458; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228061.4]
  wire [12:0] _T_459; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228062.4]
  wire [12:0] _T_460; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228063.4]
  wire [12:0] _T_461; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228064.4]
  wire [12:0] _T_462; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228065.4]
  wire [12:0] _T_463; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228066.4]
  wire [12:0] _T_464; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228067.4]
  wire [12:0] _T_465; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228068.4]
  wire [12:0] _T_466; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228069.4]
  wire [12:0] _T_467; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228070.4]
  wire [12:0] _T_468; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228071.4]
  wire [12:0] _T_469; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228072.4]
  wire [12:0] _T_470; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228073.4]
  wire [12:0] _T_471; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228074.4]
  wire [12:0] _T_472; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228075.4]
  wire [12:0] _T_473; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228076.4]
  wire [12:0] _T_474; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228077.4]
  wire [12:0] _T_475; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228078.4]
  wire [12:0] _T_476; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228079.4]
  wire [12:0] _T_477; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228080.4]
  wire [12:0] _T_478; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228081.4]
  wire [12:0] _T_479; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228082.4]
  wire [12:0] _T_480; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228083.4]
  wire [12:0] _T_481; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228084.4]
  wire [12:0] _T_482; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228085.4]
  wire [12:0] _T_483; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228086.4]
  wire [12:0] _T_484; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228087.4]
  wire [12:0] _T_485; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228088.4]
  wire [12:0] _T_486; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228089.4]
  wire [12:0] _T_487; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228090.4]
  wire [12:0] _T_488; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228091.4]
  wire [12:0] _T_489; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228092.4]
  wire [12:0] _T_490; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228093.4]
  wire [12:0] _T_491; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228094.4]
  wire [13:0] _T_493; // @[BTB.scala 277:82:chipyard.TestHarness.RocketConfig.fir@228097.4]
  wire [24:0] _GEN_375; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  wire [24:0] _GEN_376; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  wire [24:0] _GEN_377; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  wire [24:0] _GEN_378; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  wire [24:0] _GEN_379; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  wire [38:0] _T_494; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  wire  _T_497; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@228102.4]
  wire [15:0] _GEN_447; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228103.4]
  wire [15:0] _T_498; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228103.4]
  wire  _T_501; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@228106.4]
  wire [7:0] _T_502; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228107.4]
  wire  _T_505; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@228110.4]
  wire [3:0] _T_506; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228111.4]
  wire  _T_509; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@228114.4]
  wire [1:0] _T_510; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228115.4]
  wire [3:0] _T_514; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228119.4]
  wire  _T_544; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228150.4]
  wire  _T_545; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228151.4]
  wire  _T_546; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228152.4]
  wire  _T_547; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228153.4]
  wire  _T_548; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228154.4]
  wire  _T_549; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228155.4]
  wire  _T_550; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228156.4]
  wire  _T_551; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228157.4]
  wire  _T_552; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228158.4]
  wire  _T_553; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228159.4]
  wire  _T_554; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228160.4]
  wire  _T_555; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228161.4]
  wire  _T_556; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228162.4]
  wire  _T_557; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228163.4]
  wire  _T_558; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228164.4]
  wire  _T_559; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228165.4]
  wire  _T_560; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228166.4]
  wire  _T_561; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228167.4]
  wire  _T_562; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228168.4]
  wire  _T_563; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228169.4]
  wire  _T_564; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228170.4]
  wire  _T_565; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228171.4]
  wire  _T_566; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228172.4]
  wire  _T_567; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228173.4]
  wire  _T_568; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228174.4]
  wire  _T_569; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228175.4]
  wire  _T_570; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228176.4]
  wire  _T_571; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228177.4]
  wire  _T_572; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228178.4]
  wire  _T_573; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228179.4]
  wire  _T_574; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228180.4]
  wire  _T_575; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228181.4]
  wire  _T_576; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228182.4]
  wire  _T_577; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228183.4]
  wire  _T_578; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228184.4]
  wire  _T_579; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228185.4]
  wire  _T_580; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228186.4]
  wire  _T_581; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228187.4]
  wire  _T_582; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228188.4]
  wire  _T_583; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228189.4]
  wire  _T_584; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228190.4]
  wire  _T_585; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228191.4]
  wire  _T_586; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228192.4]
  wire  _T_587; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228193.4]
  wire  _T_588; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228194.4]
  wire  _T_589; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228195.4]
  wire  _T_590; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228196.4]
  wire  _T_591; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228197.4]
  wire  _T_592; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228198.4]
  wire  _T_593; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228199.4]
  wire  _T_594; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228200.4]
  wire  _T_595; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228201.4]
  wire  _T_596; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228202.4]
  wire  _T_597; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228203.4]
  wire  _T_701; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228312.4]
  wire  _T_703; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228314.4]
  wire  _T_705; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228316.4]
  wire  _T_707; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228318.4]
  wire  _T_708; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228319.4]
  wire  _T_715; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228326.4]
  wire  _T_717; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228328.4]
  wire  _T_724; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228335.4]
  wire  _T_726; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228337.4]
  wire  _T_728; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228339.4]
  wire  _T_729; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228340.4]
  wire  _T_730; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228341.4]
  wire  _T_731; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228342.4]
  wire  _T_732; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228343.4]
  wire  _T_733; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228344.4]
  wire  _T_734; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228345.4]
  wire  _T_735; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228346.4]
  wire  _T_745; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228356.4]
  wire  _T_747; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228358.4]
  wire  _T_749; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228360.4]
  wire  _T_751; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228362.4]
  wire  _T_752; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228363.4]
  wire  _T_759; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228370.4]
  wire  _T_761; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228372.4]
  wire  _T_768; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228379.4]
  wire  _T_770; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228381.4]
  wire  _T_772; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228383.4]
  wire  _T_773; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228384.4]
  wire  _T_774; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228385.4]
  wire  _T_775; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228386.4]
  wire  _T_776; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228387.4]
  wire  _T_777; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228388.4]
  wire  _T_778; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228389.4]
  wire  _T_779; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228390.4]
  wire  _T_780; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228391.4]
  wire  _T_781; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228392.4]
  wire  _T_782; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228393.4]
  wire  _T_783; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228394.4]
  wire  _T_794; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228405.4]
  wire  _T_796; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228407.4]
  wire  _T_798; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228409.4]
  wire  _T_800; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228411.4]
  wire  _T_801; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228412.4]
  wire  _T_808; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228419.4]
  wire  _T_810; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228421.4]
  wire  _T_817; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228428.4]
  wire  _T_819; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228430.4]
  wire  _T_821; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228432.4]
  wire  _T_822; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228433.4]
  wire  _T_823; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228434.4]
  wire  _T_824; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228435.4]
  wire  _T_825; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228436.4]
  wire  _T_826; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228437.4]
  wire  _T_827; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228438.4]
  wire  _T_828; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228439.4]
  wire  _T_838; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228449.4]
  wire  _T_840; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228451.4]
  wire  _T_842; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228453.4]
  wire  _T_844; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228455.4]
  wire  _T_845; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228456.4]
  wire  _T_852; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228463.4]
  wire  _T_854; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228465.4]
  wire  _T_861; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228472.4]
  wire  _T_863; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228474.4]
  wire  _T_865; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228476.4]
  wire  _T_866; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228477.4]
  wire  _T_867; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228478.4]
  wire  _T_868; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228479.4]
  wire  _T_869; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228480.4]
  wire  _T_870; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228481.4]
  wire  _T_871; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228482.4]
  wire  _T_872; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228483.4]
  wire  _T_873; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228484.4]
  wire  _T_874; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228485.4]
  wire  _T_875; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228486.4]
  wire  _T_876; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228487.4]
  wire  _T_878; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228489.4]
  wire  _T_879; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228490.4]
  wire  _T_880; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228491.4]
  wire [27:0] _T_881; // @[BTB.scala 285:26:chipyard.TestHarness.RocketConfig.fir@228493.6]
  wire [27:0] _T_882; // @[BTB.scala 285:24:chipyard.TestHarness.RocketConfig.fir@228494.6]
  wire [31:0] _GEN_380; // @[BTB.scala 284:37:chipyard.TestHarness.RocketConfig.fir@228492.4]
  wire [31:0] _GEN_381; // @[BTB.scala 287:19:chipyard.TestHarness.RocketConfig.fir@228497.4]
  reg [7:0] _T_884; // @[BTB.scala 114:20:chipyard.TestHarness.RocketConfig.fir@228501.4]
  reg [31:0] _RAND_188;
  wire  _T_885; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228502.4]
  wire  _T_886; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228503.4]
  wire  _T_887; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228504.4]
  wire  _T_888; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228505.4]
  wire  _T_889; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228506.4]
  wire  _T_890; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228507.4]
  wire  _T_891; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228508.4]
  wire  _T_892; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228509.4]
  wire  _T_893; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228510.4]
  wire  _T_894; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228511.4]
  wire  _T_895; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228512.4]
  wire  _T_896; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228513.4]
  wire  _T_897; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228514.4]
  wire  _T_898; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228515.4]
  wire  _T_899; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228516.4]
  wire  _T_900; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228517.4]
  wire  _T_901; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228518.4]
  wire  _T_902; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228519.4]
  wire  _T_903; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228520.4]
  wire  _T_904; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228521.4]
  wire  _T_905; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228522.4]
  wire  _T_906; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228523.4]
  wire  _T_907; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228524.4]
  wire  _T_908; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228525.4]
  wire  _T_909; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228526.4]
  wire  _T_910; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228527.4]
  wire  _T_911; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228528.4]
  wire  _T_912; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228529.4]
  wire [6:0] _T_918; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228535.4]
  wire [13:0] _T_925; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228542.4]
  wire [6:0] _T_931; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228548.4]
  wire [27:0] _T_939; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228556.4]
  wire [27:0] _T_940; // @[BTB.scala 293:28:chipyard.TestHarness.RocketConfig.fir@228557.4]
  wire  _T_941; // @[BTB.scala 293:72:chipyard.TestHarness.RocketConfig.fir@228558.4]
  wire [8:0] _GEN_448; // @[BTB.scala 87:42:chipyard.TestHarness.RocketConfig.fir@228565.4]
  wire [8:0] _T_947; // @[BTB.scala 87:42:chipyard.TestHarness.RocketConfig.fir@228565.4]
  wire [15:0] _T_948; // @[BTB.scala 83:12:chipyard.TestHarness.RocketConfig.fir@228566.4]
  wire [8:0] _T_950; // @[BTB.scala 89:44:chipyard.TestHarness.RocketConfig.fir@228568.4]
  wire [7:0] _T_955; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228576.6]
  wire [8:0] _GEN_449; // @[BTB.scala 87:42:chipyard.TestHarness.RocketConfig.fir@228585.8]
  wire [8:0] _T_960; // @[BTB.scala 87:42:chipyard.TestHarness.RocketConfig.fir@228585.8]
  wire [15:0] _T_961; // @[BTB.scala 83:12:chipyard.TestHarness.RocketConfig.fir@228586.8]
  wire [8:0] _T_963; // @[BTB.scala 89:44:chipyard.TestHarness.RocketConfig.fir@228588.8]
  wire [7:0] _T_967; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228594.10]
  wire  _T_942_value; // @[BTB.scala 92:19:chipyard.TestHarness.RocketConfig.fir@228559.4 BTB.scala 93:15:chipyard.TestHarness.RocketConfig.fir@228571.4]
  wire  _T_969; // @[BTB.scala 308:11:chipyard.TestHarness.RocketConfig.fir@228604.4]
  wire  _T_970; // @[BTB.scala 308:22:chipyard.TestHarness.RocketConfig.fir@228605.4]
  reg [2:0] _T_971; // @[BTB.scala 57:26:chipyard.TestHarness.RocketConfig.fir@228610.4]
  reg [31:0] _RAND_189;
  reg [2:0] _T_972; // @[BTB.scala 58:24:chipyard.TestHarness.RocketConfig.fir@228611.4]
  reg [31:0] _RAND_190;
  reg [38:0] _T_973_0; // @[BTB.scala 59:26:chipyard.TestHarness.RocketConfig.fir@228612.4]
  reg [63:0] _RAND_191;
  reg [38:0] _T_973_1; // @[BTB.scala 59:26:chipyard.TestHarness.RocketConfig.fir@228612.4]
  reg [63:0] _RAND_192;
  reg [38:0] _T_973_2; // @[BTB.scala 59:26:chipyard.TestHarness.RocketConfig.fir@228612.4]
  reg [63:0] _RAND_193;
  reg [38:0] _T_973_3; // @[BTB.scala 59:26:chipyard.TestHarness.RocketConfig.fir@228612.4]
  reg [63:0] _RAND_194;
  reg [38:0] _T_973_4; // @[BTB.scala 59:26:chipyard.TestHarness.RocketConfig.fir@228612.4]
  reg [63:0] _RAND_195;
  reg [38:0] _T_973_5; // @[BTB.scala 59:26:chipyard.TestHarness.RocketConfig.fir@228612.4]
  reg [63:0] _RAND_196;
  wire  _T_974; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228613.4]
  wire  _T_975; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228614.4]
  wire  _T_976; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228615.4]
  wire  _T_977; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228616.4]
  wire  _T_978; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228617.4]
  wire  _T_979; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228618.4]
  wire  _T_980; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228619.4]
  wire  _T_981; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228620.4]
  wire  _T_982; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228621.4]
  wire  _T_983; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228622.4]
  wire  _T_984; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228623.4]
  wire  _T_985; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228624.4]
  wire  _T_986; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228625.4]
  wire  _T_987; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228626.4]
  wire  _T_988; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228627.4]
  wire  _T_989; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228628.4]
  wire  _T_990; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228629.4]
  wire  _T_991; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228630.4]
  wire  _T_992; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228631.4]
  wire  _T_993; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228632.4]
  wire  _T_994; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228633.4]
  wire  _T_995; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228634.4]
  wire  _T_996; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228635.4]
  wire  _T_997; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228636.4]
  wire  _T_998; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228637.4]
  wire  _T_999; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228638.4]
  wire  _T_1000; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228639.4]
  wire  _T_1001; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228640.4]
  wire [6:0] _T_1007; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228646.4]
  wire [13:0] _T_1014; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228653.4]
  wire [6:0] _T_1020; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228659.4]
  wire [27:0] _T_1028; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228667.4]
  wire [27:0] _T_1029; // @[BTB.scala 314:26:chipyard.TestHarness.RocketConfig.fir@228668.4]
  wire  _T_1030; // @[BTB.scala 314:67:chipyard.TestHarness.RocketConfig.fir@228669.4]
  wire  _T_1031; // @[BTB.scala 55:29:chipyard.TestHarness.RocketConfig.fir@228670.4]
  wire  _T_1032; // @[BTB.scala 315:26:chipyard.TestHarness.RocketConfig.fir@228671.4]
  wire [38:0] _GEN_399; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  wire [38:0] _GEN_400; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  wire [38:0] _GEN_401; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  wire [38:0] _GEN_402; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  wire [38:0] _GEN_403; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  wire  _T_1035; // @[BTB.scala 317:24:chipyard.TestHarness.RocketConfig.fir@228676.4]
  wire  _T_1036; // @[BTB.scala 321:40:chipyard.TestHarness.RocketConfig.fir@228681.6]
  wire  _T_1037; // @[BTB.scala 44:17:chipyard.TestHarness.RocketConfig.fir@228683.8]
  wire [2:0] _T_1039; // @[BTB.scala 44:42:chipyard.TestHarness.RocketConfig.fir@228686.10]
  wire  _T_1040; // @[BTB.scala 45:49:chipyard.TestHarness.RocketConfig.fir@228689.8]
  wire [2:0] _T_1043; // @[BTB.scala 45:62:chipyard.TestHarness.RocketConfig.fir@228692.8]
  wire [2:0] _T_1044; // @[BTB.scala 45:22:chipyard.TestHarness.RocketConfig.fir@228693.8]
  wire  _T_1045; // @[BTB.scala 323:46:chipyard.TestHarness.RocketConfig.fir@228698.8]
  wire [2:0] _T_1049; // @[BTB.scala 51:20:chipyard.TestHarness.RocketConfig.fir@228704.12]
  wire  _T_1050; // @[BTB.scala 52:42:chipyard.TestHarness.RocketConfig.fir@228706.12]
  wire [2:0] _T_1053; // @[BTB.scala 52:50:chipyard.TestHarness.RocketConfig.fir@228709.12]
  assign _T_883__T_952_addr = _T_947 ^ _T_950;
  assign _T_883__T_952_data = _T_883[_T_883__T_952_addr]; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
  assign _T_883__T_965_data = io_bht_update_bits_taken;
  assign _T_883__T_965_addr = _T_960 ^ _T_963;
  assign _T_883__T_965_mask = 1'h1;
  assign _T_883__T_965_en = io_bht_update_valid & io_bht_update_bits_branch;
  assign _T_1 = pages_0 == io_req_bits_addr[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227531.4]
  assign _T_2 = pages_1 == io_req_bits_addr[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227532.4]
  assign _T_3 = pages_2 == io_req_bits_addr[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227533.4]
  assign _T_4 = pages_3 == io_req_bits_addr[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227534.4]
  assign _T_5 = pages_4 == io_req_bits_addr[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227535.4]
  assign _T_6 = pages_5 == io_req_bits_addr[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227536.4]
  assign _T_11 = {_T_6,_T_5,_T_4,_T_3,_T_2,_T_1}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227541.4]
  assign pageHit = pageValid & _T_11; // @[BTB.scala 202:15:chipyard.TestHarness.RocketConfig.fir@227542.4]
  assign _T_13 = idxs_0 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227544.4]
  assign _T_14 = idxs_1 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227545.4]
  assign _T_15 = idxs_2 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227546.4]
  assign _T_16 = idxs_3 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227547.4]
  assign _T_17 = idxs_4 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227548.4]
  assign _T_18 = idxs_5 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227549.4]
  assign _T_19 = idxs_6 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227550.4]
  assign _T_20 = idxs_7 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227551.4]
  assign _T_21 = idxs_8 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227552.4]
  assign _T_22 = idxs_9 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227553.4]
  assign _T_23 = idxs_10 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227554.4]
  assign _T_24 = idxs_11 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227555.4]
  assign _T_25 = idxs_12 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227556.4]
  assign _T_26 = idxs_13 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227557.4]
  assign _T_27 = idxs_14 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227558.4]
  assign _T_28 = idxs_15 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227559.4]
  assign _T_29 = idxs_16 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227560.4]
  assign _T_30 = idxs_17 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227561.4]
  assign _T_31 = idxs_18 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227562.4]
  assign _T_32 = idxs_19 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227563.4]
  assign _T_33 = idxs_20 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227564.4]
  assign _T_34 = idxs_21 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227565.4]
  assign _T_35 = idxs_22 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227566.4]
  assign _T_36 = idxs_23 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227567.4]
  assign _T_37 = idxs_24 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227568.4]
  assign _T_38 = idxs_25 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227569.4]
  assign _T_39 = idxs_26 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227570.4]
  assign _T_40 = idxs_27 == io_req_bits_addr[13:1]; // @[BTB.scala 206:16:chipyard.TestHarness.RocketConfig.fir@227571.4]
  assign _T_46 = {_T_19,_T_18,_T_17,_T_16,_T_15,_T_14,_T_13}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227577.4]
  assign _T_53 = {_T_26,_T_25,_T_24,_T_23,_T_22,_T_21,_T_20,_T_46}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227584.4]
  assign _T_59 = {_T_33,_T_32,_T_31,_T_30,_T_29,_T_28,_T_27}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227590.4]
  assign _T_67 = {_T_40,_T_39,_T_38,_T_37,_T_36,_T_35,_T_34,_T_59,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227598.4]
  assign idxHit = _T_67 & isValid; // @[BTB.scala 206:32:chipyard.TestHarness.RocketConfig.fir@227599.4]
  assign _T_69 = pages_0 == r_btb_updatePipe_bits_pc[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227601.4]
  assign _T_70 = pages_1 == r_btb_updatePipe_bits_pc[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227602.4]
  assign _T_71 = pages_2 == r_btb_updatePipe_bits_pc[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227603.4]
  assign _T_72 = pages_3 == r_btb_updatePipe_bits_pc[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227604.4]
  assign _T_73 = pages_4 == r_btb_updatePipe_bits_pc[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227605.4]
  assign _T_74 = pages_5 == r_btb_updatePipe_bits_pc[38:14]; // @[BTB.scala 202:29:chipyard.TestHarness.RocketConfig.fir@227606.4]
  assign _T_79 = {_T_74,_T_73,_T_72,_T_71,_T_70,_T_69}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227611.4]
  assign updatePageHit = pageValid & _T_79; // @[BTB.scala 202:15:chipyard.TestHarness.RocketConfig.fir@227612.4]
  assign updateHit = r_btb_updatePipe_bits_prediction_entry < 5'h1c; // @[BTB.scala 220:48:chipyard.TestHarness.RocketConfig.fir@227613.4]
  assign useUpdatePageHit = |updatePageHit; // @[BTB.scala 222:40:chipyard.TestHarness.RocketConfig.fir@227614.4]
  assign usePageHit = |pageHit; // @[BTB.scala 223:28:chipyard.TestHarness.RocketConfig.fir@227615.4]
  assign doIdxPageRepl = ~useUpdatePageHit; // @[BTB.scala 224:23:chipyard.TestHarness.RocketConfig.fir@227616.4]
  assign _T_82 = {pageHit[4:0],pageHit[5]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227620.4]
  assign _T_83 = 8'h1 << nextPageRepl; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@227621.4]
  assign _T_84 = usePageHit ? 8'h0 : _T_83; // @[BTB.scala 226:70:chipyard.TestHarness.RocketConfig.fir@227622.4]
  assign _GEN_432 = {{2'd0}, _T_82}; // @[BTB.scala 226:65:chipyard.TestHarness.RocketConfig.fir@227623.4]
  assign idxPageRepl = _GEN_432 | _T_84; // @[BTB.scala 226:65:chipyard.TestHarness.RocketConfig.fir@227623.4]
  assign idxPageUpdateOH = useUpdatePageHit ? {{2'd0}, updatePageHit} : idxPageRepl; // @[BTB.scala 227:28:chipyard.TestHarness.RocketConfig.fir@227624.4]
  assign _T_87 = |idxPageUpdateOH[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@227627.4]
  assign _T_88 = idxPageUpdateOH[7:4] | idxPageUpdateOH[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@227628.4]
  assign _T_91 = |_T_88[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@227631.4]
  assign _T_92 = _T_88[3:2] | _T_88[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@227632.4]
  assign idxPageUpdate = {_T_87,_T_91,_T_92[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227635.4]
  assign idxPageReplEn = doIdxPageRepl ? idxPageRepl : 8'h0; // @[BTB.scala 229:26:chipyard.TestHarness.RocketConfig.fir@227636.4]
  assign samePage = r_btb_updatePipe_bits_pc[38:14] == io_req_bits_addr[38:14]; // @[BTB.scala 231:45:chipyard.TestHarness.RocketConfig.fir@227639.4]
  assign _T_97 = ~samePage; // @[BTB.scala 232:23:chipyard.TestHarness.RocketConfig.fir@227640.4]
  assign _T_98 = ~usePageHit; // @[BTB.scala 232:36:chipyard.TestHarness.RocketConfig.fir@227641.4]
  assign doTgtPageRepl = _T_97 & _T_98; // @[BTB.scala 232:33:chipyard.TestHarness.RocketConfig.fir@227642.4]
  assign _T_101 = {idxPageUpdateOH[4:0],idxPageUpdateOH[5]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227645.4]
  assign tgtPageRepl = samePage ? idxPageUpdateOH : {{2'd0}, _T_101}; // @[BTB.scala 233:24:chipyard.TestHarness.RocketConfig.fir@227646.4]
  assign _T_102 = usePageHit ? 8'h0 : tgtPageRepl; // @[BTB.scala 234:45:chipyard.TestHarness.RocketConfig.fir@227647.4]
  assign _GEN_433 = {{2'd0}, pageHit}; // @[BTB.scala 234:40:chipyard.TestHarness.RocketConfig.fir@227648.4]
  assign _T_103 = _GEN_433 | _T_102; // @[BTB.scala 234:40:chipyard.TestHarness.RocketConfig.fir@227648.4]
  assign _T_106 = |_T_103[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@227651.4]
  assign _T_107 = _T_103[7:4] | _T_103[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@227652.4]
  assign _T_110 = |_T_107[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@227655.4]
  assign _T_111 = _T_107[3:2] | _T_107[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@227656.4]
  assign tgtPageUpdate = {_T_106,_T_110,_T_111[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227659.4]
  assign tgtPageReplEn = doTgtPageRepl ? tgtPageRepl : 8'h0; // @[BTB.scala 235:26:chipyard.TestHarness.RocketConfig.fir@227660.4]
  assign _T_114 = doIdxPageRepl | doTgtPageRepl; // @[BTB.scala 237:46:chipyard.TestHarness.RocketConfig.fir@227661.4]
  assign _T_115 = r_btb_updatePipe_valid & _T_114; // @[BTB.scala 237:28:chipyard.TestHarness.RocketConfig.fir@227662.4]
  assign _T_116 = doIdxPageRepl & doTgtPageRepl; // @[BTB.scala 238:30:chipyard.TestHarness.RocketConfig.fir@227664.6]
  assign _T_117 = _T_116 ? 2'h2 : 2'h1; // @[BTB.scala 239:40:chipyard.TestHarness.RocketConfig.fir@227665.6]
  assign _GEN_434 = {{1'd0}, _T_117}; // @[BTB.scala 239:29:chipyard.TestHarness.RocketConfig.fir@227666.6]
  assign _T_119 = nextPageRepl + _GEN_434; // @[BTB.scala 239:29:chipyard.TestHarness.RocketConfig.fir@227667.6]
  assign _T_120 = _T_119 >= 3'h6; // @[BTB.scala 240:30:chipyard.TestHarness.RocketConfig.fir@227668.6]
  assign _T_124 = {_T_123, 1'h0}; // @[Replacement.scala 61:31:chipyard.TestHarness.RocketConfig.fir@227674.4]
  assign _T_128 = {{1'd0}, _T_124[27:1]}; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227678.4]
  assign _T_131 = {1'h1,_T_128[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227681.4]
  assign _T_132 = {1'h1,_T_128[0],4'h8}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227682.4]
  assign _T_134 = _T_132[4:0] < 5'h1c; // @[Replacement.scala 64:70:chipyard.TestHarness.RocketConfig.fir@227684.4]
  assign _T_135 = _T_124 >> _T_131; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227685.4]
  assign _T_137 = _T_134 & _T_135[0]; // @[Replacement.scala 65:32:chipyard.TestHarness.RocketConfig.fir@227687.4]
  assign _T_138 = {1'h1,_T_128[0],_T_137}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227688.4]
  assign _T_139 = {1'h1,_T_128[0],_T_137,3'h4}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227689.4]
  assign _T_141 = _T_139[4:0] < 5'h1c; // @[Replacement.scala 64:70:chipyard.TestHarness.RocketConfig.fir@227691.4]
  assign _T_142 = _T_124 >> _T_138; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227692.4]
  assign _T_144 = _T_141 & _T_142[0]; // @[Replacement.scala 65:32:chipyard.TestHarness.RocketConfig.fir@227694.4]
  assign _T_145 = {1'h1,_T_128[0],_T_137,_T_144}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227695.4]
  assign _T_146 = {1'h1,_T_128[0],_T_137,_T_144,2'h2}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227696.4]
  assign _T_148 = _T_146[4:0] < 5'h1c; // @[Replacement.scala 64:70:chipyard.TestHarness.RocketConfig.fir@227698.4]
  assign _T_149 = _T_124 >> _T_145; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227699.4]
  assign _T_151 = _T_148 & _T_149[0]; // @[Replacement.scala 65:32:chipyard.TestHarness.RocketConfig.fir@227701.4]
  assign _T_152 = {1'h1,_T_128[0],_T_137,_T_144,_T_151}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227702.4]
  assign _T_153 = {1'h1,_T_128[0],_T_137,_T_144,_T_151,1'h1}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227703.4]
  assign _T_155 = _T_153[4:0] < 5'h1c; // @[Replacement.scala 64:70:chipyard.TestHarness.RocketConfig.fir@227705.4]
  assign _T_156 = _T_124 >> _T_152; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@227706.4]
  assign _T_158 = _T_155 & _T_156[0]; // @[Replacement.scala 65:32:chipyard.TestHarness.RocketConfig.fir@227708.4]
  assign _T_159 = {1'h1,_T_128[0],_T_137,_T_144,_T_151,_T_158}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227709.4]
  assign waddr = updateHit ? r_btb_updatePipe_bits_prediction_entry : _T_159[4:0]; // @[BTB.scala 244:18:chipyard.TestHarness.RocketConfig.fir@227711.4]
  assign _T_161 = r_respPipe_valid & r_respPipe_bits_taken; // @[BTB.scala 246:22:chipyard.TestHarness.RocketConfig.fir@227729.4]
  assign _T_162 = _T_161 | r_btb_updatePipe_valid; // @[BTB.scala 246:43:chipyard.TestHarness.RocketConfig.fir@227730.4]
  assign _T_163 = r_btb_updatePipe_valid ? waddr : r_respPipe_bits_entry; // @[BTB.scala 247:20:chipyard.TestHarness.RocketConfig.fir@227732.6]
  assign _T_166 = ~_T_163[4]; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227735.6]
  assign _T_168 = _T_124 | 28'h2; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227737.6]
  assign _T_169 = ~_T_124; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227738.6]
  assign _T_170 = _T_169 | 28'h2; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227739.6]
  assign _T_171 = ~_T_170; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227740.6]
  assign _T_172 = _T_166 ? _T_168 : _T_171; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227741.6]
  assign _T_173 = {1'h1,_T_163[4]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227742.6]
  assign _T_175 = ~_T_163[3]; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227744.6]
  assign _T_176 = 4'h1 << _T_173; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227745.6]
  assign _GEN_436 = {{24'd0}, _T_176}; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227746.6]
  assign _T_177 = _T_172 | _GEN_436; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227746.6]
  assign _T_178 = ~_T_172; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227747.6]
  assign _T_179 = _T_178 | _GEN_436; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227748.6]
  assign _T_180 = ~_T_179; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227749.6]
  assign _T_181 = _T_175 ? _T_177 : _T_180; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227750.6]
  assign _T_182 = {1'h1,_T_163[4],_T_163[3]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227751.6]
  assign _T_184 = ~_T_163[2]; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227753.6]
  assign _T_185 = 8'h1 << _T_182; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227754.6]
  assign _GEN_438 = {{20'd0}, _T_185}; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227755.6]
  assign _T_186 = _T_181 | _GEN_438; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227755.6]
  assign _T_187 = ~_T_181; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227756.6]
  assign _T_188 = _T_187 | _GEN_438; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227757.6]
  assign _T_189 = ~_T_188; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227758.6]
  assign _T_190 = _T_184 ? _T_186 : _T_189; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227759.6]
  assign _T_191 = {1'h1,_T_163[4],_T_163[3],_T_163[2]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227760.6]
  assign _T_193 = ~_T_163[1]; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227762.6]
  assign _T_194 = 16'h1 << _T_191; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227763.6]
  assign _GEN_440 = {{12'd0}, _T_194}; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227764.6]
  assign _T_195 = _T_190 | _GEN_440; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227764.6]
  assign _T_196 = ~_T_190; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227765.6]
  assign _T_197 = _T_196 | _GEN_440; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227766.6]
  assign _T_198 = ~_T_197; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227767.6]
  assign _T_199 = _T_193 ? _T_195 : _T_198; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227768.6]
  assign _T_200 = {1'h1,_T_163[4],_T_163[3],_T_163[2],_T_163[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@227769.6]
  assign _T_202 = ~_T_163[0]; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@227771.6]
  assign _T_203 = 32'h1 << _T_200; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227772.6]
  assign _GEN_442 = {{4'd0}, _T_199}; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227773.6]
  assign _T_204 = _GEN_442 | _T_203; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227773.6]
  assign _T_205 = ~_T_199; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227774.6]
  assign _GEN_443 = {{4'd0}, _T_205}; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227775.6]
  assign _T_206 = _GEN_443 | _T_203; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227775.6]
  assign _T_207 = ~_T_206; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227776.6]
  assign _T_208 = _T_202 ? _T_204 : _T_207; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@227777.6]
  assign _T_211 = 32'h1 << waddr; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@227783.6]
  assign _T_214 = idxPageUpdate + 3'h1; // @[BTB.scala 254:38:chipyard.TestHarness.RocketConfig.fir@227788.6]
  assign _GEN_444 = {{4'd0}, isValid}; // @[BTB.scala 257:55:chipyard.TestHarness.RocketConfig.fir@227792.6]
  assign _T_215 = _GEN_444 | _T_211; // @[BTB.scala 257:55:chipyard.TestHarness.RocketConfig.fir@227792.6]
  assign _T_216 = ~_T_211; // @[BTB.scala 257:73:chipyard.TestHarness.RocketConfig.fir@227793.6]
  assign _T_217 = _GEN_444 & _T_216; // @[BTB.scala 257:71:chipyard.TestHarness.RocketConfig.fir@227794.6]
  assign _T_218 = r_btb_updatePipe_bits_isValid ? _T_215 : _T_217; // @[BTB.scala 257:19:chipyard.TestHarness.RocketConfig.fir@227795.6]
  assign _T_221 = ~idxPageUpdate[0]; // @[BTB.scala 262:25:chipyard.TestHarness.RocketConfig.fir@227800.6]
  assign _T_222 = _T_221 ? idxPageReplEn : tgtPageReplEn; // @[BTB.scala 268:24:chipyard.TestHarness.RocketConfig.fir@227801.6]
  assign _T_229 = _T_221 ? tgtPageReplEn : idxPageReplEn; // @[BTB.scala 270:24:chipyard.TestHarness.RocketConfig.fir@227817.6]
  assign _GEN_446 = {{2'd0}, pageValid}; // @[BTB.scala 272:28:chipyard.TestHarness.RocketConfig.fir@227833.6]
  assign _T_236 = _GEN_446 | tgtPageReplEn; // @[BTB.scala 272:28:chipyard.TestHarness.RocketConfig.fir@227833.6]
  assign _T_237 = _T_236 | idxPageReplEn; // @[BTB.scala 272:44:chipyard.TestHarness.RocketConfig.fir@227834.6]
  assign _GEN_338 = r_btb_updatePipe_valid ? _T_218 : {{4'd0}, isValid}; // @[BTB.scala 250:29:chipyard.TestHarness.RocketConfig.fir@227782.4]
  assign _GEN_373 = r_btb_updatePipe_valid ? _T_237 : {{2'd0}, pageValid}; // @[BTB.scala 250:29:chipyard.TestHarness.RocketConfig.fir@227782.4]
  assign _T_238 = {pageHit, 1'h0}; // @[BTB.scala 275:29:chipyard.TestHarness.RocketConfig.fir@227837.4]
  assign _T_267 = idxHit[0] ? idxPages_0 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227866.4]
  assign _T_268 = idxHit[1] ? idxPages_1 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227867.4]
  assign _T_269 = idxHit[2] ? idxPages_2 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227868.4]
  assign _T_270 = idxHit[3] ? idxPages_3 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227869.4]
  assign _T_271 = idxHit[4] ? idxPages_4 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227870.4]
  assign _T_272 = idxHit[5] ? idxPages_5 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227871.4]
  assign _T_273 = idxHit[6] ? idxPages_6 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227872.4]
  assign _T_274 = idxHit[7] ? idxPages_7 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227873.4]
  assign _T_275 = idxHit[8] ? idxPages_8 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227874.4]
  assign _T_276 = idxHit[9] ? idxPages_9 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227875.4]
  assign _T_277 = idxHit[10] ? idxPages_10 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227876.4]
  assign _T_278 = idxHit[11] ? idxPages_11 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227877.4]
  assign _T_279 = idxHit[12] ? idxPages_12 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227878.4]
  assign _T_280 = idxHit[13] ? idxPages_13 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227879.4]
  assign _T_281 = idxHit[14] ? idxPages_14 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227880.4]
  assign _T_282 = idxHit[15] ? idxPages_15 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227881.4]
  assign _T_283 = idxHit[16] ? idxPages_16 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227882.4]
  assign _T_284 = idxHit[17] ? idxPages_17 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227883.4]
  assign _T_285 = idxHit[18] ? idxPages_18 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227884.4]
  assign _T_286 = idxHit[19] ? idxPages_19 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227885.4]
  assign _T_287 = idxHit[20] ? idxPages_20 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227886.4]
  assign _T_288 = idxHit[21] ? idxPages_21 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227887.4]
  assign _T_289 = idxHit[22] ? idxPages_22 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227888.4]
  assign _T_290 = idxHit[23] ? idxPages_23 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227889.4]
  assign _T_291 = idxHit[24] ? idxPages_24 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227890.4]
  assign _T_292 = idxHit[25] ? idxPages_25 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227891.4]
  assign _T_293 = idxHit[26] ? idxPages_26 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227892.4]
  assign _T_294 = idxHit[27] ? idxPages_27 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227893.4]
  assign _T_295 = _T_267 | _T_268; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227894.4]
  assign _T_296 = _T_295 | _T_269; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227895.4]
  assign _T_297 = _T_296 | _T_270; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227896.4]
  assign _T_298 = _T_297 | _T_271; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227897.4]
  assign _T_299 = _T_298 | _T_272; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227898.4]
  assign _T_300 = _T_299 | _T_273; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227899.4]
  assign _T_301 = _T_300 | _T_274; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227900.4]
  assign _T_302 = _T_301 | _T_275; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227901.4]
  assign _T_303 = _T_302 | _T_276; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227902.4]
  assign _T_304 = _T_303 | _T_277; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227903.4]
  assign _T_305 = _T_304 | _T_278; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227904.4]
  assign _T_306 = _T_305 | _T_279; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227905.4]
  assign _T_307 = _T_306 | _T_280; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227906.4]
  assign _T_308 = _T_307 | _T_281; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227907.4]
  assign _T_309 = _T_308 | _T_282; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227908.4]
  assign _T_310 = _T_309 | _T_283; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227909.4]
  assign _T_311 = _T_310 | _T_284; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227910.4]
  assign _T_312 = _T_311 | _T_285; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227911.4]
  assign _T_313 = _T_312 | _T_286; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227912.4]
  assign _T_314 = _T_313 | _T_287; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227913.4]
  assign _T_315 = _T_314 | _T_288; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227914.4]
  assign _T_316 = _T_315 | _T_289; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227915.4]
  assign _T_317 = _T_316 | _T_290; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227916.4]
  assign _T_318 = _T_317 | _T_291; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227917.4]
  assign _T_319 = _T_318 | _T_292; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227918.4]
  assign _T_320 = _T_319 | _T_293; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227919.4]
  assign _T_321 = _T_320 | _T_294; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227920.4]
  assign _T_323 = _T_238 >> _T_321; // @[BTB.scala 275:34:chipyard.TestHarness.RocketConfig.fir@227923.4]
  assign _T_353 = idxHit[0] ? tgtPages_0 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227955.4]
  assign _T_354 = idxHit[1] ? tgtPages_1 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227956.4]
  assign _T_355 = idxHit[2] ? tgtPages_2 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227957.4]
  assign _T_356 = idxHit[3] ? tgtPages_3 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227958.4]
  assign _T_357 = idxHit[4] ? tgtPages_4 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227959.4]
  assign _T_358 = idxHit[5] ? tgtPages_5 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227960.4]
  assign _T_359 = idxHit[6] ? tgtPages_6 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227961.4]
  assign _T_360 = idxHit[7] ? tgtPages_7 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227962.4]
  assign _T_361 = idxHit[8] ? tgtPages_8 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227963.4]
  assign _T_362 = idxHit[9] ? tgtPages_9 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227964.4]
  assign _T_363 = idxHit[10] ? tgtPages_10 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227965.4]
  assign _T_364 = idxHit[11] ? tgtPages_11 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227966.4]
  assign _T_365 = idxHit[12] ? tgtPages_12 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227967.4]
  assign _T_366 = idxHit[13] ? tgtPages_13 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227968.4]
  assign _T_367 = idxHit[14] ? tgtPages_14 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227969.4]
  assign _T_368 = idxHit[15] ? tgtPages_15 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227970.4]
  assign _T_369 = idxHit[16] ? tgtPages_16 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227971.4]
  assign _T_370 = idxHit[17] ? tgtPages_17 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227972.4]
  assign _T_371 = idxHit[18] ? tgtPages_18 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227973.4]
  assign _T_372 = idxHit[19] ? tgtPages_19 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227974.4]
  assign _T_373 = idxHit[20] ? tgtPages_20 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227975.4]
  assign _T_374 = idxHit[21] ? tgtPages_21 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227976.4]
  assign _T_375 = idxHit[22] ? tgtPages_22 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227977.4]
  assign _T_376 = idxHit[23] ? tgtPages_23 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227978.4]
  assign _T_377 = idxHit[24] ? tgtPages_24 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227979.4]
  assign _T_378 = idxHit[25] ? tgtPages_25 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227980.4]
  assign _T_379 = idxHit[26] ? tgtPages_26 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227981.4]
  assign _T_380 = idxHit[27] ? tgtPages_27 : 3'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227982.4]
  assign _T_381 = _T_353 | _T_354; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227983.4]
  assign _T_382 = _T_381 | _T_355; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227984.4]
  assign _T_383 = _T_382 | _T_356; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227985.4]
  assign _T_384 = _T_383 | _T_357; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227986.4]
  assign _T_385 = _T_384 | _T_358; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227987.4]
  assign _T_386 = _T_385 | _T_359; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227988.4]
  assign _T_387 = _T_386 | _T_360; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227989.4]
  assign _T_388 = _T_387 | _T_361; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227990.4]
  assign _T_389 = _T_388 | _T_362; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227991.4]
  assign _T_390 = _T_389 | _T_363; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227992.4]
  assign _T_391 = _T_390 | _T_364; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227993.4]
  assign _T_392 = _T_391 | _T_365; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227994.4]
  assign _T_393 = _T_392 | _T_366; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227995.4]
  assign _T_394 = _T_393 | _T_367; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227996.4]
  assign _T_395 = _T_394 | _T_368; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227997.4]
  assign _T_396 = _T_395 | _T_369; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227998.4]
  assign _T_397 = _T_396 | _T_370; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@227999.4]
  assign _T_398 = _T_397 | _T_371; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228000.4]
  assign _T_399 = _T_398 | _T_372; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228001.4]
  assign _T_400 = _T_399 | _T_373; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228002.4]
  assign _T_401 = _T_400 | _T_374; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228003.4]
  assign _T_402 = _T_401 | _T_375; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228004.4]
  assign _T_403 = _T_402 | _T_376; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228005.4]
  assign _T_404 = _T_403 | _T_377; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228006.4]
  assign _T_405 = _T_404 | _T_378; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228007.4]
  assign _T_406 = _T_405 | _T_379; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228008.4]
  assign _T_407 = _T_406 | _T_380; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228009.4]
  assign _T_437 = idxHit[0] ? tgts_0 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228040.4]
  assign _T_438 = idxHit[1] ? tgts_1 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228041.4]
  assign _T_439 = idxHit[2] ? tgts_2 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228042.4]
  assign _T_440 = idxHit[3] ? tgts_3 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228043.4]
  assign _T_441 = idxHit[4] ? tgts_4 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228044.4]
  assign _T_442 = idxHit[5] ? tgts_5 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228045.4]
  assign _T_443 = idxHit[6] ? tgts_6 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228046.4]
  assign _T_444 = idxHit[7] ? tgts_7 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228047.4]
  assign _T_445 = idxHit[8] ? tgts_8 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228048.4]
  assign _T_446 = idxHit[9] ? tgts_9 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228049.4]
  assign _T_447 = idxHit[10] ? tgts_10 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228050.4]
  assign _T_448 = idxHit[11] ? tgts_11 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228051.4]
  assign _T_449 = idxHit[12] ? tgts_12 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228052.4]
  assign _T_450 = idxHit[13] ? tgts_13 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228053.4]
  assign _T_451 = idxHit[14] ? tgts_14 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228054.4]
  assign _T_452 = idxHit[15] ? tgts_15 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228055.4]
  assign _T_453 = idxHit[16] ? tgts_16 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228056.4]
  assign _T_454 = idxHit[17] ? tgts_17 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228057.4]
  assign _T_455 = idxHit[18] ? tgts_18 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228058.4]
  assign _T_456 = idxHit[19] ? tgts_19 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228059.4]
  assign _T_457 = idxHit[20] ? tgts_20 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228060.4]
  assign _T_458 = idxHit[21] ? tgts_21 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228061.4]
  assign _T_459 = idxHit[22] ? tgts_22 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228062.4]
  assign _T_460 = idxHit[23] ? tgts_23 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228063.4]
  assign _T_461 = idxHit[24] ? tgts_24 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228064.4]
  assign _T_462 = idxHit[25] ? tgts_25 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228065.4]
  assign _T_463 = idxHit[26] ? tgts_26 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228066.4]
  assign _T_464 = idxHit[27] ? tgts_27 : 13'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228067.4]
  assign _T_465 = _T_437 | _T_438; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228068.4]
  assign _T_466 = _T_465 | _T_439; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228069.4]
  assign _T_467 = _T_466 | _T_440; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228070.4]
  assign _T_468 = _T_467 | _T_441; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228071.4]
  assign _T_469 = _T_468 | _T_442; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228072.4]
  assign _T_470 = _T_469 | _T_443; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228073.4]
  assign _T_471 = _T_470 | _T_444; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228074.4]
  assign _T_472 = _T_471 | _T_445; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228075.4]
  assign _T_473 = _T_472 | _T_446; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228076.4]
  assign _T_474 = _T_473 | _T_447; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228077.4]
  assign _T_475 = _T_474 | _T_448; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228078.4]
  assign _T_476 = _T_475 | _T_449; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228079.4]
  assign _T_477 = _T_476 | _T_450; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228080.4]
  assign _T_478 = _T_477 | _T_451; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228081.4]
  assign _T_479 = _T_478 | _T_452; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228082.4]
  assign _T_480 = _T_479 | _T_453; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228083.4]
  assign _T_481 = _T_480 | _T_454; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228084.4]
  assign _T_482 = _T_481 | _T_455; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228085.4]
  assign _T_483 = _T_482 | _T_456; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228086.4]
  assign _T_484 = _T_483 | _T_457; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228087.4]
  assign _T_485 = _T_484 | _T_458; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228088.4]
  assign _T_486 = _T_485 | _T_459; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228089.4]
  assign _T_487 = _T_486 | _T_460; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228090.4]
  assign _T_488 = _T_487 | _T_461; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228091.4]
  assign _T_489 = _T_488 | _T_462; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228092.4]
  assign _T_490 = _T_489 | _T_463; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228093.4]
  assign _T_491 = _T_490 | _T_464; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228094.4]
  assign _T_493 = {_T_491, 1'h0}; // @[BTB.scala 277:82:chipyard.TestHarness.RocketConfig.fir@228097.4]
  assign _GEN_375 = 3'h1 == _T_407 ? pages_1 : pages_0; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  assign _GEN_376 = 3'h2 == _T_407 ? pages_2 : _GEN_375; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  assign _GEN_377 = 3'h3 == _T_407 ? pages_3 : _GEN_376; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  assign _GEN_378 = 3'h4 == _T_407 ? pages_4 : _GEN_377; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  assign _GEN_379 = 3'h5 == _T_407 ? pages_5 : _GEN_378; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  assign _T_494 = {_GEN_379,_T_493}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228098.4]
  assign _T_497 = |idxHit[27:16]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@228102.4]
  assign _GEN_447 = {{4'd0}, idxHit[27:16]}; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228103.4]
  assign _T_498 = _GEN_447 | idxHit[15:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228103.4]
  assign _T_501 = |_T_498[15:8]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@228106.4]
  assign _T_502 = _T_498[15:8] | _T_498[7:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228107.4]
  assign _T_505 = |_T_502[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@228110.4]
  assign _T_506 = _T_502[7:4] | _T_502[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228111.4]
  assign _T_509 = |_T_506[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@228114.4]
  assign _T_510 = _T_506[3:2] | _T_506[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@228115.4]
  assign _T_514 = {_T_501,_T_505,_T_509,_T_510[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228119.4]
  assign _T_544 = idxHit[0] & brIdx_0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228150.4]
  assign _T_545 = idxHit[1] & brIdx_1; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228151.4]
  assign _T_546 = idxHit[2] & brIdx_2; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228152.4]
  assign _T_547 = idxHit[3] & brIdx_3; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228153.4]
  assign _T_548 = idxHit[4] & brIdx_4; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228154.4]
  assign _T_549 = idxHit[5] & brIdx_5; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228155.4]
  assign _T_550 = idxHit[6] & brIdx_6; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228156.4]
  assign _T_551 = idxHit[7] & brIdx_7; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228157.4]
  assign _T_552 = idxHit[8] & brIdx_8; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228158.4]
  assign _T_553 = idxHit[9] & brIdx_9; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228159.4]
  assign _T_554 = idxHit[10] & brIdx_10; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228160.4]
  assign _T_555 = idxHit[11] & brIdx_11; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228161.4]
  assign _T_556 = idxHit[12] & brIdx_12; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228162.4]
  assign _T_557 = idxHit[13] & brIdx_13; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228163.4]
  assign _T_558 = idxHit[14] & brIdx_14; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228164.4]
  assign _T_559 = idxHit[15] & brIdx_15; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228165.4]
  assign _T_560 = idxHit[16] & brIdx_16; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228166.4]
  assign _T_561 = idxHit[17] & brIdx_17; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228167.4]
  assign _T_562 = idxHit[18] & brIdx_18; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228168.4]
  assign _T_563 = idxHit[19] & brIdx_19; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228169.4]
  assign _T_564 = idxHit[20] & brIdx_20; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228170.4]
  assign _T_565 = idxHit[21] & brIdx_21; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228171.4]
  assign _T_566 = idxHit[22] & brIdx_22; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228172.4]
  assign _T_567 = idxHit[23] & brIdx_23; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228173.4]
  assign _T_568 = idxHit[24] & brIdx_24; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228174.4]
  assign _T_569 = idxHit[25] & brIdx_25; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228175.4]
  assign _T_570 = idxHit[26] & brIdx_26; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228176.4]
  assign _T_571 = idxHit[27] & brIdx_27; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228177.4]
  assign _T_572 = _T_544 | _T_545; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228178.4]
  assign _T_573 = _T_572 | _T_546; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228179.4]
  assign _T_574 = _T_573 | _T_547; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228180.4]
  assign _T_575 = _T_574 | _T_548; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228181.4]
  assign _T_576 = _T_575 | _T_549; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228182.4]
  assign _T_577 = _T_576 | _T_550; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228183.4]
  assign _T_578 = _T_577 | _T_551; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228184.4]
  assign _T_579 = _T_578 | _T_552; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228185.4]
  assign _T_580 = _T_579 | _T_553; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228186.4]
  assign _T_581 = _T_580 | _T_554; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228187.4]
  assign _T_582 = _T_581 | _T_555; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228188.4]
  assign _T_583 = _T_582 | _T_556; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228189.4]
  assign _T_584 = _T_583 | _T_557; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228190.4]
  assign _T_585 = _T_584 | _T_558; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228191.4]
  assign _T_586 = _T_585 | _T_559; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228192.4]
  assign _T_587 = _T_586 | _T_560; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228193.4]
  assign _T_588 = _T_587 | _T_561; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228194.4]
  assign _T_589 = _T_588 | _T_562; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228195.4]
  assign _T_590 = _T_589 | _T_563; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228196.4]
  assign _T_591 = _T_590 | _T_564; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228197.4]
  assign _T_592 = _T_591 | _T_565; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228198.4]
  assign _T_593 = _T_592 | _T_566; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228199.4]
  assign _T_594 = _T_593 | _T_567; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228200.4]
  assign _T_595 = _T_594 | _T_568; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228201.4]
  assign _T_596 = _T_595 | _T_569; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228202.4]
  assign _T_597 = _T_596 | _T_570; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@228203.4]
  assign _T_701 = idxHit[1] | idxHit[2]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228312.4]
  assign _T_703 = idxHit[1] & idxHit[2]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228314.4]
  assign _T_705 = idxHit[0] | _T_701; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228316.4]
  assign _T_707 = idxHit[0] & _T_701; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228318.4]
  assign _T_708 = _T_703 | _T_707; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228319.4]
  assign _T_715 = idxHit[3] | idxHit[4]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228326.4]
  assign _T_717 = idxHit[3] & idxHit[4]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228328.4]
  assign _T_724 = idxHit[5] | idxHit[6]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228335.4]
  assign _T_726 = idxHit[5] & idxHit[6]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228337.4]
  assign _T_728 = _T_715 | _T_724; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228339.4]
  assign _T_729 = _T_717 | _T_726; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228340.4]
  assign _T_730 = _T_715 & _T_724; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228341.4]
  assign _T_731 = _T_729 | _T_730; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228342.4]
  assign _T_732 = _T_705 | _T_728; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228343.4]
  assign _T_733 = _T_708 | _T_731; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228344.4]
  assign _T_734 = _T_705 & _T_728; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228345.4]
  assign _T_735 = _T_733 | _T_734; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228346.4]
  assign _T_745 = idxHit[8] | idxHit[9]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228356.4]
  assign _T_747 = idxHit[8] & idxHit[9]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228358.4]
  assign _T_749 = idxHit[7] | _T_745; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228360.4]
  assign _T_751 = idxHit[7] & _T_745; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228362.4]
  assign _T_752 = _T_747 | _T_751; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228363.4]
  assign _T_759 = idxHit[10] | idxHit[11]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228370.4]
  assign _T_761 = idxHit[10] & idxHit[11]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228372.4]
  assign _T_768 = idxHit[12] | idxHit[13]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228379.4]
  assign _T_770 = idxHit[12] & idxHit[13]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228381.4]
  assign _T_772 = _T_759 | _T_768; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228383.4]
  assign _T_773 = _T_761 | _T_770; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228384.4]
  assign _T_774 = _T_759 & _T_768; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228385.4]
  assign _T_775 = _T_773 | _T_774; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228386.4]
  assign _T_776 = _T_749 | _T_772; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228387.4]
  assign _T_777 = _T_752 | _T_775; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228388.4]
  assign _T_778 = _T_749 & _T_772; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228389.4]
  assign _T_779 = _T_777 | _T_778; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228390.4]
  assign _T_780 = _T_732 | _T_776; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228391.4]
  assign _T_781 = _T_735 | _T_779; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228392.4]
  assign _T_782 = _T_732 & _T_776; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228393.4]
  assign _T_783 = _T_781 | _T_782; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228394.4]
  assign _T_794 = idxHit[15] | idxHit[16]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228405.4]
  assign _T_796 = idxHit[15] & idxHit[16]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228407.4]
  assign _T_798 = idxHit[14] | _T_794; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228409.4]
  assign _T_800 = idxHit[14] & _T_794; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228411.4]
  assign _T_801 = _T_796 | _T_800; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228412.4]
  assign _T_808 = idxHit[17] | idxHit[18]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228419.4]
  assign _T_810 = idxHit[17] & idxHit[18]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228421.4]
  assign _T_817 = idxHit[19] | idxHit[20]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228428.4]
  assign _T_819 = idxHit[19] & idxHit[20]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228430.4]
  assign _T_821 = _T_808 | _T_817; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228432.4]
  assign _T_822 = _T_810 | _T_819; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228433.4]
  assign _T_823 = _T_808 & _T_817; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228434.4]
  assign _T_824 = _T_822 | _T_823; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228435.4]
  assign _T_825 = _T_798 | _T_821; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228436.4]
  assign _T_826 = _T_801 | _T_824; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228437.4]
  assign _T_827 = _T_798 & _T_821; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228438.4]
  assign _T_828 = _T_826 | _T_827; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228439.4]
  assign _T_838 = idxHit[22] | idxHit[23]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228449.4]
  assign _T_840 = idxHit[22] & idxHit[23]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228451.4]
  assign _T_842 = idxHit[21] | _T_838; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228453.4]
  assign _T_844 = idxHit[21] & _T_838; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228455.4]
  assign _T_845 = _T_840 | _T_844; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228456.4]
  assign _T_852 = idxHit[24] | idxHit[25]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228463.4]
  assign _T_854 = idxHit[24] & idxHit[25]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228465.4]
  assign _T_861 = idxHit[26] | idxHit[27]; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228472.4]
  assign _T_863 = idxHit[26] & idxHit[27]; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228474.4]
  assign _T_865 = _T_852 | _T_861; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228476.4]
  assign _T_866 = _T_854 | _T_863; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228477.4]
  assign _T_867 = _T_852 & _T_861; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228478.4]
  assign _T_868 = _T_866 | _T_867; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228479.4]
  assign _T_869 = _T_842 | _T_865; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228480.4]
  assign _T_870 = _T_845 | _T_868; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228481.4]
  assign _T_871 = _T_842 & _T_865; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228482.4]
  assign _T_872 = _T_870 | _T_871; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228483.4]
  assign _T_873 = _T_825 | _T_869; // @[Misc.scala 182:16:chipyard.TestHarness.RocketConfig.fir@228484.4]
  assign _T_874 = _T_828 | _T_872; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228485.4]
  assign _T_875 = _T_825 & _T_869; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228486.4]
  assign _T_876 = _T_874 | _T_875; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228487.4]
  assign _T_878 = _T_783 | _T_876; // @[Misc.scala 182:37:chipyard.TestHarness.RocketConfig.fir@228489.4]
  assign _T_879 = _T_780 & _T_873; // @[Misc.scala 182:61:chipyard.TestHarness.RocketConfig.fir@228490.4]
  assign _T_880 = _T_878 | _T_879; // @[Misc.scala 182:49:chipyard.TestHarness.RocketConfig.fir@228491.4]
  assign _T_881 = ~idxHit; // @[BTB.scala 285:26:chipyard.TestHarness.RocketConfig.fir@228493.6]
  assign _T_882 = isValid & _T_881; // @[BTB.scala 285:24:chipyard.TestHarness.RocketConfig.fir@228494.6]
  assign _GEN_380 = _T_880 ? {{4'd0}, _T_882} : _GEN_338; // @[BTB.scala 284:37:chipyard.TestHarness.RocketConfig.fir@228492.4]
  assign _GEN_381 = io_flush ? 32'h0 : _GEN_380; // @[BTB.scala 287:19:chipyard.TestHarness.RocketConfig.fir@228497.4]
  assign _T_885 = cfiType_0 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228502.4]
  assign _T_886 = cfiType_1 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228503.4]
  assign _T_887 = cfiType_2 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228504.4]
  assign _T_888 = cfiType_3 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228505.4]
  assign _T_889 = cfiType_4 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228506.4]
  assign _T_890 = cfiType_5 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228507.4]
  assign _T_891 = cfiType_6 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228508.4]
  assign _T_892 = cfiType_7 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228509.4]
  assign _T_893 = cfiType_8 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228510.4]
  assign _T_894 = cfiType_9 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228511.4]
  assign _T_895 = cfiType_10 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228512.4]
  assign _T_896 = cfiType_11 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228513.4]
  assign _T_897 = cfiType_12 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228514.4]
  assign _T_898 = cfiType_13 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228515.4]
  assign _T_899 = cfiType_14 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228516.4]
  assign _T_900 = cfiType_15 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228517.4]
  assign _T_901 = cfiType_16 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228518.4]
  assign _T_902 = cfiType_17 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228519.4]
  assign _T_903 = cfiType_18 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228520.4]
  assign _T_904 = cfiType_19 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228521.4]
  assign _T_905 = cfiType_20 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228522.4]
  assign _T_906 = cfiType_21 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228523.4]
  assign _T_907 = cfiType_22 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228524.4]
  assign _T_908 = cfiType_23 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228525.4]
  assign _T_909 = cfiType_24 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228526.4]
  assign _T_910 = cfiType_25 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228527.4]
  assign _T_911 = cfiType_26 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228528.4]
  assign _T_912 = cfiType_27 == 2'h0; // @[BTB.scala 293:44:chipyard.TestHarness.RocketConfig.fir@228529.4]
  assign _T_918 = {_T_891,_T_890,_T_889,_T_888,_T_887,_T_886,_T_885}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228535.4]
  assign _T_925 = {_T_898,_T_897,_T_896,_T_895,_T_894,_T_893,_T_892,_T_918}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228542.4]
  assign _T_931 = {_T_905,_T_904,_T_903,_T_902,_T_901,_T_900,_T_899}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228548.4]
  assign _T_939 = {_T_912,_T_911,_T_910,_T_909,_T_908,_T_907,_T_906,_T_931,_T_925}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228556.4]
  assign _T_940 = idxHit & _T_939; // @[BTB.scala 293:28:chipyard.TestHarness.RocketConfig.fir@228557.4]
  assign _T_941 = |_T_940; // @[BTB.scala 293:72:chipyard.TestHarness.RocketConfig.fir@228558.4]
  assign _GEN_448 = {{7'd0}, io_req_bits_addr[12:11]}; // @[BTB.scala 87:42:chipyard.TestHarness.RocketConfig.fir@228565.4]
  assign _T_947 = io_req_bits_addr[10:2] ^ _GEN_448; // @[BTB.scala 87:42:chipyard.TestHarness.RocketConfig.fir@228565.4]
  assign _T_948 = 8'hdd * _T_884; // @[BTB.scala 83:12:chipyard.TestHarness.RocketConfig.fir@228566.4]
  assign _T_950 = {_T_948[7:5], 6'h0}; // @[BTB.scala 89:44:chipyard.TestHarness.RocketConfig.fir@228568.4]
  assign _T_955 = {io_bht_advance_bits_bht_value,_T_884[7:1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228576.6]
  assign _GEN_449 = {{7'd0}, io_bht_update_bits_pc[12:11]}; // @[BTB.scala 87:42:chipyard.TestHarness.RocketConfig.fir@228585.8]
  assign _T_960 = io_bht_update_bits_pc[10:2] ^ _GEN_449; // @[BTB.scala 87:42:chipyard.TestHarness.RocketConfig.fir@228585.8]
  assign _T_961 = 8'hdd * io_bht_update_bits_prediction_history; // @[BTB.scala 83:12:chipyard.TestHarness.RocketConfig.fir@228586.8]
  assign _T_963 = {_T_961[7:5], 6'h0}; // @[BTB.scala 89:44:chipyard.TestHarness.RocketConfig.fir@228588.8]
  assign _T_967 = {io_bht_update_bits_taken,io_bht_update_bits_prediction_history[7:1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228594.10]
  assign _T_942_value = _T_883__T_952_data; // @[BTB.scala 92:19:chipyard.TestHarness.RocketConfig.fir@228559.4 BTB.scala 93:15:chipyard.TestHarness.RocketConfig.fir@228571.4]
  assign _T_969 = ~_T_942_value; // @[BTB.scala 308:11:chipyard.TestHarness.RocketConfig.fir@228604.4]
  assign _T_970 = _T_969 & _T_941; // @[BTB.scala 308:22:chipyard.TestHarness.RocketConfig.fir@228605.4]
  assign _T_974 = cfiType_0 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228613.4]
  assign _T_975 = cfiType_1 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228614.4]
  assign _T_976 = cfiType_2 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228615.4]
  assign _T_977 = cfiType_3 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228616.4]
  assign _T_978 = cfiType_4 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228617.4]
  assign _T_979 = cfiType_5 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228618.4]
  assign _T_980 = cfiType_6 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228619.4]
  assign _T_981 = cfiType_7 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228620.4]
  assign _T_982 = cfiType_8 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228621.4]
  assign _T_983 = cfiType_9 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228622.4]
  assign _T_984 = cfiType_10 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228623.4]
  assign _T_985 = cfiType_11 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228624.4]
  assign _T_986 = cfiType_12 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228625.4]
  assign _T_987 = cfiType_13 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228626.4]
  assign _T_988 = cfiType_14 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228627.4]
  assign _T_989 = cfiType_15 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228628.4]
  assign _T_990 = cfiType_16 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228629.4]
  assign _T_991 = cfiType_17 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228630.4]
  assign _T_992 = cfiType_18 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228631.4]
  assign _T_993 = cfiType_19 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228632.4]
  assign _T_994 = cfiType_20 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228633.4]
  assign _T_995 = cfiType_21 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228634.4]
  assign _T_996 = cfiType_22 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228635.4]
  assign _T_997 = cfiType_23 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228636.4]
  assign _T_998 = cfiType_24 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228637.4]
  assign _T_999 = cfiType_25 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228638.4]
  assign _T_1000 = cfiType_26 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228639.4]
  assign _T_1001 = cfiType_27 == 2'h3; // @[BTB.scala 314:42:chipyard.TestHarness.RocketConfig.fir@228640.4]
  assign _T_1007 = {_T_980,_T_979,_T_978,_T_977,_T_976,_T_975,_T_974}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228646.4]
  assign _T_1014 = {_T_987,_T_986,_T_985,_T_984,_T_983,_T_982,_T_981,_T_1007}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228653.4]
  assign _T_1020 = {_T_994,_T_993,_T_992,_T_991,_T_990,_T_989,_T_988}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228659.4]
  assign _T_1028 = {_T_1001,_T_1000,_T_999,_T_998,_T_997,_T_996,_T_995,_T_1020,_T_1014}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@228667.4]
  assign _T_1029 = idxHit & _T_1028; // @[BTB.scala 314:26:chipyard.TestHarness.RocketConfig.fir@228668.4]
  assign _T_1030 = |_T_1029; // @[BTB.scala 314:67:chipyard.TestHarness.RocketConfig.fir@228669.4]
  assign _T_1031 = _T_971 == 3'h0; // @[BTB.scala 55:29:chipyard.TestHarness.RocketConfig.fir@228670.4]
  assign _T_1032 = ~_T_1031; // @[BTB.scala 315:26:chipyard.TestHarness.RocketConfig.fir@228671.4]
  assign _GEN_399 = 3'h1 == _T_972 ? _T_973_1 : _T_973_0; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  assign _GEN_400 = 3'h2 == _T_972 ? _T_973_2 : _GEN_399; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  assign _GEN_401 = 3'h3 == _T_972 ? _T_973_3 : _GEN_400; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  assign _GEN_402 = 3'h4 == _T_972 ? _T_973_4 : _GEN_401; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  assign _GEN_403 = 3'h5 == _T_972 ? _T_973_5 : _GEN_402; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
  assign _T_1035 = _T_1032 & _T_1030; // @[BTB.scala 317:24:chipyard.TestHarness.RocketConfig.fir@228676.4]
  assign _T_1036 = io_ras_update_bits_cfiType == 2'h2; // @[BTB.scala 321:40:chipyard.TestHarness.RocketConfig.fir@228681.6]
  assign _T_1037 = _T_971 < 3'h6; // @[BTB.scala 44:17:chipyard.TestHarness.RocketConfig.fir@228683.8]
  assign _T_1039 = _T_971 + 3'h1; // @[BTB.scala 44:42:chipyard.TestHarness.RocketConfig.fir@228686.10]
  assign _T_1040 = _T_972 < 3'h5; // @[BTB.scala 45:49:chipyard.TestHarness.RocketConfig.fir@228689.8]
  assign _T_1043 = _T_972 + 3'h1; // @[BTB.scala 45:62:chipyard.TestHarness.RocketConfig.fir@228692.8]
  assign _T_1044 = _T_1040 ? _T_1043 : 3'h0; // @[BTB.scala 45:22:chipyard.TestHarness.RocketConfig.fir@228693.8]
  assign _T_1045 = io_ras_update_bits_cfiType == 2'h3; // @[BTB.scala 323:46:chipyard.TestHarness.RocketConfig.fir@228698.8]
  assign _T_1049 = _T_971 - 3'h1; // @[BTB.scala 51:20:chipyard.TestHarness.RocketConfig.fir@228704.12]
  assign _T_1050 = _T_972 > 3'h0; // @[BTB.scala 52:42:chipyard.TestHarness.RocketConfig.fir@228706.12]
  assign _T_1053 = _T_972 - 3'h1; // @[BTB.scala 52:50:chipyard.TestHarness.RocketConfig.fir@228709.12]
  assign io_resp_valid = _T_323[0]; // @[BTB.scala 275:17:chipyard.TestHarness.RocketConfig.fir@227925.4]
  assign io_resp_bits_taken = _T_970 ? 1'h0 : 1'h1; // @[BTB.scala 276:22:chipyard.TestHarness.RocketConfig.fir@227926.4 BTB.scala 308:56:chipyard.TestHarness.RocketConfig.fir@228607.6]
  assign io_resp_bits_bridx = _T_597 | _T_571; // @[BTB.scala 279:22:chipyard.TestHarness.RocketConfig.fir@228207.4]
  assign io_resp_bits_target = _T_1035 ? _GEN_403 : _T_494; // @[BTB.scala 277:23:chipyard.TestHarness.RocketConfig.fir@228099.4 BTB.scala 318:27:chipyard.TestHarness.RocketConfig.fir@228678.6]
  assign io_resp_bits_entry = {_T_497,_T_514}; // @[BTB.scala 278:22:chipyard.TestHarness.RocketConfig.fir@228121.4]
  assign io_resp_bits_bht_history = _T_884; // @[BTB.scala 309:22:chipyard.TestHarness.RocketConfig.fir@228609.4]
  assign io_resp_bits_bht_value = _T_883__T_952_data; // @[BTB.scala 309:22:chipyard.TestHarness.RocketConfig.fir@228609.4]
  assign io_ras_head_valid = ~_T_1031; // @[BTB.scala 315:23:chipyard.TestHarness.RocketConfig.fir@228672.4]
  assign io_ras_head_bits = 3'h5 == _T_972 ? _T_973_5 : _GEN_402; // @[BTB.scala 316:22:chipyard.TestHarness.RocketConfig.fir@228673.4]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    _T_883[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  idxs_0 = _RAND_1[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  idxs_1 = _RAND_2[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  idxs_2 = _RAND_3[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  idxs_3 = _RAND_4[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  idxs_4 = _RAND_5[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  idxs_5 = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  idxs_6 = _RAND_7[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  idxs_7 = _RAND_8[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  idxs_8 = _RAND_9[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  idxs_9 = _RAND_10[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  idxs_10 = _RAND_11[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  idxs_11 = _RAND_12[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  idxs_12 = _RAND_13[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  idxs_13 = _RAND_14[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  idxs_14 = _RAND_15[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  idxs_15 = _RAND_16[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  idxs_16 = _RAND_17[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  idxs_17 = _RAND_18[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  idxs_18 = _RAND_19[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  idxs_19 = _RAND_20[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  idxs_20 = _RAND_21[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  idxs_21 = _RAND_22[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  idxs_22 = _RAND_23[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  idxs_23 = _RAND_24[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  idxs_24 = _RAND_25[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  idxs_25 = _RAND_26[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  idxs_26 = _RAND_27[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  idxs_27 = _RAND_28[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  idxPages_0 = _RAND_29[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  idxPages_1 = _RAND_30[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  idxPages_2 = _RAND_31[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  idxPages_3 = _RAND_32[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  idxPages_4 = _RAND_33[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  idxPages_5 = _RAND_34[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  idxPages_6 = _RAND_35[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  idxPages_7 = _RAND_36[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  idxPages_8 = _RAND_37[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  idxPages_9 = _RAND_38[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  idxPages_10 = _RAND_39[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  idxPages_11 = _RAND_40[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  idxPages_12 = _RAND_41[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  idxPages_13 = _RAND_42[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  idxPages_14 = _RAND_43[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  idxPages_15 = _RAND_44[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  idxPages_16 = _RAND_45[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  idxPages_17 = _RAND_46[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  idxPages_18 = _RAND_47[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  idxPages_19 = _RAND_48[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  idxPages_20 = _RAND_49[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  idxPages_21 = _RAND_50[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  idxPages_22 = _RAND_51[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  idxPages_23 = _RAND_52[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  idxPages_24 = _RAND_53[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  idxPages_25 = _RAND_54[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  idxPages_26 = _RAND_55[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  idxPages_27 = _RAND_56[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  tgts_0 = _RAND_57[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  tgts_1 = _RAND_58[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  tgts_2 = _RAND_59[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  tgts_3 = _RAND_60[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  tgts_4 = _RAND_61[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  tgts_5 = _RAND_62[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  tgts_6 = _RAND_63[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  tgts_7 = _RAND_64[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  tgts_8 = _RAND_65[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  tgts_9 = _RAND_66[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  tgts_10 = _RAND_67[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  tgts_11 = _RAND_68[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  tgts_12 = _RAND_69[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  tgts_13 = _RAND_70[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  tgts_14 = _RAND_71[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  tgts_15 = _RAND_72[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  tgts_16 = _RAND_73[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  tgts_17 = _RAND_74[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  tgts_18 = _RAND_75[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  tgts_19 = _RAND_76[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  tgts_20 = _RAND_77[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  tgts_21 = _RAND_78[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  tgts_22 = _RAND_79[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  tgts_23 = _RAND_80[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  tgts_24 = _RAND_81[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  tgts_25 = _RAND_82[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  tgts_26 = _RAND_83[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  tgts_27 = _RAND_84[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  tgtPages_0 = _RAND_85[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  tgtPages_1 = _RAND_86[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  tgtPages_2 = _RAND_87[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  tgtPages_3 = _RAND_88[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  tgtPages_4 = _RAND_89[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  tgtPages_5 = _RAND_90[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  tgtPages_6 = _RAND_91[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  tgtPages_7 = _RAND_92[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  tgtPages_8 = _RAND_93[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  tgtPages_9 = _RAND_94[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  tgtPages_10 = _RAND_95[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  tgtPages_11 = _RAND_96[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{`RANDOM}};
  tgtPages_12 = _RAND_97[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{`RANDOM}};
  tgtPages_13 = _RAND_98[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{`RANDOM}};
  tgtPages_14 = _RAND_99[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{`RANDOM}};
  tgtPages_15 = _RAND_100[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{`RANDOM}};
  tgtPages_16 = _RAND_101[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  tgtPages_17 = _RAND_102[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  tgtPages_18 = _RAND_103[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  tgtPages_19 = _RAND_104[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{`RANDOM}};
  tgtPages_20 = _RAND_105[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{`RANDOM}};
  tgtPages_21 = _RAND_106[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{`RANDOM}};
  tgtPages_22 = _RAND_107[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{`RANDOM}};
  tgtPages_23 = _RAND_108[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{`RANDOM}};
  tgtPages_24 = _RAND_109[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{`RANDOM}};
  tgtPages_25 = _RAND_110[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{`RANDOM}};
  tgtPages_26 = _RAND_111[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{`RANDOM}};
  tgtPages_27 = _RAND_112[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{`RANDOM}};
  pages_0 = _RAND_113[24:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{`RANDOM}};
  pages_1 = _RAND_114[24:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{`RANDOM}};
  pages_2 = _RAND_115[24:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{`RANDOM}};
  pages_3 = _RAND_116[24:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{`RANDOM}};
  pages_4 = _RAND_117[24:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{`RANDOM}};
  pages_5 = _RAND_118[24:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{`RANDOM}};
  pageValid = _RAND_119[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{`RANDOM}};
  isValid = _RAND_120[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{`RANDOM}};
  cfiType_0 = _RAND_121[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{`RANDOM}};
  cfiType_1 = _RAND_122[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{`RANDOM}};
  cfiType_2 = _RAND_123[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{`RANDOM}};
  cfiType_3 = _RAND_124[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{`RANDOM}};
  cfiType_4 = _RAND_125[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_126 = {1{`RANDOM}};
  cfiType_5 = _RAND_126[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_127 = {1{`RANDOM}};
  cfiType_6 = _RAND_127[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_128 = {1{`RANDOM}};
  cfiType_7 = _RAND_128[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_129 = {1{`RANDOM}};
  cfiType_8 = _RAND_129[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_130 = {1{`RANDOM}};
  cfiType_9 = _RAND_130[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_131 = {1{`RANDOM}};
  cfiType_10 = _RAND_131[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_132 = {1{`RANDOM}};
  cfiType_11 = _RAND_132[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_133 = {1{`RANDOM}};
  cfiType_12 = _RAND_133[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_134 = {1{`RANDOM}};
  cfiType_13 = _RAND_134[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_135 = {1{`RANDOM}};
  cfiType_14 = _RAND_135[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_136 = {1{`RANDOM}};
  cfiType_15 = _RAND_136[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_137 = {1{`RANDOM}};
  cfiType_16 = _RAND_137[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_138 = {1{`RANDOM}};
  cfiType_17 = _RAND_138[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_139 = {1{`RANDOM}};
  cfiType_18 = _RAND_139[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_140 = {1{`RANDOM}};
  cfiType_19 = _RAND_140[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_141 = {1{`RANDOM}};
  cfiType_20 = _RAND_141[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_142 = {1{`RANDOM}};
  cfiType_21 = _RAND_142[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_143 = {1{`RANDOM}};
  cfiType_22 = _RAND_143[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_144 = {1{`RANDOM}};
  cfiType_23 = _RAND_144[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_145 = {1{`RANDOM}};
  cfiType_24 = _RAND_145[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_146 = {1{`RANDOM}};
  cfiType_25 = _RAND_146[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_147 = {1{`RANDOM}};
  cfiType_26 = _RAND_147[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_148 = {1{`RANDOM}};
  cfiType_27 = _RAND_148[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_149 = {1{`RANDOM}};
  brIdx_0 = _RAND_149[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_150 = {1{`RANDOM}};
  brIdx_1 = _RAND_150[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_151 = {1{`RANDOM}};
  brIdx_2 = _RAND_151[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_152 = {1{`RANDOM}};
  brIdx_3 = _RAND_152[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_153 = {1{`RANDOM}};
  brIdx_4 = _RAND_153[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_154 = {1{`RANDOM}};
  brIdx_5 = _RAND_154[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_155 = {1{`RANDOM}};
  brIdx_6 = _RAND_155[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_156 = {1{`RANDOM}};
  brIdx_7 = _RAND_156[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_157 = {1{`RANDOM}};
  brIdx_8 = _RAND_157[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_158 = {1{`RANDOM}};
  brIdx_9 = _RAND_158[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_159 = {1{`RANDOM}};
  brIdx_10 = _RAND_159[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_160 = {1{`RANDOM}};
  brIdx_11 = _RAND_160[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_161 = {1{`RANDOM}};
  brIdx_12 = _RAND_161[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_162 = {1{`RANDOM}};
  brIdx_13 = _RAND_162[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_163 = {1{`RANDOM}};
  brIdx_14 = _RAND_163[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_164 = {1{`RANDOM}};
  brIdx_15 = _RAND_164[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_165 = {1{`RANDOM}};
  brIdx_16 = _RAND_165[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_166 = {1{`RANDOM}};
  brIdx_17 = _RAND_166[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_167 = {1{`RANDOM}};
  brIdx_18 = _RAND_167[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_168 = {1{`RANDOM}};
  brIdx_19 = _RAND_168[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_169 = {1{`RANDOM}};
  brIdx_20 = _RAND_169[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_170 = {1{`RANDOM}};
  brIdx_21 = _RAND_170[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_171 = {1{`RANDOM}};
  brIdx_22 = _RAND_171[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_172 = {1{`RANDOM}};
  brIdx_23 = _RAND_172[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_173 = {1{`RANDOM}};
  brIdx_24 = _RAND_173[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_174 = {1{`RANDOM}};
  brIdx_25 = _RAND_174[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_175 = {1{`RANDOM}};
  brIdx_26 = _RAND_175[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_176 = {1{`RANDOM}};
  brIdx_27 = _RAND_176[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_177 = {1{`RANDOM}};
  r_btb_updatePipe_valid = _RAND_177[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_178 = {1{`RANDOM}};
  r_btb_updatePipe_bits_prediction_entry = _RAND_178[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_179 = {2{`RANDOM}};
  r_btb_updatePipe_bits_pc = _RAND_179[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_180 = {1{`RANDOM}};
  r_btb_updatePipe_bits_isValid = _RAND_180[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_181 = {2{`RANDOM}};
  r_btb_updatePipe_bits_br_pc = _RAND_181[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_182 = {1{`RANDOM}};
  r_btb_updatePipe_bits_cfiType = _RAND_182[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_183 = {1{`RANDOM}};
  nextPageRepl = _RAND_183[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_184 = {1{`RANDOM}};
  _T_123 = _RAND_184[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_185 = {1{`RANDOM}};
  r_respPipe_valid = _RAND_185[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_186 = {1{`RANDOM}};
  r_respPipe_bits_taken = _RAND_186[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_187 = {1{`RANDOM}};
  r_respPipe_bits_entry = _RAND_187[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_188 = {1{`RANDOM}};
  _T_884 = _RAND_188[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_189 = {1{`RANDOM}};
  _T_971 = _RAND_189[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_190 = {1{`RANDOM}};
  _T_972 = _RAND_190[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_191 = {2{`RANDOM}};
  _T_973_0 = _RAND_191[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_192 = {2{`RANDOM}};
  _T_973_1 = _RAND_192[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_193 = {2{`RANDOM}};
  _T_973_2 = _RAND_193[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_194 = {2{`RANDOM}};
  _T_973_3 = _RAND_194[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_195 = {2{`RANDOM}};
  _T_973_4 = _RAND_195[38:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_196 = {2{`RANDOM}};
  _T_973_5 = _RAND_196[38:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(_T_883__T_965_en & _T_883__T_965_mask) begin
      _T_883[_T_883__T_965_addr] <= _T_883__T_965_data; // @[BTB.scala 113:26:chipyard.TestHarness.RocketConfig.fir@228500.4]
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        idxs_0 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        idxs_1 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        idxs_2 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        idxs_3 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        idxs_4 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        idxs_5 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        idxs_6 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        idxs_7 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        idxs_8 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        idxs_9 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        idxs_10 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        idxs_11 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        idxs_12 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        idxs_13 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        idxs_14 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        idxs_15 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        idxs_16 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        idxs_17 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        idxs_18 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        idxs_19 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        idxs_20 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        idxs_21 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        idxs_22 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        idxs_23 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        idxs_24 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        idxs_25 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        idxs_26 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        idxs_27 <= r_btb_updatePipe_bits_pc[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        idxPages_0 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        idxPages_1 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        idxPages_2 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        idxPages_3 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        idxPages_4 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        idxPages_5 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        idxPages_6 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        idxPages_7 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        idxPages_8 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        idxPages_9 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        idxPages_10 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        idxPages_11 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        idxPages_12 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        idxPages_13 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        idxPages_14 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        idxPages_15 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        idxPages_16 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        idxPages_17 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        idxPages_18 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        idxPages_19 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        idxPages_20 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        idxPages_21 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        idxPages_22 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        idxPages_23 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        idxPages_24 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        idxPages_25 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        idxPages_26 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        idxPages_27 <= _T_214[2:0];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        tgts_0 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        tgts_1 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        tgts_2 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        tgts_3 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        tgts_4 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        tgts_5 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        tgts_6 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        tgts_7 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        tgts_8 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        tgts_9 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        tgts_10 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        tgts_11 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        tgts_12 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        tgts_13 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        tgts_14 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        tgts_15 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        tgts_16 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        tgts_17 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        tgts_18 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        tgts_19 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        tgts_20 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        tgts_21 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        tgts_22 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        tgts_23 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        tgts_24 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        tgts_25 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        tgts_26 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        tgts_27 <= io_req_bits_addr[13:1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        tgtPages_0 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        tgtPages_1 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        tgtPages_2 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        tgtPages_3 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        tgtPages_4 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        tgtPages_5 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        tgtPages_6 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        tgtPages_7 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        tgtPages_8 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        tgtPages_9 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        tgtPages_10 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        tgtPages_11 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        tgtPages_12 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        tgtPages_13 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        tgtPages_14 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        tgtPages_15 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        tgtPages_16 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        tgtPages_17 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        tgtPages_18 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        tgtPages_19 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        tgtPages_20 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        tgtPages_21 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        tgtPages_22 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        tgtPages_23 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        tgtPages_24 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        tgtPages_25 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        tgtPages_26 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        tgtPages_27 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_222[0]) begin
        if (_T_221) begin
          pages_0 <= r_btb_updatePipe_bits_pc[38:14];
        end else begin
          pages_0 <= io_req_bits_addr[38:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_229[1]) begin
        if (_T_221) begin
          pages_1 <= io_req_bits_addr[38:14];
        end else begin
          pages_1 <= r_btb_updatePipe_bits_pc[38:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_222[2]) begin
        if (_T_221) begin
          pages_2 <= r_btb_updatePipe_bits_pc[38:14];
        end else begin
          pages_2 <= io_req_bits_addr[38:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_229[3]) begin
        if (_T_221) begin
          pages_3 <= io_req_bits_addr[38:14];
        end else begin
          pages_3 <= r_btb_updatePipe_bits_pc[38:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_222[4]) begin
        if (_T_221) begin
          pages_4 <= r_btb_updatePipe_bits_pc[38:14];
        end else begin
          pages_4 <= io_req_bits_addr[38:14];
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_229[5]) begin
        if (_T_221) begin
          pages_5 <= io_req_bits_addr[38:14];
        end else begin
          pages_5 <= r_btb_updatePipe_bits_pc[38:14];
        end
      end
    end
    if (reset) begin
      pageValid <= 6'h0;
    end else begin
      pageValid <= _GEN_373[5:0];
    end
    if (reset) begin
      isValid <= 28'h0;
    end else begin
      isValid <= _GEN_381[27:0];
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        cfiType_0 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        cfiType_1 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        cfiType_2 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        cfiType_3 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        cfiType_4 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        cfiType_5 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        cfiType_6 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        cfiType_7 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        cfiType_8 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        cfiType_9 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        cfiType_10 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        cfiType_11 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        cfiType_12 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        cfiType_13 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        cfiType_14 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        cfiType_15 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        cfiType_16 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        cfiType_17 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        cfiType_18 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        cfiType_19 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        cfiType_20 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        cfiType_21 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        cfiType_22 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        cfiType_23 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        cfiType_24 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        cfiType_25 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        cfiType_26 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        cfiType_27 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        brIdx_0 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        brIdx_1 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        brIdx_2 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        brIdx_3 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        brIdx_4 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        brIdx_5 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        brIdx_6 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        brIdx_7 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        brIdx_8 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        brIdx_9 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        brIdx_10 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        brIdx_11 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        brIdx_12 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        brIdx_13 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        brIdx_14 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        brIdx_15 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        brIdx_16 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        brIdx_17 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        brIdx_18 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        brIdx_19 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        brIdx_20 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        brIdx_21 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        brIdx_22 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        brIdx_23 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        brIdx_24 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        brIdx_25 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        brIdx_26 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        brIdx_27 <= r_btb_updatePipe_bits_br_pc[1];
      end
    end
    if (reset) begin
      r_btb_updatePipe_valid <= 1'h0;
    end else begin
      r_btb_updatePipe_valid <= io_btb_update_valid;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_prediction_entry <= io_btb_update_bits_prediction_entry;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_pc <= io_btb_update_bits_pc;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_isValid <= io_btb_update_bits_isValid;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_br_pc <= io_btb_update_bits_br_pc;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_cfiType <= io_btb_update_bits_cfiType;
    end
    if (_T_115) begin
      if (_T_120) begin
        nextPageRepl <= {{2'd0}, _T_119[0]};
      end else begin
        nextPageRepl <= _T_119;
      end
    end
    if (_T_162) begin
      _T_123 <= _T_208[27:1];
    end
    if (reset) begin
      r_respPipe_valid <= 1'h0;
    end else begin
      r_respPipe_valid <= io_resp_valid;
    end
    if (io_resp_valid) begin
      r_respPipe_bits_taken <= io_resp_bits_taken;
    end
    if (io_resp_valid) begin
      r_respPipe_bits_entry <= io_resp_bits_entry;
    end
    if (io_bht_update_valid) begin
      if (io_bht_update_bits_branch) begin
        if (io_bht_update_bits_mispredict) begin
          _T_884 <= _T_967;
        end else if (io_bht_advance_valid) begin
          _T_884 <= _T_955;
        end
      end else if (io_bht_update_bits_mispredict) begin
        _T_884 <= io_bht_update_bits_prediction_history;
      end else if (io_bht_advance_valid) begin
        _T_884 <= _T_955;
      end
    end else if (io_bht_advance_valid) begin
      _T_884 <= _T_955;
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (_T_1037) begin
          _T_971 <= _T_1039;
        end
      end else if (_T_1045) begin
        if (_T_1032) begin
          _T_971 <= _T_1049;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (_T_1040) begin
          _T_972 <= _T_1043;
        end else begin
          _T_972 <= 3'h0;
        end
      end else if (_T_1045) begin
        if (_T_1032) begin
          if (_T_1050) begin
            _T_972 <= _T_1053;
          end else begin
            _T_972 <= 3'h5;
          end
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h0 == _T_1044) begin
          _T_973_0 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h1 == _T_1044) begin
          _T_973_1 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h2 == _T_1044) begin
          _T_973_2 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h3 == _T_1044) begin
          _T_973_3 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h4 == _T_1044) begin
          _T_973_4 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h5 == _T_1044) begin
          _T_973_5 <= io_ras_update_bits_returnAddr;
        end
      end
    end
  end
endmodule
