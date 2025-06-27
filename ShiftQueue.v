module ShiftQueue( // @[:chipyard.TestHarness.RocketConfig.fir@219373.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@219374.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@219375.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input         io_enq_bits_btb_taken, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input         io_enq_bits_btb_bridx, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input  [4:0]  io_enq_bits_btb_entry, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input  [7:0]  io_enq_bits_btb_bht_history, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input  [39:0] io_enq_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input  [31:0] io_enq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input  [1:0]  io_enq_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input         io_enq_bits_xcpt_pf_inst, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input         io_enq_bits_xcpt_ae_inst, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input         io_enq_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output        io_deq_bits_btb_taken, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output        io_deq_bits_btb_bridx, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output [4:0]  io_deq_bits_btb_entry, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output [7:0]  io_deq_bits_btb_bht_history, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output [39:0] io_deq_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output [31:0] io_deq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output        io_deq_bits_xcpt_pf_inst, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output        io_deq_bits_xcpt_ae_inst, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output        io_deq_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
  output [4:0]  io_mask // @[:chipyard.TestHarness.RocketConfig.fir@219376.4]
);
  reg  _T_1_0; // @[ShiftQueue.scala 21:30:chipyard.TestHarness.RocketConfig.fir@219384.4]
  reg [31:0] _RAND_0;
  reg  _T_1_1; // @[ShiftQueue.scala 21:30:chipyard.TestHarness.RocketConfig.fir@219384.4]
  reg [31:0] _RAND_1;
  reg  _T_1_2; // @[ShiftQueue.scala 21:30:chipyard.TestHarness.RocketConfig.fir@219384.4]
  reg [31:0] _RAND_2;
  reg  _T_1_3; // @[ShiftQueue.scala 21:30:chipyard.TestHarness.RocketConfig.fir@219384.4]
  reg [31:0] _RAND_3;
  reg  _T_1_4; // @[ShiftQueue.scala 21:30:chipyard.TestHarness.RocketConfig.fir@219384.4]
  reg [31:0] _RAND_4;
  reg  _T_2_0_btb_taken; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_5;
  reg  _T_2_0_btb_bridx; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_6;
  reg [4:0] _T_2_0_btb_entry; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_7;
  reg [7:0] _T_2_0_btb_bht_history; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_8;
  reg [39:0] _T_2_0_pc; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [63:0] _RAND_9;
  reg [31:0] _T_2_0_data; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_10;
  reg  _T_2_0_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_11;
  reg  _T_2_0_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_12;
  reg  _T_2_0_replay; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_13;
  reg  _T_2_1_btb_taken; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_14;
  reg  _T_2_1_btb_bridx; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_15;
  reg [4:0] _T_2_1_btb_entry; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_16;
  reg [7:0] _T_2_1_btb_bht_history; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_17;
  reg [39:0] _T_2_1_pc; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [63:0] _RAND_18;
  reg [31:0] _T_2_1_data; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_19;
  reg  _T_2_1_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_20;
  reg  _T_2_1_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_21;
  reg  _T_2_1_replay; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_22;
  reg  _T_2_2_btb_taken; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_23;
  reg  _T_2_2_btb_bridx; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_24;
  reg [4:0] _T_2_2_btb_entry; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_25;
  reg [7:0] _T_2_2_btb_bht_history; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_26;
  reg [39:0] _T_2_2_pc; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [63:0] _RAND_27;
  reg [31:0] _T_2_2_data; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_28;
  reg  _T_2_2_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_29;
  reg  _T_2_2_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_30;
  reg  _T_2_2_replay; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_31;
  reg  _T_2_3_btb_taken; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_32;
  reg  _T_2_3_btb_bridx; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_33;
  reg [4:0] _T_2_3_btb_entry; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_34;
  reg [7:0] _T_2_3_btb_bht_history; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_35;
  reg [39:0] _T_2_3_pc; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [63:0] _RAND_36;
  reg [31:0] _T_2_3_data; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_37;
  reg  _T_2_3_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_38;
  reg  _T_2_3_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_39;
  reg  _T_2_3_replay; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_40;
  reg  _T_2_4_btb_taken; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_41;
  reg  _T_2_4_btb_bridx; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_42;
  reg [4:0] _T_2_4_btb_entry; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_43;
  reg [7:0] _T_2_4_btb_bht_history; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_44;
  reg [39:0] _T_2_4_pc; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [63:0] _RAND_45;
  reg [31:0] _T_2_4_data; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_46;
  reg  _T_2_4_xcpt_pf_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_47;
  reg  _T_2_4_xcpt_ae_inst; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_48;
  reg  _T_2_4_replay; // @[ShiftQueue.scala 22:25:chipyard.TestHarness.RocketConfig.fir@219385.4]
  reg [31:0] _RAND_49;
  wire  _T_4; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@219387.4]
  wire  _T_6; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219389.4]
  wire  _T_7; // @[ShiftQueue.scala 30:28:chipyard.TestHarness.RocketConfig.fir@219390.4]
  wire  _T_10; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219393.4]
  wire  _T_11; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219394.4]
  wire  _T_12; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219395.4]
  wire  _T_19; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219418.4]
  wire  _T_24; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219424.4]
  wire  _T_25; // @[ShiftQueue.scala 30:28:chipyard.TestHarness.RocketConfig.fir@219425.4]
  wire  _T_28; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219428.4]
  wire  _T_29; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219429.4]
  wire  _T_30; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219430.4]
  wire  _T_37; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219453.4]
  wire  _T_42; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219459.4]
  wire  _T_43; // @[ShiftQueue.scala 30:28:chipyard.TestHarness.RocketConfig.fir@219460.4]
  wire  _T_46; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219463.4]
  wire  _T_47; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219464.4]
  wire  _T_48; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219465.4]
  wire  _T_55; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219488.4]
  wire  _T_60; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219494.4]
  wire  _T_61; // @[ShiftQueue.scala 30:28:chipyard.TestHarness.RocketConfig.fir@219495.4]
  wire  _T_64; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219498.4]
  wire  _T_65; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219499.4]
  wire  _T_66; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219500.4]
  wire  _T_73; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219523.4]
  wire  _T_77; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219528.4]
  wire  _T_81; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219532.4]
  wire  _T_82; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219533.4]
  wire  _T_83; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219534.4]
  wire  _T_90; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219557.4]
  wire [1:0] _T_94; // @[ShiftQueue.scala 53:20:chipyard.TestHarness.RocketConfig.fir@219597.4]
  wire [2:0] _T_96; // @[ShiftQueue.scala 53:20:chipyard.TestHarness.RocketConfig.fir@219599.4]
  assign _T_4 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@219387.4]
  assign _T_6 = _T_4 & _T_1_0; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219389.4]
  assign _T_7 = _T_1_1 | _T_6; // @[ShiftQueue.scala 30:28:chipyard.TestHarness.RocketConfig.fir@219390.4]
  assign _T_10 = ~_T_1_0; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219393.4]
  assign _T_11 = _T_4 & _T_10; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219394.4]
  assign _T_12 = io_deq_ready ? _T_7 : _T_11; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219395.4]
  assign _T_19 = _T_4 | _T_1_0; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219418.4]
  assign _T_24 = _T_4 & _T_1_1; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219424.4]
  assign _T_25 = _T_1_2 | _T_24; // @[ShiftQueue.scala 30:28:chipyard.TestHarness.RocketConfig.fir@219425.4]
  assign _T_28 = ~_T_1_1; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219428.4]
  assign _T_29 = _T_6 & _T_28; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219429.4]
  assign _T_30 = io_deq_ready ? _T_25 : _T_29; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219430.4]
  assign _T_37 = _T_6 | _T_1_1; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219453.4]
  assign _T_42 = _T_4 & _T_1_2; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219459.4]
  assign _T_43 = _T_1_3 | _T_42; // @[ShiftQueue.scala 30:28:chipyard.TestHarness.RocketConfig.fir@219460.4]
  assign _T_46 = ~_T_1_2; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219463.4]
  assign _T_47 = _T_24 & _T_46; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219464.4]
  assign _T_48 = io_deq_ready ? _T_43 : _T_47; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219465.4]
  assign _T_55 = _T_24 | _T_1_2; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219488.4]
  assign _T_60 = _T_4 & _T_1_3; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219494.4]
  assign _T_61 = _T_1_4 | _T_60; // @[ShiftQueue.scala 30:28:chipyard.TestHarness.RocketConfig.fir@219495.4]
  assign _T_64 = ~_T_1_3; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219498.4]
  assign _T_65 = _T_42 & _T_64; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219499.4]
  assign _T_66 = io_deq_ready ? _T_61 : _T_65; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219500.4]
  assign _T_73 = _T_42 | _T_1_3; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219523.4]
  assign _T_77 = _T_4 & _T_1_4; // @[ShiftQueue.scala 30:45:chipyard.TestHarness.RocketConfig.fir@219528.4]
  assign _T_81 = ~_T_1_4; // @[ShiftQueue.scala 31:48:chipyard.TestHarness.RocketConfig.fir@219532.4]
  assign _T_82 = _T_60 & _T_81; // @[ShiftQueue.scala 31:45:chipyard.TestHarness.RocketConfig.fir@219533.4]
  assign _T_83 = io_deq_ready ? _T_77 : _T_82; // @[ShiftQueue.scala 29:10:chipyard.TestHarness.RocketConfig.fir@219534.4]
  assign _T_90 = _T_60 | _T_1_4; // @[ShiftQueue.scala 37:45:chipyard.TestHarness.RocketConfig.fir@219557.4]
  assign _T_94 = {_T_1_1,_T_1_0}; // @[ShiftQueue.scala 53:20:chipyard.TestHarness.RocketConfig.fir@219597.4]
  assign _T_96 = {_T_1_4,_T_1_3,_T_1_2}; // @[ShiftQueue.scala 53:20:chipyard.TestHarness.RocketConfig.fir@219599.4]
  assign io_enq_ready = ~_T_1_4; // @[ShiftQueue.scala 40:16:chipyard.TestHarness.RocketConfig.fir@219561.4]
  assign io_deq_valid = io_enq_valid | _T_1_0; // @[ShiftQueue.scala 41:16:chipyard.TestHarness.RocketConfig.fir@219562.4 ShiftQueue.scala 45:40:chipyard.TestHarness.RocketConfig.fir@219578.6]
  assign io_deq_bits_btb_taken = _T_10 ? io_enq_bits_btb_taken : _T_2_0_btb_taken; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219575.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219594.6]
  assign io_deq_bits_btb_bridx = _T_10 ? io_enq_bits_btb_bridx : _T_2_0_btb_bridx; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219573.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219592.6]
  assign io_deq_bits_btb_entry = _T_10 ? io_enq_bits_btb_entry : _T_2_0_btb_entry; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219571.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219590.6]
  assign io_deq_bits_btb_bht_history = _T_10 ? io_enq_bits_btb_bht_history : _T_2_0_btb_bht_history; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219570.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219589.6]
  assign io_deq_bits_pc = _T_10 ? io_enq_bits_pc : _T_2_0_pc; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219568.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219587.6]
  assign io_deq_bits_data = _T_10 ? io_enq_bits_data : _T_2_0_data; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219567.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219586.6]
  assign io_deq_bits_xcpt_pf_inst = _T_10 ? io_enq_bits_xcpt_pf_inst : _T_2_0_xcpt_pf_inst; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219565.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219584.6]
  assign io_deq_bits_xcpt_ae_inst = _T_10 ? io_enq_bits_xcpt_ae_inst : _T_2_0_xcpt_ae_inst; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219564.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219583.6]
  assign io_deq_bits_replay = _T_10 ? io_enq_bits_replay : _T_2_0_replay; // @[ShiftQueue.scala 42:15:chipyard.TestHarness.RocketConfig.fir@219563.4 ShiftQueue.scala 46:36:chipyard.TestHarness.RocketConfig.fir@219582.6]
  assign io_mask = {_T_96,_T_94}; // @[ShiftQueue.scala 53:11:chipyard.TestHarness.RocketConfig.fir@219601.4]
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
  _T_1_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_2_0_btb_taken = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_2_0_btb_bridx = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_2_0_btb_entry = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_2_0_btb_bht_history = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {2{`RANDOM}};
  _T_2_0_pc = _RAND_9[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_2_0_data = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_2_0_xcpt_pf_inst = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_2_0_xcpt_ae_inst = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_2_0_replay = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_2_1_btb_taken = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_2_1_btb_bridx = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_2_1_btb_entry = _RAND_16[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_2_1_btb_bht_history = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{`RANDOM}};
  _T_2_1_pc = _RAND_18[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_2_1_data = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_2_1_xcpt_pf_inst = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_2_1_xcpt_ae_inst = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_2_1_replay = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_2_2_btb_taken = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_2_2_btb_bridx = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_2_2_btb_entry = _RAND_25[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_2_2_btb_bht_history = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {2{`RANDOM}};
  _T_2_2_pc = _RAND_27[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_2_2_data = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_2_2_xcpt_pf_inst = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_2_2_xcpt_ae_inst = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_2_2_replay = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_2_3_btb_taken = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_2_3_btb_bridx = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_2_3_btb_entry = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_2_3_btb_bht_history = _RAND_35[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {2{`RANDOM}};
  _T_2_3_pc = _RAND_36[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_2_3_data = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_2_3_xcpt_pf_inst = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_2_3_xcpt_ae_inst = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_2_3_replay = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_2_4_btb_taken = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_2_4_btb_bridx = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_2_4_btb_entry = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_2_4_btb_bht_history = _RAND_44[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {2{`RANDOM}};
  _T_2_4_pc = _RAND_45[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_2_4_data = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_2_4_xcpt_pf_inst = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_2_4_xcpt_ae_inst = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_2_4_replay = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1_0 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_0 <= _T_7;
    end else begin
      _T_1_0 <= _T_19;
    end
    if (reset) begin
      _T_1_1 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_1 <= _T_25;
    end else begin
      _T_1_1 <= _T_37;
    end
    if (reset) begin
      _T_1_2 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_2 <= _T_43;
    end else begin
      _T_1_2 <= _T_55;
    end
    if (reset) begin
      _T_1_3 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_3 <= _T_61;
    end else begin
      _T_1_3 <= _T_73;
    end
    if (reset) begin
      _T_1_4 <= 1'h0;
    end else if (io_deq_ready) begin
      _T_1_4 <= _T_77;
    end else begin
      _T_1_4 <= _T_90;
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_taken <= _T_2_1_btb_taken;
      end else begin
        _T_2_0_btb_taken <= io_enq_bits_btb_taken;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_bridx <= _T_2_1_btb_bridx;
      end else begin
        _T_2_0_btb_bridx <= io_enq_bits_btb_bridx;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_entry <= _T_2_1_btb_entry;
      end else begin
        _T_2_0_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_bht_history <= _T_2_1_btb_bht_history;
      end else begin
        _T_2_0_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_pc <= _T_2_1_pc;
      end else begin
        _T_2_0_pc <= io_enq_bits_pc;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_data <= _T_2_1_data;
      end else begin
        _T_2_0_data <= io_enq_bits_data;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_xcpt_pf_inst <= _T_2_1_xcpt_pf_inst;
      end else begin
        _T_2_0_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_xcpt_ae_inst <= _T_2_1_xcpt_ae_inst;
      end else begin
        _T_2_0_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_replay <= _T_2_1_replay;
      end else begin
        _T_2_0_replay <= io_enq_bits_replay;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_taken <= _T_2_2_btb_taken;
      end else begin
        _T_2_1_btb_taken <= io_enq_bits_btb_taken;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_bridx <= _T_2_2_btb_bridx;
      end else begin
        _T_2_1_btb_bridx <= io_enq_bits_btb_bridx;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_entry <= _T_2_2_btb_entry;
      end else begin
        _T_2_1_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_bht_history <= _T_2_2_btb_bht_history;
      end else begin
        _T_2_1_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_pc <= _T_2_2_pc;
      end else begin
        _T_2_1_pc <= io_enq_bits_pc;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_data <= _T_2_2_data;
      end else begin
        _T_2_1_data <= io_enq_bits_data;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_xcpt_pf_inst <= _T_2_2_xcpt_pf_inst;
      end else begin
        _T_2_1_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_xcpt_ae_inst <= _T_2_2_xcpt_ae_inst;
      end else begin
        _T_2_1_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_replay <= _T_2_2_replay;
      end else begin
        _T_2_1_replay <= io_enq_bits_replay;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_taken <= _T_2_3_btb_taken;
      end else begin
        _T_2_2_btb_taken <= io_enq_bits_btb_taken;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_bridx <= _T_2_3_btb_bridx;
      end else begin
        _T_2_2_btb_bridx <= io_enq_bits_btb_bridx;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_entry <= _T_2_3_btb_entry;
      end else begin
        _T_2_2_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_bht_history <= _T_2_3_btb_bht_history;
      end else begin
        _T_2_2_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_pc <= _T_2_3_pc;
      end else begin
        _T_2_2_pc <= io_enq_bits_pc;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_data <= _T_2_3_data;
      end else begin
        _T_2_2_data <= io_enq_bits_data;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_xcpt_pf_inst <= _T_2_3_xcpt_pf_inst;
      end else begin
        _T_2_2_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_xcpt_ae_inst <= _T_2_3_xcpt_ae_inst;
      end else begin
        _T_2_2_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_replay <= _T_2_3_replay;
      end else begin
        _T_2_2_replay <= io_enq_bits_replay;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_taken <= _T_2_4_btb_taken;
      end else begin
        _T_2_3_btb_taken <= io_enq_bits_btb_taken;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_bridx <= _T_2_4_btb_bridx;
      end else begin
        _T_2_3_btb_bridx <= io_enq_bits_btb_bridx;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_entry <= _T_2_4_btb_entry;
      end else begin
        _T_2_3_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_bht_history <= _T_2_4_btb_bht_history;
      end else begin
        _T_2_3_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_pc <= _T_2_4_pc;
      end else begin
        _T_2_3_pc <= io_enq_bits_pc;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_data <= _T_2_4_data;
      end else begin
        _T_2_3_data <= io_enq_bits_data;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_xcpt_pf_inst <= _T_2_4_xcpt_pf_inst;
      end else begin
        _T_2_3_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_xcpt_ae_inst <= _T_2_4_xcpt_ae_inst;
      end else begin
        _T_2_3_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_replay <= _T_2_4_replay;
      end else begin
        _T_2_3_replay <= io_enq_bits_replay;
      end
    end
    if (_T_83) begin
      _T_2_4_btb_taken <= io_enq_bits_btb_taken;
    end
    if (_T_83) begin
      _T_2_4_btb_bridx <= io_enq_bits_btb_bridx;
    end
    if (_T_83) begin
      _T_2_4_btb_entry <= io_enq_bits_btb_entry;
    end
    if (_T_83) begin
      _T_2_4_btb_bht_history <= io_enq_bits_btb_bht_history;
    end
    if (_T_83) begin
      _T_2_4_pc <= io_enq_bits_pc;
    end
    if (_T_83) begin
      _T_2_4_data <= io_enq_bits_data;
    end
    if (_T_83) begin
      _T_2_4_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
    end
    if (_T_83) begin
      _T_2_4_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
    end
    if (_T_83) begin
      _T_2_4_replay <= io_enq_bits_replay;
    end
  end
endmodule
