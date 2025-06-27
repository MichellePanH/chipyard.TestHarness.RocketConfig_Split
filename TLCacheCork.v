module TLCacheCork( // @[:chipyard.TestHarness.RocketConfig.fir@112984.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@112985.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@112986.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [31:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output        auto_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [31:0] auto_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [63:0] auto_in_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [1:0]  auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [2:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [2:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [2:0]  auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_in_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [2:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [3:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [31:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [2:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [3:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input  [63:0] auto_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
  input         auto_out_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@112987.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_c_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire [2:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
  wire  IDPool_clock; // @[CacheCork.scala 111:26:chipyard.TestHarness.RocketConfig.fir@113225.4]
  wire  IDPool_reset; // @[CacheCork.scala 111:26:chipyard.TestHarness.RocketConfig.fir@113225.4]
  wire  IDPool_io_free_valid; // @[CacheCork.scala 111:26:chipyard.TestHarness.RocketConfig.fir@113225.4]
  wire [2:0] IDPool_io_free_bits; // @[CacheCork.scala 111:26:chipyard.TestHarness.RocketConfig.fir@113225.4]
  wire  IDPool_io_alloc_ready; // @[CacheCork.scala 111:26:chipyard.TestHarness.RocketConfig.fir@113225.4]
  wire  IDPool_io_alloc_valid; // @[CacheCork.scala 111:26:chipyard.TestHarness.RocketConfig.fir@113225.4]
  wire [2:0] IDPool_io_alloc_bits; // @[CacheCork.scala 111:26:chipyard.TestHarness.RocketConfig.fir@113225.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [1:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [2:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [2:0] Queue_io_enq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_io_enq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [63:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [1:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [2:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [2:0] Queue_io_deq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_io_deq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire [63:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [2:0] Queue_1_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [1:0] Queue_1_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [2:0] Queue_1_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [2:0] Queue_1_io_enq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_io_enq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [63:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [2:0] Queue_1_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [1:0] Queue_1_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [2:0] Queue_1_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [2:0] Queue_1_io_deq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_io_deq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire [63:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  Queue_1_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
  wire  _T_4; // @[CacheCork.scala 61:38:chipyard.TestHarness.RocketConfig.fir@113047.4]
  wire  _T_5; // @[CacheCork.scala 61:74:chipyard.TestHarness.RocketConfig.fir@113048.4]
  wire  _T_6; // @[CacheCork.scala 61:54:chipyard.TestHarness.RocketConfig.fir@113049.4]
  wire  _T_7; // @[CacheCork.scala 62:37:chipyard.TestHarness.RocketConfig.fir@113050.4]
  wire  _T_8; // @[CacheCork.scala 62:73:chipyard.TestHarness.RocketConfig.fir@113051.4]
  wire  _T_9; // @[CacheCork.scala 62:54:chipyard.TestHarness.RocketConfig.fir@113052.4]
  wire  _T_10; // @[CacheCork.scala 63:37:chipyard.TestHarness.RocketConfig.fir@113053.4]
  wire  _T_11; // @[CacheCork.scala 62:97:chipyard.TestHarness.RocketConfig.fir@113054.4]
  wire  _T_3_ready; // @[CacheCork.scala 60:23:chipyard.TestHarness.RocketConfig.fir@113045.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@113491.4]
  reg [2:0] _T_203; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@113337.4]
  reg [31:0] _RAND_0;
  wire  _T_204; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@113338.4]
  wire  _T_13; // @[CacheCork.scala 66:36:chipyard.TestHarness.RocketConfig.fir@113057.4]
  wire  _T_14; // @[CacheCork.scala 66:33:chipyard.TestHarness.RocketConfig.fir@113058.4]
  wire  _T_26; // @[CacheCork.scala 87:53:chipyard.TestHarness.RocketConfig.fir@113090.4]
  wire  _T_27; // @[CacheCork.scala 87:33:chipyard.TestHarness.RocketConfig.fir@113091.4]
  wire [1:0] _T_206; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@113340.4]
  wire [2:0] _T_207; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@113341.4]
  wire [1:0] _T_209; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@113343.4]
  wire [2:0] _T_211; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@113345.4]
  wire [1:0] _T_213; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@113347.4]
  reg  _T_247_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@113399.4]
  reg [31:0] _RAND_1;
  wire  _T_249_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113402.4]
  wire  _T_251; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@113405.4]
  wire [3:0] _T_15; // @[CacheCork.scala 68:45:chipyard.TestHarness.RocketConfig.fir@113061.4]
  wire [3:0] _GEN_24; // @[CacheCork.scala 68:50:chipyard.TestHarness.RocketConfig.fir@113063.4]
  wire [3:0] _T_17; // @[CacheCork.scala 68:50:chipyard.TestHarness.RocketConfig.fir@113063.4]
  wire  _T_20; // @[CacheCork.scala 71:49:chipyard.TestHarness.RocketConfig.fir@113067.4]
  wire [3:0] _T_22; // @[CacheCork.scala 74:52:chipyard.TestHarness.RocketConfig.fir@113072.6]
  wire [2:0] _GEN_0; // @[CacheCork.scala 71:86:chipyard.TestHarness.RocketConfig.fir@113068.4]
  wire [2:0] _GEN_1; // @[CacheCork.scala 71:86:chipyard.TestHarness.RocketConfig.fir@113068.4]
  wire [3:0] _GEN_2; // @[CacheCork.scala 71:86:chipyard.TestHarness.RocketConfig.fir@113068.4]
  wire [3:0] _T_28; // @[CacheCork.scala 89:41:chipyard.TestHarness.RocketConfig.fir@113093.4]
  wire [3:0] _T_43; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@113114.4]
  wire [2:0] _T_45; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@113116.4]
  wire  _T_46; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@113117.4]
  wire  _T_49; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113120.4]
  wire  _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113122.4]
  wire  _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113123.4]
  wire  _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113125.4]
  wire  _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113126.4]
  wire  _T_58; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113129.4]
  wire  _T_59; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113130.4]
  wire  _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113131.4]
  wire  _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113132.4]
  wire  _T_62; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113133.4]
  wire  _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113134.4]
  wire  _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113135.4]
  wire  _T_65; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113136.4]
  wire  _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113137.4]
  wire  _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113138.4]
  wire  _T_68; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113139.4]
  wire  _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113140.4]
  wire  _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113141.4]
  wire  _T_73; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113144.4]
  wire  _T_74; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113145.4]
  wire  _T_75; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113146.4]
  wire  _T_76; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113147.4]
  wire  _T_77; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113148.4]
  wire  _T_78; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113149.4]
  wire  _T_79; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113150.4]
  wire  _T_80; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113151.4]
  wire  _T_81; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113152.4]
  wire  _T_82; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113153.4]
  wire  _T_83; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113154.4]
  wire  _T_84; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113155.4]
  wire  _T_85; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113156.4]
  wire  _T_86; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113157.4]
  wire  _T_87; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113158.4]
  wire  _T_88; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113159.4]
  wire  _T_89; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113160.4]
  wire  _T_90; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113161.4]
  wire  _T_91; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113162.4]
  wire  _T_92; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113163.4]
  wire  _T_93; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113164.4]
  wire  _T_94; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113165.4]
  wire  _T_95; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113166.4]
  wire  _T_96; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113167.4]
  wire  _T_97; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113168.4]
  wire  _T_106; // @[CacheCork.scala 97:53:chipyard.TestHarness.RocketConfig.fir@113182.4]
  wire  _T_109; // @[CacheCork.scala 100:17:chipyard.TestHarness.RocketConfig.fir@113196.4]
  wire  _T_111; // @[CacheCork.scala 100:29:chipyard.TestHarness.RocketConfig.fir@113198.4]
  wire  _T_113; // @[CacheCork.scala 100:61:chipyard.TestHarness.RocketConfig.fir@113200.4]
  wire  _T_115; // @[CacheCork.scala 100:16:chipyard.TestHarness.RocketConfig.fir@113202.4]
  wire  _T_116; // @[CacheCork.scala 100:16:chipyard.TestHarness.RocketConfig.fir@113203.4]
  wire  _T_105_ready; // @[CacheCork.scala 96:23:chipyard.TestHarness.RocketConfig.fir@113180.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@113478.4]
  reg  _T_247_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@113399.4]
  reg [31:0] _RAND_2;
  wire  _T_249_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113402.4]
  wire  _T_250; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@113403.4]
  reg [2:0] _T_135; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@113242.4]
  reg [31:0] _RAND_3;
  wire  _T_138; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@113245.4]
  wire  _T_157; // @[CacheCork.scala 120:61:chipyard.TestHarness.RocketConfig.fir@113269.4]
  wire  _T_158; // @[CacheCork.scala 120:58:chipyard.TestHarness.RocketConfig.fir@113270.4]
  reg [2:0] _T_292; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@113492.4]
  reg [31:0] _RAND_4;
  wire  _T_293; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@113493.4]
  wire [2:0] _T_296; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@113496.4]
  wire [3:0] _T_297; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@113497.4]
  wire [2:0] _T_299; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@113499.4]
  wire [4:0] _T_300; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@113500.4]
  wire [2:0] _T_302; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@113502.4]
  wire [3:0] _T_304; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@113504.4]
  wire [2:0] _T_306; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@113506.4]
  wire  _T_311; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113515.4]
  reg  _T_351_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@113572.4]
  reg [31:0] _RAND_5;
  wire  _T_352_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113573.4]
  wire  _T_183; // @[CacheCork.scala 150:33:chipyard.TestHarness.RocketConfig.fir@113314.4]
  wire  _T_185; // @[CacheCork.scala 150:50:chipyard.TestHarness.RocketConfig.fir@113316.4]
  wire  _T_186; // @[CacheCork.scala 150:47:chipyard.TestHarness.RocketConfig.fir@113317.4]
  wire  _T_179; // @[CacheCork.scala 146:33:chipyard.TestHarness.RocketConfig.fir@113306.4]
  wire  _T_181; // @[CacheCork.scala 146:51:chipyard.TestHarness.RocketConfig.fir@113308.4]
  wire [2:0] _GEN_21; // @[CacheCork.scala 146:76:chipyard.TestHarness.RocketConfig.fir@113309.4]
  wire [2:0] _GEN_23; // @[CacheCork.scala 150:73:chipyard.TestHarness.RocketConfig.fir@113318.4]
  wire [79:0] _T_372; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113599.4]
  wire [79:0] _T_373; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113600.4]
  wire  _T_312; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113516.4]
  reg  _T_351_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@113572.4]
  reg [31:0] _RAND_6;
  wire  _T_352_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113573.4]
  wire [79:0] _T_380; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113607.4]
  wire [79:0] _T_381; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113608.4]
  wire [79:0] _T_390; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113617.4]
  wire  _T_313; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113517.4]
  reg  _T_351_2; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@113572.4]
  reg [31:0] _RAND_7;
  wire  _T_352_2; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113573.4]
  wire [79:0] _T_388; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113615.4]
  wire [79:0] _T_389; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113616.4]
  wire [79:0] _T_391; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113618.4]
  wire  _T_146; // @[CacheCork.scala 117:40:chipyard.TestHarness.RocketConfig.fir@113256.4]
  wire  _T_147; // @[CacheCork.scala 117:74:chipyard.TestHarness.RocketConfig.fir@113257.4]
  wire  _T_148; // @[CacheCork.scala 117:54:chipyard.TestHarness.RocketConfig.fir@113258.4]
  wire  _T_159; // @[CacheCork.scala 120:73:chipyard.TestHarness.RocketConfig.fir@113271.4]
  wire  _T_160; // @[CacheCork.scala 120:70:chipyard.TestHarness.RocketConfig.fir@113272.4]
  wire  _T_161; // @[CacheCork.scala 120:34:chipyard.TestHarness.RocketConfig.fir@113273.4]
  wire  _T_357; // @[Arbiter.scala 87:46:chipyard.TestHarness.RocketConfig.fir@113582.4]
  wire  _T_358; // @[Arbiter.scala 87:46:chipyard.TestHarness.RocketConfig.fir@113583.4]
  wire  _T_359; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113584.4]
  wire  _T_360; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113585.4]
  wire  _T_362; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113587.4]
  wire  _T_361; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113586.4]
  wire  _T_363; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113588.4]
  wire  _T_365; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@113591.4]
  wire  _T_127; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@113234.4]
  wire [12:0] _T_129; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113236.4]
  wire [5:0] _T_131; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113238.4]
  wire [2:0] _T_137; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@113244.4]
  wire  _T_156; // @[CacheCork.scala 119:34:chipyard.TestHarness.RocketConfig.fir@113267.4]
  wire  _T_149; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@113259.4]
  wire  _T_150; // @[CacheCork.scala 118:44:chipyard.TestHarness.RocketConfig.fir@113260.4]
  reg [2:0] _T_162; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@113276.4]
  reg [31:0] _RAND_8;
  wire [12:0] _T_188; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113322.4]
  wire [5:0] _T_190; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113324.4]
  wire [12:0] _T_196; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113330.4]
  wire [5:0] _T_198; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113332.4]
  wire  _T_201; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@113335.4]
  wire [2:0] _T_202; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@113336.4]
  wire  _T_205; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@113339.4]
  wire  _T_217; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113354.4]
  wire  _T_218; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113355.4]
  wire  _T_221; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@113361.4]
  wire  _T_223; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113363.4]
  wire  _T_226; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113366.4]
  wire  _T_227; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@113367.4]
  wire  _T_230; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113370.4]
  wire  _T_231; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113371.4]
  wire  _T_232; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@113376.4]
  wire  _T_233; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@113377.4]
  wire  _T_235; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@113379.4]
  wire  _T_237; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113381.4]
  wire  _T_238; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113382.4]
  wire [2:0] _T_239; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@113387.4]
  wire [2:0] _T_240; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@113388.4]
  wire [2:0] _T_241; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@113389.4]
  wire  _T_253; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113408.4]
  wire  _T_254; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113409.4]
  wire  _T_255; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113410.4]
  wire  _T_257; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@113413.4]
  wire  _T_242; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@113390.4]
  wire [2:0] _GEN_25; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@113391.4]
  wire [2:0] _T_244; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@113392.4]
  wire  _T_248_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113400.4]
  wire  _T_248_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113400.4]
  wire [64:0] _T_258; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113415.4]
  wire [104:0] _T_260; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113417.4]
  wire [117:0] _T_264; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113421.4]
  wire [117:0] _T_265; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113422.4]
  wire [117:0] _T_272; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113429.4]
  wire [117:0] _T_273; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113430.4]
  wire [117:0] _T_274; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113431.4]
  wire [12:0] _T_286; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113460.4]
  wire [5:0] _T_288; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113462.4]
  wire  _T_294; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@113494.4]
  wire  _T_316; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@113524.4]
  wire  _T_317; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@113525.4]
  wire  _T_319; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113527.4]
  wire  _T_322; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113530.4]
  wire  _T_323; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@113531.4]
  wire  _T_324; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@113532.4]
  wire  _T_325; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113533.4]
  wire  _T_326; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@113534.4]
  wire  _T_328; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@113536.4]
  wire  _T_330; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113538.4]
  wire  _T_331; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113539.4]
  wire  _T_334; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@113546.4]
  wire  _T_337; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@113549.4]
  wire  _T_339; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113551.4]
  wire  _T_340; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113552.4]
  wire [2:0] _GEN_26; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@113563.4]
  wire [2:0] _T_348; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@113564.4]
  wire  _T_353_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113575.4]
  wire  _T_353_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113575.4]
  wire  _T_353_2; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113575.4]
  TLMonitor_44 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@112994.4]
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
    .io_in_c_ready(TLMonitor_io_in_c_ready),
    .io_in_c_valid(TLMonitor_io_in_c_valid),
    .io_in_c_bits_opcode(TLMonitor_io_in_c_bits_opcode),
    .io_in_c_bits_param(TLMonitor_io_in_c_bits_param),
    .io_in_c_bits_size(TLMonitor_io_in_c_bits_size),
    .io_in_c_bits_source(TLMonitor_io_in_c_bits_source),
    .io_in_c_bits_address(TLMonitor_io_in_c_bits_address),
    .io_in_c_bits_corrupt(TLMonitor_io_in_c_bits_corrupt),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt),
    .io_in_e_valid(TLMonitor_io_in_e_valid),
    .io_in_e_bits_sink(TLMonitor_io_in_e_bits_sink)
  );
  IDPool IDPool ( // @[CacheCork.scala 111:26:chipyard.TestHarness.RocketConfig.fir@113225.4]
    .clock(IDPool_clock),
    .reset(IDPool_reset),
    .io_free_valid(IDPool_io_free_valid),
    .io_free_bits(IDPool_io_free_bits),
    .io_alloc_ready(IDPool_io_alloc_ready),
    .io_alloc_valid(IDPool_io_alloc_valid),
    .io_alloc_bits(IDPool_io_alloc_bits)
  );
  Queue_21 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113466.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_sink(Queue_io_enq_bits_sink),
    .io_enq_bits_denied(Queue_io_enq_bits_denied),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_io_enq_bits_corrupt),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_sink(Queue_io_deq_bits_sink),
    .io_deq_bits_denied(Queue_io_deq_bits_denied),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_io_deq_bits_corrupt)
  );
  Queue_21 Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@113479.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_opcode(Queue_1_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_1_io_enq_bits_param),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_source(Queue_1_io_enq_bits_source),
    .io_enq_bits_sink(Queue_1_io_enq_bits_sink),
    .io_enq_bits_denied(Queue_1_io_enq_bits_denied),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_1_io_enq_bits_corrupt),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_opcode(Queue_1_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_1_io_deq_bits_param),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_source(Queue_1_io_deq_bits_source),
    .io_deq_bits_sink(Queue_1_io_deq_bits_sink),
    .io_deq_bits_denied(Queue_1_io_deq_bits_denied),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_1_io_deq_bits_corrupt)
  );
  assign _T_4 = auto_in_a_bits_opcode == 3'h0; // @[CacheCork.scala 61:38:chipyard.TestHarness.RocketConfig.fir@113047.4]
  assign _T_5 = auto_in_a_bits_opcode == 3'h1; // @[CacheCork.scala 61:74:chipyard.TestHarness.RocketConfig.fir@113048.4]
  assign _T_6 = _T_4 | _T_5; // @[CacheCork.scala 61:54:chipyard.TestHarness.RocketConfig.fir@113049.4]
  assign _T_7 = auto_in_a_bits_opcode == 3'h6; // @[CacheCork.scala 62:37:chipyard.TestHarness.RocketConfig.fir@113050.4]
  assign _T_8 = auto_in_a_bits_param == 3'h2; // @[CacheCork.scala 62:73:chipyard.TestHarness.RocketConfig.fir@113051.4]
  assign _T_9 = _T_7 & _T_8; // @[CacheCork.scala 62:54:chipyard.TestHarness.RocketConfig.fir@113052.4]
  assign _T_10 = auto_in_a_bits_opcode == 3'h7; // @[CacheCork.scala 63:37:chipyard.TestHarness.RocketConfig.fir@113053.4]
  assign _T_11 = _T_9 | _T_10; // @[CacheCork.scala 62:97:chipyard.TestHarness.RocketConfig.fir@113054.4]
  assign _T_3_ready = Queue_1_io_enq_ready; // @[CacheCork.scala 60:23:chipyard.TestHarness.RocketConfig.fir@113045.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@113491.4]
  assign _T_204 = _T_203 == 3'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@113338.4]
  assign _T_13 = ~_T_11; // @[CacheCork.scala 66:36:chipyard.TestHarness.RocketConfig.fir@113057.4]
  assign _T_14 = auto_in_a_valid & _T_13; // @[CacheCork.scala 66:33:chipyard.TestHarness.RocketConfig.fir@113058.4]
  assign _T_26 = auto_in_c_bits_opcode == 3'h7; // @[CacheCork.scala 87:53:chipyard.TestHarness.RocketConfig.fir@113090.4]
  assign _T_27 = auto_in_c_valid & _T_26; // @[CacheCork.scala 87:33:chipyard.TestHarness.RocketConfig.fir@113091.4]
  assign _T_206 = {_T_14,_T_27}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@113340.4]
  assign _T_207 = {_T_206, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@113341.4]
  assign _T_209 = _T_206 | _T_207[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@113343.4]
  assign _T_211 = {_T_209, 1'h0}; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@113345.4]
  assign _T_213 = ~_T_211[1:0]; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@113347.4]
  assign _T_249_1 = _T_204 ? _T_213[1] : _T_247_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113402.4]
  assign _T_251 = auto_out_a_ready & _T_249_1; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@113405.4]
  assign _T_15 = {auto_in_a_bits_source, 1'h0}; // @[CacheCork.scala 68:45:chipyard.TestHarness.RocketConfig.fir@113061.4]
  assign _GEN_24 = {{3'd0}, _T_6}; // @[CacheCork.scala 68:50:chipyard.TestHarness.RocketConfig.fir@113063.4]
  assign _T_17 = _T_15 | _GEN_24; // @[CacheCork.scala 68:50:chipyard.TestHarness.RocketConfig.fir@113063.4]
  assign _T_20 = _T_7 | _T_10; // @[CacheCork.scala 71:49:chipyard.TestHarness.RocketConfig.fir@113067.4]
  assign _T_22 = _T_15 | 4'h1; // @[CacheCork.scala 74:52:chipyard.TestHarness.RocketConfig.fir@113072.6]
  assign _GEN_0 = _T_20 ? 3'h4 : auto_in_a_bits_opcode; // @[CacheCork.scala 71:86:chipyard.TestHarness.RocketConfig.fir@113068.4]
  assign _GEN_1 = _T_20 ? 3'h0 : auto_in_a_bits_param; // @[CacheCork.scala 71:86:chipyard.TestHarness.RocketConfig.fir@113068.4]
  assign _GEN_2 = _T_20 ? _T_22 : _T_17; // @[CacheCork.scala 71:86:chipyard.TestHarness.RocketConfig.fir@113068.4]
  assign _T_28 = {auto_in_c_bits_source, 1'h0}; // @[CacheCork.scala 89:41:chipyard.TestHarness.RocketConfig.fir@113093.4]
  assign _T_43 = 4'h1 << auto_in_c_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@113114.4]
  assign _T_45 = _T_43[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@113116.4]
  assign _T_46 = auto_in_c_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@113117.4]
  assign _T_49 = ~auto_in_c_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113120.4]
  assign _T_51 = _T_45[2] & _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113122.4]
  assign _T_52 = _T_46 | _T_51; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113123.4]
  assign _T_54 = _T_45[2] & auto_in_c_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113125.4]
  assign _T_55 = _T_46 | _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113126.4]
  assign _T_58 = ~auto_in_c_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113129.4]
  assign _T_59 = _T_49 & _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113130.4]
  assign _T_60 = _T_45[1] & _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113131.4]
  assign _T_61 = _T_52 | _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113132.4]
  assign _T_62 = _T_49 & auto_in_c_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113133.4]
  assign _T_63 = _T_45[1] & _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113134.4]
  assign _T_64 = _T_52 | _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113135.4]
  assign _T_65 = auto_in_c_bits_address[2] & _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113136.4]
  assign _T_66 = _T_45[1] & _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113137.4]
  assign _T_67 = _T_55 | _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113138.4]
  assign _T_68 = auto_in_c_bits_address[2] & auto_in_c_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113139.4]
  assign _T_69 = _T_45[1] & _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113140.4]
  assign _T_70 = _T_55 | _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113141.4]
  assign _T_73 = ~auto_in_c_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113144.4]
  assign _T_74 = _T_59 & _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113145.4]
  assign _T_75 = _T_45[0] & _T_74; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113146.4]
  assign _T_76 = _T_61 | _T_75; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113147.4]
  assign _T_77 = _T_59 & auto_in_c_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113148.4]
  assign _T_78 = _T_45[0] & _T_77; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113149.4]
  assign _T_79 = _T_61 | _T_78; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113150.4]
  assign _T_80 = _T_62 & _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113151.4]
  assign _T_81 = _T_45[0] & _T_80; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113152.4]
  assign _T_82 = _T_64 | _T_81; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113153.4]
  assign _T_83 = _T_62 & auto_in_c_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113154.4]
  assign _T_84 = _T_45[0] & _T_83; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113155.4]
  assign _T_85 = _T_64 | _T_84; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113156.4]
  assign _T_86 = _T_65 & _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113157.4]
  assign _T_87 = _T_45[0] & _T_86; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113158.4]
  assign _T_88 = _T_67 | _T_87; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113159.4]
  assign _T_89 = _T_65 & auto_in_c_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113160.4]
  assign _T_90 = _T_45[0] & _T_89; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113161.4]
  assign _T_91 = _T_67 | _T_90; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113162.4]
  assign _T_92 = _T_68 & _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113163.4]
  assign _T_93 = _T_45[0] & _T_92; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113164.4]
  assign _T_94 = _T_70 | _T_93; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113165.4]
  assign _T_95 = _T_68 & auto_in_c_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113166.4]
  assign _T_96 = _T_45[0] & _T_95; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113167.4]
  assign _T_97 = _T_70 | _T_96; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113168.4]
  assign _T_106 = auto_in_c_bits_opcode == 3'h6; // @[CacheCork.scala 97:53:chipyard.TestHarness.RocketConfig.fir@113182.4]
  assign _T_109 = ~auto_in_c_valid; // @[CacheCork.scala 100:17:chipyard.TestHarness.RocketConfig.fir@113196.4]
  assign _T_111 = _T_109 | _T_106; // @[CacheCork.scala 100:29:chipyard.TestHarness.RocketConfig.fir@113198.4]
  assign _T_113 = _T_111 | _T_26; // @[CacheCork.scala 100:61:chipyard.TestHarness.RocketConfig.fir@113200.4]
  assign _T_115 = _T_113 | reset; // @[CacheCork.scala 100:16:chipyard.TestHarness.RocketConfig.fir@113202.4]
  assign _T_116 = ~_T_115; // @[CacheCork.scala 100:16:chipyard.TestHarness.RocketConfig.fir@113203.4]
  assign _T_105_ready = Queue_io_enq_ready; // @[CacheCork.scala 96:23:chipyard.TestHarness.RocketConfig.fir@113180.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@113478.4]
  assign _T_249_0 = _T_204 ? _T_213[0] : _T_247_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113402.4]
  assign _T_250 = auto_out_a_ready & _T_249_0; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@113403.4]
  assign _T_138 = _T_135 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@113245.4]
  assign _T_157 = ~_T_138; // @[CacheCork.scala 120:61:chipyard.TestHarness.RocketConfig.fir@113269.4]
  assign _T_158 = IDPool_io_alloc_valid | _T_157; // @[CacheCork.scala 120:58:chipyard.TestHarness.RocketConfig.fir@113270.4]
  assign _T_293 = _T_292 == 3'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@113493.4]
  assign _T_296 = {Queue_1_io_deq_valid,Queue_io_deq_valid,auto_out_d_valid}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@113496.4]
  assign _T_297 = {_T_296, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@113497.4]
  assign _T_299 = _T_296 | _T_297[2:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@113499.4]
  assign _T_300 = {_T_299, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@113500.4]
  assign _T_302 = _T_299 | _T_300[2:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@113502.4]
  assign _T_304 = {_T_302, 1'h0}; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@113504.4]
  assign _T_306 = ~_T_304[2:0]; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@113506.4]
  assign _T_311 = _T_306[0] & auto_out_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113515.4]
  assign _T_352_0 = _T_293 ? _T_311 : _T_351_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113573.4]
  assign _T_183 = auto_out_d_bits_opcode == 3'h0; // @[CacheCork.scala 150:33:chipyard.TestHarness.RocketConfig.fir@113314.4]
  assign _T_185 = ~auto_out_d_bits_source[0]; // @[CacheCork.scala 150:50:chipyard.TestHarness.RocketConfig.fir@113316.4]
  assign _T_186 = _T_183 & _T_185; // @[CacheCork.scala 150:47:chipyard.TestHarness.RocketConfig.fir@113317.4]
  assign _T_179 = auto_out_d_bits_opcode == 3'h1; // @[CacheCork.scala 146:33:chipyard.TestHarness.RocketConfig.fir@113306.4]
  assign _T_181 = _T_179 & auto_out_d_bits_source[0]; // @[CacheCork.scala 146:51:chipyard.TestHarness.RocketConfig.fir@113308.4]
  assign _GEN_21 = _T_181 ? 3'h5 : auto_out_d_bits_opcode; // @[CacheCork.scala 146:76:chipyard.TestHarness.RocketConfig.fir@113309.4]
  assign _GEN_23 = _T_186 ? 3'h6 : _GEN_21; // @[CacheCork.scala 150:73:chipyard.TestHarness.RocketConfig.fir@113318.4]
  assign _T_372 = {_GEN_23,2'h0,auto_out_d_bits_size,auto_out_d_bits_source[3:1],3'h0,auto_out_d_bits_denied,auto_out_d_bits_data,auto_out_d_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113599.4]
  assign _T_373 = _T_352_0 ? _T_372 : 80'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113600.4]
  assign _T_312 = _T_306[1] & Queue_io_deq_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113516.4]
  assign _T_352_1 = _T_293 ? _T_312 : _T_351_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113573.4]
  assign _T_380 = {Queue_io_deq_bits_opcode,Queue_io_deq_bits_param,Queue_io_deq_bits_size,Queue_io_deq_bits_source,Queue_io_deq_bits_sink,Queue_io_deq_bits_denied,Queue_io_deq_bits_data,Queue_io_deq_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113607.4]
  assign _T_381 = _T_352_1 ? _T_380 : 80'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113608.4]
  assign _T_390 = _T_373 | _T_381; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113617.4]
  assign _T_313 = _T_306[2] & Queue_1_io_deq_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113517.4]
  assign _T_352_2 = _T_293 ? _T_313 : _T_351_2; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113573.4]
  assign _T_388 = {Queue_1_io_deq_bits_opcode,Queue_1_io_deq_bits_param,Queue_1_io_deq_bits_size,Queue_1_io_deq_bits_source,Queue_1_io_deq_bits_sink,Queue_1_io_deq_bits_denied,Queue_1_io_deq_bits_data,Queue_1_io_deq_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113615.4]
  assign _T_389 = _T_352_2 ? _T_388 : 80'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113616.4]
  assign _T_391 = _T_390 | _T_389; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113618.4]
  assign _T_146 = _T_391[79:77] == 3'h5; // @[CacheCork.scala 117:40:chipyard.TestHarness.RocketConfig.fir@113256.4]
  assign _T_147 = _T_391[79:77] == 3'h4; // @[CacheCork.scala 117:74:chipyard.TestHarness.RocketConfig.fir@113257.4]
  assign _T_148 = _T_146 | _T_147; // @[CacheCork.scala 117:54:chipyard.TestHarness.RocketConfig.fir@113258.4]
  assign _T_159 = ~_T_148; // @[CacheCork.scala 120:73:chipyard.TestHarness.RocketConfig.fir@113271.4]
  assign _T_160 = _T_158 | _T_159; // @[CacheCork.scala 120:70:chipyard.TestHarness.RocketConfig.fir@113272.4]
  assign _T_161 = auto_in_d_ready & _T_160; // @[CacheCork.scala 120:34:chipyard.TestHarness.RocketConfig.fir@113273.4]
  assign _T_357 = auto_out_d_valid | Queue_io_deq_valid; // @[Arbiter.scala 87:46:chipyard.TestHarness.RocketConfig.fir@113582.4]
  assign _T_358 = _T_357 | Queue_1_io_deq_valid; // @[Arbiter.scala 87:46:chipyard.TestHarness.RocketConfig.fir@113583.4]
  assign _T_359 = _T_351_0 & auto_out_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113584.4]
  assign _T_360 = _T_351_1 & Queue_io_deq_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113585.4]
  assign _T_362 = _T_359 | _T_360; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113587.4]
  assign _T_361 = _T_351_2 & Queue_1_io_deq_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113586.4]
  assign _T_363 = _T_362 | _T_361; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113588.4]
  assign _T_365 = _T_293 ? _T_358 : _T_363; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@113591.4]
  assign _T_127 = _T_161 & _T_365; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@113234.4]
  assign _T_129 = 13'h3f << _T_391[74:72]; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113236.4]
  assign _T_131 = ~_T_129[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113238.4]
  assign _T_137 = _T_135 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@113244.4]
  assign _T_156 = _T_365 & _T_160; // @[CacheCork.scala 119:34:chipyard.TestHarness.RocketConfig.fir@113267.4]
  assign _T_149 = auto_in_d_ready & _T_156; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@113259.4]
  assign _T_150 = _T_149 & _T_138; // @[CacheCork.scala 118:44:chipyard.TestHarness.RocketConfig.fir@113260.4]
  assign _T_188 = 13'h3f << auto_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113322.4]
  assign _T_190 = ~_T_188[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113324.4]
  assign _T_196 = 13'h3f << auto_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113330.4]
  assign _T_198 = ~_T_196[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113332.4]
  assign _T_201 = ~_GEN_0[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@113335.4]
  assign _T_202 = _T_201 ? _T_198[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@113336.4]
  assign _T_205 = _T_204 & auto_out_a_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@113339.4]
  assign _T_217 = _T_213[0] & _T_27; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113354.4]
  assign _T_218 = _T_213[1] & _T_14; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@113355.4]
  assign _T_221 = _T_217 | _T_218; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@113361.4]
  assign _T_223 = ~_T_217; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113363.4]
  assign _T_226 = ~_T_218; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113366.4]
  assign _T_227 = _T_223 | _T_226; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@113367.4]
  assign _T_230 = _T_227 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113370.4]
  assign _T_231 = ~_T_230; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113371.4]
  assign _T_232 = _T_27 | _T_14; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@113376.4]
  assign _T_233 = ~_T_232; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@113377.4]
  assign _T_235 = _T_233 | _T_221; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@113379.4]
  assign _T_237 = _T_235 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113381.4]
  assign _T_238 = ~_T_237; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113382.4]
  assign _T_239 = _T_217 ? _T_190[5:3] : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@113387.4]
  assign _T_240 = _T_218 ? _T_202 : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@113388.4]
  assign _T_241 = _T_239 | _T_240; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@113389.4]
  assign _T_253 = _T_247_0 & _T_27; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113408.4]
  assign _T_254 = _T_247_1 & _T_14; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113409.4]
  assign _T_255 = _T_253 | _T_254; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113410.4]
  assign _T_257 = _T_204 ? _T_232 : _T_255; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@113413.4]
  assign _T_242 = auto_out_a_ready & _T_257; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@113390.4]
  assign _GEN_25 = {{2'd0}, _T_242}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@113391.4]
  assign _T_244 = _T_203 - _GEN_25; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@113392.4]
  assign _T_248_0 = _T_204 ? _T_217 : _T_247_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113400.4]
  assign _T_248_1 = _T_204 ? _T_218 : _T_247_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@113400.4]
  assign _T_258 = {auto_in_c_bits_data,auto_in_c_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113415.4]
  assign _T_260 = {auto_in_c_bits_address,_T_97,_T_94,_T_91,_T_88,_T_85,_T_82,_T_79,_T_76,_T_258}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113417.4]
  assign _T_264 = {6'h0,auto_in_c_bits_size,_T_28,_T_260}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113421.4]
  assign _T_265 = _T_248_0 ? _T_264 : 118'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113422.4]
  assign _T_272 = {_GEN_0,_GEN_1,auto_in_a_bits_size,_GEN_2,auto_in_a_bits_address,auto_in_a_bits_mask,auto_in_a_bits_data,auto_in_a_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113429.4]
  assign _T_273 = _T_248_1 ? _T_272 : 118'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113430.4]
  assign _T_274 = _T_265 | _T_273; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113431.4]
  assign _T_286 = 13'h3f << auto_out_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113460.4]
  assign _T_288 = ~_T_286[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113462.4]
  assign _T_294 = _T_293 & _T_161; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@113494.4]
  assign _T_316 = _T_311 | _T_312; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@113524.4]
  assign _T_317 = _T_316 | _T_313; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@113525.4]
  assign _T_319 = ~_T_311; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113527.4]
  assign _T_322 = ~_T_312; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113530.4]
  assign _T_323 = _T_319 | _T_322; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@113531.4]
  assign _T_324 = ~_T_316; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@113532.4]
  assign _T_325 = ~_T_313; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@113533.4]
  assign _T_326 = _T_324 | _T_325; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@113534.4]
  assign _T_328 = _T_323 & _T_326; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@113536.4]
  assign _T_330 = _T_328 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113538.4]
  assign _T_331 = ~_T_330; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113539.4]
  assign _T_334 = ~_T_358; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@113546.4]
  assign _T_337 = _T_334 | _T_317; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@113549.4]
  assign _T_339 = _T_337 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113551.4]
  assign _T_340 = ~_T_339; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113552.4]
  assign _GEN_26 = {{2'd0}, _T_127}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@113563.4]
  assign _T_348 = _T_292 - _GEN_26; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@113564.4]
  assign _T_353_0 = _T_293 ? _T_306[0] : _T_351_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113575.4]
  assign _T_353_1 = _T_293 ? _T_306[1] : _T_351_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113575.4]
  assign _T_353_2 = _T_293 ? _T_306[2] : _T_351_2; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@113575.4]
  assign auto_in_a_ready = _T_11 ? _T_3_ready : _T_251; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_c_ready = _T_106 ? _T_105_ready : _T_250; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_valid = _T_365 & _T_160; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_bits_opcode = _T_391[79:77]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_bits_param = _T_391[76:75]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_bits_size = _T_391[74:72]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_bits_source = _T_391[71:69]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_bits_sink = _T_138 ? IDPool_io_alloc_bits : _T_162; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_bits_denied = _T_391[65]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_bits_data = _T_391[64:1]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_in_d_bits_corrupt = _T_391[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@113042.4]
  assign auto_out_a_valid = _T_204 ? _T_232 : _T_255; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_a_bits_opcode = _T_274[117:115]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_a_bits_param = _T_274[114:112]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_a_bits_size = _T_274[111:109]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_a_bits_source = _T_274[108:105]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_a_bits_address = _T_274[104:73]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_a_bits_mask = _T_274[72:65]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_a_bits_data = _T_274[64:1]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_a_bits_corrupt = _T_274[0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign auto_out_d_ready = _T_161 & _T_353_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@113041.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@112995.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@112996.4]
  assign TLMonitor_io_in_a_ready = _T_11 ? _T_3_ready : _T_251; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113038.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113037.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113036.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113035.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113034.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113033.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113032.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113031.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113029.4]
  assign TLMonitor_io_in_c_ready = _T_106 ? _T_105_ready : _T_250; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113018.4]
  assign TLMonitor_io_in_c_valid = auto_in_c_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113017.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113016.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113015.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113014.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113013.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113012.4]
  assign TLMonitor_io_in_c_bits_corrupt = auto_in_c_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113010.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113009.4]
  assign TLMonitor_io_in_d_valid = _T_365 & _T_160; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113008.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_391[79:77]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113007.4]
  assign TLMonitor_io_in_d_bits_param = _T_391[76:75]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113006.4]
  assign TLMonitor_io_in_d_bits_size = _T_391[74:72]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113005.4]
  assign TLMonitor_io_in_d_bits_source = _T_391[71:69]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113004.4]
  assign TLMonitor_io_in_d_bits_sink = _T_138 ? IDPool_io_alloc_bits : _T_162; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113003.4]
  assign TLMonitor_io_in_d_bits_denied = _T_391[65]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113002.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_391[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@113000.4]
  assign TLMonitor_io_in_e_valid = auto_in_e_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@112998.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@112997.4]
  assign IDPool_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@113227.4]
  assign IDPool_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@113228.4]
  assign IDPool_io_free_valid = auto_in_e_valid; // @[CacheCork.scala 112:28:chipyard.TestHarness.RocketConfig.fir@113230.4]
  assign IDPool_io_free_bits = auto_in_e_bits_sink; // @[CacheCork.scala 113:28:chipyard.TestHarness.RocketConfig.fir@113231.4]
  assign IDPool_io_alloc_ready = _T_150 & _T_148; // @[CacheCork.scala 118:29:chipyard.TestHarness.RocketConfig.fir@113262.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@113467.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@113468.4]
  assign Queue_io_enq_valid = auto_in_c_valid & _T_106; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@113469.4]
  assign Queue_io_enq_bits_opcode = 3'h6; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113477.4]
  assign Queue_io_enq_bits_param = 2'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113476.4]
  assign Queue_io_enq_bits_size = auto_in_c_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113475.4]
  assign Queue_io_enq_bits_source = auto_in_c_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113474.4]
  assign Queue_io_enq_bits_sink = 3'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113473.4]
  assign Queue_io_enq_bits_denied = 1'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113472.4]
  assign Queue_io_enq_bits_data = 64'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113471.4]
  assign Queue_io_enq_bits_corrupt = 1'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113470.4]
  assign Queue_io_deq_ready = _T_161 & _T_353_1; // @[Arbiter.scala 85:17:chipyard.TestHarness.RocketConfig.fir@113579.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@113480.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@113481.4]
  assign Queue_1_io_enq_valid = auto_in_a_valid & _T_11; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@113482.4]
  assign Queue_1_io_enq_bits_opcode = 3'h4; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113490.4]
  assign Queue_1_io_enq_bits_param = 2'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113489.4]
  assign Queue_1_io_enq_bits_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113488.4]
  assign Queue_1_io_enq_bits_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113487.4]
  assign Queue_1_io_enq_bits_sink = 3'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113486.4]
  assign Queue_1_io_enq_bits_denied = 1'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113485.4]
  assign Queue_1_io_enq_bits_data = 64'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113484.4]
  assign Queue_1_io_enq_bits_corrupt = 1'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@113483.4]
  assign Queue_1_io_deq_ready = _T_161 & _T_353_2; // @[Arbiter.scala 85:17:chipyard.TestHarness.RocketConfig.fir@113581.4]
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
  _T_203 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_247_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_247_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_135 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_292 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_351_0 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_351_1 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_351_2 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_162 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_203 <= 3'h0;
    end else if (_T_205) begin
      _T_203 <= _T_241;
    end else begin
      _T_203 <= _T_244;
    end
    if (reset) begin
      _T_247_1 <= 1'h0;
    end else if (_T_204) begin
      _T_247_1 <= _T_218;
    end
    if (reset) begin
      _T_247_0 <= 1'h0;
    end else if (_T_204) begin
      _T_247_0 <= _T_217;
    end
    if (reset) begin
      _T_135 <= 3'h0;
    end else if (_T_127) begin
      if (_T_138) begin
        if (_T_391[77]) begin
          _T_135 <= _T_131[5:3];
        end else begin
          _T_135 <= 3'h0;
        end
      end else begin
        _T_135 <= _T_137;
      end
    end
    if (reset) begin
      _T_292 <= 3'h0;
    end else if (_T_294) begin
      if (_T_311) begin
        if (_GEN_23[0]) begin
          _T_292 <= _T_288[5:3];
        end else begin
          _T_292 <= 3'h0;
        end
      end else begin
        _T_292 <= 3'h0;
      end
    end else begin
      _T_292 <= _T_348;
    end
    if (reset) begin
      _T_351_0 <= 1'h0;
    end else if (_T_293) begin
      _T_351_0 <= _T_311;
    end
    if (reset) begin
      _T_351_1 <= 1'h0;
    end else if (_T_293) begin
      _T_351_1 <= _T_312;
    end
    if (reset) begin
      _T_351_2 <= 1'h0;
    end else if (_T_293) begin
      _T_351_2 <= _T_313;
    end
    if (_T_138) begin
      _T_162 <= IDPool_io_alloc_bits;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_116) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CacheCork.scala:100 assert (!in.c.valid || in.c.bits.opcode === Release || in.c.bits.opcode === ReleaseData)\n"); // @[CacheCork.scala 100:16:chipyard.TestHarness.RocketConfig.fir@113205.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_116) begin
          $fatal; // @[CacheCork.scala 100:16:chipyard.TestHarness.RocketConfig.fir@113206.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_231) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113373.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_231) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113374.6]
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
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113384.6]
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
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113385.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_331) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113541.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_331) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@113542.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_340) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113554.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_340) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@113555.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
