module TLToAXI4( // @[:chipyard.TestHarness.RocketConfig.fir@77608.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@77609.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@77610.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [2:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [3:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [31:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [2:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_out_aw_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_out_aw_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_aw_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [31:0] auto_out_aw_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [7:0]  auto_out_aw_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [2:0]  auto_out_aw_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_out_aw_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_aw_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [2:0]  auto_out_aw_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_aw_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_aw_bits_echo_tl_state_size, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_aw_bits_echo_tl_state_source, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_out_w_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_out_w_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [63:0] auto_out_w_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [7:0]  auto_out_w_bits_strb, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_out_w_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [3:0]  auto_out_b_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [3:0]  auto_out_b_bits_echo_tl_state_size, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [3:0]  auto_out_b_bits_echo_tl_state_source, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_out_ar_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_out_ar_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_ar_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [31:0] auto_out_ar_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [7:0]  auto_out_ar_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [2:0]  auto_out_ar_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_out_ar_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_ar_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [2:0]  auto_out_ar_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_ar_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_ar_bits_echo_tl_state_size, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output [3:0]  auto_out_ar_bits_echo_tl_state_source, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  output        auto_out_r_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_out_r_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [3:0]  auto_out_r_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [63:0] auto_out_r_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [3:0]  auto_out_r_bits_echo_tl_state_size, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input  [3:0]  auto_out_r_bits_echo_tl_state_source, // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
  input         auto_out_r_bits_last // @[:chipyard.TestHarness.RocketConfig.fir@77611.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [3:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire [3:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire [63:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire [7:0] Queue_io_enq_bits_strb; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire  Queue_io_enq_bits_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire [63:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire [7:0] Queue_io_deq_bits_strb; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire  Queue_io_deq_bits_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [3:0] Queue_1_io_enq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [31:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [3:0] Queue_1_io_enq_bits_echo_tl_state_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [3:0] Queue_1_io_enq_bits_echo_tl_state_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  Queue_1_io_enq_bits_wen; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [3:0] Queue_1_io_deq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [31:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  Queue_1_io_deq_bits_lock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [3:0] Queue_1_io_deq_bits_cache; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [2:0] Queue_1_io_deq_bits_prot; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [3:0] Queue_1_io_deq_bits_qos; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [3:0] Queue_1_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire [3:0] Queue_1_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  Queue_1_io_deq_bits_wen; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
  wire  _T_7; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@77685.4]
  reg  _T_361; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@78270.4]
  reg [31:0] _RAND_0;
  wire  _T_363; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78272.4]
  reg  _T_333; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@78229.4]
  reg [31:0] _RAND_1;
  wire  _T_335; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78231.4]
  reg  _T_305; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@78188.4]
  reg [31:0] _RAND_2;
  wire  _T_307; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78190.4]
  reg  _T_277; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@78147.4]
  reg [31:0] _RAND_3;
  wire  _T_279; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78149.4]
  reg  _T_249; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@78106.4]
  reg [31:0] _RAND_4;
  wire  _T_251; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78108.4]
  reg  _T_221; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@78065.4]
  reg [31:0] _RAND_5;
  wire  _T_223; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78067.4]
  reg  _T_193; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@78024.4]
  reg [31:0] _RAND_6;
  wire  _T_195; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78026.4]
  reg  _T_165; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@77983.4]
  reg [31:0] _RAND_7;
  wire  _T_167; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@77985.4]
  reg  _T_137; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@77942.4]
  reg [31:0] _RAND_8;
  wire  _T_139; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@77944.4]
  reg  _T_109; // @[ToAXI4.scala 251:28:chipyard.TestHarness.RocketConfig.fir@77901.4]
  reg [31:0] _RAND_9;
  wire  _T_111; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@77903.4]
  wire  _GEN_13; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _GEN_14; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _GEN_15; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _GEN_16; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _GEN_17; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _GEN_18; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _GEN_19; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _GEN_20; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _GEN_21; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  reg [2:0] _T_17; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@77695.4]
  reg [31:0] _RAND_10;
  wire  _T_20; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@77698.4]
  wire  _T_46; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  wire  _T_47; // @[ToAXI4.scala 199:21:chipyard.TestHarness.RocketConfig.fir@77801.4]
  reg  _T_36; // @[ToAXI4.scala 164:30:chipyard.TestHarness.RocketConfig.fir@77773.4]
  reg [31:0] _RAND_11;
  wire  _T_28_ready; // @[ToAXI4.scala 150:25:chipyard.TestHarness.RocketConfig.fir@77709.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@77748.4]
  wire  _T_48; // @[ToAXI4.scala 199:52:chipyard.TestHarness.RocketConfig.fir@77802.4]
  wire  _T_29_ready; // @[ToAXI4.scala 151:23:chipyard.TestHarness.RocketConfig.fir@77711.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@77720.4]
  wire  _T_49; // @[ToAXI4.scala 199:70:chipyard.TestHarness.RocketConfig.fir@77803.4]
  wire  _T_50; // @[ToAXI4.scala 199:34:chipyard.TestHarness.RocketConfig.fir@77804.4]
  wire  _T_51; // @[ToAXI4.scala 199:28:chipyard.TestHarness.RocketConfig.fir@77805.4]
  wire  _T_8; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77686.4]
  wire [12:0] _T_10; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@77688.4]
  wire [5:0] _T_12; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@77690.4]
  wire [2:0] _T_16; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@77694.4]
  wire [2:0] _T_19; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@77697.4]
  wire  _T_21; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@77699.4]
  wire  _T_22; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@77700.4]
  wire  _T_23; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@77701.4]
  wire  _T_31_bits_wen; // @[Decoupled.scala 308:19:chipyard.TestHarness.RocketConfig.fir@77749.4 Decoupled.scala 309:14:chipyard.TestHarness.RocketConfig.fir@77750.4]
  wire  _T_32; // @[ToAXI4.scala 158:42:chipyard.TestHarness.RocketConfig.fir@77766.4]
  wire  _T_31_valid; // @[Decoupled.scala 308:19:chipyard.TestHarness.RocketConfig.fir@77749.4 Decoupled.scala 310:15:chipyard.TestHarness.RocketConfig.fir@77762.4]
  wire  _T_38; // @[ToAXI4.scala 165:38:chipyard.TestHarness.RocketConfig.fir@77776.6]
  wire [3:0] _GEN_3; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [3:0] _GEN_4; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [3:0] _GEN_5; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [3:0] _GEN_6; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [3:0] _GEN_7; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [3:0] _GEN_8; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [3:0] _GEN_9; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [3:0] _GEN_10; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [3:0] _GEN_11; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  wire [17:0] _T_40; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@77783.4]
  wire [10:0] _T_42; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@77785.4]
  wire  _T_44; // @[ToAXI4.scala 172:31:chipyard.TestHarness.RocketConfig.fir@77788.4]
  wire  _T_53; // @[ToAXI4.scala 200:31:chipyard.TestHarness.RocketConfig.fir@77808.4]
  wire  _T_54; // @[ToAXI4.scala 200:61:chipyard.TestHarness.RocketConfig.fir@77809.4]
  wire  _T_55; // @[ToAXI4.scala 200:69:chipyard.TestHarness.RocketConfig.fir@77810.4]
  wire  _T_56; // @[ToAXI4.scala 200:51:chipyard.TestHarness.RocketConfig.fir@77811.4]
  wire  _T_57; // @[ToAXI4.scala 200:45:chipyard.TestHarness.RocketConfig.fir@77812.4]
  wire  _T_60; // @[ToAXI4.scala 202:43:chipyard.TestHarness.RocketConfig.fir@77816.4]
  reg  _T_63; // @[ToAXI4.scala 209:30:chipyard.TestHarness.RocketConfig.fir@77823.4]
  reg [31:0] _RAND_12;
  wire  _T_64; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77824.4]
  wire  _T_65; // @[ToAXI4.scala 210:42:chipyard.TestHarness.RocketConfig.fir@77826.6]
  wire  _T_66; // @[ToAXI4.scala 212:32:chipyard.TestHarness.RocketConfig.fir@77829.4]
  wire  _T_67; // @[ToAXI4.scala 215:36:chipyard.TestHarness.RocketConfig.fir@77831.4]
  wire  _T_69; // @[ToAXI4.scala 216:24:chipyard.TestHarness.RocketConfig.fir@77834.4]
  reg  _T_70; // @[ToAXI4.scala 221:28:chipyard.TestHarness.RocketConfig.fir@77836.4]
  reg [31:0] _RAND_13;
  wire  _GEN_23; // @[ToAXI4.scala 222:27:chipyard.TestHarness.RocketConfig.fir@77838.4]
  wire  _T_72; // @[ToAXI4.scala 223:39:chipyard.TestHarness.RocketConfig.fir@77841.4]
  reg  _T_73; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@77842.4]
  reg [31:0] _RAND_14;
  wire  _GEN_24; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@77843.4]
  wire  _T_75; // @[ToAXI4.scala 224:39:chipyard.TestHarness.RocketConfig.fir@77847.4]
  wire  _T_76; // @[ToAXI4.scala 225:39:chipyard.TestHarness.RocketConfig.fir@77848.4]
  wire  _T_77; // @[ToAXI4.scala 227:100:chipyard.TestHarness.RocketConfig.fir@77849.4]
  wire [15:0] _T_82; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@77874.4]
  wire [3:0] _T_94; // @[ToAXI4.scala 240:31:chipyard.TestHarness.RocketConfig.fir@77886.4]
  wire [15:0] _T_96; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@77888.4]
  wire  _T_108; // @[ToAXI4.scala 241:23:chipyard.TestHarness.RocketConfig.fir@77900.4]
  wire  _T_112; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77904.4]
  wire  _T_113; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@77905.4]
  wire  _T_114; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@77906.4]
  wire  _T_115; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77907.4]
  wire  _T_116; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@77908.4]
  wire  _T_118; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@77910.4]
  wire  _T_120; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@77912.4]
  wire  _T_121; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@77914.4]
  wire  _T_123; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@77916.4]
  wire  _T_125; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77918.4]
  wire  _T_126; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77919.4]
  wire  _T_127; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@77924.4]
  wire  _T_129; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@77926.4]
  wire  _T_131; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77928.4]
  wire  _T_132; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77929.4]
  wire  _T_141; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@77946.4]
  wire  _T_142; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@77947.4]
  wire  _T_144; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@77949.4]
  wire  _T_146; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@77951.4]
  wire  _T_148; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@77953.4]
  wire  _T_149; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@77955.4]
  wire  _T_151; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@77957.4]
  wire  _T_153; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77959.4]
  wire  _T_154; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77960.4]
  wire  _T_155; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@77965.4]
  wire  _T_157; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@77967.4]
  wire  _T_159; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77969.4]
  wire  _T_160; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77970.4]
  wire  _T_169; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@77987.4]
  wire  _T_170; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@77988.4]
  wire  _T_172; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@77990.4]
  wire  _T_174; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@77992.4]
  wire  _T_176; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@77994.4]
  wire  _T_177; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@77996.4]
  wire  _T_179; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@77998.4]
  wire  _T_181; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78000.4]
  wire  _T_182; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78001.4]
  wire  _T_183; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78006.4]
  wire  _T_185; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78008.4]
  wire  _T_187; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78010.4]
  wire  _T_188; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78011.4]
  wire  _T_197; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78028.4]
  wire  _T_198; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78029.4]
  wire  _T_200; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78031.4]
  wire  _T_202; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78033.4]
  wire  _T_204; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78035.4]
  wire  _T_205; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78037.4]
  wire  _T_207; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78039.4]
  wire  _T_209; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78041.4]
  wire  _T_210; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78042.4]
  wire  _T_211; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78047.4]
  wire  _T_213; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78049.4]
  wire  _T_215; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78051.4]
  wire  _T_216; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78052.4]
  wire  _T_225; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78069.4]
  wire  _T_226; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78070.4]
  wire  _T_228; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78072.4]
  wire  _T_230; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78074.4]
  wire  _T_232; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78076.4]
  wire  _T_233; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78078.4]
  wire  _T_235; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78080.4]
  wire  _T_237; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78082.4]
  wire  _T_238; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78083.4]
  wire  _T_239; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78088.4]
  wire  _T_241; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78090.4]
  wire  _T_243; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78092.4]
  wire  _T_244; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78093.4]
  wire  _T_253; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78110.4]
  wire  _T_254; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78111.4]
  wire  _T_256; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78113.4]
  wire  _T_258; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78115.4]
  wire  _T_260; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78117.4]
  wire  _T_261; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78119.4]
  wire  _T_263; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78121.4]
  wire  _T_265; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78123.4]
  wire  _T_266; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78124.4]
  wire  _T_267; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78129.4]
  wire  _T_269; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78131.4]
  wire  _T_271; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78133.4]
  wire  _T_272; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78134.4]
  wire  _T_281; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78151.4]
  wire  _T_282; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78152.4]
  wire  _T_284; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78154.4]
  wire  _T_286; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78156.4]
  wire  _T_288; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78158.4]
  wire  _T_289; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78160.4]
  wire  _T_291; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78162.4]
  wire  _T_293; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78164.4]
  wire  _T_294; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78165.4]
  wire  _T_295; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78170.4]
  wire  _T_297; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78172.4]
  wire  _T_299; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78174.4]
  wire  _T_300; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78175.4]
  wire  _T_309; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78192.4]
  wire  _T_310; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78193.4]
  wire  _T_312; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78195.4]
  wire  _T_314; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78197.4]
  wire  _T_316; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78199.4]
  wire  _T_317; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78201.4]
  wire  _T_319; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78203.4]
  wire  _T_321; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78205.4]
  wire  _T_322; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78206.4]
  wire  _T_323; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78211.4]
  wire  _T_325; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78213.4]
  wire  _T_327; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78215.4]
  wire  _T_328; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78216.4]
  wire  _T_337; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78233.4]
  wire  _T_338; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78234.4]
  wire  _T_340; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78236.4]
  wire  _T_342; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78238.4]
  wire  _T_344; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78240.4]
  wire  _T_345; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78242.4]
  wire  _T_347; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78244.4]
  wire  _T_349; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78246.4]
  wire  _T_350; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78247.4]
  wire  _T_351; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78252.4]
  wire  _T_353; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78254.4]
  wire  _T_355; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78256.4]
  wire  _T_356; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78257.4]
  wire  _T_365; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78274.4]
  wire  _T_366; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78275.4]
  wire  _T_368; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78277.4]
  wire  _T_370; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78279.4]
  wire  _T_372; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78281.4]
  wire  _T_373; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78283.4]
  wire  _T_375; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78285.4]
  wire  _T_377; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78287.4]
  wire  _T_378; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78288.4]
  wire  _T_379; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78293.4]
  wire  _T_381; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78295.4]
  wire  _T_383; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78297.4]
  wire  _T_384; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78298.4]
  TLMonitor_37 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@77618.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_io_in_a_bits_corrupt),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  Queue_13 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77713.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_strb(Queue_io_enq_bits_strb),
    .io_enq_bits_last(Queue_io_enq_bits_last),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_strb(Queue_io_deq_bits_strb),
    .io_deq_bits_last(Queue_io_deq_bits_last)
  );
  Queue_14 Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@77732.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_id(Queue_1_io_enq_bits_id),
    .io_enq_bits_addr(Queue_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_echo_tl_state_size(Queue_1_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(Queue_1_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_wen(Queue_1_io_enq_bits_wen),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_id(Queue_1_io_deq_bits_id),
    .io_deq_bits_addr(Queue_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_1_io_deq_bits_burst),
    .io_deq_bits_lock(Queue_1_io_deq_bits_lock),
    .io_deq_bits_cache(Queue_1_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_1_io_deq_bits_prot),
    .io_deq_bits_qos(Queue_1_io_deq_bits_qos),
    .io_deq_bits_echo_tl_state_size(Queue_1_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(Queue_1_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_wen(Queue_1_io_deq_bits_wen)
  );
  assign _T_7 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@77685.4]
  assign _T_363 = ~_T_361; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78272.4]
  assign _T_335 = ~_T_333; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78231.4]
  assign _T_307 = ~_T_305; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78190.4]
  assign _T_279 = ~_T_277; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78149.4]
  assign _T_251 = ~_T_249; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78108.4]
  assign _T_223 = ~_T_221; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78067.4]
  assign _T_195 = ~_T_193; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@78026.4]
  assign _T_167 = ~_T_165; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@77985.4]
  assign _T_139 = ~_T_137; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@77944.4]
  assign _T_111 = ~_T_109; // @[ToAXI4.scala 253:26:chipyard.TestHarness.RocketConfig.fir@77903.4]
  assign _GEN_13 = 4'h1 == auto_in_a_bits_source ? _T_137 : _T_109; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _GEN_14 = 4'h2 == auto_in_a_bits_source ? _T_165 : _GEN_13; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _GEN_15 = 4'h3 == auto_in_a_bits_source ? _T_193 : _GEN_14; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _GEN_16 = 4'h4 == auto_in_a_bits_source ? _T_221 : _GEN_15; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _GEN_17 = 4'h5 == auto_in_a_bits_source ? _T_249 : _GEN_16; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _GEN_18 = 4'h6 == auto_in_a_bits_source ? _T_277 : _GEN_17; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _GEN_19 = 4'h7 == auto_in_a_bits_source ? _T_305 : _GEN_18; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _GEN_20 = 4'h8 == auto_in_a_bits_source ? _T_333 : _GEN_19; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _GEN_21 = 4'h9 == auto_in_a_bits_source ? _T_361 : _GEN_20; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _T_20 = _T_17 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@77698.4]
  assign _T_46 = _GEN_21 & _T_20; // @[ToAXI4.scala 198:49:chipyard.TestHarness.RocketConfig.fir@77800.4]
  assign _T_47 = ~_T_46; // @[ToAXI4.scala 199:21:chipyard.TestHarness.RocketConfig.fir@77801.4]
  assign _T_28_ready = Queue_1_io_enq_ready; // @[ToAXI4.scala 150:25:chipyard.TestHarness.RocketConfig.fir@77709.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@77748.4]
  assign _T_48 = _T_36 | _T_28_ready; // @[ToAXI4.scala 199:52:chipyard.TestHarness.RocketConfig.fir@77802.4]
  assign _T_29_ready = Queue_io_enq_ready; // @[ToAXI4.scala 151:23:chipyard.TestHarness.RocketConfig.fir@77711.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@77720.4]
  assign _T_49 = _T_48 & _T_29_ready; // @[ToAXI4.scala 199:70:chipyard.TestHarness.RocketConfig.fir@77803.4]
  assign _T_50 = _T_7 ? _T_49 : _T_28_ready; // @[ToAXI4.scala 199:34:chipyard.TestHarness.RocketConfig.fir@77804.4]
  assign _T_51 = _T_47 & _T_50; // @[ToAXI4.scala 199:28:chipyard.TestHarness.RocketConfig.fir@77805.4]
  assign _T_8 = _T_51 & auto_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77686.4]
  assign _T_10 = 13'h3f << auto_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@77688.4]
  assign _T_12 = ~_T_10[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@77690.4]
  assign _T_16 = _T_7 ? _T_12[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@77694.4]
  assign _T_19 = _T_17 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@77697.4]
  assign _T_21 = _T_17 == 3'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@77699.4]
  assign _T_22 = _T_16 == 3'h0; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@77700.4]
  assign _T_23 = _T_21 | _T_22; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@77701.4]
  assign _T_31_bits_wen = Queue_1_io_deq_bits_wen; // @[Decoupled.scala 308:19:chipyard.TestHarness.RocketConfig.fir@77749.4 Decoupled.scala 309:14:chipyard.TestHarness.RocketConfig.fir@77750.4]
  assign _T_32 = ~_T_31_bits_wen; // @[ToAXI4.scala 158:42:chipyard.TestHarness.RocketConfig.fir@77766.4]
  assign _T_31_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 308:19:chipyard.TestHarness.RocketConfig.fir@77749.4 Decoupled.scala 310:15:chipyard.TestHarness.RocketConfig.fir@77762.4]
  assign _T_38 = ~_T_23; // @[ToAXI4.scala 165:38:chipyard.TestHarness.RocketConfig.fir@77776.6]
  assign _GEN_3 = 4'h1 == auto_in_a_bits_source ? 4'h1 : 4'h0; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _GEN_4 = 4'h2 == auto_in_a_bits_source ? 4'h2 : _GEN_3; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _GEN_5 = 4'h3 == auto_in_a_bits_source ? 4'h3 : _GEN_4; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _GEN_6 = 4'h4 == auto_in_a_bits_source ? 4'h4 : _GEN_5; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _GEN_7 = 4'h5 == auto_in_a_bits_source ? 4'h5 : _GEN_6; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _GEN_8 = 4'h6 == auto_in_a_bits_source ? 4'h6 : _GEN_7; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _GEN_9 = 4'h7 == auto_in_a_bits_source ? 4'h7 : _GEN_8; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _GEN_10 = 4'h8 == auto_in_a_bits_source ? 4'h8 : _GEN_9; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _GEN_11 = 4'h9 == auto_in_a_bits_source ? 4'h9 : _GEN_10; // @[ToAXI4.scala 169:17:chipyard.TestHarness.RocketConfig.fir@77780.4]
  assign _T_40 = 18'h7ff << auto_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@77783.4]
  assign _T_42 = ~_T_40[10:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@77785.4]
  assign _T_44 = auto_in_a_bits_size >= 3'h3; // @[ToAXI4.scala 172:31:chipyard.TestHarness.RocketConfig.fir@77788.4]
  assign _T_53 = _T_47 & auto_in_a_valid; // @[ToAXI4.scala 200:31:chipyard.TestHarness.RocketConfig.fir@77808.4]
  assign _T_54 = ~_T_36; // @[ToAXI4.scala 200:61:chipyard.TestHarness.RocketConfig.fir@77809.4]
  assign _T_55 = _T_54 & _T_29_ready; // @[ToAXI4.scala 200:69:chipyard.TestHarness.RocketConfig.fir@77810.4]
  assign _T_56 = _T_7 ? _T_55 : 1'h1; // @[ToAXI4.scala 200:51:chipyard.TestHarness.RocketConfig.fir@77811.4]
  assign _T_57 = _T_53 & _T_56; // @[ToAXI4.scala 200:45:chipyard.TestHarness.RocketConfig.fir@77812.4]
  assign _T_60 = _T_53 & _T_7; // @[ToAXI4.scala 202:43:chipyard.TestHarness.RocketConfig.fir@77816.4]
  assign _T_64 = auto_in_d_ready & auto_out_r_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77824.4]
  assign _T_65 = ~auto_out_r_bits_last; // @[ToAXI4.scala 210:42:chipyard.TestHarness.RocketConfig.fir@77826.6]
  assign _T_66 = auto_out_r_valid | _T_63; // @[ToAXI4.scala 212:32:chipyard.TestHarness.RocketConfig.fir@77829.4]
  assign _T_67 = ~_T_66; // @[ToAXI4.scala 215:36:chipyard.TestHarness.RocketConfig.fir@77831.4]
  assign _T_69 = _T_66 ? auto_out_r_valid : auto_out_b_valid; // @[ToAXI4.scala 216:24:chipyard.TestHarness.RocketConfig.fir@77834.4]
  assign _GEN_23 = _T_64 ? auto_out_r_bits_last : _T_70; // @[ToAXI4.scala 222:27:chipyard.TestHarness.RocketConfig.fir@77838.4]
  assign _T_72 = auto_out_r_bits_resp == 2'h3; // @[ToAXI4.scala 223:39:chipyard.TestHarness.RocketConfig.fir@77841.4]
  assign _GEN_24 = _T_70 ? _T_72 : _T_73; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@77843.4]
  assign _T_75 = auto_out_r_bits_resp != 2'h0; // @[ToAXI4.scala 224:39:chipyard.TestHarness.RocketConfig.fir@77847.4]
  assign _T_76 = auto_out_b_bits_resp != 2'h0; // @[ToAXI4.scala 225:39:chipyard.TestHarness.RocketConfig.fir@77848.4]
  assign _T_77 = _T_75 | _GEN_24; // @[ToAXI4.scala 227:100:chipyard.TestHarness.RocketConfig.fir@77849.4]
  assign _T_82 = 16'h1 << _GEN_11; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@77874.4]
  assign _T_94 = _T_66 ? auto_out_r_bits_id : auto_out_b_bits_id; // @[ToAXI4.scala 240:31:chipyard.TestHarness.RocketConfig.fir@77886.4]
  assign _T_96 = 16'h1 << _T_94; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@77888.4]
  assign _T_108 = _T_66 ? auto_out_r_bits_last : 1'h1; // @[ToAXI4.scala 241:23:chipyard.TestHarness.RocketConfig.fir@77900.4]
  assign _T_112 = _T_28_ready & _T_57; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77904.4]
  assign _T_113 = _T_82[0] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@77905.4]
  assign _T_114 = _T_96[0] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@77906.4]
  assign _T_115 = auto_in_d_ready & _T_69; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77907.4]
  assign _T_116 = _T_114 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@77908.4]
  assign _T_118 = _T_109 + _T_113; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@77910.4]
  assign _T_120 = _T_118 - _T_116; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@77912.4]
  assign _T_121 = ~_T_116; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@77914.4]
  assign _T_123 = _T_121 | _T_109; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@77916.4]
  assign _T_125 = _T_123 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77918.4]
  assign _T_126 = ~_T_125; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77919.4]
  assign _T_127 = ~_T_113; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@77924.4]
  assign _T_129 = _T_127 | _T_111; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@77926.4]
  assign _T_131 = _T_129 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77928.4]
  assign _T_132 = ~_T_131; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77929.4]
  assign _T_141 = _T_82[1] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@77946.4]
  assign _T_142 = _T_96[1] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@77947.4]
  assign _T_144 = _T_142 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@77949.4]
  assign _T_146 = _T_137 + _T_141; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@77951.4]
  assign _T_148 = _T_146 - _T_144; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@77953.4]
  assign _T_149 = ~_T_144; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@77955.4]
  assign _T_151 = _T_149 | _T_137; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@77957.4]
  assign _T_153 = _T_151 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77959.4]
  assign _T_154 = ~_T_153; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77960.4]
  assign _T_155 = ~_T_141; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@77965.4]
  assign _T_157 = _T_155 | _T_139; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@77967.4]
  assign _T_159 = _T_157 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77969.4]
  assign _T_160 = ~_T_159; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77970.4]
  assign _T_169 = _T_82[2] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@77987.4]
  assign _T_170 = _T_96[2] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@77988.4]
  assign _T_172 = _T_170 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@77990.4]
  assign _T_174 = _T_165 + _T_169; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@77992.4]
  assign _T_176 = _T_174 - _T_172; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@77994.4]
  assign _T_177 = ~_T_172; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@77996.4]
  assign _T_179 = _T_177 | _T_165; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@77998.4]
  assign _T_181 = _T_179 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78000.4]
  assign _T_182 = ~_T_181; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78001.4]
  assign _T_183 = ~_T_169; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78006.4]
  assign _T_185 = _T_183 | _T_167; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78008.4]
  assign _T_187 = _T_185 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78010.4]
  assign _T_188 = ~_T_187; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78011.4]
  assign _T_197 = _T_82[3] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78028.4]
  assign _T_198 = _T_96[3] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78029.4]
  assign _T_200 = _T_198 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78031.4]
  assign _T_202 = _T_193 + _T_197; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78033.4]
  assign _T_204 = _T_202 - _T_200; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78035.4]
  assign _T_205 = ~_T_200; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78037.4]
  assign _T_207 = _T_205 | _T_193; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78039.4]
  assign _T_209 = _T_207 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78041.4]
  assign _T_210 = ~_T_209; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78042.4]
  assign _T_211 = ~_T_197; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78047.4]
  assign _T_213 = _T_211 | _T_195; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78049.4]
  assign _T_215 = _T_213 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78051.4]
  assign _T_216 = ~_T_215; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78052.4]
  assign _T_225 = _T_82[4] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78069.4]
  assign _T_226 = _T_96[4] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78070.4]
  assign _T_228 = _T_226 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78072.4]
  assign _T_230 = _T_221 + _T_225; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78074.4]
  assign _T_232 = _T_230 - _T_228; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78076.4]
  assign _T_233 = ~_T_228; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78078.4]
  assign _T_235 = _T_233 | _T_221; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78080.4]
  assign _T_237 = _T_235 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78082.4]
  assign _T_238 = ~_T_237; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78083.4]
  assign _T_239 = ~_T_225; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78088.4]
  assign _T_241 = _T_239 | _T_223; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78090.4]
  assign _T_243 = _T_241 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78092.4]
  assign _T_244 = ~_T_243; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78093.4]
  assign _T_253 = _T_82[5] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78110.4]
  assign _T_254 = _T_96[5] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78111.4]
  assign _T_256 = _T_254 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78113.4]
  assign _T_258 = _T_249 + _T_253; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78115.4]
  assign _T_260 = _T_258 - _T_256; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78117.4]
  assign _T_261 = ~_T_256; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78119.4]
  assign _T_263 = _T_261 | _T_249; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78121.4]
  assign _T_265 = _T_263 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78123.4]
  assign _T_266 = ~_T_265; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78124.4]
  assign _T_267 = ~_T_253; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78129.4]
  assign _T_269 = _T_267 | _T_251; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78131.4]
  assign _T_271 = _T_269 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78133.4]
  assign _T_272 = ~_T_271; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78134.4]
  assign _T_281 = _T_82[6] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78151.4]
  assign _T_282 = _T_96[6] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78152.4]
  assign _T_284 = _T_282 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78154.4]
  assign _T_286 = _T_277 + _T_281; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78156.4]
  assign _T_288 = _T_286 - _T_284; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78158.4]
  assign _T_289 = ~_T_284; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78160.4]
  assign _T_291 = _T_289 | _T_277; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78162.4]
  assign _T_293 = _T_291 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78164.4]
  assign _T_294 = ~_T_293; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78165.4]
  assign _T_295 = ~_T_281; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78170.4]
  assign _T_297 = _T_295 | _T_279; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78172.4]
  assign _T_299 = _T_297 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78174.4]
  assign _T_300 = ~_T_299; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78175.4]
  assign _T_309 = _T_82[7] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78192.4]
  assign _T_310 = _T_96[7] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78193.4]
  assign _T_312 = _T_310 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78195.4]
  assign _T_314 = _T_305 + _T_309; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78197.4]
  assign _T_316 = _T_314 - _T_312; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78199.4]
  assign _T_317 = ~_T_312; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78201.4]
  assign _T_319 = _T_317 | _T_305; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78203.4]
  assign _T_321 = _T_319 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78205.4]
  assign _T_322 = ~_T_321; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78206.4]
  assign _T_323 = ~_T_309; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78211.4]
  assign _T_325 = _T_323 | _T_307; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78213.4]
  assign _T_327 = _T_325 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78215.4]
  assign _T_328 = ~_T_327; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78216.4]
  assign _T_337 = _T_82[8] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78233.4]
  assign _T_338 = _T_96[8] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78234.4]
  assign _T_340 = _T_338 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78236.4]
  assign _T_342 = _T_333 + _T_337; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78238.4]
  assign _T_344 = _T_342 - _T_340; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78240.4]
  assign _T_345 = ~_T_340; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78242.4]
  assign _T_347 = _T_345 | _T_333; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78244.4]
  assign _T_349 = _T_347 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78246.4]
  assign _T_350 = ~_T_349; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78247.4]
  assign _T_351 = ~_T_337; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78252.4]
  assign _T_353 = _T_351 | _T_335; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78254.4]
  assign _T_355 = _T_353 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78256.4]
  assign _T_356 = ~_T_355; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78257.4]
  assign _T_365 = _T_82[9] & _T_112; // @[ToAXI4.scala 255:22:chipyard.TestHarness.RocketConfig.fir@78274.4]
  assign _T_366 = _T_96[9] & _T_108; // @[ToAXI4.scala 256:22:chipyard.TestHarness.RocketConfig.fir@78275.4]
  assign _T_368 = _T_366 & _T_115; // @[ToAXI4.scala 256:32:chipyard.TestHarness.RocketConfig.fir@78277.4]
  assign _T_370 = _T_361 + _T_365; // @[ToAXI4.scala 257:24:chipyard.TestHarness.RocketConfig.fir@78279.4]
  assign _T_372 = _T_370 - _T_368; // @[ToAXI4.scala 257:37:chipyard.TestHarness.RocketConfig.fir@78281.4]
  assign _T_373 = ~_T_368; // @[ToAXI4.scala 259:17:chipyard.TestHarness.RocketConfig.fir@78283.4]
  assign _T_375 = _T_373 | _T_361; // @[ToAXI4.scala 259:22:chipyard.TestHarness.RocketConfig.fir@78285.4]
  assign _T_377 = _T_375 | reset; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78287.4]
  assign _T_378 = ~_T_377; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78288.4]
  assign _T_379 = ~_T_365; // @[ToAXI4.scala 260:17:chipyard.TestHarness.RocketConfig.fir@78293.4]
  assign _T_381 = _T_379 | _T_363; // @[ToAXI4.scala 260:22:chipyard.TestHarness.RocketConfig.fir@78295.4]
  assign _T_383 = _T_381 | reset; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78297.4]
  assign _T_384 = ~_T_383; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78298.4]
  assign auto_in_a_ready = _T_47 & _T_50; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@77644.4]
  assign auto_in_d_valid = _T_66 ? auto_out_r_valid : auto_out_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@77644.4]
  assign auto_in_d_bits_opcode = _T_66 ? 3'h1 : 3'h0; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@77644.4]
  assign auto_in_d_bits_size = _T_66 ? auto_out_r_bits_echo_tl_state_size[2:0] : auto_out_b_bits_echo_tl_state_size[2:0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@77644.4]
  assign auto_in_d_bits_source = _T_66 ? auto_out_r_bits_echo_tl_state_source : auto_out_b_bits_echo_tl_state_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@77644.4]
  assign auto_in_d_bits_denied = _T_66 ? _GEN_24 : _T_76; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@77644.4]
  assign auto_in_d_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@77644.4]
  assign auto_in_d_bits_corrupt = _T_66 & _T_77; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@77644.4]
  assign auto_out_aw_valid = _T_31_valid & _T_31_bits_wen; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_addr = Queue_1_io_deq_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_len = Queue_1_io_deq_bits_len; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_burst = Queue_1_io_deq_bits_burst; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_lock = Queue_1_io_deq_bits_lock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_cache = Queue_1_io_deq_bits_cache; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_prot = Queue_1_io_deq_bits_prot; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_qos = Queue_1_io_deq_bits_qos; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_echo_tl_state_size = Queue_1_io_deq_bits_echo_tl_state_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_aw_bits_echo_tl_state_source = Queue_1_io_deq_bits_echo_tl_state_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_w_valid = Queue_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_w_bits_data = Queue_io_deq_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_w_bits_strb = Queue_io_deq_bits_strb; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_w_bits_last = Queue_io_deq_bits_last; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_b_ready = auto_in_d_ready & _T_67; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_valid = _T_31_valid & _T_32; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_addr = Queue_1_io_deq_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_len = Queue_1_io_deq_bits_len; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_burst = Queue_1_io_deq_bits_burst; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_lock = Queue_1_io_deq_bits_lock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_cache = Queue_1_io_deq_bits_cache; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_prot = Queue_1_io_deq_bits_prot; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_qos = Queue_1_io_deq_bits_qos; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_echo_tl_state_size = Queue_1_io_deq_bits_echo_tl_state_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_ar_bits_echo_tl_state_source = Queue_1_io_deq_bits_echo_tl_state_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign auto_out_r_ready = auto_in_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@77643.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@77619.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@77620.4]
  assign TLMonitor_io_in_a_ready = _T_47 & _T_50; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77640.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77639.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77638.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77637.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77636.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77635.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77634.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77633.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77631.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77630.4]
  assign TLMonitor_io_in_d_valid = _T_66 ? auto_out_r_valid : auto_out_b_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77629.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_66 ? 3'h1 : 3'h0; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77628.4]
  assign TLMonitor_io_in_d_bits_size = _T_66 ? auto_out_r_bits_echo_tl_state_size[2:0] : auto_out_b_bits_echo_tl_state_size[2:0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77626.4]
  assign TLMonitor_io_in_d_bits_source = _T_66 ? auto_out_r_bits_echo_tl_state_source : auto_out_b_bits_echo_tl_state_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77625.4]
  assign TLMonitor_io_in_d_bits_denied = _T_66 ? _GEN_24 : _T_76; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77623.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_66 & _T_77; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@77621.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@77714.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@77715.4]
  assign Queue_io_enq_valid = _T_60 & _T_48; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@77716.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77719.4]
  assign Queue_io_enq_bits_strb = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77718.4]
  assign Queue_io_enq_bits_last = _T_21 | _T_22; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77717.4]
  assign Queue_io_deq_ready = auto_out_w_ready; // @[Decoupled.scala 311:15:chipyard.TestHarness.RocketConfig.fir@77726.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@77733.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@77734.4]
  assign Queue_1_io_enq_valid = _T_53 & _T_56; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@77735.4]
  assign Queue_1_io_enq_bits_id = 4'h9 == auto_in_a_bits_source ? 4'h9 : _GEN_10; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77747.4]
  assign Queue_1_io_enq_bits_addr = auto_in_a_bits_address; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77746.4]
  assign Queue_1_io_enq_bits_len = _T_42[10:3]; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77745.4]
  assign Queue_1_io_enq_bits_size = _T_44 ? 3'h3 : auto_in_a_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77744.4]
  assign Queue_1_io_enq_bits_echo_tl_state_size = {{1'd0}, auto_in_a_bits_size}; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77738.4]
  assign Queue_1_io_enq_bits_echo_tl_state_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77737.4]
  assign Queue_1_io_enq_bits_wen = ~auto_in_a_bits_opcode[2]; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@77736.4]
  assign Queue_1_io_deq_ready = _T_31_bits_wen ? auto_out_aw_ready : auto_out_ar_ready; // @[Decoupled.scala 311:15:chipyard.TestHarness.RocketConfig.fir@77763.4]
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
  _T_361 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_333 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_305 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_277 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_249 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_221 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_193 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_165 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_137 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_109 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_17 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_36 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_63 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_70 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_73 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_361 <= 1'h0;
    end else begin
      _T_361 <= _T_372;
    end
    if (reset) begin
      _T_333 <= 1'h0;
    end else begin
      _T_333 <= _T_344;
    end
    if (reset) begin
      _T_305 <= 1'h0;
    end else begin
      _T_305 <= _T_316;
    end
    if (reset) begin
      _T_277 <= 1'h0;
    end else begin
      _T_277 <= _T_288;
    end
    if (reset) begin
      _T_249 <= 1'h0;
    end else begin
      _T_249 <= _T_260;
    end
    if (reset) begin
      _T_221 <= 1'h0;
    end else begin
      _T_221 <= _T_232;
    end
    if (reset) begin
      _T_193 <= 1'h0;
    end else begin
      _T_193 <= _T_204;
    end
    if (reset) begin
      _T_165 <= 1'h0;
    end else begin
      _T_165 <= _T_176;
    end
    if (reset) begin
      _T_137 <= 1'h0;
    end else begin
      _T_137 <= _T_148;
    end
    if (reset) begin
      _T_109 <= 1'h0;
    end else begin
      _T_109 <= _T_120;
    end
    if (reset) begin
      _T_17 <= 3'h0;
    end else if (_T_8) begin
      if (_T_20) begin
        if (_T_7) begin
          _T_17 <= _T_12[5:3];
        end else begin
          _T_17 <= 3'h0;
        end
      end else begin
        _T_17 <= _T_19;
      end
    end
    if (reset) begin
      _T_36 <= 1'h0;
    end else if (_T_8) begin
      _T_36 <= _T_38;
    end
    if (reset) begin
      _T_63 <= 1'h0;
    end else if (_T_64) begin
      _T_63 <= _T_65;
    end
    _T_70 <= reset | _GEN_23;
    if (_T_70) begin
      _T_73 <= _T_72;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_126) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77921.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_126) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77922.6]
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
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77931.6]
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
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77932.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_154) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77962.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_154) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@77963.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_160) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77972.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_160) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@77973.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_182) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78003.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_182) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78004.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_188) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78013.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_188) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78014.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_210) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78044.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_210) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78045.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_216) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78054.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_216) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78055.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_238) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78085.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_238) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78086.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_244) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78095.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_244) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78096.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_266) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78126.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_266) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78127.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_272) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78136.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_272) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78137.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_294) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78167.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_294) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78168.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_300) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78177.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_300) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78178.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_322) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78208.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_322) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78209.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_328) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78218.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_328) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78219.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_350) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78249.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_350) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78250.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_356) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78259.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_356) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78260.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_378) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:259 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78290.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_378) begin
          $fatal; // @[ToAXI4.scala 259:16:chipyard.TestHarness.RocketConfig.fir@78291.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_384) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAXI4.scala:260 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78300.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_384) begin
          $fatal; // @[ToAXI4.scala 260:16:chipyard.TestHarness.RocketConfig.fir@78301.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
