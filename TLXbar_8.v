module TLXbar_8( // @[:chipyard.TestHarness.RocketConfig.fir@195134.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@195135.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@195136.4]
  output        auto_in_1_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_in_1_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [31:0] auto_in_1_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_1_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [2:0]  auto_in_1_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [3:0]  auto_in_1_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [63:0] auto_in_1_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_1_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_0_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_in_0_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [2:0]  auto_in_0_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [2:0]  auto_in_0_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [3:0]  auto_in_0_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_in_0_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [31:0] auto_in_0_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [7:0]  auto_in_0_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [63:0] auto_in_0_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_in_0_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_0_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [1:0]  auto_in_0_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [3:0]  auto_in_0_b_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_0_b_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [31:0] auto_in_0_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_0_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_in_0_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [2:0]  auto_in_0_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [2:0]  auto_in_0_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [3:0]  auto_in_0_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_in_0_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [31:0] auto_in_0_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [63:0] auto_in_0_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_in_0_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_0_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [2:0]  auto_in_0_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [1:0]  auto_in_0_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [3:0]  auto_in_0_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_0_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [2:0]  auto_in_0_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_0_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [63:0] auto_in_0_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_in_0_e_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_in_0_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [2:0]  auto_in_0_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [3:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [1:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [31:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [2:0]  auto_out_b_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [1:0]  auto_out_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [3:0]  auto_out_b_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [1:0]  auto_out_b_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [31:0] auto_out_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [7:0]  auto_out_b_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_out_b_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_out_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_out_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [2:0]  auto_out_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [3:0]  auto_out_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [1:0]  auto_out_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [31:0] auto_out_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [63:0] auto_out_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [1:0]  auto_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [3:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [1:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [2:0]  auto_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input  [63:0] auto_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  input         auto_out_e_ready, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output        auto_out_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
  output [2:0]  auto_out_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@195137.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_b_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_b_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [2:0] TLMonitor_io_in_b_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [1:0] TLMonitor_io_in_b_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [3:0] TLMonitor_io_in_b_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_b_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [31:0] TLMonitor_io_in_b_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [7:0] TLMonitor_io_in_b_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_b_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [3:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [2:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_e_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire [2:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
  wire  TLMonitor_1_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire  TLMonitor_1_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire  TLMonitor_1_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire  TLMonitor_1_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire [31:0] TLMonitor_1_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire  TLMonitor_1_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire [3:0] TLMonitor_1_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire  TLMonitor_1_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire  TLMonitor_1_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
  wire  _T_42; // @[Parameters.scala 55:32:chipyard.TestHarness.RocketConfig.fir@195381.4]
  wire  _T_51; // @[Parameters.scala 55:32:chipyard.TestHarness.RocketConfig.fir@195390.4]
  wire  _T_56; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@195395.4]
  wire [26:0] _T_74; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@195413.4]
  wire [11:0] _T_76; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@195415.4]
  wire  _T_79; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@195418.4]
  wire  _T_144; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195511.4]
  reg [8:0] _T_154; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@195531.4]
  reg [31:0] _RAND_0;
  wire  _T_155; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@195532.4]
  wire  _T_156; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@195533.4]
  wire [1:0] _T_157; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@195534.4]
  reg [1:0] _T_163; // @[Arbiter.scala 21:23:chipyard.TestHarness.RocketConfig.fir@195544.4]
  reg [31:0] _RAND_1;
  wire [1:0] _T_164; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@195545.4]
  wire [1:0] _T_165; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@195546.4]
  wire [3:0] _T_166; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@195547.4]
  wire [3:0] _GEN_1; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@195549.4]
  wire [3:0] _T_168; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@195549.4]
  wire [3:0] _T_171; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@195552.4]
  wire [3:0] _GEN_2; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@195553.4]
  wire [3:0] _T_172; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@195553.4]
  wire [1:0] _T_175; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@195556.4]
  wire [1:0] _T_176; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@195557.4]
  wire  _T_177; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@195558.4]
  wire  _T_178; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@195559.4]
  wire [1:0] _T_179; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@195561.6]
  wire [2:0] _T_180; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@195562.6]
  wire [1:0] _T_182; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@195564.6]
  wire  _T_188; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@195575.4]
  wire  _T_189; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@195576.4]
  wire  _T_192; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@195582.4]
  wire  _T_194; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@195584.4]
  wire  _T_197; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@195587.4]
  wire  _T_198; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@195588.4]
  wire  _T_201; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@195591.4]
  wire  _T_202; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@195592.4]
  wire  _T_203; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@195597.4]
  wire  _T_204; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@195598.4]
  wire  _T_206; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@195600.4]
  wire  _T_208; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@195602.4]
  wire  _T_209; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@195603.4]
  reg  _T_218_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@195620.4]
  reg [31:0] _RAND_2;
  wire  _T_224; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195629.4]
  reg  _T_218_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@195620.4]
  reg [31:0] _RAND_3;
  wire  _T_225; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195630.4]
  wire  _T_226; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195631.4]
  wire  _T_228; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@195634.4]
  wire  _T_213; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@195611.4]
  wire [8:0] _GEN_3; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@195612.4]
  wire [8:0] _T_215; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@195613.4]
  wire  _T_219_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@195621.4]
  wire  _T_219_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@195621.4]
  wire  _T_220_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@195623.4]
  wire  _T_220_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@195623.4]
  wire [1:0] _T_3_0_a_bits_source; // @[Xbar.scala 122:18:chipyard.TestHarness.RocketConfig.fir@195219.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@195225.4 Xbar.scala 128:29:chipyard.TestHarness.RocketConfig.fir@195232.4]
  wire [116:0] _T_235; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195642.4]
  wire [116:0] _T_236; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195643.4]
  wire [116:0] _T_243; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195650.4]
  wire [116:0] _T_244; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195651.4]
  wire [116:0] _T_245; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195652.4]
  TLMonitor_57 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195146.4]
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
    .io_in_b_ready(TLMonitor_io_in_b_ready),
    .io_in_b_valid(TLMonitor_io_in_b_valid),
    .io_in_b_bits_opcode(TLMonitor_io_in_b_bits_opcode),
    .io_in_b_bits_param(TLMonitor_io_in_b_bits_param),
    .io_in_b_bits_size(TLMonitor_io_in_b_bits_size),
    .io_in_b_bits_source(TLMonitor_io_in_b_bits_source),
    .io_in_b_bits_address(TLMonitor_io_in_b_bits_address),
    .io_in_b_bits_mask(TLMonitor_io_in_b_bits_mask),
    .io_in_b_bits_corrupt(TLMonitor_io_in_b_bits_corrupt),
    .io_in_c_ready(TLMonitor_io_in_c_ready),
    .io_in_c_valid(TLMonitor_io_in_c_valid),
    .io_in_c_bits_opcode(TLMonitor_io_in_c_bits_opcode),
    .io_in_c_bits_param(TLMonitor_io_in_c_bits_param),
    .io_in_c_bits_size(TLMonitor_io_in_c_bits_size),
    .io_in_c_bits_source(TLMonitor_io_in_c_bits_source),
    .io_in_c_bits_address(TLMonitor_io_in_c_bits_address),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt),
    .io_in_e_ready(TLMonitor_io_in_e_ready),
    .io_in_e_valid(TLMonitor_io_in_e_valid),
    .io_in_e_bits_sink(TLMonitor_io_in_e_bits_sink)
  );
  TLMonitor_58 TLMonitor_1 ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@195191.4]
    .clock(TLMonitor_1_clock),
    .reset(TLMonitor_1_reset),
    .io_in_a_ready(TLMonitor_1_io_in_a_ready),
    .io_in_a_valid(TLMonitor_1_io_in_a_valid),
    .io_in_a_bits_address(TLMonitor_1_io_in_a_bits_address),
    .io_in_d_valid(TLMonitor_1_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_1_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_1_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_1_io_in_d_bits_size),
    .io_in_d_bits_sink(TLMonitor_1_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_1_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_1_io_in_d_bits_corrupt)
  );
  assign _T_42 = ~auto_out_b_bits_source[1]; // @[Parameters.scala 55:32:chipyard.TestHarness.RocketConfig.fir@195381.4]
  assign _T_51 = ~auto_out_d_bits_source[1]; // @[Parameters.scala 55:32:chipyard.TestHarness.RocketConfig.fir@195390.4]
  assign _T_56 = auto_out_d_bits_source == 2'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@195395.4]
  assign _T_74 = 27'hfff << auto_in_0_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@195413.4]
  assign _T_76 = ~_T_74[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@195415.4]
  assign _T_79 = ~auto_in_0_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@195418.4]
  assign _T_144 = _T_51 & auto_in_0_d_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195511.4]
  assign _T_155 = _T_154 == 9'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@195532.4]
  assign _T_156 = _T_155 & auto_out_a_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@195533.4]
  assign _T_157 = {auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@195534.4]
  assign _T_164 = ~_T_163; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@195545.4]
  assign _T_165 = _T_157 & _T_164; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@195546.4]
  assign _T_166 = {_T_165,auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@195547.4]
  assign _GEN_1 = {{1'd0}, _T_166[3:1]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@195549.4]
  assign _T_168 = _T_166 | _GEN_1; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@195549.4]
  assign _T_171 = {_T_163, 2'h0}; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@195552.4]
  assign _GEN_2 = {{1'd0}, _T_168[3:1]}; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@195553.4]
  assign _T_172 = _GEN_2 | _T_171; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@195553.4]
  assign _T_175 = _T_172[3:2] & _T_172[1:0]; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@195556.4]
  assign _T_176 = ~_T_175; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@195557.4]
  assign _T_177 = |_T_157; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@195558.4]
  assign _T_178 = _T_156 & _T_177; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@195559.4]
  assign _T_179 = _T_176 & _T_157; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@195561.6]
  assign _T_180 = {_T_179, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@195562.6]
  assign _T_182 = _T_179 | _T_180[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@195564.6]
  assign _T_188 = _T_176[0] & auto_in_0_a_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@195575.4]
  assign _T_189 = _T_176[1] & auto_in_1_a_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@195576.4]
  assign _T_192 = _T_188 | _T_189; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@195582.4]
  assign _T_194 = ~_T_188; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@195584.4]
  assign _T_197 = ~_T_189; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@195587.4]
  assign _T_198 = _T_194 | _T_197; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@195588.4]
  assign _T_201 = _T_198 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@195591.4]
  assign _T_202 = ~_T_201; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@195592.4]
  assign _T_203 = auto_in_0_a_valid | auto_in_1_a_valid; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@195597.4]
  assign _T_204 = ~_T_203; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@195598.4]
  assign _T_206 = _T_204 | _T_192; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@195600.4]
  assign _T_208 = _T_206 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@195602.4]
  assign _T_209 = ~_T_208; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@195603.4]
  assign _T_224 = _T_218_0 & auto_in_0_a_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195629.4]
  assign _T_225 = _T_218_1 & auto_in_1_a_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195630.4]
  assign _T_226 = _T_224 | _T_225; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195631.4]
  assign _T_228 = _T_155 ? _T_203 : _T_226; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@195634.4]
  assign _T_213 = auto_out_a_ready & _T_228; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@195611.4]
  assign _GEN_3 = {{8'd0}, _T_213}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@195612.4]
  assign _T_215 = _T_154 - _GEN_3; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@195613.4]
  assign _T_219_0 = _T_155 ? _T_188 : _T_218_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@195621.4]
  assign _T_219_1 = _T_155 ? _T_189 : _T_218_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@195621.4]
  assign _T_220_0 = _T_155 ? _T_176[0] : _T_218_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@195623.4]
  assign _T_220_1 = _T_155 ? _T_176[1] : _T_218_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@195623.4]
  assign _T_3_0_a_bits_source = {{1'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 122:18:chipyard.TestHarness.RocketConfig.fir@195219.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@195225.4 Xbar.scala 128:29:chipyard.TestHarness.RocketConfig.fir@195232.4]
  assign _T_235 = {auto_in_0_a_bits_opcode,auto_in_0_a_bits_param,auto_in_0_a_bits_size,_T_3_0_a_bits_source,auto_in_0_a_bits_address,auto_in_0_a_bits_mask,auto_in_0_a_bits_data,1'h0}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195642.4]
  assign _T_236 = _T_219_0 ? _T_235 : 117'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195643.4]
  assign _T_243 = {12'h81a,auto_in_1_a_bits_address,8'hff,65'h0}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195650.4]
  assign _T_244 = _T_219_1 ? _T_243 : 117'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195651.4]
  assign _T_245 = _T_236 | _T_244; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@195652.4]
  assign auto_in_1_a_ready = auto_out_a_ready & _T_220_1; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195218.4]
  assign auto_in_1_d_valid = auto_out_d_valid & _T_56; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195218.4]
  assign auto_in_1_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195218.4]
  assign auto_in_1_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195218.4]
  assign auto_in_1_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195218.4]
  assign auto_in_1_d_bits_corrupt = auto_out_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195218.4]
  assign auto_in_0_a_ready = auto_out_a_ready & _T_220_0; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_b_valid = auto_out_b_valid & _T_42; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_b_bits_param = auto_out_b_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_b_bits_size = auto_out_b_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_b_bits_source = auto_out_b_bits_source[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_b_bits_address = auto_out_b_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_c_ready = auto_out_c_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_d_valid = auto_out_d_valid & _T_51; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_d_bits_opcode = auto_out_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_d_bits_param = auto_out_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_d_bits_source = auto_out_d_bits_source[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_d_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_d_bits_denied = auto_out_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_in_0_e_ready = auto_out_e_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@195217.4]
  assign auto_out_a_valid = _T_155 ? _T_203 : _T_226; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_a_bits_opcode = _T_245[116:114]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_a_bits_param = _T_245[113:111]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_a_bits_size = _T_245[110:107]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_a_bits_source = _T_245[106:105]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_a_bits_address = _T_245[104:73]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_a_bits_mask = _T_245[72:65]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_a_bits_data = _T_245[64:1]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_a_bits_corrupt = _T_245[0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_b_ready = _T_42 & auto_in_0_b_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_c_valid = auto_in_0_c_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_c_bits_opcode = auto_in_0_c_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_c_bits_param = auto_in_0_c_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_c_bits_size = auto_in_0_c_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_c_bits_address = auto_in_0_c_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_c_bits_data = auto_in_0_c_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_d_ready = _T_144 | _T_56; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_e_valid = auto_in_0_e_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign auto_out_e_bits_sink = auto_in_0_e_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@195216.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@195147.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@195148.4]
  assign TLMonitor_io_in_a_ready = auto_out_a_ready & _T_220_0; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195190.4]
  assign TLMonitor_io_in_a_valid = auto_in_0_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195189.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195188.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195187.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195186.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195185.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195184.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_0_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195183.4]
  assign TLMonitor_io_in_b_ready = auto_in_0_b_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195180.4]
  assign TLMonitor_io_in_b_valid = auto_out_b_valid & _T_42; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195179.4]
  assign TLMonitor_io_in_b_bits_opcode = auto_out_b_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195178.4]
  assign TLMonitor_io_in_b_bits_param = auto_out_b_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195177.4]
  assign TLMonitor_io_in_b_bits_size = auto_out_b_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195176.4]
  assign TLMonitor_io_in_b_bits_source = auto_out_b_bits_source[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195175.4]
  assign TLMonitor_io_in_b_bits_address = auto_out_b_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195174.4]
  assign TLMonitor_io_in_b_bits_mask = auto_out_b_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195173.4]
  assign TLMonitor_io_in_b_bits_corrupt = auto_out_b_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195171.4]
  assign TLMonitor_io_in_c_ready = auto_out_c_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195170.4]
  assign TLMonitor_io_in_c_valid = auto_in_0_c_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195169.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195168.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195167.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195166.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_0_c_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195165.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195164.4]
  assign TLMonitor_io_in_d_ready = auto_in_0_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195161.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid & _T_51; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195160.4]
  assign TLMonitor_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195159.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195158.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195157.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195156.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195155.4]
  assign TLMonitor_io_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195154.4]
  assign TLMonitor_io_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195152.4]
  assign TLMonitor_io_in_e_ready = auto_out_e_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195151.4]
  assign TLMonitor_io_in_e_valid = auto_in_0_e_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195150.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_0_e_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195149.4]
  assign TLMonitor_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@195192.4]
  assign TLMonitor_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@195193.4]
  assign TLMonitor_1_io_in_a_ready = auto_out_a_ready & _T_220_1; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195213.4]
  assign TLMonitor_1_io_in_a_valid = auto_in_1_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195212.4]
  assign TLMonitor_1_io_in_a_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195207.4]
  assign TLMonitor_1_io_in_d_valid = auto_out_d_valid & _T_56; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195202.4]
  assign TLMonitor_1_io_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195201.4]
  assign TLMonitor_1_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195200.4]
  assign TLMonitor_1_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195199.4]
  assign TLMonitor_1_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195197.4]
  assign TLMonitor_1_io_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195196.4]
  assign TLMonitor_1_io_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@195194.4]
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
  _T_154 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_163 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_218_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_218_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_154 <= 9'h0;
    end else if (_T_156) begin
      if (_T_188) begin
        if (_T_79) begin
          _T_154 <= _T_76[11:3];
        end else begin
          _T_154 <= 9'h0;
        end
      end else begin
        _T_154 <= 9'h0;
      end
    end else begin
      _T_154 <= _T_215;
    end
    if (reset) begin
      _T_163 <= 2'h3;
    end else if (_T_178) begin
      _T_163 <= _T_182;
    end
    if (reset) begin
      _T_218_0 <= 1'h0;
    end else if (_T_155) begin
      _T_218_0 <= _T_188;
    end
    if (reset) begin
      _T_218_1 <= 1'h0;
    end else if (_T_155) begin
      _T_218_1 <= _T_189;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_202) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@195594.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_202) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@195595.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_209) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@195605.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_209) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@195606.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
