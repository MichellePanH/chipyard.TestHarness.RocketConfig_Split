module SinkC( // @[:chipyard.TestHarness.RocketConfig.fir@87003.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@87004.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@87005.4]
  input         io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [2:0]  io_req_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [2:0]  io_req_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [2:0]  io_req_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [2:0]  io_req_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [11:0] io_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [5:0]  io_req_bits_offset, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [5:0]  io_req_bits_put, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [9:0]  io_req_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_resp_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [9:0]  io_resp_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [11:0] io_resp_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [2:0]  io_resp_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [2:0]  io_resp_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input         io_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input  [2:0]  io_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input  [2:0]  io_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input  [2:0]  io_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input  [2:0]  io_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input  [31:0] io_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input  [63:0] io_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input         io_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [9:0]  io_set, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input  [2:0]  io_way, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input         io_bs_adr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_bs_adr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_bs_adr_bits_noop, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [2:0]  io_bs_adr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [9:0]  io_bs_adr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [2:0]  io_bs_adr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_bs_adr_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [63:0] io_bs_dat_data, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_rel_pop_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input         io_rel_pop_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input  [5:0]  io_rel_pop_bits_index, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  input         io_rel_pop_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output [63:0] io_rel_beat_data, // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
  output        io_rel_beat_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@87006.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [2:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [2:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [31:0] Queue_io_enq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [63:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire  Queue_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [2:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [2:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [31:0] Queue_io_deq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire [63:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  Queue_1_io_enq_bits_noop; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire [2:0] Queue_1_io_enq_bits_way; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire [9:0] Queue_1_io_enq_bits_set; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire [2:0] Queue_1_io_enq_bits_beat; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  Queue_1_io_deq_bits_noop; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire [2:0] Queue_1_io_deq_bits_way; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire [9:0] Queue_1_io_deq_bits_set; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire [2:0] Queue_1_io_deq_bits_beat; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  Queue_1_io_deq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
  wire  ListBuffer_clock; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire  ListBuffer_reset; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire  ListBuffer_io_push_ready; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire  ListBuffer_io_push_valid; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire  ListBuffer_io_push_bits_index; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire [63:0] ListBuffer_io_push_bits_data_data; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire  ListBuffer_io_push_bits_data_corrupt; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire [1:0] ListBuffer_io_valid; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire  ListBuffer_io_pop_valid; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire  ListBuffer_io_pop_bits; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire [63:0] ListBuffer_io_data_data; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire  ListBuffer_io_data_corrupt; // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
  wire [6:0] _T_33; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87056.4]
  wire [13:0] _T_40; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87063.4]
  wire [6:0] _T_46; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87069.4]
  wire [27:0] _T_54; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87077.4]
  wire  _T_60; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87083.4]
  wire [12:0] _T_62; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@87085.4]
  wire [5:0] _T_64; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@87087.4]
  wire [2:0] _T_67; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@87090.4]
  reg [2:0] _T_68; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@87091.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_70; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@87093.4]
  wire  _T_71; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@87094.4]
  wire  _T_72; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@87095.4]
  wire  _T_73; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@87096.4]
  wire  _T_74; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@87097.4]
  wire [2:0] _T_76; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@87099.4]
  wire [2:0] _T_77; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@87100.4]
  wire  _T_80; // @[SinkC.scala 72:34:chipyard.TestHarness.RocketConfig.fir@87106.4]
  wire  _T_81; // @[SinkC.scala 72:75:chipyard.TestHarness.RocketConfig.fir@87107.4]
  wire  _T_82; // @[SinkC.scala 72:58:chipyard.TestHarness.RocketConfig.fir@87108.4]
  reg  _T_83; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87109.4]
  reg [31:0] _RAND_1;
  wire  _GEN_1; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@87110.4]
  wire  _T_85; // @[SinkC.scala 84:23:chipyard.TestHarness.RocketConfig.fir@87114.4]
  wire  _T_86; // @[SinkC.scala 84:13:chipyard.TestHarness.RocketConfig.fir@87115.4]
  wire  _T_88; // @[SinkC.scala 84:12:chipyard.TestHarness.RocketConfig.fir@87117.4]
  wire  _T_89; // @[SinkC.scala 84:12:chipyard.TestHarness.RocketConfig.fir@87118.4]
  reg [9:0] _T_90; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87123.4]
  reg [31:0] _RAND_2;
  wire  _T_92_ready; // @[SinkC.scala 90:22:chipyard.TestHarness.RocketConfig.fir@87129.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@87140.4]
  wire  _T_95; // @[SinkC.scala 93:34:chipyard.TestHarness.RocketConfig.fir@87148.4]
  wire  _T_96; // @[SinkC.scala 93:53:chipyard.TestHarness.RocketConfig.fir@87149.4]
  wire  _T_97; // @[SinkC.scala 93:41:chipyard.TestHarness.RocketConfig.fir@87150.4]
  wire  _T_98; // @[SinkC.scala 93:30:chipyard.TestHarness.RocketConfig.fir@87151.4]
  wire  _T_93; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87142.4]
  reg [63:0] _T_94; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87143.4]
  reg [63:0] _RAND_3;
  wire [2:0] _GEN_8; // @[SinkC.scala 97:59:chipyard.TestHarness.RocketConfig.fir@87157.4]
  wire [2:0] _T_101; // @[SinkC.scala 97:59:chipyard.TestHarness.RocketConfig.fir@87158.4]
  reg [2:0] _T_102; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87159.4]
  reg [31:0] _RAND_4;
  wire  _T_107; // @[SinkC.scala 101:27:chipyard.TestHarness.RocketConfig.fir@87169.4]
  wire  _T_108; // @[SinkC.scala 101:48:chipyard.TestHarness.RocketConfig.fir@87170.4]
  wire  _T_109; // @[SinkC.scala 101:38:chipyard.TestHarness.RocketConfig.fir@87171.4]
  wire  _T_110; // @[SinkC.scala 101:61:chipyard.TestHarness.RocketConfig.fir@87172.4]
  wire  _T_111; // @[SinkC.scala 101:70:chipyard.TestHarness.RocketConfig.fir@87173.4]
  reg [1:0] _T_113; // @[SinkC.scala 110:24:chipyard.TestHarness.RocketConfig.fir@87186.4]
  reg [31:0] _RAND_5;
  wire  _T_174; // @[SinkC.scala 132:11:chipyard.TestHarness.RocketConfig.fir@87255.4]
  wire  _T_175; // @[SinkC.scala 132:17:chipyard.TestHarness.RocketConfig.fir@87256.4]
  wire  _T_176; // @[SinkC.scala 132:28:chipyard.TestHarness.RocketConfig.fir@87257.4]
  wire  _T_177; // @[SinkC.scala 132:37:chipyard.TestHarness.RocketConfig.fir@87258.4]
  wire  _T_136; // @[SinkC.scala 120:30:chipyard.TestHarness.RocketConfig.fir@87214.4]
  wire  _T_137; // @[SinkC.scala 120:27:chipyard.TestHarness.RocketConfig.fir@87215.4]
  wire  _T_178; // @[SinkC.scala 132:51:chipyard.TestHarness.RocketConfig.fir@87259.4]
  wire  _T_179; // @[SinkC.scala 132:48:chipyard.TestHarness.RocketConfig.fir@87260.4]
  wire  _T_138; // @[SinkC.scala 121:32:chipyard.TestHarness.RocketConfig.fir@87216.4]
  wire  _T_139; // @[SinkC.scala 121:29:chipyard.TestHarness.RocketConfig.fir@87217.4]
  wire  _T_180; // @[SinkC.scala 132:65:chipyard.TestHarness.RocketConfig.fir@87261.4]
  wire  _T_181; // @[SinkC.scala 132:62:chipyard.TestHarness.RocketConfig.fir@87262.4]
  wire [1:0] _T_121; // @[SinkC.scala 117:27:chipyard.TestHarness.RocketConfig.fir@87199.4]
  wire [2:0] _T_122; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@87200.4]
  wire [1:0] _T_124; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@87202.4]
  wire [2:0] _T_126; // @[SinkC.scala 117:35:chipyard.TestHarness.RocketConfig.fir@87204.4]
  wire [2:0] _T_127; // @[SinkC.scala 117:18:chipyard.TestHarness.RocketConfig.fir@87205.4]
  wire [2:0] _GEN_9; // @[SinkC.scala 117:41:chipyard.TestHarness.RocketConfig.fir@87207.4]
  wire [2:0] _T_129; // @[SinkC.scala 117:41:chipyard.TestHarness.RocketConfig.fir@87207.4]
  wire [2:0] _GEN_5; // @[SinkC.scala 132:77:chipyard.TestHarness.RocketConfig.fir@87263.4]
  wire [1:0] _T_116; // @[SinkC.scala 114:21:chipyard.TestHarness.RocketConfig.fir@87193.4]
  wire  _T_188; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87296.4]
  wire  _T_189; // @[SinkC.scala 157:29:chipyard.TestHarness.RocketConfig.fir@87297.4]
  wire [1:0] _T_191; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@87300.6]
  wire [1:0] _GEN_7; // @[SinkC.scala 157:54:chipyard.TestHarness.RocketConfig.fir@87298.4]
  wire [1:0] _T_117; // @[SinkC.scala 114:36:chipyard.TestHarness.RocketConfig.fir@87194.4]
  wire [1:0] _T_118; // @[SinkC.scala 114:34:chipyard.TestHarness.RocketConfig.fir@87195.4]
  wire  _T_119; // @[SinkC.scala 116:27:chipyard.TestHarness.RocketConfig.fir@87197.4]
  wire  _T_120; // @[SinkC.scala 116:16:chipyard.TestHarness.RocketConfig.fir@87198.4]
  wire  _T_132; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@87210.4]
  wire [1:0] _GEN_10; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@87211.4]
  wire [1:0] _T_133; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@87211.4]
  wire [1:0] _T_135; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87213.4]
  wire  _T_140; // @[SinkC.scala 122:29:chipyard.TestHarness.RocketConfig.fir@87218.4]
  wire  _T_141; // @[SinkC.scala 122:41:chipyard.TestHarness.RocketConfig.fir@87219.4]
  wire  _T_142; // @[SinkC.scala 122:38:chipyard.TestHarness.RocketConfig.fir@87220.4]
  wire  _T_156; // @[SinkC.scala 128:67:chipyard.TestHarness.RocketConfig.fir@87234.4]
  wire  _T_157; // @[SinkC.scala 128:84:chipyard.TestHarness.RocketConfig.fir@87235.4]
  wire  _T_158; // @[SinkC.scala 128:81:chipyard.TestHarness.RocketConfig.fir@87236.4]
  wire  _T_164; // @[SinkC.scala 130:47:chipyard.TestHarness.RocketConfig.fir@87243.4]
  wire  _T_169; // @[SinkC.scala 131:49:chipyard.TestHarness.RocketConfig.fir@87249.4]
  wire  _T_171; // @[SinkC.scala 131:60:chipyard.TestHarness.RocketConfig.fir@87251.4]
  reg [1:0] _T_182; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87266.4]
  reg [31:0] _RAND_6;
  wire [1:0] _GEN_6; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@87267.4]
  wire [1:0] _T_186; // @[SinkC.scala 154:43:chipyard.TestHarness.RocketConfig.fir@87292.4]
  Queue_19 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87011.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_address(Queue_io_enq_bits_address),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_io_enq_bits_corrupt),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_address(Queue_io_deq_bits_address),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_io_deq_bits_corrupt)
  );
  Queue_20 Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87131.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_noop(Queue_1_io_enq_bits_noop),
    .io_enq_bits_way(Queue_1_io_enq_bits_way),
    .io_enq_bits_set(Queue_1_io_enq_bits_set),
    .io_enq_bits_beat(Queue_1_io_enq_bits_beat),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_noop(Queue_1_io_deq_bits_noop),
    .io_deq_bits_way(Queue_1_io_deq_bits_way),
    .io_deq_bits_set(Queue_1_io_deq_bits_set),
    .io_deq_bits_beat(Queue_1_io_deq_bits_beat),
    .io_deq_bits_mask(Queue_1_io_deq_bits_mask)
  );
  ListBuffer_1 ListBuffer ( // @[SinkC.scala 109:27:chipyard.TestHarness.RocketConfig.fir@87182.4]
    .clock(ListBuffer_clock),
    .reset(ListBuffer_reset),
    .io_push_ready(ListBuffer_io_push_ready),
    .io_push_valid(ListBuffer_io_push_valid),
    .io_push_bits_index(ListBuffer_io_push_bits_index),
    .io_push_bits_data_data(ListBuffer_io_push_bits_data_data),
    .io_push_bits_data_corrupt(ListBuffer_io_push_bits_data_corrupt),
    .io_valid(ListBuffer_io_valid),
    .io_pop_valid(ListBuffer_io_pop_valid),
    .io_pop_bits(ListBuffer_io_pop_bits),
    .io_data_data(ListBuffer_io_data_data),
    .io_data_corrupt(ListBuffer_io_data_corrupt)
  );
  assign _T_33 = {Queue_io_deq_bits_address[6],Queue_io_deq_bits_address[5],Queue_io_deq_bits_address[4],Queue_io_deq_bits_address[3],Queue_io_deq_bits_address[2],Queue_io_deq_bits_address[1],Queue_io_deq_bits_address[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87056.4]
  assign _T_40 = {Queue_io_deq_bits_address[13],Queue_io_deq_bits_address[12],Queue_io_deq_bits_address[11],Queue_io_deq_bits_address[10],Queue_io_deq_bits_address[9],Queue_io_deq_bits_address[8],Queue_io_deq_bits_address[7],_T_33}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87063.4]
  assign _T_46 = {Queue_io_deq_bits_address[20],Queue_io_deq_bits_address[19],Queue_io_deq_bits_address[18],Queue_io_deq_bits_address[17],Queue_io_deq_bits_address[16],Queue_io_deq_bits_address[15],Queue_io_deq_bits_address[14]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87069.4]
  assign _T_54 = {Queue_io_deq_bits_address[27],Queue_io_deq_bits_address[26],Queue_io_deq_bits_address[25],Queue_io_deq_bits_address[24],Queue_io_deq_bits_address[23],Queue_io_deq_bits_address[22],Queue_io_deq_bits_address[21],_T_46,_T_40}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87077.4]
  assign _T_60 = Queue_io_deq_ready & Queue_io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87083.4]
  assign _T_62 = 13'h3f << Queue_io_deq_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@87085.4]
  assign _T_64 = ~_T_62[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@87087.4]
  assign _T_67 = Queue_io_deq_bits_opcode[0] ? _T_64[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@87090.4]
  assign _T_70 = _T_68 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@87093.4]
  assign _T_71 = _T_68 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@87094.4]
  assign _T_72 = _T_68 == 3'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@87095.4]
  assign _T_73 = _T_67 == 3'h0; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@87096.4]
  assign _T_74 = _T_72 | _T_73; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@87097.4]
  assign _T_76 = ~_T_70; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@87099.4]
  assign _T_77 = _T_67 & _T_76; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@87100.4]
  assign _T_80 = Queue_io_deq_bits_opcode == 3'h4; // @[SinkC.scala 72:34:chipyard.TestHarness.RocketConfig.fir@87106.4]
  assign _T_81 = Queue_io_deq_bits_opcode == 3'h5; // @[SinkC.scala 72:75:chipyard.TestHarness.RocketConfig.fir@87107.4]
  assign _T_82 = _T_80 | _T_81; // @[SinkC.scala 72:58:chipyard.TestHarness.RocketConfig.fir@87108.4]
  assign _GEN_1 = Queue_io_deq_valid ? _T_82 : _T_83; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@87110.4]
  assign _T_85 = Queue_io_deq_valid & Queue_io_deq_bits_corrupt; // @[SinkC.scala 84:23:chipyard.TestHarness.RocketConfig.fir@87114.4]
  assign _T_86 = ~_T_85; // @[SinkC.scala 84:13:chipyard.TestHarness.RocketConfig.fir@87115.4]
  assign _T_88 = _T_86 | reset; // @[SinkC.scala 84:12:chipyard.TestHarness.RocketConfig.fir@87117.4]
  assign _T_89 = ~_T_88; // @[SinkC.scala 84:12:chipyard.TestHarness.RocketConfig.fir@87118.4]
  assign _T_92_ready = Queue_1_io_enq_ready; // @[SinkC.scala 90:22:chipyard.TestHarness.RocketConfig.fir@87129.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@87140.4]
  assign _T_95 = ~_T_71; // @[SinkC.scala 93:34:chipyard.TestHarness.RocketConfig.fir@87148.4]
  assign _T_96 = Queue_io_deq_valid & Queue_io_deq_bits_opcode[0]; // @[SinkC.scala 93:53:chipyard.TestHarness.RocketConfig.fir@87149.4]
  assign _T_97 = _T_95 | _T_96; // @[SinkC.scala 93:41:chipyard.TestHarness.RocketConfig.fir@87150.4]
  assign _T_98 = _GEN_1 & _T_97; // @[SinkC.scala 93:30:chipyard.TestHarness.RocketConfig.fir@87151.4]
  assign _T_93 = _T_92_ready & _T_98; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87142.4]
  assign _GEN_8 = {{2'd0}, _T_92_ready}; // @[SinkC.scala 97:59:chipyard.TestHarness.RocketConfig.fir@87157.4]
  assign _T_101 = _T_77 + _GEN_8; // @[SinkC.scala 97:59:chipyard.TestHarness.RocketConfig.fir@87158.4]
  assign _T_107 = _GEN_1 & Queue_io_deq_valid; // @[SinkC.scala 101:27:chipyard.TestHarness.RocketConfig.fir@87169.4]
  assign _T_108 = _T_71 | _T_74; // @[SinkC.scala 101:48:chipyard.TestHarness.RocketConfig.fir@87170.4]
  assign _T_109 = _T_107 & _T_108; // @[SinkC.scala 101:38:chipyard.TestHarness.RocketConfig.fir@87171.4]
  assign _T_110 = ~Queue_io_deq_bits_opcode[0]; // @[SinkC.scala 101:61:chipyard.TestHarness.RocketConfig.fir@87172.4]
  assign _T_111 = _T_110 | _T_92_ready; // @[SinkC.scala 101:70:chipyard.TestHarness.RocketConfig.fir@87173.4]
  assign _T_174 = ~_GEN_1; // @[SinkC.scala 132:11:chipyard.TestHarness.RocketConfig.fir@87255.4]
  assign _T_175 = _T_174 & Queue_io_deq_valid; // @[SinkC.scala 132:17:chipyard.TestHarness.RocketConfig.fir@87256.4]
  assign _T_176 = _T_175 & _T_71; // @[SinkC.scala 132:28:chipyard.TestHarness.RocketConfig.fir@87257.4]
  assign _T_177 = _T_176 & Queue_io_deq_bits_opcode[0]; // @[SinkC.scala 132:37:chipyard.TestHarness.RocketConfig.fir@87258.4]
  assign _T_136 = ~io_req_ready; // @[SinkC.scala 120:30:chipyard.TestHarness.RocketConfig.fir@87214.4]
  assign _T_137 = _T_71 & _T_136; // @[SinkC.scala 120:27:chipyard.TestHarness.RocketConfig.fir@87215.4]
  assign _T_178 = ~_T_137; // @[SinkC.scala 132:51:chipyard.TestHarness.RocketConfig.fir@87259.4]
  assign _T_179 = _T_177 & _T_178; // @[SinkC.scala 132:48:chipyard.TestHarness.RocketConfig.fir@87260.4]
  assign _T_138 = ~ListBuffer_io_push_ready; // @[SinkC.scala 121:32:chipyard.TestHarness.RocketConfig.fir@87216.4]
  assign _T_139 = Queue_io_deq_bits_opcode[0] & _T_138; // @[SinkC.scala 121:29:chipyard.TestHarness.RocketConfig.fir@87217.4]
  assign _T_180 = ~_T_139; // @[SinkC.scala 132:65:chipyard.TestHarness.RocketConfig.fir@87261.4]
  assign _T_181 = _T_179 & _T_180; // @[SinkC.scala 132:62:chipyard.TestHarness.RocketConfig.fir@87262.4]
  assign _T_121 = ~_T_113; // @[SinkC.scala 117:27:chipyard.TestHarness.RocketConfig.fir@87199.4]
  assign _T_122 = {_T_121, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@87200.4]
  assign _T_124 = _T_121 | _T_122[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@87202.4]
  assign _T_126 = {_T_124, 1'h0}; // @[SinkC.scala 117:35:chipyard.TestHarness.RocketConfig.fir@87204.4]
  assign _T_127 = ~_T_126; // @[SinkC.scala 117:18:chipyard.TestHarness.RocketConfig.fir@87205.4]
  assign _GEN_9 = {{1'd0}, _T_121}; // @[SinkC.scala 117:41:chipyard.TestHarness.RocketConfig.fir@87207.4]
  assign _T_129 = _T_127 & _GEN_9; // @[SinkC.scala 117:41:chipyard.TestHarness.RocketConfig.fir@87207.4]
  assign _GEN_5 = _T_181 ? _T_129 : 3'h0; // @[SinkC.scala 132:77:chipyard.TestHarness.RocketConfig.fir@87263.4]
  assign _T_116 = _T_113 | _GEN_5[1:0]; // @[SinkC.scala 114:21:chipyard.TestHarness.RocketConfig.fir@87193.4]
  assign _T_188 = io_rel_pop_ready & io_rel_pop_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87296.4]
  assign _T_189 = _T_188 & io_rel_pop_bits_last; // @[SinkC.scala 157:29:chipyard.TestHarness.RocketConfig.fir@87297.4]
  assign _T_191 = 2'h1 << io_rel_pop_bits_index[0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@87300.6]
  assign _GEN_7 = _T_189 ? _T_191 : 2'h0; // @[SinkC.scala 157:54:chipyard.TestHarness.RocketConfig.fir@87298.4]
  assign _T_117 = ~_GEN_7; // @[SinkC.scala 114:36:chipyard.TestHarness.RocketConfig.fir@87194.4]
  assign _T_118 = _T_116 & _T_117; // @[SinkC.scala 114:34:chipyard.TestHarness.RocketConfig.fir@87195.4]
  assign _T_119 = &_T_113; // @[SinkC.scala 116:27:chipyard.TestHarness.RocketConfig.fir@87197.4]
  assign _T_120 = ~_T_119; // @[SinkC.scala 116:16:chipyard.TestHarness.RocketConfig.fir@87198.4]
  assign _T_132 = |_T_129[2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@87210.4]
  assign _GEN_10 = {{1'd0}, _T_129[2]}; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@87211.4]
  assign _T_133 = _GEN_10 | _T_129[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@87211.4]
  assign _T_135 = {_T_132,_T_133[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87213.4]
  assign _T_140 = Queue_io_deq_bits_opcode[0] & _T_71; // @[SinkC.scala 122:29:chipyard.TestHarness.RocketConfig.fir@87218.4]
  assign _T_141 = ~_T_120; // @[SinkC.scala 122:41:chipyard.TestHarness.RocketConfig.fir@87219.4]
  assign _T_142 = _T_140 & _T_141; // @[SinkC.scala 122:38:chipyard.TestHarness.RocketConfig.fir@87220.4]
  assign _T_156 = _T_178 & _T_180; // @[SinkC.scala 128:67:chipyard.TestHarness.RocketConfig.fir@87234.4]
  assign _T_157 = ~_T_142; // @[SinkC.scala 128:84:chipyard.TestHarness.RocketConfig.fir@87235.4]
  assign _T_158 = _T_156 & _T_157; // @[SinkC.scala 128:81:chipyard.TestHarness.RocketConfig.fir@87236.4]
  assign _T_164 = _T_176 & _T_180; // @[SinkC.scala 130:47:chipyard.TestHarness.RocketConfig.fir@87243.4]
  assign _T_169 = _T_175 & Queue_io_deq_bits_opcode[0]; // @[SinkC.scala 131:49:chipyard.TestHarness.RocketConfig.fir@87249.4]
  assign _T_171 = _T_169 & _T_178; // @[SinkC.scala 131:60:chipyard.TestHarness.RocketConfig.fir@87251.4]
  assign _GEN_6 = _T_71 ? _T_135 : _T_182; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@87267.4]
  assign _T_186 = ListBuffer_io_valid >> io_rel_pop_bits_index; // @[SinkC.scala 154:43:chipyard.TestHarness.RocketConfig.fir@87292.4]
  assign io_req_valid = _T_164 & _T_157; // @[SinkC.scala 130:18:chipyard.TestHarness.RocketConfig.fir@87246.4]
  assign io_req_bits_opcode = Queue_io_deq_bits_opcode; // @[SinkC.scala 138:24:chipyard.TestHarness.RocketConfig.fir@87278.4]
  assign io_req_bits_param = Queue_io_deq_bits_param; // @[SinkC.scala 139:24:chipyard.TestHarness.RocketConfig.fir@87279.4]
  assign io_req_bits_size = Queue_io_deq_bits_size; // @[SinkC.scala 140:24:chipyard.TestHarness.RocketConfig.fir@87280.4]
  assign io_req_bits_source = Queue_io_deq_bits_source; // @[SinkC.scala 141:24:chipyard.TestHarness.RocketConfig.fir@87281.4]
  assign io_req_bits_tag = _T_54[27:16]; // @[SinkC.scala 144:24:chipyard.TestHarness.RocketConfig.fir@87284.4]
  assign io_req_bits_offset = _T_54[5:0]; // @[SinkC.scala 142:24:chipyard.TestHarness.RocketConfig.fir@87282.4]
  assign io_req_bits_put = {{4'd0}, _GEN_6}; // @[SinkC.scala 145:24:chipyard.TestHarness.RocketConfig.fir@87285.4]
  assign io_req_bits_set = _T_54[15:6]; // @[SinkC.scala 143:24:chipyard.TestHarness.RocketConfig.fir@87283.4]
  assign io_resp_valid = _T_109 & _T_111; // @[SinkC.scala 101:19:chipyard.TestHarness.RocketConfig.fir@87175.4]
  assign io_resp_bits_last = _T_72 | _T_73; // @[SinkC.scala 102:25:chipyard.TestHarness.RocketConfig.fir@87176.4]
  assign io_resp_bits_set = _T_54[15:6]; // @[SinkC.scala 103:25:chipyard.TestHarness.RocketConfig.fir@87177.4]
  assign io_resp_bits_tag = _T_54[27:16]; // @[SinkC.scala 104:25:chipyard.TestHarness.RocketConfig.fir@87178.4]
  assign io_resp_bits_source = Queue_io_deq_bits_source; // @[SinkC.scala 105:25:chipyard.TestHarness.RocketConfig.fir@87179.4]
  assign io_resp_bits_param = Queue_io_deq_bits_param; // @[SinkC.scala 106:25:chipyard.TestHarness.RocketConfig.fir@87180.4]
  assign io_resp_bits_data = Queue_io_deq_bits_opcode[0]; // @[SinkC.scala 107:25:chipyard.TestHarness.RocketConfig.fir@87181.4]
  assign io_c_ready = Queue_io_enq_ready; // @[Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@87022.4]
  assign io_set = Queue_io_deq_valid ? _T_54[15:6] : _T_90; // @[SinkC.scala 86:12:chipyard.TestHarness.RocketConfig.fir@87128.4]
  assign io_bs_adr_valid = Queue_1_io_deq_valid; // @[SinkC.scala 91:15:chipyard.TestHarness.RocketConfig.fir@87141.4]
  assign io_bs_adr_bits_noop = Queue_1_io_deq_bits_noop; // @[SinkC.scala 91:15:chipyard.TestHarness.RocketConfig.fir@87141.4]
  assign io_bs_adr_bits_way = Queue_1_io_deq_bits_way; // @[SinkC.scala 91:15:chipyard.TestHarness.RocketConfig.fir@87141.4]
  assign io_bs_adr_bits_set = Queue_1_io_deq_bits_set; // @[SinkC.scala 91:15:chipyard.TestHarness.RocketConfig.fir@87141.4]
  assign io_bs_adr_bits_beat = Queue_1_io_deq_bits_beat; // @[SinkC.scala 91:15:chipyard.TestHarness.RocketConfig.fir@87141.4]
  assign io_bs_adr_bits_mask = Queue_1_io_deq_bits_mask; // @[SinkC.scala 91:15:chipyard.TestHarness.RocketConfig.fir@87141.4]
  assign io_bs_dat_data = _T_94; // @[SinkC.scala 92:22:chipyard.TestHarness.RocketConfig.fir@87147.4]
  assign io_rel_pop_ready = _T_186[0]; // @[SinkC.scala 154:22:chipyard.TestHarness.RocketConfig.fir@87294.4]
  assign io_rel_beat_data = ListBuffer_io_data_data; // @[SinkC.scala 155:17:chipyard.TestHarness.RocketConfig.fir@87295.4]
  assign io_rel_beat_corrupt = ListBuffer_io_data_corrupt; // @[SinkC.scala 155:17:chipyard.TestHarness.RocketConfig.fir@87295.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@87012.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@87013.4]
  assign Queue_io_enq_valid = io_c_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@87014.4]
  assign Queue_io_enq_bits_opcode = io_c_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87021.4]
  assign Queue_io_enq_bits_param = io_c_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87020.4]
  assign Queue_io_enq_bits_size = io_c_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87019.4]
  assign Queue_io_enq_bits_source = io_c_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87018.4]
  assign Queue_io_enq_bits_address = io_c_bits_address; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87017.4]
  assign Queue_io_enq_bits_data = io_c_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87016.4]
  assign Queue_io_enq_bits_corrupt = io_c_bits_corrupt; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87015.4]
  assign Queue_io_deq_ready = _T_82 ? _T_111 : _T_158; // @[SinkC.scala 128:13:chipyard.TestHarness.RocketConfig.fir@87238.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@87132.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@87133.4]
  assign Queue_1_io_enq_valid = _GEN_1 & _T_97; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@87134.4]
  assign Queue_1_io_enq_bits_noop = ~Queue_io_deq_valid; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87139.4]
  assign Queue_1_io_enq_bits_way = io_way; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87138.4]
  assign Queue_1_io_enq_bits_set = io_set; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87137.4]
  assign Queue_1_io_enq_bits_beat = Queue_io_deq_valid ? _T_77 : _T_102; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87136.4]
  assign Queue_1_io_deq_ready = io_bs_adr_ready; // @[SinkC.scala 91:15:chipyard.TestHarness.RocketConfig.fir@87141.4]
  assign ListBuffer_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@87184.4]
  assign ListBuffer_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@87185.4]
  assign ListBuffer_io_push_valid = _T_171 & _T_157; // @[SinkC.scala 131:29:chipyard.TestHarness.RocketConfig.fir@87254.4]
  assign ListBuffer_io_push_bits_index = _GEN_6[0]; // @[SinkC.scala 147:34:chipyard.TestHarness.RocketConfig.fir@87286.4]
  assign ListBuffer_io_push_bits_data_data = Queue_io_deq_bits_data; // @[SinkC.scala 148:41:chipyard.TestHarness.RocketConfig.fir@87287.4]
  assign ListBuffer_io_push_bits_data_corrupt = Queue_io_deq_bits_corrupt; // @[SinkC.scala 149:41:chipyard.TestHarness.RocketConfig.fir@87288.4]
  assign ListBuffer_io_pop_valid = io_rel_pop_ready & io_rel_pop_valid; // @[SinkC.scala 153:28:chipyard.TestHarness.RocketConfig.fir@87291.4]
  assign ListBuffer_io_pop_bits = io_rel_pop_bits_index[0]; // @[SinkC.scala 152:27:chipyard.TestHarness.RocketConfig.fir@87289.4]
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
  _T_68 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_83 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_90 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  _T_94 = _RAND_3[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_102 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_113 = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_182 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_68 <= 3'h0;
    end else if (_T_60) begin
      if (_T_71) begin
        if (Queue_io_deq_bits_opcode[0]) begin
          _T_68 <= _T_64[5:3];
        end else begin
          _T_68 <= 3'h0;
        end
      end else begin
        _T_68 <= _T_70;
      end
    end
    if (Queue_io_deq_valid) begin
      _T_83 <= _T_82;
    end
    if (Queue_io_deq_valid) begin
      _T_90 <= _T_54[15:6];
    end
    if (_T_93) begin
      _T_94 <= Queue_io_deq_bits_data;
    end
    if (Queue_io_deq_valid) begin
      _T_102 <= _T_101;
    end
    if (reset) begin
      _T_113 <= 2'h0;
    end else begin
      _T_113 <= _T_118;
    end
    if (_T_71) begin
      _T_182 <= _T_135;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_89) begin
          $fwrite(32'h80000002,"Assertion failed: Data poisoning unavailable\n    at SinkC.scala:84 assert (!(c.valid && c.bits.corrupt), \"Data poisoning unavailable\")\n"); // @[SinkC.scala 84:12:chipyard.TestHarness.RocketConfig.fir@87120.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_89) begin
          $fatal; // @[SinkC.scala 84:12:chipyard.TestHarness.RocketConfig.fir@87121.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
