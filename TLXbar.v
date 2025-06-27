module TLXbar( // @[:chipyard.TestHarness.RocketConfig.fir@4927.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@4928.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@4929.4]
  output        auto_in_1_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_1_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_in_1_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_in_1_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [3:0]  auto_in_1_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [1:0]  auto_in_1_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [31:0] auto_in_1_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [7:0]  auto_in_1_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [63:0] auto_in_1_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_1_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_1_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_1_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [1:0]  auto_in_1_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [31:0] auto_in_1_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_1_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_1_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_in_1_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_in_1_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [3:0]  auto_in_1_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [1:0]  auto_in_1_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [31:0] auto_in_1_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [63:0] auto_in_1_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_1_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_1_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_1_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_in_1_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [1:0]  auto_in_1_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [3:0]  auto_in_1_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [1:0]  auto_in_1_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_in_1_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_1_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [63:0] auto_in_1_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_1_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_1_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_in_1_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_0_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_0_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_in_0_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_in_0_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [3:0]  auto_in_0_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_0_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [31:0] auto_in_0_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [7:0]  auto_in_0_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [63:0] auto_in_0_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_0_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_in_0_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_0_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_in_0_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [1:0]  auto_in_0_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [3:0]  auto_in_0_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_in_0_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_0_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [63:0] auto_in_0_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_in_0_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_1_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_1_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [31:0] auto_out_1_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [7:0]  auto_out_1_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [63:0] auto_out_1_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_1_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_1_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_1_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [1:0]  auto_out_1_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [31:0] auto_out_1_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_1_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_1_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [31:0] auto_out_1_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [63:0] auto_out_1_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_1_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_1_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_1_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_out_1_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [1:0]  auto_out_1_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_out_1_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_out_1_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_out_1_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_1_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [63:0] auto_out_1_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_1_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_1_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_1_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_0_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_0_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_0_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_0_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [3:0]  auto_out_0_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [2:0]  auto_out_0_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [30:0] auto_out_0_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [7:0]  auto_out_0_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output [63:0] auto_out_0_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_0_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  output        auto_out_0_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_0_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_out_0_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [1:0]  auto_out_0_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [3:0]  auto_out_0_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [2:0]  auto_out_0_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_0_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_0_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input  [63:0] auto_out_0_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
  input         auto_out_0_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@4930.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire [2:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
  wire  TLMonitor_1_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [3:0] TLMonitor_1_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [1:0] TLMonitor_1_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [31:0] TLMonitor_1_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [7:0] TLMonitor_1_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_b_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_b_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [1:0] TLMonitor_1_io_in_b_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [31:0] TLMonitor_1_io_in_b_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_c_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_c_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [2:0] TLMonitor_1_io_in_c_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [2:0] TLMonitor_1_io_in_c_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [3:0] TLMonitor_1_io_in_c_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [1:0] TLMonitor_1_io_in_c_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [31:0] TLMonitor_1_io_in_c_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_c_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [3:0] TLMonitor_1_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire  TLMonitor_1_io_in_e_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [2:0] TLMonitor_1_io_in_e_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
  wire [2:0] _GEN_4; // @[Xbar.scala 128:55:chipyard.TestHarness.RocketConfig.fir@5027.4]
  wire [2:0] _T_5; // @[Xbar.scala 128:55:chipyard.TestHarness.RocketConfig.fir@5027.4]
  reg [8:0] _T_576; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@5976.4]
  reg [31:0] _RAND_0;
  wire  _T_577; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@5977.4]
  wire  _T_99; // @[Parameters.scala 55:32:chipyard.TestHarness.RocketConfig.fir@5263.4]
  wire  _T_247; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5464.4]
  wire  _T_90; // @[Parameters.scala 55:32:chipyard.TestHarness.RocketConfig.fir@5254.4]
  wire  _T_238; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5448.4]
  wire [1:0] _T_579; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5979.4]
  reg [1:0] _T_585; // @[Arbiter.scala 21:23:chipyard.TestHarness.RocketConfig.fir@5989.4]
  reg [31:0] _RAND_1;
  wire [1:0] _T_586; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@5990.4]
  wire [1:0] _T_587; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@5991.4]
  wire [3:0] _T_588; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5992.4]
  wire [3:0] _GEN_5; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5994.4]
  wire [3:0] _T_590; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5994.4]
  wire [3:0] _T_593; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@5997.4]
  wire [3:0] _GEN_6; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5998.4]
  wire [3:0] _T_594; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5998.4]
  wire [1:0] _T_597; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@6001.4]
  wire [1:0] _T_598; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@6002.4]
  wire  _T_610; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@6020.4]
  reg  _T_640_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@6065.4]
  reg [31:0] _RAND_2;
  wire  _T_641_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@6066.4]
  wire [2:0] _T_13_0_d_bits_sink; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@5102.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@5125.4 Xbar.scala 194:28:chipyard.TestHarness.RocketConfig.fir@5133.4]
  wire [80:0] _T_657; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6087.4]
  wire [80:0] _T_658; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6088.4]
  wire  _T_611; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@6021.4]
  reg  _T_640_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@6065.4]
  reg [31:0] _RAND_3;
  wire  _T_641_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@6066.4]
  wire [3:0] _T_13_1_d_bits_size; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@5102.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@5172.4]
  wire [80:0] _T_665; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6095.4]
  wire [80:0] _T_666; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6096.4]
  wire [80:0] _T_667; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6097.4]
  wire [32:0] _T_21; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@5185.4]
  wire [32:0] _T_23; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@5187.4]
  wire  _T_24; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@5188.4]
  wire [31:0] _T_26; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@5190.4]
  wire [32:0] _T_27; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@5191.4]
  wire [32:0] _T_29; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@5193.4]
  wire  _T_30; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@5194.4]
  wire [32:0] _T_33; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@5197.4]
  wire [32:0] _T_35; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@5199.4]
  wire  _T_36; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@5200.4]
  wire [31:0] _T_38; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@5202.4]
  wire [32:0] _T_39; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@5203.4]
  wire [32:0] _T_41; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@5205.4]
  wire  _T_42; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@5206.4]
  wire  _T_86; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@5250.4]
  wire  _T_95; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@5259.4]
  wire [26:0] _T_121; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@5285.4]
  wire [11:0] _T_123; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@5287.4]
  wire  _T_126; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@5290.4]
  wire [8:0] _T_127; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@5291.4]
  wire [26:0] _T_129; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@5293.4]
  wire [11:0] _T_131; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@5295.4]
  wire  _T_134; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@5298.4]
  wire [8:0] _T_135; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@5299.4]
  wire [26:0] _T_167; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@5331.4]
  wire [11:0] _T_169; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@5333.4]
  wire [8:0] _T_172; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@5336.4]
  wire [20:0] _T_174; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@5338.4]
  wire [5:0] _T_176; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@5340.4]
  wire [2:0] _T_179; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@5343.4]
  wire  _T_182; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5348.4]
  wire  _T_184; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5352.4]
  reg [8:0] _T_270; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@5504.4]
  reg [31:0] _RAND_4;
  wire  _T_271; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@5505.4]
  wire  _T_191; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5364.4]
  wire [1:0] _T_273; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5507.4]
  reg [1:0] _T_279; // @[Arbiter.scala 21:23:chipyard.TestHarness.RocketConfig.fir@5517.4]
  reg [31:0] _RAND_5;
  wire [1:0] _T_280; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@5518.4]
  wire [1:0] _T_281; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@5519.4]
  wire [3:0] _T_282; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5520.4]
  wire [3:0] _GEN_7; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5522.4]
  wire [3:0] _T_284; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5522.4]
  wire [3:0] _T_287; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@5525.4]
  wire [3:0] _GEN_8; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5526.4]
  wire [3:0] _T_288; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5526.4]
  wire [1:0] _T_291; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@5529.4]
  wire [1:0] _T_292; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@5530.4]
  reg  _T_334_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@5593.4]
  reg [31:0] _RAND_6;
  wire  _T_336_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5596.4]
  wire  _T_337; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5597.4]
  wire  _T_185; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5354.4]
  reg [8:0] _T_372; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@5655.4]
  reg [31:0] _RAND_7;
  wire  _T_373; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@5656.4]
  wire  _T_193; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5368.4]
  wire [1:0] _T_375; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5658.4]
  reg [1:0] _T_381; // @[Arbiter.scala 21:23:chipyard.TestHarness.RocketConfig.fir@5668.4]
  reg [31:0] _RAND_8;
  wire [1:0] _T_382; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@5669.4]
  wire [1:0] _T_383; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@5670.4]
  wire [3:0] _T_384; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5671.4]
  wire [3:0] _GEN_9; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5673.4]
  wire [3:0] _T_386; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5673.4]
  wire [3:0] _T_389; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@5676.4]
  wire [3:0] _GEN_10; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5677.4]
  wire [3:0] _T_390; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5677.4]
  wire [1:0] _T_393; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@5680.4]
  wire [1:0] _T_394; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@5681.4]
  reg  _T_436_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@5744.4]
  reg [31:0] _RAND_9;
  wire  _T_438_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5747.4]
  wire  _T_439; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5748.4]
  wire  _T_186; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5355.4]
  reg  _T_334_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@5593.4]
  reg [31:0] _RAND_10;
  wire  _T_336_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5596.4]
  wire  _T_338; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5599.4]
  wire  _T_194; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5370.4]
  reg  _T_436_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@5744.4]
  reg [31:0] _RAND_11;
  wire  _T_438_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5747.4]
  wire  _T_440; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5750.4]
  wire  _T_195; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5371.4]
  wire  _T_236; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5444.4]
  reg [8:0] _T_474; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@5817.4]
  reg [31:0] _RAND_12;
  wire  _T_475; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@5818.4]
  wire  _T_245; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5460.4]
  wire [1:0] _T_477; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5820.4]
  reg [1:0] _T_483; // @[Arbiter.scala 21:23:chipyard.TestHarness.RocketConfig.fir@5830.4]
  reg [31:0] _RAND_13;
  wire [1:0] _T_484; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@5831.4]
  wire [1:0] _T_485; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@5832.4]
  wire [3:0] _T_486; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5833.4]
  wire [3:0] _GEN_11; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5835.4]
  wire [3:0] _T_488; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5835.4]
  wire [3:0] _T_491; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@5838.4]
  wire [3:0] _GEN_12; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5839.4]
  wire [3:0] _T_492; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5839.4]
  wire [1:0] _T_495; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@5842.4]
  wire [1:0] _T_496; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@5843.4]
  reg  _T_538_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@5906.4]
  reg [31:0] _RAND_14;
  wire  _T_540_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5909.4]
  wire  _T_541; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5910.4]
  wire  _T_239; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5450.4]
  wire  _T_642_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@6068.4]
  wire  _T_643; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@6069.4]
  wire  _T_240; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5451.4]
  reg  _T_538_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@5906.4]
  reg [31:0] _RAND_15;
  wire  _T_540_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5909.4]
  wire  _T_542; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5912.4]
  wire  _T_248; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5466.4]
  wire  _T_642_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@6068.4]
  wire  _T_644; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@6071.4]
  wire  _T_249; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5467.4]
  wire  _T_272; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@5506.4]
  wire  _T_293; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@5531.4]
  wire  _T_294; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@5532.4]
  wire [1:0] _T_295; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@5534.6]
  wire [2:0] _T_296; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@5535.6]
  wire [1:0] _T_298; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@5537.6]
  wire  _T_304; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5548.4]
  wire  _T_305; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5549.4]
  wire  _T_308; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@5555.4]
  wire  _T_310; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5557.4]
  wire  _T_313; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5560.4]
  wire  _T_314; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@5561.4]
  wire  _T_317; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5564.4]
  wire  _T_318; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5565.4]
  wire  _T_319; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@5570.4]
  wire  _T_320; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@5571.4]
  wire  _T_322; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@5573.4]
  wire  _T_324; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5575.4]
  wire  _T_325; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5576.4]
  wire [8:0] _T_326; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5581.4]
  wire [8:0] _T_327; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5582.4]
  wire [8:0] _T_328; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@5583.4]
  wire  _T_340; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5602.4]
  wire  _T_341; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5603.4]
  wire  _T_342; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5604.4]
  wire  _T_344; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@5607.4]
  wire  _T_329; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@5584.4]
  wire [8:0] _GEN_13; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5585.4]
  wire [8:0] _T_331; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5586.4]
  wire  _T_335_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5594.4]
  wire  _T_335_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5594.4]
  wire [117:0] _T_351; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5615.4]
  wire [117:0] _T_352; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5616.4]
  wire [2:0] _T_4_1_a_bits_source; // @[Xbar.scala 122:18:chipyard.TestHarness.RocketConfig.fir@5015.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@5056.4 Xbar.scala 128:29:chipyard.TestHarness.RocketConfig.fir@5063.4]
  wire [117:0] _T_359; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5623.4]
  wire [117:0] _T_360; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5624.4]
  wire [117:0] _T_361; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5625.4]
  wire  _T_374; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@5657.4]
  wire  _T_395; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@5682.4]
  wire  _T_396; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@5683.4]
  wire [1:0] _T_397; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@5685.6]
  wire [2:0] _T_398; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@5686.6]
  wire [1:0] _T_400; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@5688.6]
  wire  _T_406; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5699.4]
  wire  _T_407; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5700.4]
  wire  _T_410; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@5706.4]
  wire  _T_412; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5708.4]
  wire  _T_415; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5711.4]
  wire  _T_416; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@5712.4]
  wire  _T_419; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5715.4]
  wire  _T_420; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5716.4]
  wire  _T_421; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@5721.4]
  wire  _T_422; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@5722.4]
  wire  _T_424; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@5724.4]
  wire  _T_426; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5726.4]
  wire  _T_427; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5727.4]
  wire [8:0] _T_428; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5732.4]
  wire [8:0] _T_429; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5733.4]
  wire [8:0] _T_430; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@5734.4]
  wire  _T_442; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5753.4]
  wire  _T_443; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5754.4]
  wire  _T_444; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5755.4]
  wire  _T_446; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@5758.4]
  wire  _T_431; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@5735.4]
  wire [8:0] _GEN_14; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5736.4]
  wire [8:0] _T_433; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5737.4]
  wire  _T_437_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5745.4]
  wire  _T_437_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5745.4]
  wire [117:0] _T_454; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5767.4]
  wire [117:0] _T_462; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5775.4]
  wire [117:0] _T_463; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5776.4]
  wire  _T_476; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@5819.4]
  wire  _T_497; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@5844.4]
  wire  _T_498; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@5845.4]
  wire [1:0] _T_499; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@5847.6]
  wire [2:0] _T_500; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@5848.6]
  wire [1:0] _T_502; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@5850.6]
  wire  _T_508; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5861.4]
  wire  _T_509; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5862.4]
  wire  _T_512; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@5868.4]
  wire  _T_514; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5870.4]
  wire  _T_517; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5873.4]
  wire  _T_518; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@5874.4]
  wire  _T_521; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5877.4]
  wire  _T_522; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5878.4]
  wire  _T_523; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@5883.4]
  wire  _T_524; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@5884.4]
  wire  _T_526; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@5886.4]
  wire  _T_528; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5888.4]
  wire  _T_529; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5889.4]
  wire [8:0] _T_530; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5894.4]
  wire [2:0] _T_531; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5895.4]
  wire [8:0] _GEN_15; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@5896.4]
  wire [8:0] _T_532; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@5896.4]
  wire  _T_544; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5915.4]
  wire  _T_545; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5916.4]
  wire  _T_546; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5917.4]
  wire  _T_548; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@5920.4]
  wire  _T_533; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@5897.4]
  wire [8:0] _GEN_16; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5898.4]
  wire [8:0] _T_535; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5899.4]
  wire  _T_539_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5907.4]
  wire  _T_539_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5907.4]
  wire [80:0] _T_556; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5929.4]
  wire [80:0] _T_564; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5937.4]
  wire [80:0] _T_565; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5938.4]
  wire  _T_578; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@5978.4]
  wire  _T_599; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@6003.4]
  wire  _T_600; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@6004.4]
  wire [1:0] _T_601; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@6006.6]
  wire [2:0] _T_602; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@6007.6]
  wire [1:0] _T_604; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@6009.6]
  wire  _T_614; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@6027.4]
  wire  _T_616; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@6029.4]
  wire  _T_619; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@6032.4]
  wire  _T_620; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@6033.4]
  wire  _T_623; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@6036.4]
  wire  _T_624; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@6037.4]
  wire  _T_625; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@6042.4]
  wire  _T_626; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@6043.4]
  wire  _T_628; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@6045.4]
  wire  _T_630; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@6047.4]
  wire  _T_631; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@6048.4]
  wire [8:0] _T_632; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@6053.4]
  wire [2:0] _T_633; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@6054.4]
  wire [8:0] _GEN_17; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@6055.4]
  wire [8:0] _T_634; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@6055.4]
  wire  _T_646; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6074.4]
  wire  _T_647; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6075.4]
  wire  _T_648; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6076.4]
  wire  _T_650; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@6079.4]
  wire  _T_635; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@6056.4]
  wire [8:0] _GEN_18; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@6057.4]
  wire [8:0] _T_637; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@6058.4]
  TLMonitor TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4939.4]
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
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  TLMonitor_1 TLMonitor_1 ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@4962.4]
    .clock(TLMonitor_1_clock),
    .reset(TLMonitor_1_reset),
    .io_in_a_ready(TLMonitor_1_io_in_a_ready),
    .io_in_a_valid(TLMonitor_1_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_1_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_1_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_1_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_1_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_1_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_1_io_in_a_bits_corrupt),
    .io_in_b_ready(TLMonitor_1_io_in_b_ready),
    .io_in_b_valid(TLMonitor_1_io_in_b_valid),
    .io_in_b_bits_param(TLMonitor_1_io_in_b_bits_param),
    .io_in_b_bits_address(TLMonitor_1_io_in_b_bits_address),
    .io_in_c_ready(TLMonitor_1_io_in_c_ready),
    .io_in_c_valid(TLMonitor_1_io_in_c_valid),
    .io_in_c_bits_opcode(TLMonitor_1_io_in_c_bits_opcode),
    .io_in_c_bits_param(TLMonitor_1_io_in_c_bits_param),
    .io_in_c_bits_size(TLMonitor_1_io_in_c_bits_size),
    .io_in_c_bits_source(TLMonitor_1_io_in_c_bits_source),
    .io_in_c_bits_address(TLMonitor_1_io_in_c_bits_address),
    .io_in_c_bits_corrupt(TLMonitor_1_io_in_c_bits_corrupt),
    .io_in_d_ready(TLMonitor_1_io_in_d_ready),
    .io_in_d_valid(TLMonitor_1_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_1_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_1_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_1_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_1_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_1_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_1_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_1_io_in_d_bits_corrupt),
    .io_in_e_valid(TLMonitor_1_io_in_e_valid),
    .io_in_e_bits_sink(TLMonitor_1_io_in_e_bits_sink)
  );
  assign _GEN_4 = {{2'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 128:55:chipyard.TestHarness.RocketConfig.fir@5027.4]
  assign _T_5 = _GEN_4 | 3'h4; // @[Xbar.scala 128:55:chipyard.TestHarness.RocketConfig.fir@5027.4]
  assign _T_577 = _T_576 == 9'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@5977.4]
  assign _T_99 = ~auto_out_1_d_bits_source[2]; // @[Parameters.scala 55:32:chipyard.TestHarness.RocketConfig.fir@5263.4]
  assign _T_247 = auto_out_1_d_valid & _T_99; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5464.4]
  assign _T_90 = ~auto_out_0_d_bits_source[2]; // @[Parameters.scala 55:32:chipyard.TestHarness.RocketConfig.fir@5254.4]
  assign _T_238 = auto_out_0_d_valid & _T_90; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5448.4]
  assign _T_579 = {_T_247,_T_238}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5979.4]
  assign _T_586 = ~_T_585; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@5990.4]
  assign _T_587 = _T_579 & _T_586; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@5991.4]
  assign _T_588 = {_T_587,_T_247,_T_238}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5992.4]
  assign _GEN_5 = {{1'd0}, _T_588[3:1]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5994.4]
  assign _T_590 = _T_588 | _GEN_5; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5994.4]
  assign _T_593 = {_T_585, 2'h0}; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@5997.4]
  assign _GEN_6 = {{1'd0}, _T_590[3:1]}; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5998.4]
  assign _T_594 = _GEN_6 | _T_593; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5998.4]
  assign _T_597 = _T_594[3:2] & _T_594[1:0]; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@6001.4]
  assign _T_598 = ~_T_597; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@6002.4]
  assign _T_610 = _T_598[0] & _T_238; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@6020.4]
  assign _T_641_0 = _T_577 ? _T_610 : _T_640_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@6066.4]
  assign _T_13_0_d_bits_sink = {{2'd0}, auto_out_0_d_bits_sink}; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@5102.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@5125.4 Xbar.scala 194:28:chipyard.TestHarness.RocketConfig.fir@5133.4]
  assign _T_657 = {auto_out_0_d_bits_opcode,auto_out_0_d_bits_param,auto_out_0_d_bits_size,auto_out_0_d_bits_source,_T_13_0_d_bits_sink,auto_out_0_d_bits_denied,auto_out_0_d_bits_data,auto_out_0_d_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6087.4]
  assign _T_658 = _T_641_0 ? _T_657 : 81'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6088.4]
  assign _T_611 = _T_598[1] & _T_247; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@6021.4]
  assign _T_641_1 = _T_577 ? _T_611 : _T_640_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@6066.4]
  assign _T_13_1_d_bits_size = {{1'd0}, auto_out_1_d_bits_size}; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@5102.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@5172.4]
  assign _T_665 = {auto_out_1_d_bits_opcode,auto_out_1_d_bits_param,_T_13_1_d_bits_size,auto_out_1_d_bits_source,auto_out_1_d_bits_sink,auto_out_1_d_bits_denied,auto_out_1_d_bits_data,auto_out_1_d_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6095.4]
  assign _T_666 = _T_641_1 ? _T_665 : 81'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6096.4]
  assign _T_667 = _T_658 | _T_666; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6097.4]
  assign _T_21 = {1'b0,$signed(auto_in_0_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@5185.4]
  assign _T_23 = $signed(_T_21) & 33'sh80000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@5187.4]
  assign _T_24 = $signed(_T_23) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@5188.4]
  assign _T_26 = auto_in_0_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@5190.4]
  assign _T_27 = {1'b0,$signed(_T_26)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@5191.4]
  assign _T_29 = $signed(_T_27) & 33'sh80000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@5193.4]
  assign _T_30 = $signed(_T_29) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@5194.4]
  assign _T_33 = {1'b0,$signed(auto_in_1_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@5197.4]
  assign _T_35 = $signed(_T_33) & 33'sh80000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@5199.4]
  assign _T_36 = $signed(_T_35) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@5200.4]
  assign _T_38 = auto_in_1_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@5202.4]
  assign _T_39 = {1'b0,$signed(_T_38)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@5203.4]
  assign _T_41 = $signed(_T_39) & 33'sh80000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@5205.4]
  assign _T_42 = $signed(_T_41) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@5206.4]
  assign _T_86 = auto_out_0_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@5250.4]
  assign _T_95 = auto_out_1_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@5259.4]
  assign _T_121 = 27'hfff << auto_in_0_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@5285.4]
  assign _T_123 = ~_T_121[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@5287.4]
  assign _T_126 = ~auto_in_0_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@5290.4]
  assign _T_127 = _T_126 ? _T_123[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@5291.4]
  assign _T_129 = 27'hfff << auto_in_1_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@5293.4]
  assign _T_131 = ~_T_129[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@5295.4]
  assign _T_134 = ~auto_in_1_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@5298.4]
  assign _T_135 = _T_134 ? _T_131[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@5299.4]
  assign _T_167 = 27'hfff << auto_out_0_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@5331.4]
  assign _T_169 = ~_T_167[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@5333.4]
  assign _T_172 = auto_out_0_d_bits_opcode[0] ? _T_169[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@5336.4]
  assign _T_174 = 21'h3f << _T_13_1_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@5338.4]
  assign _T_176 = ~_T_174[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@5340.4]
  assign _T_179 = auto_out_1_d_bits_opcode[0] ? _T_176[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@5343.4]
  assign _T_182 = auto_in_0_a_valid & _T_24; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5348.4]
  assign _T_184 = auto_in_0_a_valid & _T_30; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5352.4]
  assign _T_271 = _T_270 == 9'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@5505.4]
  assign _T_191 = auto_in_1_a_valid & _T_36; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5364.4]
  assign _T_273 = {_T_191,_T_182}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5507.4]
  assign _T_280 = ~_T_279; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@5518.4]
  assign _T_281 = _T_273 & _T_280; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@5519.4]
  assign _T_282 = {_T_281,_T_191,_T_182}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5520.4]
  assign _GEN_7 = {{1'd0}, _T_282[3:1]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5522.4]
  assign _T_284 = _T_282 | _GEN_7; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5522.4]
  assign _T_287 = {_T_279, 2'h0}; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@5525.4]
  assign _GEN_8 = {{1'd0}, _T_284[3:1]}; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5526.4]
  assign _T_288 = _GEN_8 | _T_287; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5526.4]
  assign _T_291 = _T_288[3:2] & _T_288[1:0]; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@5529.4]
  assign _T_292 = ~_T_291; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@5530.4]
  assign _T_336_0 = _T_271 ? _T_292[0] : _T_334_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5596.4]
  assign _T_337 = auto_out_0_a_ready & _T_336_0; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5597.4]
  assign _T_185 = _T_24 & _T_337; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5354.4]
  assign _T_373 = _T_372 == 9'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@5656.4]
  assign _T_193 = auto_in_1_a_valid & _T_42; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5368.4]
  assign _T_375 = {_T_193,_T_184}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5658.4]
  assign _T_382 = ~_T_381; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@5669.4]
  assign _T_383 = _T_375 & _T_382; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@5670.4]
  assign _T_384 = {_T_383,_T_193,_T_184}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5671.4]
  assign _GEN_9 = {{1'd0}, _T_384[3:1]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5673.4]
  assign _T_386 = _T_384 | _GEN_9; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5673.4]
  assign _T_389 = {_T_381, 2'h0}; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@5676.4]
  assign _GEN_10 = {{1'd0}, _T_386[3:1]}; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5677.4]
  assign _T_390 = _GEN_10 | _T_389; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5677.4]
  assign _T_393 = _T_390[3:2] & _T_390[1:0]; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@5680.4]
  assign _T_394 = ~_T_393; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@5681.4]
  assign _T_438_0 = _T_373 ? _T_394[0] : _T_436_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5747.4]
  assign _T_439 = auto_out_1_a_ready & _T_438_0; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5748.4]
  assign _T_186 = _T_30 & _T_439; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5355.4]
  assign _T_336_1 = _T_271 ? _T_292[1] : _T_334_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5596.4]
  assign _T_338 = auto_out_0_a_ready & _T_336_1; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5599.4]
  assign _T_194 = _T_36 & _T_338; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5370.4]
  assign _T_438_1 = _T_373 ? _T_394[1] : _T_436_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5747.4]
  assign _T_440 = auto_out_1_a_ready & _T_438_1; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5750.4]
  assign _T_195 = _T_42 & _T_440; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5371.4]
  assign _T_236 = auto_out_0_d_valid & _T_86; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5444.4]
  assign _T_475 = _T_474 == 9'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@5818.4]
  assign _T_245 = auto_out_1_d_valid & _T_95; // @[Xbar.scala 317:40:chipyard.TestHarness.RocketConfig.fir@5460.4]
  assign _T_477 = {_T_245,_T_236}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5820.4]
  assign _T_484 = ~_T_483; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@5831.4]
  assign _T_485 = _T_477 & _T_484; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@5832.4]
  assign _T_486 = {_T_485,_T_245,_T_236}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@5833.4]
  assign _GEN_11 = {{1'd0}, _T_486[3:1]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5835.4]
  assign _T_488 = _T_486 | _GEN_11; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@5835.4]
  assign _T_491 = {_T_483, 2'h0}; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@5838.4]
  assign _GEN_12 = {{1'd0}, _T_488[3:1]}; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5839.4]
  assign _T_492 = _GEN_12 | _T_491; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@5839.4]
  assign _T_495 = _T_492[3:2] & _T_492[1:0]; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@5842.4]
  assign _T_496 = ~_T_495; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@5843.4]
  assign _T_540_0 = _T_475 ? _T_496[0] : _T_538_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5909.4]
  assign _T_541 = auto_in_0_d_ready & _T_540_0; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5910.4]
  assign _T_239 = _T_86 & _T_541; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5450.4]
  assign _T_642_0 = _T_577 ? _T_598[0] : _T_640_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@6068.4]
  assign _T_643 = auto_in_1_d_ready & _T_642_0; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@6069.4]
  assign _T_240 = _T_90 & _T_643; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5451.4]
  assign _T_540_1 = _T_475 ? _T_496[1] : _T_538_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@5909.4]
  assign _T_542 = auto_in_0_d_ready & _T_540_1; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@5912.4]
  assign _T_248 = _T_95 & _T_542; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5466.4]
  assign _T_642_1 = _T_577 ? _T_598[1] : _T_640_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@6068.4]
  assign _T_644 = auto_in_1_d_ready & _T_642_1; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@6071.4]
  assign _T_249 = _T_99 & _T_644; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5467.4]
  assign _T_272 = _T_271 & auto_out_0_a_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@5506.4]
  assign _T_293 = |_T_273; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@5531.4]
  assign _T_294 = _T_272 & _T_293; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@5532.4]
  assign _T_295 = _T_292 & _T_273; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@5534.6]
  assign _T_296 = {_T_295, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@5535.6]
  assign _T_298 = _T_295 | _T_296[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@5537.6]
  assign _T_304 = _T_292[0] & _T_182; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5548.4]
  assign _T_305 = _T_292[1] & _T_191; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5549.4]
  assign _T_308 = _T_304 | _T_305; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@5555.4]
  assign _T_310 = ~_T_304; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5557.4]
  assign _T_313 = ~_T_305; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5560.4]
  assign _T_314 = _T_310 | _T_313; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@5561.4]
  assign _T_317 = _T_314 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5564.4]
  assign _T_318 = ~_T_317; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5565.4]
  assign _T_319 = _T_182 | _T_191; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@5570.4]
  assign _T_320 = ~_T_319; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@5571.4]
  assign _T_322 = _T_320 | _T_308; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@5573.4]
  assign _T_324 = _T_322 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5575.4]
  assign _T_325 = ~_T_324; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5576.4]
  assign _T_326 = _T_304 ? _T_127 : 9'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5581.4]
  assign _T_327 = _T_305 ? _T_135 : 9'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5582.4]
  assign _T_328 = _T_326 | _T_327; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@5583.4]
  assign _T_340 = _T_334_0 & _T_182; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5602.4]
  assign _T_341 = _T_334_1 & _T_191; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5603.4]
  assign _T_342 = _T_340 | _T_341; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5604.4]
  assign _T_344 = _T_271 ? _T_319 : _T_342; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@5607.4]
  assign _T_329 = auto_out_0_a_ready & _T_344; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@5584.4]
  assign _GEN_13 = {{8'd0}, _T_329}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5585.4]
  assign _T_331 = _T_270 - _GEN_13; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5586.4]
  assign _T_335_0 = _T_271 ? _T_304 : _T_334_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5594.4]
  assign _T_335_1 = _T_271 ? _T_305 : _T_334_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5594.4]
  assign _T_351 = {auto_in_0_a_bits_opcode,auto_in_0_a_bits_param,auto_in_0_a_bits_size,_T_5,auto_in_0_a_bits_address,auto_in_0_a_bits_mask,auto_in_0_a_bits_data,auto_in_0_a_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5615.4]
  assign _T_352 = _T_335_0 ? _T_351 : 118'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5616.4]
  assign _T_4_1_a_bits_source = {{1'd0}, auto_in_1_a_bits_source}; // @[Xbar.scala 122:18:chipyard.TestHarness.RocketConfig.fir@5015.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@5056.4 Xbar.scala 128:29:chipyard.TestHarness.RocketConfig.fir@5063.4]
  assign _T_359 = {auto_in_1_a_bits_opcode,auto_in_1_a_bits_param,auto_in_1_a_bits_size,_T_4_1_a_bits_source,auto_in_1_a_bits_address,auto_in_1_a_bits_mask,auto_in_1_a_bits_data,auto_in_1_a_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5623.4]
  assign _T_360 = _T_335_1 ? _T_359 : 118'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5624.4]
  assign _T_361 = _T_352 | _T_360; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5625.4]
  assign _T_374 = _T_373 & auto_out_1_a_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@5657.4]
  assign _T_395 = |_T_375; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@5682.4]
  assign _T_396 = _T_374 & _T_395; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@5683.4]
  assign _T_397 = _T_394 & _T_375; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@5685.6]
  assign _T_398 = {_T_397, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@5686.6]
  assign _T_400 = _T_397 | _T_398[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@5688.6]
  assign _T_406 = _T_394[0] & _T_184; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5699.4]
  assign _T_407 = _T_394[1] & _T_193; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5700.4]
  assign _T_410 = _T_406 | _T_407; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@5706.4]
  assign _T_412 = ~_T_406; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5708.4]
  assign _T_415 = ~_T_407; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5711.4]
  assign _T_416 = _T_412 | _T_415; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@5712.4]
  assign _T_419 = _T_416 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5715.4]
  assign _T_420 = ~_T_419; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5716.4]
  assign _T_421 = _T_184 | _T_193; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@5721.4]
  assign _T_422 = ~_T_421; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@5722.4]
  assign _T_424 = _T_422 | _T_410; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@5724.4]
  assign _T_426 = _T_424 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5726.4]
  assign _T_427 = ~_T_426; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5727.4]
  assign _T_428 = _T_406 ? _T_127 : 9'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5732.4]
  assign _T_429 = _T_407 ? _T_135 : 9'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5733.4]
  assign _T_430 = _T_428 | _T_429; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@5734.4]
  assign _T_442 = _T_436_0 & _T_184; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5753.4]
  assign _T_443 = _T_436_1 & _T_193; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5754.4]
  assign _T_444 = _T_442 | _T_443; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5755.4]
  assign _T_446 = _T_373 ? _T_421 : _T_444; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@5758.4]
  assign _T_431 = auto_out_1_a_ready & _T_446; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@5735.4]
  assign _GEN_14 = {{8'd0}, _T_431}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5736.4]
  assign _T_433 = _T_372 - _GEN_14; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5737.4]
  assign _T_437_0 = _T_373 ? _T_406 : _T_436_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5745.4]
  assign _T_437_1 = _T_373 ? _T_407 : _T_436_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5745.4]
  assign _T_454 = _T_437_0 ? _T_351 : 118'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5767.4]
  assign _T_462 = _T_437_1 ? _T_359 : 118'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5775.4]
  assign _T_463 = _T_454 | _T_462; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5776.4]
  assign _T_476 = _T_475 & auto_in_0_d_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@5819.4]
  assign _T_497 = |_T_477; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@5844.4]
  assign _T_498 = _T_476 & _T_497; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@5845.4]
  assign _T_499 = _T_496 & _T_477; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@5847.6]
  assign _T_500 = {_T_499, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@5848.6]
  assign _T_502 = _T_499 | _T_500[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@5850.6]
  assign _T_508 = _T_496[0] & _T_236; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5861.4]
  assign _T_509 = _T_496[1] & _T_245; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@5862.4]
  assign _T_512 = _T_508 | _T_509; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@5868.4]
  assign _T_514 = ~_T_508; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5870.4]
  assign _T_517 = ~_T_509; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@5873.4]
  assign _T_518 = _T_514 | _T_517; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@5874.4]
  assign _T_521 = _T_518 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5877.4]
  assign _T_522 = ~_T_521; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5878.4]
  assign _T_523 = _T_236 | _T_245; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@5883.4]
  assign _T_524 = ~_T_523; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@5884.4]
  assign _T_526 = _T_524 | _T_512; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@5886.4]
  assign _T_528 = _T_526 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5888.4]
  assign _T_529 = ~_T_528; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5889.4]
  assign _T_530 = _T_508 ? _T_172 : 9'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5894.4]
  assign _T_531 = _T_509 ? _T_179 : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@5895.4]
  assign _GEN_15 = {{6'd0}, _T_531}; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@5896.4]
  assign _T_532 = _T_530 | _GEN_15; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@5896.4]
  assign _T_544 = _T_538_0 & _T_236; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5915.4]
  assign _T_545 = _T_538_1 & _T_245; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5916.4]
  assign _T_546 = _T_544 | _T_545; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5917.4]
  assign _T_548 = _T_475 ? _T_523 : _T_546; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@5920.4]
  assign _T_533 = auto_in_0_d_ready & _T_548; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@5897.4]
  assign _GEN_16 = {{8'd0}, _T_533}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5898.4]
  assign _T_535 = _T_474 - _GEN_16; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@5899.4]
  assign _T_539_0 = _T_475 ? _T_508 : _T_538_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5907.4]
  assign _T_539_1 = _T_475 ? _T_509 : _T_538_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@5907.4]
  assign _T_556 = _T_539_0 ? _T_657 : 81'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5929.4]
  assign _T_564 = _T_539_1 ? _T_665 : 81'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5937.4]
  assign _T_565 = _T_556 | _T_564; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@5938.4]
  assign _T_578 = _T_577 & auto_in_1_d_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@5978.4]
  assign _T_599 = |_T_579; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@6003.4]
  assign _T_600 = _T_578 & _T_599; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@6004.4]
  assign _T_601 = _T_598 & _T_579; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@6006.6]
  assign _T_602 = {_T_601, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@6007.6]
  assign _T_604 = _T_601 | _T_602[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@6009.6]
  assign _T_614 = _T_610 | _T_611; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@6027.4]
  assign _T_616 = ~_T_610; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@6029.4]
  assign _T_619 = ~_T_611; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@6032.4]
  assign _T_620 = _T_616 | _T_619; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@6033.4]
  assign _T_623 = _T_620 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@6036.4]
  assign _T_624 = ~_T_623; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@6037.4]
  assign _T_625 = _T_238 | _T_247; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@6042.4]
  assign _T_626 = ~_T_625; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@6043.4]
  assign _T_628 = _T_626 | _T_614; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@6045.4]
  assign _T_630 = _T_628 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@6047.4]
  assign _T_631 = ~_T_630; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@6048.4]
  assign _T_632 = _T_610 ? _T_172 : 9'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@6053.4]
  assign _T_633 = _T_611 ? _T_179 : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@6054.4]
  assign _GEN_17 = {{6'd0}, _T_633}; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@6055.4]
  assign _T_634 = _T_632 | _GEN_17; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@6055.4]
  assign _T_646 = _T_640_0 & _T_238; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6074.4]
  assign _T_647 = _T_640_1 & _T_247; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6075.4]
  assign _T_648 = _T_646 | _T_647; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@6076.4]
  assign _T_650 = _T_577 ? _T_625 : _T_648; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@6079.4]
  assign _T_635 = auto_in_1_d_ready & _T_650; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@6056.4]
  assign _GEN_18 = {{8'd0}, _T_635}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@6057.4]
  assign _T_637 = _T_576 - _GEN_18; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@6058.4]
  assign auto_in_1_a_ready = _T_194 | _T_195; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_b_valid = auto_out_1_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_b_bits_param = auto_out_1_b_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_b_bits_address = auto_out_1_b_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_c_ready = auto_out_1_c_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_valid = _T_577 ? _T_625 : _T_648; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_bits_opcode = _T_667[80:78]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_bits_param = _T_667[77:76]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_bits_size = _T_667[75:72]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_bits_source = _T_667[70:69]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_bits_sink = _T_667[68:66]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_bits_denied = _T_667[65]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_bits_data = _T_667[64:1]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_1_d_bits_corrupt = _T_667[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5014.4]
  assign auto_in_0_a_ready = _T_185 | _T_186; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_in_0_d_valid = _T_475 ? _T_523 : _T_546; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_in_0_d_bits_opcode = _T_565[80:78]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_in_0_d_bits_param = _T_565[77:76]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_in_0_d_bits_size = _T_565[75:72]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_in_0_d_bits_sink = _T_565[68:66]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_in_0_d_bits_denied = _T_565[65]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_in_0_d_bits_data = _T_565[64:1]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_in_0_d_bits_corrupt = _T_565[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@5013.4]
  assign auto_out_1_a_valid = _T_373 ? _T_421 : _T_444; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_a_bits_opcode = _T_463[117:115]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_a_bits_param = _T_463[114:112]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_a_bits_size = _T_463[110:108]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_a_bits_source = _T_463[107:105]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_a_bits_address = _T_463[104:73]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_a_bits_mask = _T_463[72:65]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_a_bits_data = _T_463[64:1]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_a_bits_corrupt = _T_463[0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_b_ready = auto_in_1_b_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_c_valid = auto_in_1_c_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_c_bits_opcode = auto_in_1_c_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_c_bits_param = auto_in_1_c_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_c_bits_size = auto_in_1_c_bits_size[2:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_c_bits_source = {{1'd0}, auto_in_1_c_bits_source}; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_c_bits_address = auto_in_1_c_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_c_bits_data = auto_in_1_c_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_c_bits_corrupt = auto_in_1_c_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_d_ready = _T_248 | _T_249; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_e_valid = auto_in_1_e_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_1_e_bits_sink = auto_in_1_e_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5012.4]
  assign auto_out_0_a_valid = _T_271 ? _T_319 : _T_342; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_a_bits_opcode = _T_361[117:115]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_a_bits_param = _T_361[114:112]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_a_bits_size = _T_361[111:108]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_a_bits_source = _T_361[107:105]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_a_bits_address = _T_361[103:73]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_a_bits_mask = _T_361[72:65]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_a_bits_data = _T_361[64:1]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_a_bits_corrupt = _T_361[0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign auto_out_0_d_ready = _T_239 | _T_240; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@5011.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@4940.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@4941.4]
  assign TLMonitor_io_in_a_ready = _T_185 | _T_186; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4961.4]
  assign TLMonitor_io_in_a_valid = auto_in_0_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4960.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4959.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4958.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4957.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4956.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4955.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_0_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4954.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_0_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4952.4]
  assign TLMonitor_io_in_d_ready = auto_in_0_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4951.4]
  assign TLMonitor_io_in_d_valid = _T_475 ? _T_523 : _T_546; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4950.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_565[80:78]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4949.4]
  assign TLMonitor_io_in_d_bits_param = _T_565[77:76]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4948.4]
  assign TLMonitor_io_in_d_bits_size = _T_565[75:72]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4947.4]
  assign TLMonitor_io_in_d_bits_sink = _T_565[68:66]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4945.4]
  assign TLMonitor_io_in_d_bits_denied = _T_565[65]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4944.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_565[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4942.4]
  assign TLMonitor_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@4963.4]
  assign TLMonitor_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@4964.4]
  assign TLMonitor_1_io_in_a_ready = _T_194 | _T_195; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@5006.4]
  assign TLMonitor_1_io_in_a_valid = auto_in_1_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@5005.4]
  assign TLMonitor_1_io_in_a_bits_opcode = auto_in_1_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@5004.4]
  assign TLMonitor_1_io_in_a_bits_param = auto_in_1_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@5003.4]
  assign TLMonitor_1_io_in_a_bits_size = auto_in_1_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@5002.4]
  assign TLMonitor_1_io_in_a_bits_source = auto_in_1_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@5001.4]
  assign TLMonitor_1_io_in_a_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@5000.4]
  assign TLMonitor_1_io_in_a_bits_mask = auto_in_1_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4999.4]
  assign TLMonitor_1_io_in_a_bits_corrupt = auto_in_1_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4997.4]
  assign TLMonitor_1_io_in_b_ready = auto_in_1_b_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4996.4]
  assign TLMonitor_1_io_in_b_valid = auto_out_1_b_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4995.4]
  assign TLMonitor_1_io_in_b_bits_param = auto_out_1_b_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4993.4]
  assign TLMonitor_1_io_in_b_bits_address = auto_out_1_b_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4990.4]
  assign TLMonitor_1_io_in_c_ready = auto_out_1_c_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4986.4]
  assign TLMonitor_1_io_in_c_valid = auto_in_1_c_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4985.4]
  assign TLMonitor_1_io_in_c_bits_opcode = auto_in_1_c_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4984.4]
  assign TLMonitor_1_io_in_c_bits_param = auto_in_1_c_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4983.4]
  assign TLMonitor_1_io_in_c_bits_size = auto_in_1_c_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4982.4]
  assign TLMonitor_1_io_in_c_bits_source = auto_in_1_c_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4981.4]
  assign TLMonitor_1_io_in_c_bits_address = auto_in_1_c_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4980.4]
  assign TLMonitor_1_io_in_c_bits_corrupt = auto_in_1_c_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4978.4]
  assign TLMonitor_1_io_in_d_ready = auto_in_1_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4977.4]
  assign TLMonitor_1_io_in_d_valid = _T_577 ? _T_625 : _T_648; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4976.4]
  assign TLMonitor_1_io_in_d_bits_opcode = _T_667[80:78]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4975.4]
  assign TLMonitor_1_io_in_d_bits_param = _T_667[77:76]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4974.4]
  assign TLMonitor_1_io_in_d_bits_size = _T_667[75:72]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4973.4]
  assign TLMonitor_1_io_in_d_bits_source = _T_667[70:69]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4972.4]
  assign TLMonitor_1_io_in_d_bits_sink = _T_667[68:66]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4971.4]
  assign TLMonitor_1_io_in_d_bits_denied = _T_667[65]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4970.4]
  assign TLMonitor_1_io_in_d_bits_corrupt = _T_667[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4968.4]
  assign TLMonitor_1_io_in_e_valid = auto_in_1_e_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4966.4]
  assign TLMonitor_1_io_in_e_bits_sink = auto_in_1_e_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@4965.4]
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
  _T_576 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_585 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_640_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_640_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_270 = _RAND_4[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_279 = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_334_0 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_372 = _RAND_7[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_381 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_436_0 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_334_1 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_436_1 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_474 = _RAND_12[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_483 = _RAND_13[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_538_0 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_538_1 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_576 <= 9'h0;
    end else if (_T_578) begin
      _T_576 <= _T_634;
    end else begin
      _T_576 <= _T_637;
    end
    if (reset) begin
      _T_585 <= 2'h3;
    end else if (_T_600) begin
      _T_585 <= _T_604;
    end
    if (reset) begin
      _T_640_0 <= 1'h0;
    end else if (_T_577) begin
      _T_640_0 <= _T_610;
    end
    if (reset) begin
      _T_640_1 <= 1'h0;
    end else if (_T_577) begin
      _T_640_1 <= _T_611;
    end
    if (reset) begin
      _T_270 <= 9'h0;
    end else if (_T_272) begin
      _T_270 <= _T_328;
    end else begin
      _T_270 <= _T_331;
    end
    if (reset) begin
      _T_279 <= 2'h3;
    end else if (_T_294) begin
      _T_279 <= _T_298;
    end
    if (reset) begin
      _T_334_0 <= 1'h0;
    end else if (_T_271) begin
      _T_334_0 <= _T_304;
    end
    if (reset) begin
      _T_372 <= 9'h0;
    end else if (_T_374) begin
      _T_372 <= _T_430;
    end else begin
      _T_372 <= _T_433;
    end
    if (reset) begin
      _T_381 <= 2'h3;
    end else if (_T_396) begin
      _T_381 <= _T_400;
    end
    if (reset) begin
      _T_436_0 <= 1'h0;
    end else if (_T_373) begin
      _T_436_0 <= _T_406;
    end
    if (reset) begin
      _T_334_1 <= 1'h0;
    end else if (_T_271) begin
      _T_334_1 <= _T_305;
    end
    if (reset) begin
      _T_436_1 <= 1'h0;
    end else if (_T_373) begin
      _T_436_1 <= _T_407;
    end
    if (reset) begin
      _T_474 <= 9'h0;
    end else if (_T_476) begin
      _T_474 <= _T_532;
    end else begin
      _T_474 <= _T_535;
    end
    if (reset) begin
      _T_483 <= 2'h3;
    end else if (_T_498) begin
      _T_483 <= _T_502;
    end
    if (reset) begin
      _T_538_0 <= 1'h0;
    end else if (_T_475) begin
      _T_538_0 <= _T_508;
    end
    if (reset) begin
      _T_538_1 <= 1'h0;
    end else if (_T_475) begin
      _T_538_1 <= _T_509;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_318) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5567.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_318) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5568.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_325) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5578.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_325) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5579.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_420) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5718.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_420) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5719.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_427) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5729.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_427) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5730.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_522) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5880.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_522) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@5881.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_529) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5891.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_529) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@5892.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_624) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@6039.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_624) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@6040.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_631) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@6050.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_631) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@6051.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
