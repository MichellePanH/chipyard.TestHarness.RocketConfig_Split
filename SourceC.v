module SourceC( // @[:chipyard.TestHarness.RocketConfig.fir@84291.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@84292.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@84293.4]
  output        io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input         io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input  [2:0]  io_req_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input  [2:0]  io_req_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input  [2:0]  io_req_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input  [11:0] io_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input  [9:0]  io_req_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input  [2:0]  io_req_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input         io_req_bits_dirty, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input         io_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output        io_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [2:0]  io_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [2:0]  io_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [2:0]  io_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [2:0]  io_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [31:0] io_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [63:0] io_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output        io_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input         io_bs_adr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output        io_bs_adr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [2:0]  io_bs_adr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [9:0]  io_bs_adr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [2:0]  io_bs_adr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input  [63:0] io_bs_dat_data, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [9:0]  io_evict_req_set, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  output [2:0]  io_evict_req_way, // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
  input         io_evict_safe // @[:chipyard.TestHarness.RocketConfig.fir@84294.4]
);
  wire  queue_clock; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire  queue_reset; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire  queue_io_enq_ready; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire  queue_io_enq_valid; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [2:0] queue_io_enq_bits_opcode; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [2:0] queue_io_enq_bits_param; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [2:0] queue_io_enq_bits_source; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [31:0] queue_io_enq_bits_address; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [63:0] queue_io_enq_bits_data; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire  queue_io_deq_ready; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire  queue_io_deq_valid; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [2:0] queue_io_deq_bits_opcode; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [2:0] queue_io_deq_bits_param; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [2:0] queue_io_deq_bits_size; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [2:0] queue_io_deq_bits_source; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [31:0] queue_io_deq_bits_address; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [63:0] queue_io_deq_bits_data; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire  queue_io_deq_bits_corrupt; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  wire [3:0] queue_io_count; // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
  reg [3:0] fill; // @[SourceC.scala 57:21:chipyard.TestHarness.RocketConfig.fir@84303.4]
  reg [31:0] _RAND_0;
  reg  room; // @[SourceC.scala 58:21:chipyard.TestHarness.RocketConfig.fir@84304.4]
  reg [31:0] _RAND_1;
  wire  _T; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84305.4]
  wire  _T_1; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84306.4]
  wire  _T_2; // @[SourceC.scala 59:29:chipyard.TestHarness.RocketConfig.fir@84307.4]
  wire [3:0] _T_5; // @[SourceC.scala 60:23:chipyard.TestHarness.RocketConfig.fir@84311.6]
  wire [3:0] _T_7; // @[SourceC.scala 60:18:chipyard.TestHarness.RocketConfig.fir@84313.6]
  wire  _T_8; // @[SourceC.scala 61:18:chipyard.TestHarness.RocketConfig.fir@84315.6]
  wire  _T_9; // @[SourceC.scala 61:40:chipyard.TestHarness.RocketConfig.fir@84316.6]
  wire  _T_10; // @[SourceC.scala 61:60:chipyard.TestHarness.RocketConfig.fir@84317.6]
  wire  _T_11; // @[SourceC.scala 61:52:chipyard.TestHarness.RocketConfig.fir@84318.6]
  wire  _T_13; // @[SourceC.scala 61:76:chipyard.TestHarness.RocketConfig.fir@84320.6]
  wire  _T_14; // @[SourceC.scala 61:73:chipyard.TestHarness.RocketConfig.fir@84321.6]
  wire  _T_15; // @[SourceC.scala 61:30:chipyard.TestHarness.RocketConfig.fir@84322.6]
  wire  _GEN_1; // @[SourceC.scala 59:54:chipyard.TestHarness.RocketConfig.fir@84308.4]
  wire  _T_16; // @[SourceC.scala 63:35:chipyard.TestHarness.RocketConfig.fir@84325.4]
  wire  _T_17; // @[SourceC.scala 63:16:chipyard.TestHarness.RocketConfig.fir@84326.4]
  wire  _T_19; // @[SourceC.scala 63:10:chipyard.TestHarness.RocketConfig.fir@84328.4]
  wire  _T_20; // @[SourceC.scala 63:10:chipyard.TestHarness.RocketConfig.fir@84329.4]
  reg  busy; // @[SourceC.scala 65:21:chipyard.TestHarness.RocketConfig.fir@84334.4]
  reg [31:0] _RAND_2;
  reg [2:0] beat; // @[SourceC.scala 66:21:chipyard.TestHarness.RocketConfig.fir@84335.4]
  reg [31:0] _RAND_3;
  wire  last; // @[SourceC.scala 67:19:chipyard.TestHarness.RocketConfig.fir@84336.4]
  wire  _T_21; // @[SourceC.scala 68:18:chipyard.TestHarness.RocketConfig.fir@84337.4]
  wire  _T_23; // @[SourceC.scala 68:67:chipyard.TestHarness.RocketConfig.fir@84339.4]
  reg [2:0] _T_24_opcode; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84340.4]
  reg [31:0] _RAND_4;
  reg [2:0] _T_24_param; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84340.4]
  reg [31:0] _RAND_5;
  reg [2:0] _T_24_source; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84340.4]
  reg [31:0] _RAND_6;
  reg [11:0] _T_24_tag; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84340.4]
  reg [31:0] _RAND_7;
  reg [9:0] _T_24_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84340.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_24_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84340.4]
  reg [31:0] _RAND_9;
  wire  _T_25; // @[SourceC.scala 69:41:chipyard.TestHarness.RocketConfig.fir@84351.4]
  wire  _T_26; // @[SourceC.scala 69:49:chipyard.TestHarness.RocketConfig.fir@84352.4]
  wire  want_data; // @[SourceC.scala 69:24:chipyard.TestHarness.RocketConfig.fir@84353.4]
  wire  _T_29; // @[SourceC.scala 76:28:chipyard.TestHarness.RocketConfig.fir@84359.4]
  wire  _T_30; // @[SourceC.scala 76:32:chipyard.TestHarness.RocketConfig.fir@84360.4]
  wire  _GEN_9; // @[SourceC.scala 86:52:chipyard.TestHarness.RocketConfig.fir@84377.4]
  wire  _T_41; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84380.4]
  wire [2:0] _T_43; // @[SourceC.scala 89:18:chipyard.TestHarness.RocketConfig.fir@84386.6]
  wire  _T_45; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84390.4]
  wire  s2_latch; // @[SourceC.scala 92:21:chipyard.TestHarness.RocketConfig.fir@84391.4]
  reg  s2_valid; // @[SourceC.scala 93:25:chipyard.TestHarness.RocketConfig.fir@84392.4]
  reg [31:0] _RAND_10;
  reg [2:0] s2_req_opcode; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84394.4]
  reg [31:0] _RAND_11;
  reg [2:0] s2_req_param; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84394.4]
  reg [31:0] _RAND_12;
  reg [2:0] s2_req_source; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84394.4]
  reg [31:0] _RAND_13;
  reg [11:0] s2_req_tag; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84394.4]
  reg [31:0] _RAND_14;
  reg [9:0] s2_req_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84394.4]
  reg [31:0] _RAND_15;
  reg  s3_valid; // @[SourceC.scala 99:25:chipyard.TestHarness.RocketConfig.fir@84412.4]
  reg [31:0] _RAND_16;
  reg [2:0] s3_req_opcode; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84414.4]
  reg [31:0] _RAND_17;
  reg [2:0] s3_req_param; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84414.4]
  reg [31:0] _RAND_18;
  reg [2:0] s3_req_source; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84414.4]
  reg [31:0] _RAND_19;
  reg [11:0] s3_req_tag; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84414.4]
  reg [31:0] _RAND_20;
  reg [9:0] s3_req_set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84414.4]
  reg [31:0] _RAND_21;
  wire [27:0] _T_68; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84473.4]
  wire [7:0] _T_103; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84508.4]
  wire [15:0] _T_111; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84516.4]
  wire [7:0] _T_118; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84523.4]
  wire [15:0] _T_126; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84531.4]
  wire  _T_128; // @[SourceC.scala 115:10:chipyard.TestHarness.RocketConfig.fir@84536.4]
  wire  c_ready; // @[SourceC.scala 104:15:chipyard.TestHarness.RocketConfig.fir@84432.4 SourceC.scala 118:16:chipyard.TestHarness.RocketConfig.fir@84546.4]
  wire  _T_129; // @[SourceC.scala 115:19:chipyard.TestHarness.RocketConfig.fir@84537.4]
  wire  _T_131; // @[SourceC.scala 115:9:chipyard.TestHarness.RocketConfig.fir@84539.4]
  wire  _T_132; // @[SourceC.scala 115:9:chipyard.TestHarness.RocketConfig.fir@84540.4]
  QueueCompatibility_20 queue ( // @[SourceC.scala 53:21:chipyard.TestHarness.RocketConfig.fir@84299.4]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_opcode(queue_io_enq_bits_opcode),
    .io_enq_bits_param(queue_io_enq_bits_param),
    .io_enq_bits_source(queue_io_enq_bits_source),
    .io_enq_bits_address(queue_io_enq_bits_address),
    .io_enq_bits_data(queue_io_enq_bits_data),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_opcode(queue_io_deq_bits_opcode),
    .io_deq_bits_param(queue_io_deq_bits_param),
    .io_deq_bits_size(queue_io_deq_bits_size),
    .io_deq_bits_source(queue_io_deq_bits_source),
    .io_deq_bits_address(queue_io_deq_bits_address),
    .io_deq_bits_data(queue_io_deq_bits_data),
    .io_deq_bits_corrupt(queue_io_deq_bits_corrupt),
    .io_count(queue_io_count)
  );
  assign _T = queue_io_enq_ready & queue_io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84305.4]
  assign _T_1 = queue_io_deq_ready & queue_io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84306.4]
  assign _T_2 = _T != _T_1; // @[SourceC.scala 59:29:chipyard.TestHarness.RocketConfig.fir@84307.4]
  assign _T_5 = _T ? 4'h1 : 4'hf; // @[SourceC.scala 60:23:chipyard.TestHarness.RocketConfig.fir@84311.6]
  assign _T_7 = fill + _T_5; // @[SourceC.scala 60:18:chipyard.TestHarness.RocketConfig.fir@84313.6]
  assign _T_8 = fill == 4'h0; // @[SourceC.scala 61:18:chipyard.TestHarness.RocketConfig.fir@84315.6]
  assign _T_9 = fill == 4'h1; // @[SourceC.scala 61:40:chipyard.TestHarness.RocketConfig.fir@84316.6]
  assign _T_10 = fill == 4'h2; // @[SourceC.scala 61:60:chipyard.TestHarness.RocketConfig.fir@84317.6]
  assign _T_11 = _T_9 | _T_10; // @[SourceC.scala 61:52:chipyard.TestHarness.RocketConfig.fir@84318.6]
  assign _T_13 = ~_T; // @[SourceC.scala 61:76:chipyard.TestHarness.RocketConfig.fir@84320.6]
  assign _T_14 = _T_11 & _T_13; // @[SourceC.scala 61:73:chipyard.TestHarness.RocketConfig.fir@84321.6]
  assign _T_15 = _T_8 | _T_14; // @[SourceC.scala 61:30:chipyard.TestHarness.RocketConfig.fir@84322.6]
  assign _GEN_1 = _T_2 ? _T_15 : room; // @[SourceC.scala 59:54:chipyard.TestHarness.RocketConfig.fir@84308.4]
  assign _T_16 = queue_io_count <= 4'h1; // @[SourceC.scala 63:35:chipyard.TestHarness.RocketConfig.fir@84325.4]
  assign _T_17 = room == _T_16; // @[SourceC.scala 63:16:chipyard.TestHarness.RocketConfig.fir@84326.4]
  assign _T_19 = _T_17 | reset; // @[SourceC.scala 63:10:chipyard.TestHarness.RocketConfig.fir@84328.4]
  assign _T_20 = ~_T_19; // @[SourceC.scala 63:10:chipyard.TestHarness.RocketConfig.fir@84329.4]
  assign last = &beat; // @[SourceC.scala 67:19:chipyard.TestHarness.RocketConfig.fir@84336.4]
  assign _T_21 = ~busy; // @[SourceC.scala 68:18:chipyard.TestHarness.RocketConfig.fir@84337.4]
  assign _T_23 = _T_21 & io_req_valid; // @[SourceC.scala 68:67:chipyard.TestHarness.RocketConfig.fir@84339.4]
  assign _T_25 = io_req_valid & room; // @[SourceC.scala 69:41:chipyard.TestHarness.RocketConfig.fir@84351.4]
  assign _T_26 = _T_25 & io_req_bits_dirty; // @[SourceC.scala 69:49:chipyard.TestHarness.RocketConfig.fir@84352.4]
  assign want_data = busy | _T_26; // @[SourceC.scala 69:24:chipyard.TestHarness.RocketConfig.fir@84353.4]
  assign _T_29 = |beat; // @[SourceC.scala 76:28:chipyard.TestHarness.RocketConfig.fir@84359.4]
  assign _T_30 = _T_29 | io_evict_safe; // @[SourceC.scala 76:32:chipyard.TestHarness.RocketConfig.fir@84360.4]
  assign _GEN_9 = _T_26 | busy; // @[SourceC.scala 86:52:chipyard.TestHarness.RocketConfig.fir@84377.4]
  assign _T_41 = io_bs_adr_ready & io_bs_adr_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84380.4]
  assign _T_43 = beat + 3'h1; // @[SourceC.scala 89:18:chipyard.TestHarness.RocketConfig.fir@84386.6]
  assign _T_45 = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84390.4]
  assign s2_latch = want_data ? _T_41 : _T_45; // @[SourceC.scala 92:21:chipyard.TestHarness.RocketConfig.fir@84391.4]
  assign _T_68 = {s3_req_tag,s3_req_set,6'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84473.4]
  assign _T_103 = {_T_68[7],_T_68[6],_T_68[5],_T_68[4],_T_68[3],_T_68[2],_T_68[1],_T_68[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84508.4]
  assign _T_111 = {_T_68[15],_T_68[14],_T_68[13],_T_68[12],_T_68[11],_T_68[10],_T_68[9],_T_68[8],_T_103}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84516.4]
  assign _T_118 = {_T_68[23],_T_68[22],_T_68[21],_T_68[20],_T_68[19],_T_68[18],_T_68[17],_T_68[16]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84523.4]
  assign _T_126 = {4'h0,_T_68[27],_T_68[26],_T_68[25],_T_68[24],_T_118}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84531.4]
  assign _T_128 = ~s3_valid; // @[SourceC.scala 115:10:chipyard.TestHarness.RocketConfig.fir@84536.4]
  assign c_ready = queue_io_enq_ready; // @[SourceC.scala 104:15:chipyard.TestHarness.RocketConfig.fir@84432.4 SourceC.scala 118:16:chipyard.TestHarness.RocketConfig.fir@84546.4]
  assign _T_129 = _T_128 | c_ready; // @[SourceC.scala 115:19:chipyard.TestHarness.RocketConfig.fir@84537.4]
  assign _T_131 = _T_129 | reset; // @[SourceC.scala 115:9:chipyard.TestHarness.RocketConfig.fir@84539.4]
  assign _T_132 = ~_T_131; // @[SourceC.scala 115:9:chipyard.TestHarness.RocketConfig.fir@84540.4]
  assign io_req_ready = _T_21 & room; // @[SourceC.scala 71:16:chipyard.TestHarness.RocketConfig.fir@84356.4]
  assign io_c_valid = queue_io_deq_valid; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
  assign io_c_bits_opcode = queue_io_deq_bits_opcode; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
  assign io_c_bits_param = queue_io_deq_bits_param; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
  assign io_c_bits_size = queue_io_deq_bits_size; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
  assign io_c_bits_source = queue_io_deq_bits_source; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
  assign io_c_bits_address = queue_io_deq_bits_address; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
  assign io_c_bits_data = queue_io_deq_bits_data; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
  assign io_c_bits_corrupt = queue_io_deq_bits_corrupt; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
  assign io_bs_adr_valid = _T_30 & want_data; // @[SourceC.scala 76:19:chipyard.TestHarness.RocketConfig.fir@84362.4]
  assign io_bs_adr_bits_way = _T_21 ? io_req_bits_way : _T_24_way; // @[SourceC.scala 78:23:chipyard.TestHarness.RocketConfig.fir@84364.4]
  assign io_bs_adr_bits_set = _T_21 ? io_req_bits_set : _T_24_set; // @[SourceC.scala 79:23:chipyard.TestHarness.RocketConfig.fir@84365.4]
  assign io_bs_adr_bits_beat = beat; // @[SourceC.scala 80:23:chipyard.TestHarness.RocketConfig.fir@84366.4]
  assign io_evict_req_set = _T_21 ? io_req_bits_set : _T_24_set; // @[SourceC.scala 73:20:chipyard.TestHarness.RocketConfig.fir@84357.4]
  assign io_evict_req_way = _T_21 ? io_req_bits_way : _T_24_way; // @[SourceC.scala 74:20:chipyard.TestHarness.RocketConfig.fir@84358.4]
  assign queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@84301.4]
  assign queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@84302.4]
  assign queue_io_enq_valid = s3_valid; // @[SourceC.scala 118:16:chipyard.TestHarness.RocketConfig.fir@84546.4]
  assign queue_io_enq_bits_opcode = s3_req_opcode; // @[SourceC.scala 118:16:chipyard.TestHarness.RocketConfig.fir@84546.4]
  assign queue_io_enq_bits_param = s3_req_param; // @[SourceC.scala 118:16:chipyard.TestHarness.RocketConfig.fir@84546.4]
  assign queue_io_enq_bits_source = s3_req_source; // @[SourceC.scala 118:16:chipyard.TestHarness.RocketConfig.fir@84546.4]
  assign queue_io_enq_bits_address = {_T_126,_T_111}; // @[SourceC.scala 118:16:chipyard.TestHarness.RocketConfig.fir@84546.4]
  assign queue_io_enq_bits_data = io_bs_dat_data; // @[SourceC.scala 118:16:chipyard.TestHarness.RocketConfig.fir@84546.4]
  assign queue_io_deq_ready = io_c_ready; // @[SourceC.scala 119:8:chipyard.TestHarness.RocketConfig.fir@84547.4]
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
  fill = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  room = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  busy = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  beat = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_24_opcode = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_24_param = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_24_source = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_24_tag = _RAND_7[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_24_set = _RAND_8[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_24_way = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  s2_valid = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  s2_req_opcode = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  s2_req_param = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  s2_req_source = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s2_req_tag = _RAND_14[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  s2_req_set = _RAND_15[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s3_valid = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s3_req_opcode = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  s3_req_param = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  s3_req_source = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  s3_req_tag = _RAND_20[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  s3_req_set = _RAND_21[9:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      fill <= 4'h0;
    end else if (_T_2) begin
      fill <= _T_7;
    end
    room <= reset | _GEN_1;
    if (reset) begin
      busy <= 1'h0;
    end else if (_T_41) begin
      if (last) begin
        busy <= 1'h0;
      end else begin
        busy <= _GEN_9;
      end
    end else begin
      busy <= _GEN_9;
    end
    if (reset) begin
      beat <= 3'h0;
    end else if (_T_41) begin
      beat <= _T_43;
    end
    if (_T_23) begin
      _T_24_opcode <= io_req_bits_opcode;
    end
    if (_T_23) begin
      _T_24_param <= io_req_bits_param;
    end
    if (_T_23) begin
      _T_24_source <= io_req_bits_source;
    end
    if (_T_23) begin
      _T_24_tag <= io_req_bits_tag;
    end
    if (_T_23) begin
      _T_24_set <= io_req_bits_set;
    end
    if (_T_23) begin
      _T_24_way <= io_req_bits_way;
    end
    if (want_data) begin
      s2_valid <= _T_41;
    end else begin
      s2_valid <= _T_45;
    end
    if (s2_latch) begin
      if (_T_21) begin
        s2_req_opcode <= io_req_bits_opcode;
      end else begin
        s2_req_opcode <= _T_24_opcode;
      end
    end
    if (s2_latch) begin
      if (_T_21) begin
        s2_req_param <= io_req_bits_param;
      end else begin
        s2_req_param <= _T_24_param;
      end
    end
    if (s2_latch) begin
      if (_T_21) begin
        s2_req_source <= io_req_bits_source;
      end else begin
        s2_req_source <= _T_24_source;
      end
    end
    if (s2_latch) begin
      if (_T_21) begin
        s2_req_tag <= io_req_bits_tag;
      end else begin
        s2_req_tag <= _T_24_tag;
      end
    end
    if (s2_latch) begin
      if (_T_21) begin
        s2_req_set <= io_req_bits_set;
      end else begin
        s2_req_set <= _T_24_set;
      end
    end
    s3_valid <= s2_valid;
    if (s2_valid) begin
      s3_req_opcode <= s2_req_opcode;
    end
    if (s2_valid) begin
      s3_req_param <= s2_req_param;
    end
    if (s2_valid) begin
      s3_req_source <= s2_req_source;
    end
    if (s2_valid) begin
      s3_req_tag <= s2_req_tag;
    end
    if (s2_valid) begin
      s3_req_set <= s2_req_set;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_20) begin
          $fwrite(32'h80000002,"Assertion failed\n    at SourceC.scala:63 assert (room === queue.io.count <= UInt(1))\n"); // @[SourceC.scala 63:10:chipyard.TestHarness.RocketConfig.fir@84331.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_20) begin
          $fatal; // @[SourceC.scala 63:10:chipyard.TestHarness.RocketConfig.fir@84332.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_132) begin
          $fwrite(32'h80000002,"Assertion failed\n    at SourceC.scala:115 assert(!c.valid || c.ready)\n"); // @[SourceC.scala 115:9:chipyard.TestHarness.RocketConfig.fir@84542.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_132) begin
          $fatal; // @[SourceC.scala 115:9:chipyard.TestHarness.RocketConfig.fir@84543.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
