module SinkA( // @[:chipyard.TestHarness.RocketConfig.fir@86508.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@86509.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@86510.4]
  input         io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output        io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [2:0]  io_req_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [2:0]  io_req_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [2:0]  io_req_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [2:0]  io_req_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [11:0] io_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [5:0]  io_req_bits_offset, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [5:0]  io_req_bits_put, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [9:0]  io_req_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output        io_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input         io_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input  [2:0]  io_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input  [2:0]  io_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input  [2:0]  io_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input  [2:0]  io_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input  [31:0] io_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input  [7:0]  io_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input  [63:0] io_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input         io_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output        io_pb_pop_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input         io_pb_pop_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input  [5:0]  io_pb_pop_bits_index, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  input         io_pb_pop_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [63:0] io_pb_beat_data, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output [7:0]  io_pb_beat_mask, // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
  output        io_pb_beat_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@86511.4]
);
  wire  putbuffer_clock; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire  putbuffer_reset; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire  putbuffer_io_push_ready; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire  putbuffer_io_push_valid; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire [5:0] putbuffer_io_push_bits_index; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire [63:0] putbuffer_io_push_bits_data_data; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire [7:0] putbuffer_io_push_bits_data_mask; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire  putbuffer_io_push_bits_data_corrupt; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire [39:0] putbuffer_io_valid; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire  putbuffer_io_pop_valid; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire [5:0] putbuffer_io_pop_bits; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire [63:0] putbuffer_io_data_data; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire [7:0] putbuffer_io_data_mask; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  wire  putbuffer_io_data_corrupt; // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
  reg [39:0] lists; // @[SinkA.scala 51:22:chipyard.TestHarness.RocketConfig.fir@86520.4]
  reg [63:0] _RAND_0;
  reg [2:0] _T_61; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@86592.4]
  reg [31:0] _RAND_1;
  wire  first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@86595.4]
  wire  _T_94; // @[SinkA.scala 80:17:chipyard.TestHarness.RocketConfig.fir@86636.4]
  wire  hasData; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@86607.4]
  wire  _T_95; // @[SinkA.scala 80:26:chipyard.TestHarness.RocketConfig.fir@86637.4]
  wire  _T_72; // @[SinkA.scala 69:28:chipyard.TestHarness.RocketConfig.fir@86608.4]
  wire  req_block; // @[SinkA.scala 69:25:chipyard.TestHarness.RocketConfig.fir@86609.4]
  wire  _T_96; // @[SinkA.scala 80:40:chipyard.TestHarness.RocketConfig.fir@86638.4]
  wire  _T_97; // @[SinkA.scala 80:37:chipyard.TestHarness.RocketConfig.fir@86639.4]
  wire  _T_73; // @[SinkA.scala 70:30:chipyard.TestHarness.RocketConfig.fir@86610.4]
  wire  buf_block; // @[SinkA.scala 70:27:chipyard.TestHarness.RocketConfig.fir@86611.4]
  wire  _T_98; // @[SinkA.scala 80:54:chipyard.TestHarness.RocketConfig.fir@86640.4]
  wire  _T_99; // @[SinkA.scala 80:51:chipyard.TestHarness.RocketConfig.fir@86641.4]
  wire [39:0] _T_4; // @[SinkA.scala 58:25:chipyard.TestHarness.RocketConfig.fir@86533.4]
  wire [40:0] _T_5; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86534.4]
  wire [39:0] _T_7; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86536.4]
  wire [41:0] _T_8; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86537.4]
  wire [39:0] _T_10; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86539.4]
  wire [43:0] _T_11; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86540.4]
  wire [39:0] _T_13; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86542.4]
  wire [47:0] _T_14; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86543.4]
  wire [39:0] _T_16; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86545.4]
  wire [55:0] _T_17; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86546.4]
  wire [39:0] _T_19; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86548.4]
  wire [71:0] _T_20; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86549.4]
  wire [39:0] _T_22; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86551.4]
  wire [40:0] _T_24; // @[SinkA.scala 58:33:chipyard.TestHarness.RocketConfig.fir@86553.4]
  wire [40:0] _T_25; // @[SinkA.scala 58:16:chipyard.TestHarness.RocketConfig.fir@86554.4]
  wire [40:0] _GEN_4; // @[SinkA.scala 58:39:chipyard.TestHarness.RocketConfig.fir@86556.4]
  wire [40:0] freeOH; // @[SinkA.scala 58:39:chipyard.TestHarness.RocketConfig.fir@86556.4]
  wire [40:0] _GEN_1; // @[SinkA.scala 80:66:chipyard.TestHarness.RocketConfig.fir@86642.4]
  wire [39:0] lists_set; // @[:chipyard.TestHarness.RocketConfig.fir@86521.4 :chipyard.TestHarness.RocketConfig.fir@86523.4 SinkA.scala 80:78:chipyard.TestHarness.RocketConfig.fir@86643.6]
  wire [39:0] _T; // @[SinkA.scala 55:19:chipyard.TestHarness.RocketConfig.fir@86527.4]
  wire  _T_162; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86736.4]
  wire  _T_163; // @[SinkA.scala 107:26:chipyard.TestHarness.RocketConfig.fir@86737.4]
  wire [63:0] _T_165; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@86740.6]
  wire [39:0] lists_clr; // @[SinkA.scala 107:50:chipyard.TestHarness.RocketConfig.fir@86738.4]
  wire [39:0] _T_1; // @[SinkA.scala 55:34:chipyard.TestHarness.RocketConfig.fir@86528.4]
  wire [39:0] _T_2; // @[SinkA.scala 55:32:chipyard.TestHarness.RocketConfig.fir@86529.4]
  wire  _T_3; // @[SinkA.scala 57:25:chipyard.TestHarness.RocketConfig.fir@86531.4]
  wire  free; // @[SinkA.scala 57:14:chipyard.TestHarness.RocketConfig.fir@86532.4]
  wire  _T_29; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86559.4]
  wire [31:0] _GEN_5; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86560.4]
  wire [31:0] _T_30; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86560.4]
  wire  _T_33; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86563.4]
  wire [15:0] _T_34; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86564.4]
  wire  _T_37; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86567.4]
  wire [7:0] _T_38; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86568.4]
  wire  _T_41; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86571.4]
  wire [3:0] _T_42; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86572.4]
  wire  _T_45; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86575.4]
  wire [1:0] _T_46; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86576.4]
  wire [5:0] freeIdx; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86582.4]
  wire  _T_52; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86583.4]
  wire [12:0] _T_54; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@86585.4]
  wire [5:0] _T_56; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@86587.4]
  wire [2:0] _T_63; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@86594.4]
  wire  _T_74; // @[SinkA.scala 71:27:chipyard.TestHarness.RocketConfig.fir@86612.4]
  wire  _T_75; // @[SinkA.scala 71:39:chipyard.TestHarness.RocketConfig.fir@86613.4]
  wire  set_block; // @[SinkA.scala 71:36:chipyard.TestHarness.RocketConfig.fir@86614.4]
  wire  _T_81; // @[SinkA.scala 77:25:chipyard.TestHarness.RocketConfig.fir@86620.4]
  wire  _T_82; // @[SinkA.scala 77:42:chipyard.TestHarness.RocketConfig.fir@86621.4]
  wire  _T_86; // @[SinkA.scala 78:36:chipyard.TestHarness.RocketConfig.fir@86626.4]
  wire  _T_89; // @[SinkA.scala 79:38:chipyard.TestHarness.RocketConfig.fir@86630.4]
  wire  _T_91; // @[SinkA.scala 79:49:chipyard.TestHarness.RocketConfig.fir@86632.4]
  wire [6:0] _T_133; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86678.4]
  wire [13:0] _T_140; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86685.4]
  wire [6:0] _T_146; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86691.4]
  wire [27:0] _T_154; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86699.4]
  reg [5:0] _T_157; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@86705.4]
  reg [31:0] _RAND_2;
  wire [39:0] _T_160; // @[SinkA.scala 104:40:chipyard.TestHarness.RocketConfig.fir@86732.4]
  ListBuffer putbuffer ( // @[SinkA.scala 50:25:chipyard.TestHarness.RocketConfig.fir@86516.4]
    .clock(putbuffer_clock),
    .reset(putbuffer_reset),
    .io_push_ready(putbuffer_io_push_ready),
    .io_push_valid(putbuffer_io_push_valid),
    .io_push_bits_index(putbuffer_io_push_bits_index),
    .io_push_bits_data_data(putbuffer_io_push_bits_data_data),
    .io_push_bits_data_mask(putbuffer_io_push_bits_data_mask),
    .io_push_bits_data_corrupt(putbuffer_io_push_bits_data_corrupt),
    .io_valid(putbuffer_io_valid),
    .io_pop_valid(putbuffer_io_pop_valid),
    .io_pop_bits(putbuffer_io_pop_bits),
    .io_data_data(putbuffer_io_data_data),
    .io_data_mask(putbuffer_io_data_mask),
    .io_data_corrupt(putbuffer_io_data_corrupt)
  );
  assign first = _T_61 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@86595.4]
  assign _T_94 = io_a_valid & first; // @[SinkA.scala 80:17:chipyard.TestHarness.RocketConfig.fir@86636.4]
  assign hasData = ~io_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@86607.4]
  assign _T_95 = _T_94 & hasData; // @[SinkA.scala 80:26:chipyard.TestHarness.RocketConfig.fir@86637.4]
  assign _T_72 = ~io_req_ready; // @[SinkA.scala 69:28:chipyard.TestHarness.RocketConfig.fir@86608.4]
  assign req_block = first & _T_72; // @[SinkA.scala 69:25:chipyard.TestHarness.RocketConfig.fir@86609.4]
  assign _T_96 = ~req_block; // @[SinkA.scala 80:40:chipyard.TestHarness.RocketConfig.fir@86638.4]
  assign _T_97 = _T_95 & _T_96; // @[SinkA.scala 80:37:chipyard.TestHarness.RocketConfig.fir@86639.4]
  assign _T_73 = ~putbuffer_io_push_ready; // @[SinkA.scala 70:30:chipyard.TestHarness.RocketConfig.fir@86610.4]
  assign buf_block = hasData & _T_73; // @[SinkA.scala 70:27:chipyard.TestHarness.RocketConfig.fir@86611.4]
  assign _T_98 = ~buf_block; // @[SinkA.scala 80:54:chipyard.TestHarness.RocketConfig.fir@86640.4]
  assign _T_99 = _T_97 & _T_98; // @[SinkA.scala 80:51:chipyard.TestHarness.RocketConfig.fir@86641.4]
  assign _T_4 = ~lists; // @[SinkA.scala 58:25:chipyard.TestHarness.RocketConfig.fir@86533.4]
  assign _T_5 = {_T_4, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86534.4]
  assign _T_7 = _T_4 | _T_5[39:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86536.4]
  assign _T_8 = {_T_7, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86537.4]
  assign _T_10 = _T_7 | _T_8[39:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86539.4]
  assign _T_11 = {_T_10, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86540.4]
  assign _T_13 = _T_10 | _T_11[39:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86542.4]
  assign _T_14 = {_T_13, 8'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86543.4]
  assign _T_16 = _T_13 | _T_14[39:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86545.4]
  assign _T_17 = {_T_16, 16'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86546.4]
  assign _T_19 = _T_16 | _T_17[39:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86548.4]
  assign _T_20 = {_T_19, 32'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86549.4]
  assign _T_22 = _T_19 | _T_20[39:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86551.4]
  assign _T_24 = {_T_22, 1'h0}; // @[SinkA.scala 58:33:chipyard.TestHarness.RocketConfig.fir@86553.4]
  assign _T_25 = ~_T_24; // @[SinkA.scala 58:16:chipyard.TestHarness.RocketConfig.fir@86554.4]
  assign _GEN_4 = {{1'd0}, _T_4}; // @[SinkA.scala 58:39:chipyard.TestHarness.RocketConfig.fir@86556.4]
  assign freeOH = _T_25 & _GEN_4; // @[SinkA.scala 58:39:chipyard.TestHarness.RocketConfig.fir@86556.4]
  assign _GEN_1 = _T_99 ? freeOH : 41'h0; // @[SinkA.scala 80:66:chipyard.TestHarness.RocketConfig.fir@86642.4]
  assign lists_set = _GEN_1[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@86521.4 :chipyard.TestHarness.RocketConfig.fir@86523.4 SinkA.scala 80:78:chipyard.TestHarness.RocketConfig.fir@86643.6]
  assign _T = lists | lists_set; // @[SinkA.scala 55:19:chipyard.TestHarness.RocketConfig.fir@86527.4]
  assign _T_162 = io_pb_pop_ready & io_pb_pop_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86736.4]
  assign _T_163 = _T_162 & io_pb_pop_bits_last; // @[SinkA.scala 107:26:chipyard.TestHarness.RocketConfig.fir@86737.4]
  assign _T_165 = 64'h1 << io_pb_pop_bits_index; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@86740.6]
  assign lists_clr = _T_163 ? _T_165[39:0] : 40'h0; // @[SinkA.scala 107:50:chipyard.TestHarness.RocketConfig.fir@86738.4]
  assign _T_1 = ~lists_clr; // @[SinkA.scala 55:34:chipyard.TestHarness.RocketConfig.fir@86528.4]
  assign _T_2 = _T & _T_1; // @[SinkA.scala 55:32:chipyard.TestHarness.RocketConfig.fir@86529.4]
  assign _T_3 = &lists; // @[SinkA.scala 57:25:chipyard.TestHarness.RocketConfig.fir@86531.4]
  assign free = ~_T_3; // @[SinkA.scala 57:14:chipyard.TestHarness.RocketConfig.fir@86532.4]
  assign _T_29 = |freeOH[40:32]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86559.4]
  assign _GEN_5 = {{23'd0}, freeOH[40:32]}; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86560.4]
  assign _T_30 = _GEN_5 | freeOH[31:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86560.4]
  assign _T_33 = |_T_30[31:16]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86563.4]
  assign _T_34 = _T_30[31:16] | _T_30[15:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86564.4]
  assign _T_37 = |_T_34[15:8]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86567.4]
  assign _T_38 = _T_34[15:8] | _T_34[7:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86568.4]
  assign _T_41 = |_T_38[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86571.4]
  assign _T_42 = _T_38[7:4] | _T_38[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86572.4]
  assign _T_45 = |_T_42[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86575.4]
  assign _T_46 = _T_42[3:2] | _T_42[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86576.4]
  assign freeIdx = {_T_29,_T_33,_T_37,_T_41,_T_45,_T_46[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86582.4]
  assign _T_52 = io_a_ready & io_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86583.4]
  assign _T_54 = 13'h3f << io_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@86585.4]
  assign _T_56 = ~_T_54[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@86587.4]
  assign _T_63 = _T_61 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@86594.4]
  assign _T_74 = hasData & first; // @[SinkA.scala 71:27:chipyard.TestHarness.RocketConfig.fir@86612.4]
  assign _T_75 = ~free; // @[SinkA.scala 71:39:chipyard.TestHarness.RocketConfig.fir@86613.4]
  assign set_block = _T_74 & _T_75; // @[SinkA.scala 71:36:chipyard.TestHarness.RocketConfig.fir@86614.4]
  assign _T_81 = _T_96 & _T_98; // @[SinkA.scala 77:25:chipyard.TestHarness.RocketConfig.fir@86620.4]
  assign _T_82 = ~set_block; // @[SinkA.scala 77:42:chipyard.TestHarness.RocketConfig.fir@86621.4]
  assign _T_86 = _T_94 & _T_98; // @[SinkA.scala 78:36:chipyard.TestHarness.RocketConfig.fir@86626.4]
  assign _T_89 = io_a_valid & hasData; // @[SinkA.scala 79:38:chipyard.TestHarness.RocketConfig.fir@86630.4]
  assign _T_91 = _T_89 & _T_96; // @[SinkA.scala 79:49:chipyard.TestHarness.RocketConfig.fir@86632.4]
  assign _T_133 = {io_a_bits_address[6],io_a_bits_address[5],io_a_bits_address[4],io_a_bits_address[3],io_a_bits_address[2],io_a_bits_address[1],io_a_bits_address[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86678.4]
  assign _T_140 = {io_a_bits_address[13],io_a_bits_address[12],io_a_bits_address[11],io_a_bits_address[10],io_a_bits_address[9],io_a_bits_address[8],io_a_bits_address[7],_T_133}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86685.4]
  assign _T_146 = {io_a_bits_address[20],io_a_bits_address[19],io_a_bits_address[18],io_a_bits_address[17],io_a_bits_address[16],io_a_bits_address[15],io_a_bits_address[14]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86691.4]
  assign _T_154 = {io_a_bits_address[27],io_a_bits_address[26],io_a_bits_address[25],io_a_bits_address[24],io_a_bits_address[23],io_a_bits_address[22],io_a_bits_address[21],_T_146,_T_140}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86699.4]
  assign _T_160 = putbuffer_io_valid >> io_pb_pop_bits_index; // @[SinkA.scala 104:40:chipyard.TestHarness.RocketConfig.fir@86732.4]
  assign io_req_valid = _T_86 & _T_82; // @[SinkA.scala 78:16:chipyard.TestHarness.RocketConfig.fir@86629.4]
  assign io_req_bits_opcode = io_a_bits_opcode; // @[SinkA.scala 87:22:chipyard.TestHarness.RocketConfig.fir@86717.4]
  assign io_req_bits_param = io_a_bits_param; // @[SinkA.scala 88:22:chipyard.TestHarness.RocketConfig.fir@86718.4]
  assign io_req_bits_size = io_a_bits_size; // @[SinkA.scala 89:22:chipyard.TestHarness.RocketConfig.fir@86719.4]
  assign io_req_bits_source = io_a_bits_source; // @[SinkA.scala 90:22:chipyard.TestHarness.RocketConfig.fir@86720.4]
  assign io_req_bits_tag = _T_154[27:16]; // @[SinkA.scala 93:22:chipyard.TestHarness.RocketConfig.fir@86723.4]
  assign io_req_bits_offset = _T_154[5:0]; // @[SinkA.scala 91:22:chipyard.TestHarness.RocketConfig.fir@86721.4]
  assign io_req_bits_put = first ? freeIdx : _T_157; // @[SinkA.scala 94:22:chipyard.TestHarness.RocketConfig.fir@86724.4]
  assign io_req_bits_set = _T_154[15:6]; // @[SinkA.scala 92:22:chipyard.TestHarness.RocketConfig.fir@86722.4]
  assign io_a_ready = _T_81 & _T_82; // @[SinkA.scala 77:11:chipyard.TestHarness.RocketConfig.fir@86623.4]
  assign io_pb_pop_ready = _T_160[0]; // @[SinkA.scala 104:19:chipyard.TestHarness.RocketConfig.fir@86734.4]
  assign io_pb_beat_data = putbuffer_io_data_data; // @[SinkA.scala 105:14:chipyard.TestHarness.RocketConfig.fir@86735.4]
  assign io_pb_beat_mask = putbuffer_io_data_mask; // @[SinkA.scala 105:14:chipyard.TestHarness.RocketConfig.fir@86735.4]
  assign io_pb_beat_corrupt = putbuffer_io_data_corrupt; // @[SinkA.scala 105:14:chipyard.TestHarness.RocketConfig.fir@86735.4]
  assign putbuffer_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@86518.4]
  assign putbuffer_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@86519.4]
  assign putbuffer_io_push_valid = _T_91 & _T_82; // @[SinkA.scala 79:27:chipyard.TestHarness.RocketConfig.fir@86635.4]
  assign putbuffer_io_push_bits_index = first ? freeIdx : _T_157; // @[SinkA.scala 96:32:chipyard.TestHarness.RocketConfig.fir@86725.4]
  assign putbuffer_io_push_bits_data_data = io_a_bits_data; // @[SinkA.scala 97:39:chipyard.TestHarness.RocketConfig.fir@86726.4]
  assign putbuffer_io_push_bits_data_mask = io_a_bits_mask; // @[SinkA.scala 98:39:chipyard.TestHarness.RocketConfig.fir@86727.4]
  assign putbuffer_io_push_bits_data_corrupt = io_a_bits_corrupt; // @[SinkA.scala 99:39:chipyard.TestHarness.RocketConfig.fir@86728.4]
  assign putbuffer_io_pop_valid = io_pb_pop_ready & io_pb_pop_valid; // @[SinkA.scala 103:26:chipyard.TestHarness.RocketConfig.fir@86731.4]
  assign putbuffer_io_pop_bits = io_pb_pop_bits_index; // @[SinkA.scala 102:25:chipyard.TestHarness.RocketConfig.fir@86729.4]
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
  _RAND_0 = {2{`RANDOM}};
  lists = _RAND_0[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_61 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_157 = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      lists <= 40'h0;
    end else begin
      lists <= _T_2;
    end
    if (reset) begin
      _T_61 <= 3'h0;
    end else if (_T_52) begin
      if (first) begin
        if (hasData) begin
          _T_61 <= _T_56[5:3];
        end else begin
          _T_61 <= 3'h0;
        end
      end else begin
        _T_61 <= _T_63;
      end
    end
    if (first) begin
      _T_157 <= freeIdx;
    end
  end
endmodule
