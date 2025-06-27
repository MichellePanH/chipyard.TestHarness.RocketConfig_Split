module SourceD( // @[:chipyard.TestHarness.RocketConfig.fir@85406.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@85407.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@85408.4]
  output        io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_req_bits_prio_0, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_req_bits_prio_2, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [2:0]  io_req_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [2:0]  io_req_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [2:0]  io_req_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [2:0]  io_req_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [5:0]  io_req_bits_offset, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [5:0]  io_req_bits_put, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [9:0]  io_req_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [2:0]  io_req_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [2:0]  io_req_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_req_bits_bad, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [2:0]  io_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [1:0]  io_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [2:0]  io_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [2:0]  io_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [2:0]  io_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [63:0] io_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_pb_pop_ready, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_pb_pop_valid, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [5:0]  io_pb_pop_bits_index, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_pb_pop_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [63:0] io_pb_beat_data, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [7:0]  io_pb_beat_mask, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_pb_beat_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_rel_pop_ready, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_rel_pop_valid, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [5:0]  io_rel_pop_bits_index, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_rel_pop_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [63:0] io_rel_beat_data, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_rel_beat_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_bs_radr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_bs_radr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [2:0]  io_bs_radr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [9:0]  io_bs_radr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [2:0]  io_bs_radr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_bs_radr_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [63:0] io_bs_rdat_data, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input         io_bs_wadr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_bs_wadr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [2:0]  io_bs_wadr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [9:0]  io_bs_wadr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [2:0]  io_bs_wadr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_bs_wadr_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output [63:0] io_bs_wdat_data, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [9:0]  io_evict_req_set, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [2:0]  io_evict_req_way, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_evict_safe, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [9:0]  io_grant_req_set, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  input  [2:0]  io_grant_req_way, // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
  output        io_grant_safe // @[:chipyard.TestHarness.RocketConfig.fir@85409.4]
);
  wire  queue_clock; // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
  wire  queue_reset; // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
  wire  queue_io_enq_ready; // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
  wire  queue_io_enq_valid; // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
  wire [63:0] queue_io_enq_bits_data; // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
  wire  queue_io_deq_ready; // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
  wire  queue_io_deq_valid; // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
  wire [63:0] queue_io_deq_bits_data; // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
  wire  atomics_io_write; // @[SourceD.scala 257:23:chipyard.TestHarness.RocketConfig.fir@85856.4]
  wire [2:0] atomics_io_a_opcode; // @[SourceD.scala 257:23:chipyard.TestHarness.RocketConfig.fir@85856.4]
  wire [2:0] atomics_io_a_param; // @[SourceD.scala 257:23:chipyard.TestHarness.RocketConfig.fir@85856.4]
  wire [7:0] atomics_io_a_mask; // @[SourceD.scala 257:23:chipyard.TestHarness.RocketConfig.fir@85856.4]
  wire [63:0] atomics_io_a_data; // @[SourceD.scala 257:23:chipyard.TestHarness.RocketConfig.fir@85856.4]
  wire [63:0] atomics_io_data_in; // @[SourceD.scala 257:23:chipyard.TestHarness.RocketConfig.fir@85856.4]
  wire [63:0] atomics_io_data_out; // @[SourceD.scala 257:23:chipyard.TestHarness.RocketConfig.fir@85856.4]
  reg  busy; // @[SourceD.scala 83:21:chipyard.TestHarness.RocketConfig.fir@85426.4]
  reg [31:0] _RAND_0;
  reg  s1_block_r; // @[SourceD.scala 84:27:chipyard.TestHarness.RocketConfig.fir@85427.4]
  reg [31:0] _RAND_1;
  reg [2:0] s1_counter; // @[SourceD.scala 85:27:chipyard.TestHarness.RocketConfig.fir@85428.4]
  reg [31:0] _RAND_2;
  wire  _T; // @[SourceD.scala 86:43:chipyard.TestHarness.RocketConfig.fir@85429.4]
  wire  _T_1; // @[SourceD.scala 86:49:chipyard.TestHarness.RocketConfig.fir@85430.4]
  reg  s1_req_reg_prio_0; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_3;
  reg  s1_req_reg_prio_2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_4;
  reg [2:0] s1_req_reg_opcode; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_5;
  reg [2:0] s1_req_reg_param; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_6;
  reg [2:0] s1_req_reg_size; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_7;
  reg [2:0] s1_req_reg_source; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_8;
  reg [5:0] s1_req_reg_offset; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_9;
  reg [5:0] s1_req_reg_put; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_10;
  reg [9:0] s1_req_reg_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_11;
  reg [2:0] s1_req_reg_sink; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_12;
  reg [2:0] s1_req_reg_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_13;
  reg  s1_req_reg_bad; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85431.4]
  reg [31:0] _RAND_14;
  wire  s1_req_prio_0; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  wire [2:0] s1_req_opcode; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  wire [2:0] s1_req_param; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  wire [2:0] s1_req_size; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  wire [5:0] s1_req_offset; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  wire [9:0] s1_req_set; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  wire [2:0] s1_req_way; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  wire  _T_3; // @[SourceD.scala 89:40:chipyard.TestHarness.RocketConfig.fir@85453.4]
  wire  _T_4; // @[SourceD.scala 89:33:chipyard.TestHarness.RocketConfig.fir@85454.4]
  reg  s2_full; // @[SourceD.scala 146:24:chipyard.TestHarness.RocketConfig.fir@85569.4]
  reg [31:0] _RAND_15;
  wire  _T_87; // @[SourceD.scala 183:15:chipyard.TestHarness.RocketConfig.fir@85668.4]
  reg  s3_full; // @[SourceD.scala 189:24:chipyard.TestHarness.RocketConfig.fir@85675.4]
  reg [31:0] _RAND_16;
  wire  _T_120; // @[SourceD.scala 241:15:chipyard.TestHarness.RocketConfig.fir@85799.4]
  reg  s3_retires; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85718.4]
  reg [31:0] _RAND_17;
  wire  _T_188; // @[SourceD.scala 291:15:chipyard.TestHarness.RocketConfig.fir@85948.4]
  reg  s4_full; // @[SourceD.scala 247:24:chipyard.TestHarness.RocketConfig.fir@85807.4]
  reg [31:0] _RAND_18;
  wire  _T_189; // @[SourceD.scala 291:30:chipyard.TestHarness.RocketConfig.fir@85949.4]
  wire  _T_190; // @[SourceD.scala 291:27:chipyard.TestHarness.RocketConfig.fir@85950.4]
  wire  _T_191; // @[SourceD.scala 291:39:chipyard.TestHarness.RocketConfig.fir@85951.4]
  reg  s4_need_bs; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85816.4]
  reg [31:0] _RAND_19;
  wire  _T_192; // @[SourceD.scala 291:62:chipyard.TestHarness.RocketConfig.fir@85952.4]
  wire  s4_ready; // @[SourceD.scala 291:59:chipyard.TestHarness.RocketConfig.fir@85953.4]
  reg  s3_valid_d; // @[SourceD.scala 190:27:chipyard.TestHarness.RocketConfig.fir@85676.4]
  reg [31:0] _RAND_20;
  wire  _T_121; // @[SourceD.scala 241:41:chipyard.TestHarness.RocketConfig.fir@85800.4]
  wire  _T_122; // @[SourceD.scala 241:53:chipyard.TestHarness.RocketConfig.fir@85801.4]
  wire  _T_123; // @[SourceD.scala 241:37:chipyard.TestHarness.RocketConfig.fir@85802.4]
  wire  s3_ready; // @[SourceD.scala 241:24:chipyard.TestHarness.RocketConfig.fir@85803.4]
  reg  s2_valid_pb; // @[SourceD.scala 147:28:chipyard.TestHarness.RocketConfig.fir@85570.4]
  reg [31:0] _RAND_21;
  wire  _T_88; // @[SourceD.scala 183:41:chipyard.TestHarness.RocketConfig.fir@85669.4]
  reg  s2_req_prio_0; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_22;
  wire  pb_ready; // @[SourceD.scala 174:21:chipyard.TestHarness.RocketConfig.fir@85648.4]
  wire  _T_89; // @[SourceD.scala 183:54:chipyard.TestHarness.RocketConfig.fir@85670.4]
  wire  _T_90; // @[SourceD.scala 183:37:chipyard.TestHarness.RocketConfig.fir@85671.4]
  wire  s2_ready; // @[SourceD.scala 183:24:chipyard.TestHarness.RocketConfig.fir@85672.4]
  reg  s1_latch_bypass; // @[SourceD.scala 89:32:chipyard.TestHarness.RocketConfig.fir@85456.4]
  reg [31:0] _RAND_23;
  reg  _T_6; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85458.4]
  reg [31:0] _RAND_24;
  reg [9:0] s2_req_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_25;
  wire  _T_242; // @[SourceD.scala 342:32:chipyard.TestHarness.RocketConfig.fir@86081.4]
  reg [2:0] s2_req_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_26;
  wire  _T_243; // @[SourceD.scala 342:61:chipyard.TestHarness.RocketConfig.fir@86082.4]
  wire  _T_244; // @[SourceD.scala 342:47:chipyard.TestHarness.RocketConfig.fir@86083.4]
  reg [2:0] s2_beat; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85571.4]
  reg [31:0] _RAND_27;
  wire [2:0] s1_beat; // @[SourceD.scala 101:56:chipyard.TestHarness.RocketConfig.fir@85505.4]
  wire  _T_245; // @[SourceD.scala 342:87:chipyard.TestHarness.RocketConfig.fir@86084.4]
  wire  _T_246; // @[SourceD.scala 342:76:chipyard.TestHarness.RocketConfig.fir@86085.4]
  wire  _T_247; // @[SourceD.scala 342:99:chipyard.TestHarness.RocketConfig.fir@86086.4]
  reg  s2_retires; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85609.4]
  reg [31:0] _RAND_28;
  wire  s1_2_match; // @[SourceD.scala 342:110:chipyard.TestHarness.RocketConfig.fir@86087.4]
  reg [9:0] s3_req_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_29;
  wire  _T_248; // @[SourceD.scala 343:32:chipyard.TestHarness.RocketConfig.fir@86088.4]
  reg [2:0] s3_req_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_30;
  wire  _T_249; // @[SourceD.scala 343:61:chipyard.TestHarness.RocketConfig.fir@86089.4]
  wire  _T_250; // @[SourceD.scala 343:47:chipyard.TestHarness.RocketConfig.fir@86090.4]
  reg [2:0] s3_beat; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85677.4]
  reg [31:0] _RAND_31;
  wire  _T_251; // @[SourceD.scala 343:87:chipyard.TestHarness.RocketConfig.fir@86091.4]
  wire  _T_252; // @[SourceD.scala 343:76:chipyard.TestHarness.RocketConfig.fir@86092.4]
  wire  _T_253; // @[SourceD.scala 343:99:chipyard.TestHarness.RocketConfig.fir@86093.4]
  wire  s1_3_match; // @[SourceD.scala 343:110:chipyard.TestHarness.RocketConfig.fir@86094.4]
  wire  _T_322; // @[SourceD.scala 358:30:chipyard.TestHarness.RocketConfig.fir@86167.4]
  reg [9:0] s4_req_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85824.4]
  reg [31:0] _RAND_32;
  wire  _T_254; // @[SourceD.scala 344:32:chipyard.TestHarness.RocketConfig.fir@86095.4]
  reg [2:0] s4_req_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85824.4]
  reg [31:0] _RAND_33;
  wire  _T_255; // @[SourceD.scala 344:61:chipyard.TestHarness.RocketConfig.fir@86096.4]
  wire  _T_256; // @[SourceD.scala 344:47:chipyard.TestHarness.RocketConfig.fir@86097.4]
  reg [2:0] s4_beat; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85808.4]
  reg [31:0] _RAND_34;
  wire  _T_257; // @[SourceD.scala 344:87:chipyard.TestHarness.RocketConfig.fir@86098.4]
  wire  _T_258; // @[SourceD.scala 344:76:chipyard.TestHarness.RocketConfig.fir@86099.4]
  wire  s1_4_match; // @[SourceD.scala 344:99:chipyard.TestHarness.RocketConfig.fir@86100.4]
  wire  s1_x_bypass; // @[SourceD.scala 358:44:chipyard.TestHarness.RocketConfig.fir@86168.4]
  wire  _GEN_15; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85459.4]
  wire  s1_mask; // @[SourceD.scala 91:78:chipyard.TestHarness.RocketConfig.fir@85468.4]
  wire  _T_13; // @[SourceD.scala 92:33:chipyard.TestHarness.RocketConfig.fir@85470.4]
  wire  _T_14; // @[SourceD.scala 92:66:chipyard.TestHarness.RocketConfig.fir@85471.4]
  wire  _T_15; // @[SourceD.scala 92:50:chipyard.TestHarness.RocketConfig.fir@85472.4]
  wire  _T_16; // @[SourceD.scala 92:93:chipyard.TestHarness.RocketConfig.fir@85473.4]
  wire  s1_grant; // @[SourceD.scala 92:76:chipyard.TestHarness.RocketConfig.fir@85474.4]
  wire  _T_17; // @[SourceD.scala 93:27:chipyard.TestHarness.RocketConfig.fir@85475.4]
  wire  _T_18; // @[SourceD.scala 93:31:chipyard.TestHarness.RocketConfig.fir@85476.4]
  wire  _T_19; // @[SourceD.scala 93:66:chipyard.TestHarness.RocketConfig.fir@85477.4]
  wire  _T_20; // @[SourceD.scala 93:49:chipyard.TestHarness.RocketConfig.fir@85478.4]
  wire  _T_21; // @[SourceD.scala 93:78:chipyard.TestHarness.RocketConfig.fir@85479.4]
  wire  _T_22; // @[SourceD.scala 93:75:chipyard.TestHarness.RocketConfig.fir@85480.4]
  wire  _T_23; // @[SourceD.scala 94:34:chipyard.TestHarness.RocketConfig.fir@85481.4]
  wire  _T_24; // @[SourceD.scala 94:65:chipyard.TestHarness.RocketConfig.fir@85482.4]
  wire  _T_25; // @[SourceD.scala 94:50:chipyard.TestHarness.RocketConfig.fir@85483.4]
  wire  s1_need_r; // @[SourceD.scala 93:88:chipyard.TestHarness.RocketConfig.fir@85484.4]
  wire  _T_27; // @[SourceD.scala 95:43:chipyard.TestHarness.RocketConfig.fir@85486.4]
  wire  _T_28; // @[SourceD.scala 95:59:chipyard.TestHarness.RocketConfig.fir@85487.4]
  wire  s1_valid_r; // @[SourceD.scala 95:56:chipyard.TestHarness.RocketConfig.fir@85488.4]
  wire  _T_30; // @[SourceD.scala 96:40:chipyard.TestHarness.RocketConfig.fir@85490.4]
  wire  s1_need_pb; // @[SourceD.scala 96:23:chipyard.TestHarness.RocketConfig.fir@85492.4]
  wire  _T_32; // @[SourceD.scala 97:53:chipyard.TestHarness.RocketConfig.fir@85493.4]
  wire  _T_33; // @[SourceD.scala 97:62:chipyard.TestHarness.RocketConfig.fir@85494.4]
  wire  s1_single; // @[SourceD.scala 97:22:chipyard.TestHarness.RocketConfig.fir@85496.4]
  wire  s1_retires; // @[SourceD.scala 98:20:chipyard.TestHarness.RocketConfig.fir@85497.4]
  wire [12:0] _T_36; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@85499.4]
  wire [5:0] _T_38; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@85501.4]
  wire [2:0] s1_beats1; // @[SourceD.scala 100:22:chipyard.TestHarness.RocketConfig.fir@85503.4]
  wire  s1_last; // @[SourceD.scala 102:28:chipyard.TestHarness.RocketConfig.fir@85506.4]
  wire  s1_first; // @[SourceD.scala 103:29:chipyard.TestHarness.RocketConfig.fir@85507.4]
  wire  _T_47; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@85524.4]
  reg  _T_48; // @[SourceD.scala 120:40:chipyard.TestHarness.RocketConfig.fir@85525.4]
  reg [31:0] _RAND_35;
  reg  _T_49; // @[SourceD.scala 120:32:chipyard.TestHarness.RocketConfig.fir@85527.4]
  reg [31:0] _RAND_36;
  wire  _T_50; // @[SourceD.scala 122:11:chipyard.TestHarness.RocketConfig.fir@85531.4]
  wire  _T_51; // @[SourceD.scala 122:31:chipyard.TestHarness.RocketConfig.fir@85532.4]
  wire  _T_53; // @[SourceD.scala 122:10:chipyard.TestHarness.RocketConfig.fir@85534.4]
  wire  _T_54; // @[SourceD.scala 122:10:chipyard.TestHarness.RocketConfig.fir@85535.4]
  wire  _GEN_16; // @[SourceD.scala 126:28:chipyard.TestHarness.RocketConfig.fir@85542.4]
  wire  _GEN_17; // @[SourceD.scala 127:23:chipyard.TestHarness.RocketConfig.fir@85545.4]
  wire  _T_64; // @[SourceD.scala 140:42:chipyard.TestHarness.RocketConfig.fir@85564.4]
  wire  _T_65; // @[SourceD.scala 140:54:chipyard.TestHarness.RocketConfig.fir@85565.4]
  wire  s1_valid; // @[SourceD.scala 140:38:chipyard.TestHarness.RocketConfig.fir@85566.4]
  wire  _T_57; // @[SourceD.scala 128:18:chipyard.TestHarness.RocketConfig.fir@85548.4]
  wire [2:0] _T_59; // @[SourceD.scala 129:30:chipyard.TestHarness.RocketConfig.fir@85551.6]
  reg  s2_bypass; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85575.4]
  reg [31:0] _RAND_37;
  reg  s2_req_prio_2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_38;
  reg [2:0] s2_req_opcode; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_39;
  reg [2:0] s2_req_param; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_40;
  reg [2:0] s2_req_size; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_41;
  reg [2:0] s2_req_source; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_42;
  reg [5:0] s2_req_put; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_43;
  reg [2:0] s2_req_sink; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_44;
  reg  s2_req_bad; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85579.4]
  reg [31:0] _RAND_45;
  reg  s2_last; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85597.4]
  reg [31:0] _RAND_46;
  reg  s2_need_r; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85601.4]
  reg [31:0] _RAND_47;
  reg  s2_need_pb; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85605.4]
  reg [31:0] _RAND_48;
  wire  _T_67; // @[SourceD.scala 155:29:chipyard.TestHarness.RocketConfig.fir@85613.4]
  wire  _T_68; // @[SourceD.scala 155:41:chipyard.TestHarness.RocketConfig.fir@85614.4]
  reg  s2_need_d; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85615.4]
  reg [31:0] _RAND_49;
  reg [63:0] _T_69_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85621.4]
  reg [63:0] _RAND_50;
  reg [7:0] _T_69_mask; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85621.4]
  reg [31:0] _RAND_51;
  reg  _T_69_corrupt; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85621.4]
  reg [31:0] _RAND_52;
  wire  _T_75; // @[SourceD.scala 166:38:chipyard.TestHarness.RocketConfig.fir@85639.4]
  wire  s2_valid; // @[SourceD.scala 182:23:chipyard.TestHarness.RocketConfig.fir@85666.4]
  wire  _T_81; // @[SourceD.scala 176:18:chipyard.TestHarness.RocketConfig.fir@85652.4]
  wire  _GEN_49; // @[SourceD.scala 176:31:chipyard.TestHarness.RocketConfig.fir@85653.4]
  wire  _GEN_51; // @[SourceD.scala 178:19:chipyard.TestHarness.RocketConfig.fir@85659.4]
  wire [2:0] _GEN_52; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85678.4]
  reg  s3_bypass; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85681.4]
  reg [31:0] _RAND_53;
  reg  s3_req_prio_0; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_54;
  reg  s3_req_prio_2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_55;
  reg [2:0] s3_req_opcode; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_56;
  reg [2:0] s3_req_param; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_57;
  reg [2:0] s3_req_size; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_58;
  reg [2:0] s3_req_source; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_59;
  reg [2:0] s3_req_sink; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_60;
  reg  s3_req_bad; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85685.4]
  reg [31:0] _RAND_61;
  wire [2:0] _GEN_55; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85686.4]
  wire [9:0] _GEN_57; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85686.4]
  reg [63:0] s3_pdata_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85708.4]
  reg [63:0] _RAND_62;
  reg [7:0] s3_pdata_mask; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85708.4]
  reg [31:0] _RAND_63;
  reg  s3_pdata_corrupt; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85708.4]
  reg [31:0] _RAND_64;
  reg  s3_need_bs; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85714.4]
  reg [31:0] _RAND_65;
  reg  s3_need_r; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85722.4]
  reg [31:0] _RAND_66;
  wire  _T_92; // @[SourceD.scala 201:30:chipyard.TestHarness.RocketConfig.fir@85726.4]
  wire  _T_93; // @[SourceD.scala 201:64:chipyard.TestHarness.RocketConfig.fir@85727.4]
  wire  s3_acq; // @[SourceD.scala 201:47:chipyard.TestHarness.RocketConfig.fir@85728.4]
  reg  _T_228; // @[SourceD.scala 335:19:chipyard.TestHarness.RocketConfig.fir@86064.4]
  reg [31:0] _RAND_67;
  wire [63:0] _T_239; // @[SourceD.scala 206:78:chipyard.TestHarness.RocketConfig.fir@86077.4]
  reg [63:0] _T_237; // @[SourceD.scala 335:66:chipyard.TestHarness.RocketConfig.fir@86074.4]
  reg [63:0] _RAND_68;
  wire [63:0] s3_bypass_data; // @[SourceD.scala 209:75:chipyard.TestHarness.RocketConfig.fir@86079.4]
  wire [63:0] _T_96; // @[SourceD.scala 206:78:chipyard.TestHarness.RocketConfig.fir@85733.4]
  wire  _T_97; // @[SourceD.scala 213:32:chipyard.TestHarness.RocketConfig.fir@85735.4]
  wire [2:0] grant; // @[SourceD.scala 213:18:chipyard.TestHarness.RocketConfig.fir@85736.4]
  wire [2:0] _GEN_78; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  wire [2:0] _GEN_79; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  wire [2:0] _GEN_80; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  wire [2:0] _GEN_81; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  wire [2:0] _GEN_82; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  wire [2:0] _GEN_83; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  wire [2:0] d_bits_opcode; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  wire  _T_99; // @[SourceD.scala 222:40:chipyard.TestHarness.RocketConfig.fir@85753.4]
  wire  _T_100; // @[SourceD.scala 222:68:chipyard.TestHarness.RocketConfig.fir@85754.4]
  wire [1:0] _T_101; // @[SourceD.scala 222:54:chipyard.TestHarness.RocketConfig.fir@85755.4]
  wire  s3_valid; // @[SourceD.scala 240:23:chipyard.TestHarness.RocketConfig.fir@85797.4]
  wire  _T_105; // @[SourceD.scala 230:34:chipyard.TestHarness.RocketConfig.fir@85766.4]
  wire  _T_108; // @[SourceD.scala 231:23:chipyard.TestHarness.RocketConfig.fir@85770.4]
  wire  _T_109; // @[SourceD.scala 231:20:chipyard.TestHarness.RocketConfig.fir@85771.4]
  wire  _T_110; // @[SourceD.scala 231:34:chipyard.TestHarness.RocketConfig.fir@85772.4]
  wire  _T_112; // @[SourceD.scala 231:10:chipyard.TestHarness.RocketConfig.fir@85774.4]
  wire  _T_113; // @[SourceD.scala 231:10:chipyard.TestHarness.RocketConfig.fir@85775.4]
  wire  _GEN_85; // @[SourceD.scala 234:31:chipyard.TestHarness.RocketConfig.fir@85784.4]
  wire  _GEN_87; // @[SourceD.scala 236:19:chipyard.TestHarness.RocketConfig.fir@85790.4]
  wire  _T_125; // @[SourceD.scala 246:27:chipyard.TestHarness.RocketConfig.fir@85805.4]
  wire  s4_latch; // @[SourceD.scala 246:41:chipyard.TestHarness.RocketConfig.fir@85806.4]
  wire [2:0] _GEN_88; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85809.4]
  reg  s4_need_pb; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85820.4]
  reg [31:0] _RAND_69;
  reg  s4_req_prio_2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85824.4]
  reg [31:0] _RAND_70;
  reg [2:0] s4_req_param; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85824.4]
  reg [31:0] _RAND_71;
  wire [2:0] _GEN_93; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85825.4]
  wire [9:0] _GEN_95; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85825.4]
  reg [2:0] s4_adjusted_opcode; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85842.4]
  reg [31:0] _RAND_72;
  reg [63:0] s4_pdata_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85846.4]
  reg [63:0] _RAND_73;
  reg [7:0] s4_pdata_mask; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85846.4]
  reg [31:0] _RAND_74;
  reg  s4_pdata_corrupt; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85846.4]
  reg [31:0] _RAND_75;
  reg [63:0] s4_rdata; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85852.4]
  reg [63:0] _RAND_76;
  wire  _T_135; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85883.4]
  wire  _T_136; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85884.4]
  wire  _T_137; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85885.4]
  wire  _T_138; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85886.4]
  wire  _T_139; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85887.4]
  wire  _T_140; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85888.4]
  wire  _T_142; // @[SourceD.scala 275:21:chipyard.TestHarness.RocketConfig.fir@85892.4]
  wire  _T_143; // @[SourceD.scala 275:35:chipyard.TestHarness.RocketConfig.fir@85893.4]
  wire  _T_144; // @[SourceD.scala 275:11:chipyard.TestHarness.RocketConfig.fir@85894.4]
  wire  _T_146; // @[SourceD.scala 275:10:chipyard.TestHarness.RocketConfig.fir@85896.4]
  wire  _T_147; // @[SourceD.scala 275:10:chipyard.TestHarness.RocketConfig.fir@85897.4]
  wire  _T_187; // @[SourceD.scala 288:26:chipyard.TestHarness.RocketConfig.fir@85941.4]
  wire  _GEN_112; // @[SourceD.scala 288:42:chipyard.TestHarness.RocketConfig.fir@85942.4]
  wire  _GEN_113; // @[SourceD.scala 289:19:chipyard.TestHarness.RocketConfig.fir@85945.4]
  wire  retire; // @[SourceD.scala 298:24:chipyard.TestHarness.RocketConfig.fir@85957.4]
  reg [9:0] s5_req_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85958.4]
  reg [31:0] _RAND_77;
  reg [2:0] s5_req_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85958.4]
  reg [31:0] _RAND_78;
  wire [2:0] _GEN_115; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85959.4]
  wire [9:0] _GEN_117; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85959.4]
  reg [2:0] s5_beat; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85976.4]
  reg [31:0] _RAND_79;
  wire [2:0] _GEN_129; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85977.4]
  reg [63:0] s5_dat; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85980.4]
  reg [63:0] _RAND_80;
  reg [9:0] s6_req_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85984.4]
  reg [31:0] _RAND_81;
  reg [2:0] s6_req_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@85984.4]
  reg [31:0] _RAND_82;
  wire [2:0] _GEN_132; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85985.4]
  wire [9:0] _GEN_134; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85985.4]
  reg [2:0] s6_beat; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@86002.4]
  reg [31:0] _RAND_83;
  wire [2:0] _GEN_146; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@86003.4]
  reg [63:0] s6_dat; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@86006.4]
  reg [63:0] _RAND_84;
  reg [63:0] s7_dat; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@86010.4]
  reg [63:0] _RAND_85;
  wire  _T_198; // @[SourceD.scala 324:34:chipyard.TestHarness.RocketConfig.fir@86027.4]
  wire  _T_199; // @[SourceD.scala 324:69:chipyard.TestHarness.RocketConfig.fir@86028.4]
  wire  pre_s4_full; // @[SourceD.scala 324:30:chipyard.TestHarness.RocketConfig.fir@86029.4]
  wire  _T_200; // @[SourceD.scala 326:40:chipyard.TestHarness.RocketConfig.fir@86030.4]
  wire  _T_201; // @[SourceD.scala 326:77:chipyard.TestHarness.RocketConfig.fir@86031.4]
  wire  _T_202; // @[SourceD.scala 326:59:chipyard.TestHarness.RocketConfig.fir@86032.4]
  wire  _T_203; // @[SourceD.scala 326:111:chipyard.TestHarness.RocketConfig.fir@86033.4]
  wire  _T_204; // @[SourceD.scala 326:96:chipyard.TestHarness.RocketConfig.fir@86034.4]
  wire  _T_205; // @[SourceD.scala 327:40:chipyard.TestHarness.RocketConfig.fir@86036.4]
  wire  _T_206; // @[SourceD.scala 327:77:chipyard.TestHarness.RocketConfig.fir@86037.4]
  wire  _T_207; // @[SourceD.scala 327:59:chipyard.TestHarness.RocketConfig.fir@86038.4]
  wire  _T_208; // @[SourceD.scala 327:111:chipyard.TestHarness.RocketConfig.fir@86039.4]
  wire  pre_s3_5_match; // @[SourceD.scala 327:96:chipyard.TestHarness.RocketConfig.fir@86040.4]
  wire  _T_209; // @[SourceD.scala 328:40:chipyard.TestHarness.RocketConfig.fir@86041.4]
  wire  _T_210; // @[SourceD.scala 328:77:chipyard.TestHarness.RocketConfig.fir@86042.4]
  wire  _T_211; // @[SourceD.scala 328:59:chipyard.TestHarness.RocketConfig.fir@86043.4]
  wire  _T_212; // @[SourceD.scala 328:111:chipyard.TestHarness.RocketConfig.fir@86044.4]
  wire  pre_s3_6_match; // @[SourceD.scala 328:96:chipyard.TestHarness.RocketConfig.fir@86045.4]
  wire  _T_325; // @[SourceD.scala 374:35:chipyard.TestHarness.RocketConfig.fir@86171.4]
  wire  _T_326; // @[SourceD.scala 374:15:chipyard.TestHarness.RocketConfig.fir@86172.4]
  wire  _T_327; // @[SourceD.scala 374:74:chipyard.TestHarness.RocketConfig.fir@86173.4]
  wire  _T_328; // @[SourceD.scala 374:54:chipyard.TestHarness.RocketConfig.fir@86174.4]
  wire  _T_330; // @[SourceD.scala 375:35:chipyard.TestHarness.RocketConfig.fir@86176.4]
  wire  _T_331; // @[SourceD.scala 375:15:chipyard.TestHarness.RocketConfig.fir@86177.4]
  wire  _T_332; // @[SourceD.scala 375:74:chipyard.TestHarness.RocketConfig.fir@86178.4]
  wire  _T_333; // @[SourceD.scala 375:54:chipyard.TestHarness.RocketConfig.fir@86179.4]
  wire  _T_334; // @[SourceD.scala 374:94:chipyard.TestHarness.RocketConfig.fir@86180.4]
  wire  _T_336; // @[SourceD.scala 376:35:chipyard.TestHarness.RocketConfig.fir@86182.4]
  wire  _T_337; // @[SourceD.scala 376:15:chipyard.TestHarness.RocketConfig.fir@86183.4]
  wire  _T_338; // @[SourceD.scala 376:74:chipyard.TestHarness.RocketConfig.fir@86184.4]
  wire  _T_339; // @[SourceD.scala 376:54:chipyard.TestHarness.RocketConfig.fir@86185.4]
  wire  _T_340; // @[SourceD.scala 375:90:chipyard.TestHarness.RocketConfig.fir@86186.4]
  wire  _T_342; // @[SourceD.scala 377:35:chipyard.TestHarness.RocketConfig.fir@86188.4]
  wire  _T_343; // @[SourceD.scala 377:15:chipyard.TestHarness.RocketConfig.fir@86189.4]
  wire  _T_344; // @[SourceD.scala 377:74:chipyard.TestHarness.RocketConfig.fir@86190.4]
  wire  _T_345; // @[SourceD.scala 377:54:chipyard.TestHarness.RocketConfig.fir@86191.4]
  wire  _T_348; // @[SourceD.scala 381:35:chipyard.TestHarness.RocketConfig.fir@86195.4]
  wire  _T_349; // @[SourceD.scala 381:15:chipyard.TestHarness.RocketConfig.fir@86196.4]
  wire  _T_350; // @[SourceD.scala 381:74:chipyard.TestHarness.RocketConfig.fir@86197.4]
  wire  _T_351; // @[SourceD.scala 381:54:chipyard.TestHarness.RocketConfig.fir@86198.4]
  wire  _T_353; // @[SourceD.scala 382:35:chipyard.TestHarness.RocketConfig.fir@86200.4]
  wire  _T_354; // @[SourceD.scala 382:15:chipyard.TestHarness.RocketConfig.fir@86201.4]
  wire  _T_355; // @[SourceD.scala 382:74:chipyard.TestHarness.RocketConfig.fir@86202.4]
  wire  _T_356; // @[SourceD.scala 382:54:chipyard.TestHarness.RocketConfig.fir@86203.4]
  wire  _T_357; // @[SourceD.scala 381:94:chipyard.TestHarness.RocketConfig.fir@86204.4]
  wire  _T_359; // @[SourceD.scala 383:35:chipyard.TestHarness.RocketConfig.fir@86206.4]
  wire  _T_360; // @[SourceD.scala 383:15:chipyard.TestHarness.RocketConfig.fir@86207.4]
  wire  _T_361; // @[SourceD.scala 383:74:chipyard.TestHarness.RocketConfig.fir@86208.4]
  wire  _T_362; // @[SourceD.scala 383:54:chipyard.TestHarness.RocketConfig.fir@86209.4]
  wire  _T_363; // @[SourceD.scala 382:90:chipyard.TestHarness.RocketConfig.fir@86210.4]
  wire  _T_365; // @[SourceD.scala 384:35:chipyard.TestHarness.RocketConfig.fir@86212.4]
  wire  _T_366; // @[SourceD.scala 384:15:chipyard.TestHarness.RocketConfig.fir@86213.4]
  wire  _T_367; // @[SourceD.scala 384:74:chipyard.TestHarness.RocketConfig.fir@86214.4]
  wire  _T_368; // @[SourceD.scala 384:54:chipyard.TestHarness.RocketConfig.fir@86215.4]
  QueueCompatibility_21 queue ( // @[SourceD.scala 119:21:chipyard.TestHarness.RocketConfig.fir@85520.4]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_data(queue_io_enq_bits_data),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_data(queue_io_deq_bits_data)
  );
  Atomics atomics ( // @[SourceD.scala 257:23:chipyard.TestHarness.RocketConfig.fir@85856.4]
    .io_write(atomics_io_write),
    .io_a_opcode(atomics_io_a_opcode),
    .io_a_param(atomics_io_a_param),
    .io_a_mask(atomics_io_a_mask),
    .io_a_data(atomics_io_a_data),
    .io_data_in(atomics_io_data_in),
    .io_data_out(atomics_io_data_out)
  );
  assign _T = ~busy; // @[SourceD.scala 86:43:chipyard.TestHarness.RocketConfig.fir@85429.4]
  assign _T_1 = _T & io_req_valid; // @[SourceD.scala 86:49:chipyard.TestHarness.RocketConfig.fir@85430.4]
  assign s1_req_prio_0 = _T ? io_req_bits_prio_0 : s1_req_reg_prio_0; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  assign s1_req_opcode = _T ? io_req_bits_opcode : s1_req_reg_opcode; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  assign s1_req_param = _T ? io_req_bits_param : s1_req_reg_param; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  assign s1_req_size = _T ? io_req_bits_size : s1_req_reg_size; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  assign s1_req_offset = _T ? io_req_bits_offset : s1_req_reg_offset; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  assign s1_req_set = _T ? io_req_bits_set : s1_req_reg_set; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  assign s1_req_way = _T ? io_req_bits_way : s1_req_reg_way; // @[SourceD.scala 87:19:chipyard.TestHarness.RocketConfig.fir@85450.4]
  assign _T_3 = busy | io_req_valid; // @[SourceD.scala 89:40:chipyard.TestHarness.RocketConfig.fir@85453.4]
  assign _T_4 = ~_T_3; // @[SourceD.scala 89:33:chipyard.TestHarness.RocketConfig.fir@85454.4]
  assign _T_87 = ~s2_full; // @[SourceD.scala 183:15:chipyard.TestHarness.RocketConfig.fir@85668.4]
  assign _T_120 = ~s3_full; // @[SourceD.scala 241:15:chipyard.TestHarness.RocketConfig.fir@85799.4]
  assign _T_188 = ~s3_retires; // @[SourceD.scala 291:15:chipyard.TestHarness.RocketConfig.fir@85948.4]
  assign _T_189 = ~s4_full; // @[SourceD.scala 291:30:chipyard.TestHarness.RocketConfig.fir@85949.4]
  assign _T_190 = _T_188 | _T_189; // @[SourceD.scala 291:27:chipyard.TestHarness.RocketConfig.fir@85950.4]
  assign _T_191 = _T_190 | io_bs_wadr_ready; // @[SourceD.scala 291:39:chipyard.TestHarness.RocketConfig.fir@85951.4]
  assign _T_192 = ~s4_need_bs; // @[SourceD.scala 291:62:chipyard.TestHarness.RocketConfig.fir@85952.4]
  assign s4_ready = _T_191 | _T_192; // @[SourceD.scala 291:59:chipyard.TestHarness.RocketConfig.fir@85953.4]
  assign _T_121 = ~s3_valid_d; // @[SourceD.scala 241:41:chipyard.TestHarness.RocketConfig.fir@85800.4]
  assign _T_122 = _T_121 | io_d_ready; // @[SourceD.scala 241:53:chipyard.TestHarness.RocketConfig.fir@85801.4]
  assign _T_123 = s4_ready & _T_122; // @[SourceD.scala 241:37:chipyard.TestHarness.RocketConfig.fir@85802.4]
  assign s3_ready = _T_120 | _T_123; // @[SourceD.scala 241:24:chipyard.TestHarness.RocketConfig.fir@85803.4]
  assign _T_88 = ~s2_valid_pb; // @[SourceD.scala 183:41:chipyard.TestHarness.RocketConfig.fir@85669.4]
  assign pb_ready = s2_req_prio_0 ? io_pb_pop_ready : io_rel_pop_ready; // @[SourceD.scala 174:21:chipyard.TestHarness.RocketConfig.fir@85648.4]
  assign _T_89 = _T_88 | pb_ready; // @[SourceD.scala 183:54:chipyard.TestHarness.RocketConfig.fir@85670.4]
  assign _T_90 = s3_ready & _T_89; // @[SourceD.scala 183:37:chipyard.TestHarness.RocketConfig.fir@85671.4]
  assign s2_ready = _T_87 | _T_90; // @[SourceD.scala 183:24:chipyard.TestHarness.RocketConfig.fir@85672.4]
  assign _T_242 = s2_req_set == s1_req_set; // @[SourceD.scala 342:32:chipyard.TestHarness.RocketConfig.fir@86081.4]
  assign _T_243 = s2_req_way == s1_req_way; // @[SourceD.scala 342:61:chipyard.TestHarness.RocketConfig.fir@86082.4]
  assign _T_244 = _T_242 & _T_243; // @[SourceD.scala 342:47:chipyard.TestHarness.RocketConfig.fir@86083.4]
  assign s1_beat = s1_req_offset[5:3] | s1_counter; // @[SourceD.scala 101:56:chipyard.TestHarness.RocketConfig.fir@85505.4]
  assign _T_245 = s2_beat == s1_beat; // @[SourceD.scala 342:87:chipyard.TestHarness.RocketConfig.fir@86084.4]
  assign _T_246 = _T_244 & _T_245; // @[SourceD.scala 342:76:chipyard.TestHarness.RocketConfig.fir@86085.4]
  assign _T_247 = _T_246 & s2_full; // @[SourceD.scala 342:99:chipyard.TestHarness.RocketConfig.fir@86086.4]
  assign s1_2_match = _T_247 & s2_retires; // @[SourceD.scala 342:110:chipyard.TestHarness.RocketConfig.fir@86087.4]
  assign _T_248 = s3_req_set == s1_req_set; // @[SourceD.scala 343:32:chipyard.TestHarness.RocketConfig.fir@86088.4]
  assign _T_249 = s3_req_way == s1_req_way; // @[SourceD.scala 343:61:chipyard.TestHarness.RocketConfig.fir@86089.4]
  assign _T_250 = _T_248 & _T_249; // @[SourceD.scala 343:47:chipyard.TestHarness.RocketConfig.fir@86090.4]
  assign _T_251 = s3_beat == s1_beat; // @[SourceD.scala 343:87:chipyard.TestHarness.RocketConfig.fir@86091.4]
  assign _T_252 = _T_250 & _T_251; // @[SourceD.scala 343:76:chipyard.TestHarness.RocketConfig.fir@86092.4]
  assign _T_253 = _T_252 & s3_full; // @[SourceD.scala 343:99:chipyard.TestHarness.RocketConfig.fir@86093.4]
  assign s1_3_match = _T_253 & s3_retires; // @[SourceD.scala 343:110:chipyard.TestHarness.RocketConfig.fir@86094.4]
  assign _T_322 = s1_2_match | s1_3_match; // @[SourceD.scala 358:30:chipyard.TestHarness.RocketConfig.fir@86167.4]
  assign _T_254 = s4_req_set == s1_req_set; // @[SourceD.scala 344:32:chipyard.TestHarness.RocketConfig.fir@86095.4]
  assign _T_255 = s4_req_way == s1_req_way; // @[SourceD.scala 344:61:chipyard.TestHarness.RocketConfig.fir@86096.4]
  assign _T_256 = _T_254 & _T_255; // @[SourceD.scala 344:47:chipyard.TestHarness.RocketConfig.fir@86097.4]
  assign _T_257 = s4_beat == s1_beat; // @[SourceD.scala 344:87:chipyard.TestHarness.RocketConfig.fir@86098.4]
  assign _T_258 = _T_256 & _T_257; // @[SourceD.scala 344:76:chipyard.TestHarness.RocketConfig.fir@86099.4]
  assign s1_4_match = _T_258 & s4_full; // @[SourceD.scala 344:99:chipyard.TestHarness.RocketConfig.fir@86100.4]
  assign s1_x_bypass = _T_322 | s1_4_match; // @[SourceD.scala 358:44:chipyard.TestHarness.RocketConfig.fir@86168.4]
  assign _GEN_15 = s1_latch_bypass ? s1_x_bypass : _T_6; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85459.4]
  assign s1_mask = ~_GEN_15; // @[SourceD.scala 91:78:chipyard.TestHarness.RocketConfig.fir@85468.4]
  assign _T_13 = s1_req_opcode == 3'h6; // @[SourceD.scala 92:33:chipyard.TestHarness.RocketConfig.fir@85470.4]
  assign _T_14 = s1_req_param == 3'h2; // @[SourceD.scala 92:66:chipyard.TestHarness.RocketConfig.fir@85471.4]
  assign _T_15 = _T_13 & _T_14; // @[SourceD.scala 92:50:chipyard.TestHarness.RocketConfig.fir@85472.4]
  assign _T_16 = s1_req_opcode == 3'h7; // @[SourceD.scala 92:93:chipyard.TestHarness.RocketConfig.fir@85473.4]
  assign s1_grant = _T_15 | _T_16; // @[SourceD.scala 92:76:chipyard.TestHarness.RocketConfig.fir@85474.4]
  assign _T_17 = |s1_mask; // @[SourceD.scala 93:27:chipyard.TestHarness.RocketConfig.fir@85475.4]
  assign _T_18 = _T_17 & s1_req_prio_0; // @[SourceD.scala 93:31:chipyard.TestHarness.RocketConfig.fir@85476.4]
  assign _T_19 = s1_req_opcode != 3'h5; // @[SourceD.scala 93:66:chipyard.TestHarness.RocketConfig.fir@85477.4]
  assign _T_20 = _T_18 & _T_19; // @[SourceD.scala 93:49:chipyard.TestHarness.RocketConfig.fir@85478.4]
  assign _T_21 = ~s1_grant; // @[SourceD.scala 93:78:chipyard.TestHarness.RocketConfig.fir@85479.4]
  assign _T_22 = _T_20 & _T_21; // @[SourceD.scala 93:75:chipyard.TestHarness.RocketConfig.fir@85480.4]
  assign _T_23 = s1_req_opcode != 3'h0; // @[SourceD.scala 94:34:chipyard.TestHarness.RocketConfig.fir@85481.4]
  assign _T_24 = s1_req_size < 3'h3; // @[SourceD.scala 94:65:chipyard.TestHarness.RocketConfig.fir@85482.4]
  assign _T_25 = _T_23 | _T_24; // @[SourceD.scala 94:50:chipyard.TestHarness.RocketConfig.fir@85483.4]
  assign s1_need_r = _T_22 & _T_25; // @[SourceD.scala 93:88:chipyard.TestHarness.RocketConfig.fir@85484.4]
  assign _T_27 = _T_3 & s1_need_r; // @[SourceD.scala 95:43:chipyard.TestHarness.RocketConfig.fir@85486.4]
  assign _T_28 = ~s1_block_r; // @[SourceD.scala 95:59:chipyard.TestHarness.RocketConfig.fir@85487.4]
  assign s1_valid_r = _T_27 & _T_28; // @[SourceD.scala 95:56:chipyard.TestHarness.RocketConfig.fir@85488.4]
  assign _T_30 = ~s1_req_opcode[2]; // @[SourceD.scala 96:40:chipyard.TestHarness.RocketConfig.fir@85490.4]
  assign s1_need_pb = s1_req_prio_0 ? _T_30 : s1_req_opcode[0]; // @[SourceD.scala 96:23:chipyard.TestHarness.RocketConfig.fir@85492.4]
  assign _T_32 = s1_req_opcode == 3'h5; // @[SourceD.scala 97:53:chipyard.TestHarness.RocketConfig.fir@85493.4]
  assign _T_33 = _T_32 | s1_grant; // @[SourceD.scala 97:62:chipyard.TestHarness.RocketConfig.fir@85494.4]
  assign s1_single = s1_req_prio_0 ? _T_33 : _T_13; // @[SourceD.scala 97:22:chipyard.TestHarness.RocketConfig.fir@85496.4]
  assign s1_retires = ~s1_single; // @[SourceD.scala 98:20:chipyard.TestHarness.RocketConfig.fir@85497.4]
  assign _T_36 = 13'h3f << s1_req_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@85499.4]
  assign _T_38 = ~_T_36[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@85501.4]
  assign s1_beats1 = s1_single ? 3'h0 : _T_38[5:3]; // @[SourceD.scala 100:22:chipyard.TestHarness.RocketConfig.fir@85503.4]
  assign s1_last = s1_counter == s1_beats1; // @[SourceD.scala 102:28:chipyard.TestHarness.RocketConfig.fir@85506.4]
  assign s1_first = s1_counter == 3'h0; // @[SourceD.scala 103:29:chipyard.TestHarness.RocketConfig.fir@85507.4]
  assign _T_47 = io_bs_radr_ready & io_bs_radr_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@85524.4]
  assign _T_50 = ~queue_io_enq_valid; // @[SourceD.scala 122:11:chipyard.TestHarness.RocketConfig.fir@85531.4]
  assign _T_51 = _T_50 | queue_io_enq_ready; // @[SourceD.scala 122:31:chipyard.TestHarness.RocketConfig.fir@85532.4]
  assign _T_53 = _T_51 | reset; // @[SourceD.scala 122:10:chipyard.TestHarness.RocketConfig.fir@85534.4]
  assign _T_54 = ~_T_53; // @[SourceD.scala 122:10:chipyard.TestHarness.RocketConfig.fir@85535.4]
  assign _GEN_16 = _T_47 | s1_block_r; // @[SourceD.scala 126:28:chipyard.TestHarness.RocketConfig.fir@85542.4]
  assign _GEN_17 = io_req_valid | busy; // @[SourceD.scala 127:23:chipyard.TestHarness.RocketConfig.fir@85545.4]
  assign _T_64 = ~s1_valid_r; // @[SourceD.scala 140:42:chipyard.TestHarness.RocketConfig.fir@85564.4]
  assign _T_65 = _T_64 | io_bs_radr_ready; // @[SourceD.scala 140:54:chipyard.TestHarness.RocketConfig.fir@85565.4]
  assign s1_valid = _T_3 & _T_65; // @[SourceD.scala 140:38:chipyard.TestHarness.RocketConfig.fir@85566.4]
  assign _T_57 = s1_valid & s2_ready; // @[SourceD.scala 128:18:chipyard.TestHarness.RocketConfig.fir@85548.4]
  assign _T_59 = s1_counter + 3'h1; // @[SourceD.scala 129:30:chipyard.TestHarness.RocketConfig.fir@85551.6]
  assign _T_67 = ~s1_need_pb; // @[SourceD.scala 155:29:chipyard.TestHarness.RocketConfig.fir@85613.4]
  assign _T_68 = _T_67 | s1_first; // @[SourceD.scala 155:41:chipyard.TestHarness.RocketConfig.fir@85614.4]
  assign _T_75 = ~s2_req_prio_0; // @[SourceD.scala 166:38:chipyard.TestHarness.RocketConfig.fir@85639.4]
  assign s2_valid = s2_full & _T_89; // @[SourceD.scala 182:23:chipyard.TestHarness.RocketConfig.fir@85666.4]
  assign _T_81 = s2_valid & s3_ready; // @[SourceD.scala 176:18:chipyard.TestHarness.RocketConfig.fir@85652.4]
  assign _GEN_49 = _T_81 ? 1'h0 : s2_full; // @[SourceD.scala 176:31:chipyard.TestHarness.RocketConfig.fir@85653.4]
  assign _GEN_51 = _T_57 | _GEN_49; // @[SourceD.scala 178:19:chipyard.TestHarness.RocketConfig.fir@85659.4]
  assign _GEN_52 = _T_81 ? s2_beat : s3_beat; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85678.4]
  assign _GEN_55 = _T_81 ? s2_req_way : s3_req_way; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85686.4]
  assign _GEN_57 = _T_81 ? s2_req_set : s3_req_set; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85686.4]
  assign _T_92 = s3_req_opcode == 3'h6; // @[SourceD.scala 201:30:chipyard.TestHarness.RocketConfig.fir@85726.4]
  assign _T_93 = s3_req_opcode == 3'h7; // @[SourceD.scala 201:64:chipyard.TestHarness.RocketConfig.fir@85727.4]
  assign s3_acq = _T_92 | _T_93; // @[SourceD.scala 201:47:chipyard.TestHarness.RocketConfig.fir@85728.4]
  assign _T_239 = atomics_io_data_out; // @[SourceD.scala 206:78:chipyard.TestHarness.RocketConfig.fir@86077.4]
  assign s3_bypass_data = _T_228 ? _T_239 : _T_237; // @[SourceD.scala 209:75:chipyard.TestHarness.RocketConfig.fir@86079.4]
  assign _T_96 = queue_io_deq_bits_data; // @[SourceD.scala 206:78:chipyard.TestHarness.RocketConfig.fir@85733.4]
  assign _T_97 = s3_req_param == 3'h2; // @[SourceD.scala 213:32:chipyard.TestHarness.RocketConfig.fir@85735.4]
  assign grant = _T_97 ? 3'h4 : 3'h5; // @[SourceD.scala 213:18:chipyard.TestHarness.RocketConfig.fir@85736.4]
  assign _GEN_78 = 3'h2 == s3_req_opcode ? 3'h1 : 3'h0; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  assign _GEN_79 = 3'h3 == s3_req_opcode ? 3'h1 : _GEN_78; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  assign _GEN_80 = 3'h4 == s3_req_opcode ? 3'h1 : _GEN_79; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  assign _GEN_81 = 3'h5 == s3_req_opcode ? 3'h2 : _GEN_80; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  assign _GEN_82 = 3'h6 == s3_req_opcode ? grant : _GEN_81; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  assign _GEN_83 = 3'h7 == s3_req_opcode ? 3'h4 : _GEN_82; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  assign d_bits_opcode = s3_req_prio_0 ? _GEN_83 : 3'h6; // @[SourceD.scala 221:24:chipyard.TestHarness.RocketConfig.fir@85751.4]
  assign _T_99 = s3_req_prio_0 & s3_acq; // @[SourceD.scala 222:40:chipyard.TestHarness.RocketConfig.fir@85753.4]
  assign _T_100 = s3_req_param != 3'h0; // @[SourceD.scala 222:68:chipyard.TestHarness.RocketConfig.fir@85754.4]
  assign _T_101 = _T_100 ? 2'h0 : 2'h1; // @[SourceD.scala 222:54:chipyard.TestHarness.RocketConfig.fir@85755.4]
  assign s3_valid = s3_full & _T_122; // @[SourceD.scala 240:23:chipyard.TestHarness.RocketConfig.fir@85797.4]
  assign _T_105 = s3_valid & s4_ready; // @[SourceD.scala 230:34:chipyard.TestHarness.RocketConfig.fir@85766.4]
  assign _T_108 = ~s3_need_r; // @[SourceD.scala 231:23:chipyard.TestHarness.RocketConfig.fir@85770.4]
  assign _T_109 = _T_120 | _T_108; // @[SourceD.scala 231:20:chipyard.TestHarness.RocketConfig.fir@85771.4]
  assign _T_110 = _T_109 | queue_io_deq_valid; // @[SourceD.scala 231:34:chipyard.TestHarness.RocketConfig.fir@85772.4]
  assign _T_112 = _T_110 | reset; // @[SourceD.scala 231:10:chipyard.TestHarness.RocketConfig.fir@85774.4]
  assign _T_113 = ~_T_112; // @[SourceD.scala 231:10:chipyard.TestHarness.RocketConfig.fir@85775.4]
  assign _GEN_85 = _T_105 ? 1'h0 : s3_full; // @[SourceD.scala 234:31:chipyard.TestHarness.RocketConfig.fir@85784.4]
  assign _GEN_87 = _T_81 | _GEN_85; // @[SourceD.scala 236:19:chipyard.TestHarness.RocketConfig.fir@85790.4]
  assign _T_125 = s3_valid & s3_retires; // @[SourceD.scala 246:27:chipyard.TestHarness.RocketConfig.fir@85805.4]
  assign s4_latch = _T_125 & s4_ready; // @[SourceD.scala 246:41:chipyard.TestHarness.RocketConfig.fir@85806.4]
  assign _GEN_88 = s4_latch ? s3_beat : s4_beat; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85809.4]
  assign _GEN_93 = s4_latch ? s3_req_way : s4_req_way; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85825.4]
  assign _GEN_95 = s4_latch ? s3_req_set : s4_req_set; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85825.4]
  assign _T_135 = s4_pdata_mask[0] | s4_pdata_mask[1]; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85883.4]
  assign _T_136 = _T_135 | s4_pdata_mask[2]; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85884.4]
  assign _T_137 = _T_136 | s4_pdata_mask[3]; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85885.4]
  assign _T_138 = _T_137 | s4_pdata_mask[4]; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85886.4]
  assign _T_139 = _T_138 | s4_pdata_mask[5]; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85887.4]
  assign _T_140 = _T_139 | s4_pdata_mask[6]; // @[SourceD.scala 273:87:chipyard.TestHarness.RocketConfig.fir@85888.4]
  assign _T_142 = s4_full & s4_need_pb; // @[SourceD.scala 275:21:chipyard.TestHarness.RocketConfig.fir@85892.4]
  assign _T_143 = _T_142 & s4_pdata_corrupt; // @[SourceD.scala 275:35:chipyard.TestHarness.RocketConfig.fir@85893.4]
  assign _T_144 = ~_T_143; // @[SourceD.scala 275:11:chipyard.TestHarness.RocketConfig.fir@85894.4]
  assign _T_146 = _T_144 | reset; // @[SourceD.scala 275:10:chipyard.TestHarness.RocketConfig.fir@85896.4]
  assign _T_147 = ~_T_146; // @[SourceD.scala 275:10:chipyard.TestHarness.RocketConfig.fir@85897.4]
  assign _T_187 = io_bs_wadr_ready | _T_192; // @[SourceD.scala 288:26:chipyard.TestHarness.RocketConfig.fir@85941.4]
  assign _GEN_112 = _T_187 ? 1'h0 : s4_full; // @[SourceD.scala 288:42:chipyard.TestHarness.RocketConfig.fir@85942.4]
  assign _GEN_113 = s4_latch | _GEN_112; // @[SourceD.scala 289:19:chipyard.TestHarness.RocketConfig.fir@85945.4]
  assign retire = s4_full & _T_187; // @[SourceD.scala 298:24:chipyard.TestHarness.RocketConfig.fir@85957.4]
  assign _GEN_115 = retire ? s4_req_way : s5_req_way; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85959.4]
  assign _GEN_117 = retire ? s4_req_set : s5_req_set; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85959.4]
  assign _GEN_129 = retire ? s4_beat : s5_beat; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85977.4]
  assign _GEN_132 = retire ? s5_req_way : s6_req_way; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85985.4]
  assign _GEN_134 = retire ? s5_req_set : s6_req_set; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@85985.4]
  assign _GEN_146 = retire ? s5_beat : s6_beat; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@86003.4]
  assign _T_198 = ~_T_187; // @[SourceD.scala 324:34:chipyard.TestHarness.RocketConfig.fir@86027.4]
  assign _T_199 = _T_198 & s4_full; // @[SourceD.scala 324:69:chipyard.TestHarness.RocketConfig.fir@86028.4]
  assign pre_s4_full = s4_latch | _T_199; // @[SourceD.scala 324:30:chipyard.TestHarness.RocketConfig.fir@86029.4]
  assign _T_200 = _GEN_95 == _GEN_57; // @[SourceD.scala 326:40:chipyard.TestHarness.RocketConfig.fir@86030.4]
  assign _T_201 = _GEN_93 == _GEN_55; // @[SourceD.scala 326:77:chipyard.TestHarness.RocketConfig.fir@86031.4]
  assign _T_202 = _T_200 & _T_201; // @[SourceD.scala 326:59:chipyard.TestHarness.RocketConfig.fir@86032.4]
  assign _T_203 = _GEN_88 == _GEN_52; // @[SourceD.scala 326:111:chipyard.TestHarness.RocketConfig.fir@86033.4]
  assign _T_204 = _T_202 & _T_203; // @[SourceD.scala 326:96:chipyard.TestHarness.RocketConfig.fir@86034.4]
  assign _T_205 = _GEN_117 == _GEN_57; // @[SourceD.scala 327:40:chipyard.TestHarness.RocketConfig.fir@86036.4]
  assign _T_206 = _GEN_115 == _GEN_55; // @[SourceD.scala 327:77:chipyard.TestHarness.RocketConfig.fir@86037.4]
  assign _T_207 = _T_205 & _T_206; // @[SourceD.scala 327:59:chipyard.TestHarness.RocketConfig.fir@86038.4]
  assign _T_208 = _GEN_129 == _GEN_52; // @[SourceD.scala 327:111:chipyard.TestHarness.RocketConfig.fir@86039.4]
  assign pre_s3_5_match = _T_207 & _T_208; // @[SourceD.scala 327:96:chipyard.TestHarness.RocketConfig.fir@86040.4]
  assign _T_209 = _GEN_134 == _GEN_57; // @[SourceD.scala 328:40:chipyard.TestHarness.RocketConfig.fir@86041.4]
  assign _T_210 = _GEN_132 == _GEN_55; // @[SourceD.scala 328:77:chipyard.TestHarness.RocketConfig.fir@86042.4]
  assign _T_211 = _T_209 & _T_210; // @[SourceD.scala 328:59:chipyard.TestHarness.RocketConfig.fir@86043.4]
  assign _T_212 = _GEN_146 == _GEN_52; // @[SourceD.scala 328:111:chipyard.TestHarness.RocketConfig.fir@86044.4]
  assign pre_s3_6_match = _T_211 & _T_212; // @[SourceD.scala 328:96:chipyard.TestHarness.RocketConfig.fir@86045.4]
  assign _T_325 = io_evict_req_way != s1_req_reg_way; // @[SourceD.scala 374:35:chipyard.TestHarness.RocketConfig.fir@86171.4]
  assign _T_326 = _T | _T_325; // @[SourceD.scala 374:15:chipyard.TestHarness.RocketConfig.fir@86172.4]
  assign _T_327 = io_evict_req_set != s1_req_reg_set; // @[SourceD.scala 374:74:chipyard.TestHarness.RocketConfig.fir@86173.4]
  assign _T_328 = _T_326 | _T_327; // @[SourceD.scala 374:54:chipyard.TestHarness.RocketConfig.fir@86174.4]
  assign _T_330 = io_evict_req_way != s2_req_way; // @[SourceD.scala 375:35:chipyard.TestHarness.RocketConfig.fir@86176.4]
  assign _T_331 = _T_87 | _T_330; // @[SourceD.scala 375:15:chipyard.TestHarness.RocketConfig.fir@86177.4]
  assign _T_332 = io_evict_req_set != s2_req_set; // @[SourceD.scala 375:74:chipyard.TestHarness.RocketConfig.fir@86178.4]
  assign _T_333 = _T_331 | _T_332; // @[SourceD.scala 375:54:chipyard.TestHarness.RocketConfig.fir@86179.4]
  assign _T_334 = _T_328 & _T_333; // @[SourceD.scala 374:94:chipyard.TestHarness.RocketConfig.fir@86180.4]
  assign _T_336 = io_evict_req_way != s3_req_way; // @[SourceD.scala 376:35:chipyard.TestHarness.RocketConfig.fir@86182.4]
  assign _T_337 = _T_120 | _T_336; // @[SourceD.scala 376:15:chipyard.TestHarness.RocketConfig.fir@86183.4]
  assign _T_338 = io_evict_req_set != s3_req_set; // @[SourceD.scala 376:74:chipyard.TestHarness.RocketConfig.fir@86184.4]
  assign _T_339 = _T_337 | _T_338; // @[SourceD.scala 376:54:chipyard.TestHarness.RocketConfig.fir@86185.4]
  assign _T_340 = _T_334 & _T_339; // @[SourceD.scala 375:90:chipyard.TestHarness.RocketConfig.fir@86186.4]
  assign _T_342 = io_evict_req_way != s4_req_way; // @[SourceD.scala 377:35:chipyard.TestHarness.RocketConfig.fir@86188.4]
  assign _T_343 = _T_189 | _T_342; // @[SourceD.scala 377:15:chipyard.TestHarness.RocketConfig.fir@86189.4]
  assign _T_344 = io_evict_req_set != s4_req_set; // @[SourceD.scala 377:74:chipyard.TestHarness.RocketConfig.fir@86190.4]
  assign _T_345 = _T_343 | _T_344; // @[SourceD.scala 377:54:chipyard.TestHarness.RocketConfig.fir@86191.4]
  assign _T_348 = io_grant_req_way != s1_req_reg_way; // @[SourceD.scala 381:35:chipyard.TestHarness.RocketConfig.fir@86195.4]
  assign _T_349 = _T | _T_348; // @[SourceD.scala 381:15:chipyard.TestHarness.RocketConfig.fir@86196.4]
  assign _T_350 = io_grant_req_set != s1_req_reg_set; // @[SourceD.scala 381:74:chipyard.TestHarness.RocketConfig.fir@86197.4]
  assign _T_351 = _T_349 | _T_350; // @[SourceD.scala 381:54:chipyard.TestHarness.RocketConfig.fir@86198.4]
  assign _T_353 = io_grant_req_way != s2_req_way; // @[SourceD.scala 382:35:chipyard.TestHarness.RocketConfig.fir@86200.4]
  assign _T_354 = _T_87 | _T_353; // @[SourceD.scala 382:15:chipyard.TestHarness.RocketConfig.fir@86201.4]
  assign _T_355 = io_grant_req_set != s2_req_set; // @[SourceD.scala 382:74:chipyard.TestHarness.RocketConfig.fir@86202.4]
  assign _T_356 = _T_354 | _T_355; // @[SourceD.scala 382:54:chipyard.TestHarness.RocketConfig.fir@86203.4]
  assign _T_357 = _T_351 & _T_356; // @[SourceD.scala 381:94:chipyard.TestHarness.RocketConfig.fir@86204.4]
  assign _T_359 = io_grant_req_way != s3_req_way; // @[SourceD.scala 383:35:chipyard.TestHarness.RocketConfig.fir@86206.4]
  assign _T_360 = _T_120 | _T_359; // @[SourceD.scala 383:15:chipyard.TestHarness.RocketConfig.fir@86207.4]
  assign _T_361 = io_grant_req_set != s3_req_set; // @[SourceD.scala 383:74:chipyard.TestHarness.RocketConfig.fir@86208.4]
  assign _T_362 = _T_360 | _T_361; // @[SourceD.scala 383:54:chipyard.TestHarness.RocketConfig.fir@86209.4]
  assign _T_363 = _T_357 & _T_362; // @[SourceD.scala 382:90:chipyard.TestHarness.RocketConfig.fir@86210.4]
  assign _T_365 = io_grant_req_way != s4_req_way; // @[SourceD.scala 384:35:chipyard.TestHarness.RocketConfig.fir@86212.4]
  assign _T_366 = _T_189 | _T_365; // @[SourceD.scala 384:15:chipyard.TestHarness.RocketConfig.fir@86213.4]
  assign _T_367 = io_grant_req_set != s4_req_set; // @[SourceD.scala 384:74:chipyard.TestHarness.RocketConfig.fir@86214.4]
  assign _T_368 = _T_366 | _T_367; // @[SourceD.scala 384:54:chipyard.TestHarness.RocketConfig.fir@86215.4]
  assign io_req_ready = ~busy; // @[SourceD.scala 139:16:chipyard.TestHarness.RocketConfig.fir@85562.4]
  assign io_d_valid = s3_valid_d; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_d_bits_opcode = s3_req_prio_0 ? _GEN_83 : 3'h6; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_d_bits_param = _T_99 ? _T_101 : 2'h0; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_d_bits_size = s3_req_size; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_d_bits_source = s3_req_source; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_d_bits_sink = s3_req_sink; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_d_bits_denied = s3_req_bad; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_d_bits_data = s3_bypass ? s3_bypass_data : _T_96; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_d_bits_corrupt = s3_req_bad & d_bits_opcode[0]; // @[SourceD.scala 218:8:chipyard.TestHarness.RocketConfig.fir@85749.4]
  assign io_pb_pop_valid = s2_valid_pb & s2_req_prio_0; // @[SourceD.scala 163:19:chipyard.TestHarness.RocketConfig.fir@85636.4]
  assign io_pb_pop_bits_index = s2_req_put; // @[SourceD.scala 164:24:chipyard.TestHarness.RocketConfig.fir@85637.4]
  assign io_pb_pop_bits_last = s2_last; // @[SourceD.scala 165:24:chipyard.TestHarness.RocketConfig.fir@85638.4]
  assign io_rel_pop_valid = s2_valid_pb & _T_75; // @[SourceD.scala 166:20:chipyard.TestHarness.RocketConfig.fir@85641.4]
  assign io_rel_pop_bits_index = s2_req_put; // @[SourceD.scala 167:25:chipyard.TestHarness.RocketConfig.fir@85642.4]
  assign io_rel_pop_bits_last = s2_last; // @[SourceD.scala 168:25:chipyard.TestHarness.RocketConfig.fir@85643.4]
  assign io_bs_radr_valid = _T_27 & _T_28; // @[SourceD.scala 109:24:chipyard.TestHarness.RocketConfig.fir@85512.4]
  assign io_bs_radr_bits_way = _T ? io_req_bits_way : s1_req_reg_way; // @[SourceD.scala 111:24:chipyard.TestHarness.RocketConfig.fir@85514.4]
  assign io_bs_radr_bits_set = _T ? io_req_bits_set : s1_req_reg_set; // @[SourceD.scala 112:24:chipyard.TestHarness.RocketConfig.fir@85515.4]
  assign io_bs_radr_bits_beat = s1_req_offset[5:3] | s1_counter; // @[SourceD.scala 113:24:chipyard.TestHarness.RocketConfig.fir@85516.4]
  assign io_bs_radr_bits_mask = ~_GEN_15; // @[SourceD.scala 114:24:chipyard.TestHarness.RocketConfig.fir@85517.4]
  assign io_bs_wadr_valid = s4_full & s4_need_bs; // @[SourceD.scala 268:20:chipyard.TestHarness.RocketConfig.fir@85870.4]
  assign io_bs_wadr_bits_way = s4_req_way; // @[SourceD.scala 270:24:chipyard.TestHarness.RocketConfig.fir@85872.4]
  assign io_bs_wadr_bits_set = s4_req_set; // @[SourceD.scala 271:24:chipyard.TestHarness.RocketConfig.fir@85873.4]
  assign io_bs_wadr_bits_beat = s4_beat; // @[SourceD.scala 272:24:chipyard.TestHarness.RocketConfig.fir@85874.4]
  assign io_bs_wadr_bits_mask = _T_140 | s4_pdata_mask[7]; // @[SourceD.scala 273:24:chipyard.TestHarness.RocketConfig.fir@85890.4]
  assign io_bs_wdat_data = atomics_io_data_out; // @[SourceD.scala 274:19:chipyard.TestHarness.RocketConfig.fir@85891.4]
  assign io_evict_safe = _T_340 & _T_345; // @[SourceD.scala 373:17:chipyard.TestHarness.RocketConfig.fir@86193.4]
  assign io_grant_safe = _T_363 & _T_368; // @[SourceD.scala 380:17:chipyard.TestHarness.RocketConfig.fir@86217.4]
  assign queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@85522.4]
  assign queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@85523.4]
  assign queue_io_enq_valid = _T_49; // @[SourceD.scala 120:22:chipyard.TestHarness.RocketConfig.fir@85529.4]
  assign queue_io_enq_bits_data = io_bs_rdat_data; // @[SourceD.scala 121:21:chipyard.TestHarness.RocketConfig.fir@85530.4]
  assign queue_io_deq_ready = _T_105 & s3_need_r; // @[SourceD.scala 230:22:chipyard.TestHarness.RocketConfig.fir@85768.4]
  assign atomics_io_write = s4_req_prio_2; // @[SourceD.scala 258:24:chipyard.TestHarness.RocketConfig.fir@85860.4]
  assign atomics_io_a_opcode = s4_adjusted_opcode; // @[SourceD.scala 259:24:chipyard.TestHarness.RocketConfig.fir@85861.4]
  assign atomics_io_a_param = s4_req_param; // @[SourceD.scala 260:24:chipyard.TestHarness.RocketConfig.fir@85862.4]
  assign atomics_io_a_mask = s4_pdata_mask; // @[SourceD.scala 264:24:chipyard.TestHarness.RocketConfig.fir@85866.4]
  assign atomics_io_a_data = s4_pdata_data; // @[SourceD.scala 265:24:chipyard.TestHarness.RocketConfig.fir@85867.4]
  assign atomics_io_data_in = s4_rdata; // @[SourceD.scala 266:24:chipyard.TestHarness.RocketConfig.fir@85868.4]
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
  busy = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  s1_block_r = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  s1_counter = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s1_req_reg_prio_0 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  s1_req_reg_prio_2 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  s1_req_reg_opcode = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  s1_req_reg_param = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  s1_req_reg_size = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  s1_req_reg_source = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  s1_req_reg_offset = _RAND_9[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  s1_req_reg_put = _RAND_10[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  s1_req_reg_set = _RAND_11[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  s1_req_reg_sink = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  s1_req_reg_way = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s1_req_reg_bad = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  s2_full = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s3_full = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s3_retires = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  s4_full = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  s4_need_bs = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  s3_valid_d = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  s2_valid_pb = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  s2_req_prio_0 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  s1_latch_bypass = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_6 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  s2_req_set = _RAND_25[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  s2_req_way = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  s2_beat = _RAND_27[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  s2_retires = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  s3_req_set = _RAND_29[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  s3_req_way = _RAND_30[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  s3_beat = _RAND_31[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  s4_req_set = _RAND_32[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  s4_req_way = _RAND_33[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  s4_beat = _RAND_34[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_48 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_49 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  s2_bypass = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  s2_req_prio_2 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  s2_req_opcode = _RAND_39[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  s2_req_param = _RAND_40[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  s2_req_size = _RAND_41[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  s2_req_source = _RAND_42[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  s2_req_put = _RAND_43[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  s2_req_sink = _RAND_44[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  s2_req_bad = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  s2_last = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  s2_need_r = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  s2_need_pb = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  s2_need_d = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {2{`RANDOM}};
  _T_69_data = _RAND_50[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_69_mask = _RAND_51[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_69_corrupt = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  s3_bypass = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  s3_req_prio_0 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  s3_req_prio_2 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  s3_req_opcode = _RAND_56[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  s3_req_param = _RAND_57[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  s3_req_size = _RAND_58[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  s3_req_source = _RAND_59[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  s3_req_sink = _RAND_60[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  s3_req_bad = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {2{`RANDOM}};
  s3_pdata_data = _RAND_62[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  s3_pdata_mask = _RAND_63[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  s3_pdata_corrupt = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  s3_need_bs = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  s3_need_r = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_228 = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {2{`RANDOM}};
  _T_237 = _RAND_68[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  s4_need_pb = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  s4_req_prio_2 = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  s4_req_param = _RAND_71[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  s4_adjusted_opcode = _RAND_72[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {2{`RANDOM}};
  s4_pdata_data = _RAND_73[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  s4_pdata_mask = _RAND_74[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  s4_pdata_corrupt = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {2{`RANDOM}};
  s4_rdata = _RAND_76[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  s5_req_set = _RAND_77[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  s5_req_way = _RAND_78[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  s5_beat = _RAND_79[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {2{`RANDOM}};
  s5_dat = _RAND_80[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  s6_req_set = _RAND_81[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  s6_req_way = _RAND_82[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  s6_beat = _RAND_83[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {2{`RANDOM}};
  s6_dat = _RAND_84[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {2{`RANDOM}};
  s7_dat = _RAND_85[63:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      busy <= 1'h0;
    end else if (_T_57) begin
      if (s1_last) begin
        busy <= 1'h0;
      end else begin
        busy <= _GEN_17;
      end
    end else begin
      busy <= _GEN_17;
    end
    if (reset) begin
      s1_block_r <= 1'h0;
    end else if (_T_57) begin
      s1_block_r <= 1'h0;
    end else begin
      s1_block_r <= _GEN_16;
    end
    if (reset) begin
      s1_counter <= 3'h0;
    end else if (_T_57) begin
      if (s1_last) begin
        s1_counter <= 3'h0;
      end else begin
        s1_counter <= _T_59;
      end
    end
    if (_T_1) begin
      s1_req_reg_prio_0 <= io_req_bits_prio_0;
    end
    if (_T_1) begin
      s1_req_reg_prio_2 <= io_req_bits_prio_2;
    end
    if (_T_1) begin
      s1_req_reg_opcode <= io_req_bits_opcode;
    end
    if (_T_1) begin
      s1_req_reg_param <= io_req_bits_param;
    end
    if (_T_1) begin
      s1_req_reg_size <= io_req_bits_size;
    end
    if (_T_1) begin
      s1_req_reg_source <= io_req_bits_source;
    end
    if (_T_1) begin
      s1_req_reg_offset <= io_req_bits_offset;
    end
    if (_T_1) begin
      s1_req_reg_put <= io_req_bits_put;
    end
    if (_T_1) begin
      s1_req_reg_set <= io_req_bits_set;
    end
    if (_T_1) begin
      s1_req_reg_sink <= io_req_bits_sink;
    end
    if (_T_1) begin
      s1_req_reg_way <= io_req_bits_way;
    end
    if (_T_1) begin
      s1_req_reg_bad <= io_req_bits_bad;
    end
    if (reset) begin
      s2_full <= 1'h0;
    end else begin
      s2_full <= _GEN_51;
    end
    if (reset) begin
      s3_full <= 1'h0;
    end else begin
      s3_full <= _GEN_87;
    end
    if (_T_81) begin
      s3_retires <= s2_retires;
    end
    if (reset) begin
      s4_full <= 1'h0;
    end else begin
      s4_full <= _GEN_113;
    end
    if (s4_latch) begin
      s4_need_bs <= s3_need_bs;
    end
    if (reset) begin
      s3_valid_d <= 1'h0;
    end else if (_T_81) begin
      s3_valid_d <= s2_need_d;
    end else if (io_d_ready) begin
      s3_valid_d <= 1'h0;
    end
    if (reset) begin
      s2_valid_pb <= 1'h0;
    end else if (_T_57) begin
      if (s1_req_prio_0) begin
        s2_valid_pb <= _T_30;
      end else begin
        s2_valid_pb <= s1_req_opcode[0];
      end
    end else if (pb_ready) begin
      s2_valid_pb <= 1'h0;
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_prio_0 <= io_req_bits_prio_0;
      end else begin
        s2_req_prio_0 <= s1_req_reg_prio_0;
      end
    end
    s1_latch_bypass <= _T_4 | s2_ready;
    if (s1_latch_bypass) begin
      _T_6 <= s1_x_bypass;
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_set <= io_req_bits_set;
      end else begin
        s2_req_set <= s1_req_reg_set;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_way <= io_req_bits_way;
      end else begin
        s2_req_way <= s1_req_reg_way;
      end
    end
    if (_T_57) begin
      s2_beat <= s1_beat;
    end
    if (_T_57) begin
      s2_retires <= s1_retires;
    end
    if (_T_81) begin
      s3_req_set <= s2_req_set;
    end
    if (_T_81) begin
      s3_req_way <= s2_req_way;
    end
    if (_T_81) begin
      s3_beat <= s2_beat;
    end
    if (s4_latch) begin
      s4_req_set <= s3_req_set;
    end
    if (s4_latch) begin
      s4_req_way <= s3_req_way;
    end
    if (s4_latch) begin
      s4_beat <= s3_beat;
    end
    _T_48 <= io_bs_radr_ready & io_bs_radr_valid;
    _T_49 <= _T_48;
    if (_T_57) begin
      if (s1_latch_bypass) begin
        s2_bypass <= s1_x_bypass;
      end else begin
        s2_bypass <= _T_6;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_prio_2 <= io_req_bits_prio_2;
      end else begin
        s2_req_prio_2 <= s1_req_reg_prio_2;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_opcode <= io_req_bits_opcode;
      end else begin
        s2_req_opcode <= s1_req_reg_opcode;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_param <= io_req_bits_param;
      end else begin
        s2_req_param <= s1_req_reg_param;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_size <= io_req_bits_size;
      end else begin
        s2_req_size <= s1_req_reg_size;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_source <= io_req_bits_source;
      end else begin
        s2_req_source <= s1_req_reg_source;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_put <= io_req_bits_put;
      end else begin
        s2_req_put <= s1_req_reg_put;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_sink <= io_req_bits_sink;
      end else begin
        s2_req_sink <= s1_req_reg_sink;
      end
    end
    if (_T_57) begin
      if (_T) begin
        s2_req_bad <= io_req_bits_bad;
      end else begin
        s2_req_bad <= s1_req_reg_bad;
      end
    end
    if (_T_57) begin
      s2_last <= s1_last;
    end
    if (_T_57) begin
      s2_need_r <= s1_need_r;
    end
    if (_T_57) begin
      if (s1_req_prio_0) begin
        s2_need_pb <= _T_30;
      end else begin
        s2_need_pb <= s1_req_opcode[0];
      end
    end
    if (_T_57) begin
      s2_need_d <= _T_68;
    end
    if (s2_valid_pb) begin
      if (s2_req_prio_0) begin
        _T_69_data <= io_pb_beat_data;
      end else begin
        _T_69_data <= io_rel_beat_data;
      end
    end
    if (s2_valid_pb) begin
      if (s2_req_prio_0) begin
        _T_69_mask <= io_pb_beat_mask;
      end else begin
        _T_69_mask <= 8'hff;
      end
    end
    if (s2_valid_pb) begin
      if (s2_req_prio_0) begin
        _T_69_corrupt <= io_pb_beat_corrupt;
      end else begin
        _T_69_corrupt <= io_rel_beat_corrupt;
      end
    end
    if (_T_81) begin
      s3_bypass <= s2_bypass;
    end
    if (_T_81) begin
      s3_req_prio_0 <= s2_req_prio_0;
    end
    if (_T_81) begin
      s3_req_prio_2 <= s2_req_prio_2;
    end
    if (_T_81) begin
      s3_req_opcode <= s2_req_opcode;
    end
    if (_T_81) begin
      s3_req_param <= s2_req_param;
    end
    if (_T_81) begin
      s3_req_size <= s2_req_size;
    end
    if (_T_81) begin
      s3_req_source <= s2_req_source;
    end
    if (_T_81) begin
      s3_req_sink <= s2_req_sink;
    end
    if (_T_81) begin
      s3_req_bad <= s2_req_bad;
    end
    if (_T_81) begin
      if (s2_valid_pb) begin
        if (s2_req_prio_0) begin
          s3_pdata_data <= io_pb_beat_data;
        end else begin
          s3_pdata_data <= io_rel_beat_data;
        end
      end else begin
        s3_pdata_data <= _T_69_data;
      end
    end
    if (_T_81) begin
      if (s2_valid_pb) begin
        if (s2_req_prio_0) begin
          s3_pdata_mask <= io_pb_beat_mask;
        end else begin
          s3_pdata_mask <= 8'hff;
        end
      end else begin
        s3_pdata_mask <= _T_69_mask;
      end
    end
    if (_T_81) begin
      if (s2_valid_pb) begin
        if (s2_req_prio_0) begin
          s3_pdata_corrupt <= io_pb_beat_corrupt;
        end else begin
          s3_pdata_corrupt <= io_rel_beat_corrupt;
        end
      end else begin
        s3_pdata_corrupt <= _T_69_corrupt;
      end
    end
    if (_T_81) begin
      s3_need_bs <= s2_need_pb;
    end
    if (_T_81) begin
      s3_need_r <= s2_need_r;
    end
    _T_228 <= _T_204 & pre_s4_full;
    if (pre_s3_5_match) begin
      if (retire) begin
        _T_237 <= atomics_io_data_out;
      end else begin
        _T_237 <= s5_dat;
      end
    end else if (pre_s3_6_match) begin
      if (retire) begin
        _T_237 <= s5_dat;
      end else begin
        _T_237 <= s6_dat;
      end
    end else if (retire) begin
      _T_237 <= s6_dat;
    end else begin
      _T_237 <= s7_dat;
    end
    if (s4_latch) begin
      s4_need_pb <= s3_need_bs;
    end
    if (s4_latch) begin
      s4_req_prio_2 <= s3_req_prio_2;
    end
    if (s4_latch) begin
      s4_req_param <= s3_req_param;
    end
    if (s4_latch) begin
      if (s3_req_bad) begin
        s4_adjusted_opcode <= 3'h4;
      end else begin
        s4_adjusted_opcode <= s3_req_opcode;
      end
    end
    if (s4_latch) begin
      s4_pdata_data <= s3_pdata_data;
    end
    if (s4_latch) begin
      s4_pdata_mask <= s3_pdata_mask;
    end
    if (s4_latch) begin
      s4_pdata_corrupt <= s3_pdata_corrupt;
    end
    if (s4_latch) begin
      if (s3_bypass) begin
        if (_T_228) begin
          s4_rdata <= _T_239;
        end else begin
          s4_rdata <= _T_237;
        end
      end else begin
        s4_rdata <= _T_96;
      end
    end
    if (retire) begin
      s5_req_set <= s4_req_set;
    end
    if (retire) begin
      s5_req_way <= s4_req_way;
    end
    if (retire) begin
      s5_beat <= s4_beat;
    end
    if (retire) begin
      s5_dat <= atomics_io_data_out;
    end
    if (retire) begin
      s6_req_set <= s5_req_set;
    end
    if (retire) begin
      s6_req_way <= s5_req_way;
    end
    if (retire) begin
      s6_beat <= s5_beat;
    end
    if (retire) begin
      s6_dat <= s5_dat;
    end
    if (retire) begin
      s7_dat <= s6_dat;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_54) begin
          $fwrite(32'h80000002,"Assertion failed\n    at SourceD.scala:122 assert (!queue.io.enq.valid || queue.io.enq.ready)\n"); // @[SourceD.scala 122:10:chipyard.TestHarness.RocketConfig.fir@85537.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_54) begin
          $fatal; // @[SourceD.scala 122:10:chipyard.TestHarness.RocketConfig.fir@85538.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_113) begin
          $fwrite(32'h80000002,"Assertion failed\n    at SourceD.scala:231 assert (!s3_full || !s3_need_r || queue.io.deq.valid)\n"); // @[SourceD.scala 231:10:chipyard.TestHarness.RocketConfig.fir@85777.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_113) begin
          $fatal; // @[SourceD.scala 231:10:chipyard.TestHarness.RocketConfig.fir@85778.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_147) begin
          $fwrite(32'h80000002,"Assertion failed: Data poisoning unsupported\n    at SourceD.scala:275 assert (!(s4_full && s4_need_pb && s4_pdata.corrupt), \"Data poisoning unsupported\")\n"); // @[SourceD.scala 275:10:chipyard.TestHarness.RocketConfig.fir@85899.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_147) begin
          $fatal; // @[SourceD.scala 275:10:chipyard.TestHarness.RocketConfig.fir@85900.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
