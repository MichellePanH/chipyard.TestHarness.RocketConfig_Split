module TLXbar_5( // @[:chipyard.TestHarness.RocketConfig.fir@46853.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@46854.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@46855.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [3:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [30:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [1:0]  auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [3:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_6_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_6_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_6_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_6_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_6_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_6_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [16:0] auto_out_6_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [7:0]  auto_out_6_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_6_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_6_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_6_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_6_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_6_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [63:0] auto_out_6_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_5_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_5_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_5_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_5_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_5_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_5_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [11:0] auto_out_5_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [7:0]  auto_out_5_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [63:0] auto_out_5_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_5_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_5_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_5_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_5_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_5_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_5_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [63:0] auto_out_5_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_4_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_4_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_4_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_4_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_4_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_4_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [25:0] auto_out_4_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [7:0]  auto_out_4_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [63:0] auto_out_4_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_4_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_4_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_4_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_4_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_4_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_4_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [63:0] auto_out_4_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_3_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_3_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_3_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_3_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_3_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_3_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [27:0] auto_out_3_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [7:0]  auto_out_3_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [63:0] auto_out_3_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_3_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_3_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_3_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_3_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_3_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_3_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [63:0] auto_out_3_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_2_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_2_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_2_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_2_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_2_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_2_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [30:0] auto_out_2_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [7:0]  auto_out_2_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [63:0] auto_out_2_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_2_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_2_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_2_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_2_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [1:0]  auto_out_2_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_2_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_2_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_2_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_2_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [63:0] auto_out_2_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_2_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_1_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_1_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_1_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_1_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_1_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_1_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [25:0] auto_out_1_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [7:0]  auto_out_1_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [63:0] auto_out_1_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_1_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_1_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_1_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_1_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [1:0]  auto_out_1_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_1_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_1_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_1_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_1_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [63:0] auto_out_1_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_1_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_0_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_0_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_0_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_0_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [3:0]  auto_out_0_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [2:0]  auto_out_0_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [13:0] auto_out_0_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output [7:0]  auto_out_0_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_0_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  output        auto_out_0_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_0_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_0_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [1:0]  auto_out_0_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [3:0]  auto_out_0_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [2:0]  auto_out_0_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_0_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_0_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input  [63:0] auto_out_0_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
  input         auto_out_0_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@46856.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [2:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [30:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire [2:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
  reg [8:0] _T_560; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@47967.4]
  reg [31:0] _RAND_0;
  wire  _T_561; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@47968.4]
  wire [6:0] _T_568; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@47975.4]
  reg [6:0] _T_574; // @[Arbiter.scala 21:23:chipyard.TestHarness.RocketConfig.fir@47985.4]
  reg [31:0] _RAND_1;
  wire [6:0] _T_575; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@47986.4]
  wire [6:0] _T_576; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@47987.4]
  wire [13:0] _T_577; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@47988.4]
  wire [13:0] _GEN_1; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47990.4]
  wire [13:0] _T_579; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47990.4]
  wire [13:0] _GEN_2; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47992.4]
  wire [13:0] _T_581; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47992.4]
  wire [13:0] _GEN_3; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47994.4]
  wire [13:0] _T_583; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47994.4]
  wire [13:0] _T_586; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@47997.4]
  wire [13:0] _GEN_4; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@47998.4]
  wire [13:0] _T_587; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@47998.4]
  wire [6:0] _T_590; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@48001.4]
  wire [6:0] _T_591; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@48002.4]
  wire  _T_614; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48036.4]
  reg  _T_694_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@48141.4]
  reg [31:0] _RAND_2;
  wire  _T_695_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  wire [78:0] _T_731; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48188.4]
  wire [78:0] _T_732; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48189.4]
  wire  _T_615; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48037.4]
  reg  _T_694_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@48141.4]
  reg [31:0] _RAND_3;
  wire  _T_695_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  wire [3:0] _T_17_1_d_bits_size; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47021.4]
  wire [78:0] _T_739; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48196.4]
  wire [78:0] _T_740; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48197.4]
  wire [78:0] _T_781; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48238.4]
  wire  _T_616; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48038.4]
  reg  _T_694_2; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@48141.4]
  reg [31:0] _RAND_4;
  wire  _T_695_2; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  wire [3:0] _T_17_2_d_bits_size; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47061.4]
  wire [78:0] _T_747; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48204.4]
  wire [78:0] _T_748; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48205.4]
  wire [78:0] _T_782; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48239.4]
  wire  _T_617; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48039.4]
  reg  _T_694_3; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@48141.4]
  reg [31:0] _RAND_5;
  wire  _T_695_3; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  wire [3:0] _T_17_3_d_bits_size; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47101.4]
  wire [78:0] _T_755; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48212.4]
  wire [78:0] _T_756; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48213.4]
  wire [78:0] _T_783; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48240.4]
  wire  _T_618; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48040.4]
  reg  _T_694_4; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@48141.4]
  reg [31:0] _RAND_6;
  wire  _T_695_4; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  wire [3:0] _T_17_4_d_bits_size; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47141.4]
  wire [78:0] _T_763; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48220.4]
  wire [78:0] _T_764; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48221.4]
  wire [78:0] _T_784; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48241.4]
  wire  _T_619; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48041.4]
  reg  _T_694_5; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@48141.4]
  reg [31:0] _RAND_7;
  wire  _T_695_5; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  wire [3:0] _T_17_5_d_bits_size; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47181.4]
  wire [78:0] _T_771; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48228.4]
  wire [78:0] _T_772; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48229.4]
  wire [78:0] _T_785; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48242.4]
  wire  _T_620; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48042.4]
  reg  _T_694_6; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@48141.4]
  reg [31:0] _RAND_8;
  wire  _T_695_6; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  wire [3:0] _T_17_6_d_bits_size; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47221.4]
  wire [78:0] _T_779; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48236.4]
  wire [78:0] _T_780; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48237.4]
  wire [78:0] _T_786; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48243.4]
  wire [30:0] _T_68; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47236.4]
  wire [31:0] _T_69; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47237.4]
  wire [31:0] _T_71; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47239.4]
  wire  _T_72; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47240.4]
  wire [30:0] _T_74; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47242.4]
  wire [31:0] _T_75; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47243.4]
  wire [31:0] _T_77; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47245.4]
  wire  _T_78; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47246.4]
  wire [30:0] _T_80; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47248.4]
  wire [31:0] _T_81; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47249.4]
  wire [31:0] _T_83; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47251.4]
  wire  _T_84; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47252.4]
  wire [30:0] _T_86; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47254.4]
  wire [31:0] _T_87; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47255.4]
  wire [31:0] _T_89; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47257.4]
  wire  _T_90; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47258.4]
  wire [30:0] _T_92; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47260.4]
  wire [31:0] _T_93; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47261.4]
  wire [31:0] _T_95; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47263.4]
  wire  _T_96; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47264.4]
  wire [31:0] _T_99; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47267.4]
  wire [31:0] _T_101; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47269.4]
  wire  _T_102; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47270.4]
  wire [30:0] _T_104; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47272.4]
  wire [31:0] _T_105; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47273.4]
  wire [31:0] _T_107; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47275.4]
  wire  _T_108; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47276.4]
  wire [26:0] _T_358; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47548.4]
  wire [11:0] _T_360; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47550.4]
  wire [8:0] _T_363; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47553.4]
  wire [20:0] _T_365; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47555.4]
  wire [5:0] _T_367; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47557.4]
  wire [2:0] _T_370; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47560.4]
  wire [20:0] _T_372; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47562.4]
  wire [5:0] _T_374; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47564.4]
  wire [2:0] _T_377; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47567.4]
  wire [20:0] _T_379; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47569.4]
  wire [5:0] _T_381; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47571.4]
  wire [2:0] _T_384; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47574.4]
  wire [20:0] _T_386; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47576.4]
  wire [5:0] _T_388; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47578.4]
  wire [2:0] _T_391; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47581.4]
  wire [20:0] _T_393; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47583.4]
  wire [5:0] _T_395; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47585.4]
  wire [2:0] _T_398; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47588.4]
  wire [20:0] _T_400; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47590.4]
  wire [5:0] _T_402; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47592.4]
  wire  _T_422; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47628.4]
  wire  _T_423; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47629.4]
  wire  _T_424; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47630.4]
  wire  _T_425; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47631.4]
  wire  _T_426; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47632.4]
  wire  _T_427; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47633.4]
  wire  _T_428; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47634.4]
  wire  _T_429; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47635.4]
  wire  _T_430; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47636.4]
  wire  _T_431; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47637.4]
  wire  _T_432; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47638.4]
  wire  _T_433; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47639.4]
  wire  _T_562; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@47969.4]
  wire  _T_592; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@48003.4]
  wire  _T_593; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@48004.4]
  wire [6:0] _T_594; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@48006.6]
  wire [7:0] _T_595; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@48007.6]
  wire [6:0] _T_597; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@48009.6]
  wire [8:0] _T_598; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@48010.6]
  wire [6:0] _T_600; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@48012.6]
  wire [10:0] _T_601; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@48013.6]
  wire [6:0] _T_603; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@48015.6]
  wire  _T_623; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48053.4]
  wire  _T_624; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48054.4]
  wire  _T_625; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48055.4]
  wire  _T_626; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48056.4]
  wire  _T_627; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48057.4]
  wire  _T_628; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48058.4]
  wire  _T_630; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48060.4]
  wire  _T_633; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48063.4]
  wire  _T_634; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48064.4]
  wire  _T_635; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48065.4]
  wire  _T_636; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48066.4]
  wire  _T_637; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48067.4]
  wire  _T_638; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48068.4]
  wire  _T_639; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48069.4]
  wire  _T_640; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48070.4]
  wire  _T_641; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48071.4]
  wire  _T_642; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48072.4]
  wire  _T_643; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48073.4]
  wire  _T_644; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48074.4]
  wire  _T_645; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48075.4]
  wire  _T_646; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48076.4]
  wire  _T_647; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48077.4]
  wire  _T_648; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48078.4]
  wire  _T_649; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48079.4]
  wire  _T_651; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48081.4]
  wire  _T_652; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48082.4]
  wire  _T_653; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48083.4]
  wire  _T_654; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48084.4]
  wire  _T_655; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48085.4]
  wire  _T_657; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@48087.4]
  wire  _T_658; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@48088.4]
  wire  _T_659; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48093.4]
  wire  _T_660; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48094.4]
  wire  _T_661; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48095.4]
  wire  _T_662; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48096.4]
  wire  _T_663; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48097.4]
  wire  _T_664; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48098.4]
  wire  _T_665; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@48099.4]
  wire  _T_672; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@48106.4]
  wire  _T_674; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@48108.4]
  wire  _T_675; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@48109.4]
  wire [8:0] _T_676; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48114.4]
  wire [2:0] _T_677; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48115.4]
  wire [2:0] _T_678; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48116.4]
  wire [2:0] _T_679; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48117.4]
  wire [2:0] _T_680; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48118.4]
  wire [2:0] _T_681; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48119.4]
  wire [2:0] _T_682; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48120.4]
  wire [8:0] _GEN_5; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48121.4]
  wire [8:0] _T_683; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48121.4]
  wire [8:0] _GEN_6; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48122.4]
  wire [8:0] _T_684; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48122.4]
  wire [8:0] _GEN_7; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48123.4]
  wire [8:0] _T_685; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48123.4]
  wire [8:0] _GEN_8; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48124.4]
  wire [8:0] _T_686; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48124.4]
  wire [8:0] _GEN_9; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48125.4]
  wire [8:0] _T_687; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48125.4]
  wire [8:0] _GEN_10; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48126.4]
  wire [8:0] _T_688; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48126.4]
  wire  _T_710; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48165.4]
  wire  _T_711; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48166.4]
  wire  _T_717; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48172.4]
  wire  _T_712; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48167.4]
  wire  _T_718; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48173.4]
  wire  _T_713; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48168.4]
  wire  _T_719; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48174.4]
  wire  _T_714; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48169.4]
  wire  _T_720; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48175.4]
  wire  _T_715; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48170.4]
  wire  _T_721; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48176.4]
  wire  _T_716; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48171.4]
  wire  _T_722; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48177.4]
  wire  _T_724; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@48180.4]
  wire  _T_689; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@48127.4]
  wire [8:0] _GEN_11; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@48128.4]
  wire [8:0] _T_691; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@48129.4]
  wire  _T_696_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  wire  _T_696_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  wire  _T_696_2; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  wire  _T_696_3; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  wire  _T_696_4; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  wire  _T_696_5; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  wire  _T_696_6; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  TLMonitor_21 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@46863.4]
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
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  assign _T_561 = _T_560 == 9'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@47968.4]
  assign _T_568 = {auto_out_6_d_valid,auto_out_5_d_valid,auto_out_4_d_valid,auto_out_3_d_valid,auto_out_2_d_valid,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@47975.4]
  assign _T_575 = ~_T_574; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@47986.4]
  assign _T_576 = _T_568 & _T_575; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@47987.4]
  assign _T_577 = {_T_576,auto_out_6_d_valid,auto_out_5_d_valid,auto_out_4_d_valid,auto_out_3_d_valid,auto_out_2_d_valid,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@47988.4]
  assign _GEN_1 = {{1'd0}, _T_577[13:1]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47990.4]
  assign _T_579 = _T_577 | _GEN_1; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47990.4]
  assign _GEN_2 = {{2'd0}, _T_579[13:2]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47992.4]
  assign _T_581 = _T_579 | _GEN_2; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47992.4]
  assign _GEN_3 = {{4'd0}, _T_581[13:4]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47994.4]
  assign _T_583 = _T_581 | _GEN_3; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@47994.4]
  assign _T_586 = {_T_574, 7'h0}; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@47997.4]
  assign _GEN_4 = {{1'd0}, _T_583[13:1]}; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@47998.4]
  assign _T_587 = _GEN_4 | _T_586; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@47998.4]
  assign _T_590 = _T_587[13:7] & _T_587[6:0]; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@48001.4]
  assign _T_591 = ~_T_590; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@48002.4]
  assign _T_614 = _T_591[0] & auto_out_0_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48036.4]
  assign _T_695_0 = _T_561 ? _T_614 : _T_694_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  assign _T_731 = {auto_out_0_d_bits_opcode,auto_out_0_d_bits_param,auto_out_0_d_bits_size,auto_out_0_d_bits_source,auto_out_0_d_bits_sink,auto_out_0_d_bits_denied,auto_out_0_d_bits_data,auto_out_0_d_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48188.4]
  assign _T_732 = _T_695_0 ? _T_731 : 79'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48189.4]
  assign _T_615 = _T_591[1] & auto_out_1_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48037.4]
  assign _T_695_1 = _T_561 ? _T_615 : _T_694_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  assign _T_17_1_d_bits_size = {{1'd0}, auto_out_1_d_bits_size}; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47021.4]
  assign _T_739 = {auto_out_1_d_bits_opcode,auto_out_1_d_bits_param,_T_17_1_d_bits_size,auto_out_1_d_bits_source,auto_out_1_d_bits_sink,auto_out_1_d_bits_denied,auto_out_1_d_bits_data,auto_out_1_d_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48196.4]
  assign _T_740 = _T_695_1 ? _T_739 : 79'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48197.4]
  assign _T_781 = _T_732 | _T_740; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48238.4]
  assign _T_616 = _T_591[2] & auto_out_2_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48038.4]
  assign _T_695_2 = _T_561 ? _T_616 : _T_694_2; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  assign _T_17_2_d_bits_size = {{1'd0}, auto_out_2_d_bits_size}; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47061.4]
  assign _T_747 = {auto_out_2_d_bits_opcode,auto_out_2_d_bits_param,_T_17_2_d_bits_size,auto_out_2_d_bits_source,auto_out_2_d_bits_sink,auto_out_2_d_bits_denied,auto_out_2_d_bits_data,auto_out_2_d_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48204.4]
  assign _T_748 = _T_695_2 ? _T_747 : 79'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48205.4]
  assign _T_782 = _T_781 | _T_748; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48239.4]
  assign _T_617 = _T_591[3] & auto_out_3_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48039.4]
  assign _T_695_3 = _T_561 ? _T_617 : _T_694_3; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  assign _T_17_3_d_bits_size = {{1'd0}, auto_out_3_d_bits_size}; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47101.4]
  assign _T_755 = {auto_out_3_d_bits_opcode,2'h0,_T_17_3_d_bits_size,auto_out_3_d_bits_source,2'h0,auto_out_3_d_bits_data,1'h0}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48212.4]
  assign _T_756 = _T_695_3 ? _T_755 : 79'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48213.4]
  assign _T_783 = _T_782 | _T_756; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48240.4]
  assign _T_618 = _T_591[4] & auto_out_4_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48040.4]
  assign _T_695_4 = _T_561 ? _T_618 : _T_694_4; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  assign _T_17_4_d_bits_size = {{1'd0}, auto_out_4_d_bits_size}; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47141.4]
  assign _T_763 = {auto_out_4_d_bits_opcode,2'h0,_T_17_4_d_bits_size,auto_out_4_d_bits_source,2'h0,auto_out_4_d_bits_data,1'h0}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48220.4]
  assign _T_764 = _T_695_4 ? _T_763 : 79'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48221.4]
  assign _T_784 = _T_783 | _T_764; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48241.4]
  assign _T_619 = _T_591[5] & auto_out_5_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48041.4]
  assign _T_695_5 = _T_561 ? _T_619 : _T_694_5; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  assign _T_17_5_d_bits_size = {{1'd0}, auto_out_5_d_bits_size}; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47181.4]
  assign _T_771 = {auto_out_5_d_bits_opcode,2'h0,_T_17_5_d_bits_size,auto_out_5_d_bits_source,2'h0,auto_out_5_d_bits_data,1'h0}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48228.4]
  assign _T_772 = _T_695_5 ? _T_771 : 79'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48229.4]
  assign _T_785 = _T_784 | _T_772; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48242.4]
  assign _T_620 = _T_591[6] & auto_out_6_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@48042.4]
  assign _T_695_6 = _T_561 ? _T_620 : _T_694_6; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@48142.4]
  assign _T_17_6_d_bits_size = {{1'd0}, auto_out_6_d_bits_size}; // @[Xbar.scala 167:19:chipyard.TestHarness.RocketConfig.fir@46952.4 BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@47221.4]
  assign _T_779 = {5'h4,_T_17_6_d_bits_size,auto_out_6_d_bits_source,2'h0,auto_out_6_d_bits_data,1'h0}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48236.4]
  assign _T_780 = _T_695_6 ? _T_779 : 79'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48237.4]
  assign _T_786 = _T_785 | _T_780; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48243.4]
  assign _T_68 = auto_in_a_bits_address ^ 31'h2000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47236.4]
  assign _T_69 = {1'b0,$signed(_T_68)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47237.4]
  assign _T_71 = $signed(_T_69) & 32'sh46012000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47239.4]
  assign _T_72 = $signed(_T_71) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47240.4]
  assign _T_74 = auto_in_a_bits_address ^ 31'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47242.4]
  assign _T_75 = {1'b0,$signed(_T_74)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47243.4]
  assign _T_77 = $signed(_T_75) & 32'sh46012000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47245.4]
  assign _T_78 = $signed(_T_77) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47246.4]
  assign _T_80 = auto_in_a_bits_address ^ 31'h44000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47248.4]
  assign _T_81 = {1'b0,$signed(_T_80)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47249.4]
  assign _T_83 = $signed(_T_81) & 32'sh46012000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47251.4]
  assign _T_84 = $signed(_T_83) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47252.4]
  assign _T_86 = auto_in_a_bits_address ^ 31'h4000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47254.4]
  assign _T_87 = {1'b0,$signed(_T_86)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47255.4]
  assign _T_89 = $signed(_T_87) & 32'sh44000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47257.4]
  assign _T_90 = $signed(_T_89) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47258.4]
  assign _T_92 = auto_in_a_bits_address ^ 31'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47260.4]
  assign _T_93 = {1'b0,$signed(_T_92)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47261.4]
  assign _T_95 = $signed(_T_93) & 32'sh46010000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47263.4]
  assign _T_96 = $signed(_T_95) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47264.4]
  assign _T_99 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47267.4]
  assign _T_101 = $signed(_T_99) & 32'sh46012000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47269.4]
  assign _T_102 = $signed(_T_101) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47270.4]
  assign _T_104 = auto_in_a_bits_address ^ 31'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@47272.4]
  assign _T_105 = {1'b0,$signed(_T_104)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@47273.4]
  assign _T_107 = $signed(_T_105) & 32'sh46010000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@47275.4]
  assign _T_108 = $signed(_T_107) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@47276.4]
  assign _T_358 = 27'hfff << auto_out_0_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47548.4]
  assign _T_360 = ~_T_358[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47550.4]
  assign _T_363 = auto_out_0_d_bits_opcode[0] ? _T_360[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47553.4]
  assign _T_365 = 21'h3f << _T_17_1_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47555.4]
  assign _T_367 = ~_T_365[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47557.4]
  assign _T_370 = auto_out_1_d_bits_opcode[0] ? _T_367[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47560.4]
  assign _T_372 = 21'h3f << _T_17_2_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47562.4]
  assign _T_374 = ~_T_372[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47564.4]
  assign _T_377 = auto_out_2_d_bits_opcode[0] ? _T_374[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47567.4]
  assign _T_379 = 21'h3f << _T_17_3_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47569.4]
  assign _T_381 = ~_T_379[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47571.4]
  assign _T_384 = auto_out_3_d_bits_opcode[0] ? _T_381[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47574.4]
  assign _T_386 = 21'h3f << _T_17_4_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47576.4]
  assign _T_388 = ~_T_386[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47578.4]
  assign _T_391 = auto_out_4_d_bits_opcode[0] ? _T_388[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47581.4]
  assign _T_393 = 21'h3f << _T_17_5_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47583.4]
  assign _T_395 = ~_T_393[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47585.4]
  assign _T_398 = auto_out_5_d_bits_opcode[0] ? _T_395[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@47588.4]
  assign _T_400 = 21'h3f << _T_17_6_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@47590.4]
  assign _T_402 = ~_T_400[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@47592.4]
  assign _T_422 = _T_72 & auto_out_0_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47628.4]
  assign _T_423 = _T_78 & auto_out_1_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47629.4]
  assign _T_424 = _T_84 & auto_out_2_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47630.4]
  assign _T_425 = _T_90 & auto_out_3_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47631.4]
  assign _T_426 = _T_96 & auto_out_4_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47632.4]
  assign _T_427 = _T_102 & auto_out_5_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47633.4]
  assign _T_428 = _T_108 & auto_out_6_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47634.4]
  assign _T_429 = _T_422 | _T_423; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47635.4]
  assign _T_430 = _T_429 | _T_424; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47636.4]
  assign _T_431 = _T_430 | _T_425; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47637.4]
  assign _T_432 = _T_431 | _T_426; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47638.4]
  assign _T_433 = _T_432 | _T_427; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@47639.4]
  assign _T_562 = _T_561 & auto_in_d_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@47969.4]
  assign _T_592 = |_T_568; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@48003.4]
  assign _T_593 = _T_562 & _T_592; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@48004.4]
  assign _T_594 = _T_591 & _T_568; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@48006.6]
  assign _T_595 = {_T_594, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@48007.6]
  assign _T_597 = _T_594 | _T_595[6:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@48009.6]
  assign _T_598 = {_T_597, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@48010.6]
  assign _T_600 = _T_597 | _T_598[6:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@48012.6]
  assign _T_601 = {_T_600, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@48013.6]
  assign _T_603 = _T_600 | _T_601[6:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@48015.6]
  assign _T_623 = _T_614 | _T_615; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48053.4]
  assign _T_624 = _T_623 | _T_616; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48054.4]
  assign _T_625 = _T_624 | _T_617; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48055.4]
  assign _T_626 = _T_625 | _T_618; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48056.4]
  assign _T_627 = _T_626 | _T_619; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48057.4]
  assign _T_628 = _T_627 | _T_620; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@48058.4]
  assign _T_630 = ~_T_614; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48060.4]
  assign _T_633 = ~_T_615; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48063.4]
  assign _T_634 = _T_630 | _T_633; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48064.4]
  assign _T_635 = ~_T_623; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48065.4]
  assign _T_636 = ~_T_616; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48066.4]
  assign _T_637 = _T_635 | _T_636; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48067.4]
  assign _T_638 = ~_T_624; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48068.4]
  assign _T_639 = ~_T_617; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48069.4]
  assign _T_640 = _T_638 | _T_639; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48070.4]
  assign _T_641 = ~_T_625; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48071.4]
  assign _T_642 = ~_T_618; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48072.4]
  assign _T_643 = _T_641 | _T_642; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48073.4]
  assign _T_644 = ~_T_626; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48074.4]
  assign _T_645 = ~_T_619; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48075.4]
  assign _T_646 = _T_644 | _T_645; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48076.4]
  assign _T_647 = ~_T_627; // @[Arbiter.scala 69:56:chipyard.TestHarness.RocketConfig.fir@48077.4]
  assign _T_648 = ~_T_620; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@48078.4]
  assign _T_649 = _T_647 | _T_648; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@48079.4]
  assign _T_651 = _T_634 & _T_637; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48081.4]
  assign _T_652 = _T_651 & _T_640; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48082.4]
  assign _T_653 = _T_652 & _T_643; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48083.4]
  assign _T_654 = _T_653 & _T_646; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48084.4]
  assign _T_655 = _T_654 & _T_649; // @[Arbiter.scala 69:77:chipyard.TestHarness.RocketConfig.fir@48085.4]
  assign _T_657 = _T_655 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@48087.4]
  assign _T_658 = ~_T_657; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@48088.4]
  assign _T_659 = auto_out_0_d_valid | auto_out_1_d_valid; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48093.4]
  assign _T_660 = _T_659 | auto_out_2_d_valid; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48094.4]
  assign _T_661 = _T_660 | auto_out_3_d_valid; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48095.4]
  assign _T_662 = _T_661 | auto_out_4_d_valid; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48096.4]
  assign _T_663 = _T_662 | auto_out_5_d_valid; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48097.4]
  assign _T_664 = _T_663 | auto_out_6_d_valid; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@48098.4]
  assign _T_665 = ~_T_664; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@48099.4]
  assign _T_672 = _T_665 | _T_628; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@48106.4]
  assign _T_674 = _T_672 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@48108.4]
  assign _T_675 = ~_T_674; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@48109.4]
  assign _T_676 = _T_614 ? _T_363 : 9'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48114.4]
  assign _T_677 = _T_615 ? _T_370 : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48115.4]
  assign _T_678 = _T_616 ? _T_377 : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48116.4]
  assign _T_679 = _T_617 ? _T_384 : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48117.4]
  assign _T_680 = _T_618 ? _T_391 : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48118.4]
  assign _T_681 = _T_619 ? _T_398 : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48119.4]
  assign _T_682 = _T_620 ? _T_402[5:3] : 3'h0; // @[Arbiter.scala 74:69:chipyard.TestHarness.RocketConfig.fir@48120.4]
  assign _GEN_5 = {{6'd0}, _T_677}; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48121.4]
  assign _T_683 = _T_676 | _GEN_5; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48121.4]
  assign _GEN_6 = {{6'd0}, _T_678}; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48122.4]
  assign _T_684 = _T_683 | _GEN_6; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48122.4]
  assign _GEN_7 = {{6'd0}, _T_679}; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48123.4]
  assign _T_685 = _T_684 | _GEN_7; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48123.4]
  assign _GEN_8 = {{6'd0}, _T_680}; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48124.4]
  assign _T_686 = _T_685 | _GEN_8; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48124.4]
  assign _GEN_9 = {{6'd0}, _T_681}; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48125.4]
  assign _T_687 = _T_686 | _GEN_9; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48125.4]
  assign _GEN_10 = {{6'd0}, _T_682}; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48126.4]
  assign _T_688 = _T_687 | _GEN_10; // @[Arbiter.scala 75:44:chipyard.TestHarness.RocketConfig.fir@48126.4]
  assign _T_710 = _T_694_0 & auto_out_0_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48165.4]
  assign _T_711 = _T_694_1 & auto_out_1_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48166.4]
  assign _T_717 = _T_710 | _T_711; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48172.4]
  assign _T_712 = _T_694_2 & auto_out_2_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48167.4]
  assign _T_718 = _T_717 | _T_712; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48173.4]
  assign _T_713 = _T_694_3 & auto_out_3_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48168.4]
  assign _T_719 = _T_718 | _T_713; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48174.4]
  assign _T_714 = _T_694_4 & auto_out_4_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48169.4]
  assign _T_720 = _T_719 | _T_714; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48175.4]
  assign _T_715 = _T_694_5 & auto_out_5_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48170.4]
  assign _T_721 = _T_720 | _T_715; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48176.4]
  assign _T_716 = _T_694_6 & auto_out_6_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48171.4]
  assign _T_722 = _T_721 | _T_716; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@48177.4]
  assign _T_724 = _T_561 ? _T_664 : _T_722; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@48180.4]
  assign _T_689 = auto_in_d_ready & _T_724; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@48127.4]
  assign _GEN_11 = {{8'd0}, _T_689}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@48128.4]
  assign _T_691 = _T_560 - _GEN_11; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@48129.4]
  assign _T_696_0 = _T_561 ? _T_591[0] : _T_694_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  assign _T_696_1 = _T_561 ? _T_591[1] : _T_694_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  assign _T_696_2 = _T_561 ? _T_591[2] : _T_694_2; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  assign _T_696_3 = _T_561 ? _T_591[3] : _T_694_3; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  assign _T_696_4 = _T_561 ? _T_591[4] : _T_694_4; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  assign _T_696_5 = _T_561 ? _T_591[5] : _T_694_5; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  assign _T_696_6 = _T_561 ? _T_591[6] : _T_694_6; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@48144.4]
  assign auto_in_a_ready = _T_433 | _T_428; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_valid = _T_561 ? _T_664 : _T_722; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_bits_opcode = _T_786[78:76]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_bits_param = _T_786[75:74]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_bits_size = _T_786[73:70]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_bits_source = _T_786[69:67]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_bits_sink = _T_786[66]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_bits_denied = _T_786[65]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_bits_data = _T_786[64:1]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_in_d_bits_corrupt = _T_786[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@46907.4]
  assign auto_out_6_a_valid = auto_in_a_valid & _T_108; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_6_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_6_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_6_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_6_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_6_a_bits_address = auto_in_a_bits_address[16:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_6_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_6_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_6_d_ready = auto_in_d_ready & _T_696_6; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46906.4]
  assign auto_out_5_a_valid = auto_in_a_valid & _T_102; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_a_bits_address = auto_in_a_bits_address[11:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_5_d_ready = auto_in_d_ready & _T_696_5; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46905.4]
  assign auto_out_4_a_valid = auto_in_a_valid & _T_96; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_a_bits_address = auto_in_a_bits_address[25:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_4_d_ready = auto_in_d_ready & _T_696_4; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46904.4]
  assign auto_out_3_a_valid = auto_in_a_valid & _T_90; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_a_bits_address = auto_in_a_bits_address[27:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_3_d_ready = auto_in_d_ready & _T_696_3; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46903.4]
  assign auto_out_2_a_valid = auto_in_a_valid & _T_84; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_a_bits_address = auto_in_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_2_d_ready = auto_in_d_ready & _T_696_2; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46902.4]
  assign auto_out_1_a_valid = auto_in_a_valid & _T_78; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_a_bits_size = auto_in_a_bits_size[2:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address[25:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_1_d_ready = auto_in_d_ready & _T_696_1; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46901.4]
  assign auto_out_0_a_valid = auto_in_a_valid & _T_72; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign auto_out_0_a_bits_param = auto_in_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign auto_out_0_a_bits_size = auto_in_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign auto_out_0_a_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign auto_out_0_a_bits_address = auto_in_a_bits_address[13:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign auto_out_0_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign auto_out_0_a_bits_corrupt = auto_in_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign auto_out_0_d_ready = auto_in_d_ready & _T_696_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@46900.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@46864.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@46865.4]
  assign TLMonitor_io_in_a_ready = _T_433 | _T_428; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46885.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46884.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46883.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46882.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46881.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46880.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46879.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46878.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46876.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46875.4]
  assign TLMonitor_io_in_d_valid = _T_561 ? _T_664 : _T_722; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46874.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_786[78:76]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46873.4]
  assign TLMonitor_io_in_d_bits_param = _T_786[75:74]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46872.4]
  assign TLMonitor_io_in_d_bits_size = _T_786[73:70]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46871.4]
  assign TLMonitor_io_in_d_bits_source = _T_786[69:67]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46870.4]
  assign TLMonitor_io_in_d_bits_sink = _T_786[66]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46869.4]
  assign TLMonitor_io_in_d_bits_denied = _T_786[65]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46868.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_786[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@46866.4]
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
  _T_560 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_574 = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_694_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_694_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_694_2 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_694_3 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_694_4 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_694_5 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_694_6 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_560 <= 9'h0;
    end else if (_T_562) begin
      _T_560 <= _T_688;
    end else begin
      _T_560 <= _T_691;
    end
    if (reset) begin
      _T_574 <= 7'h7f;
    end else if (_T_593) begin
      _T_574 <= _T_603;
    end
    if (reset) begin
      _T_694_0 <= 1'h0;
    end else if (_T_561) begin
      _T_694_0 <= _T_614;
    end
    if (reset) begin
      _T_694_1 <= 1'h0;
    end else if (_T_561) begin
      _T_694_1 <= _T_615;
    end
    if (reset) begin
      _T_694_2 <= 1'h0;
    end else if (_T_561) begin
      _T_694_2 <= _T_616;
    end
    if (reset) begin
      _T_694_3 <= 1'h0;
    end else if (_T_561) begin
      _T_694_3 <= _T_617;
    end
    if (reset) begin
      _T_694_4 <= 1'h0;
    end else if (_T_561) begin
      _T_694_4 <= _T_618;
    end
    if (reset) begin
      _T_694_5 <= 1'h0;
    end else if (_T_561) begin
      _T_694_5 <= _T_619;
    end
    if (reset) begin
      _T_694_6 <= 1'h0;
    end else if (_T_561) begin
      _T_694_6 <= _T_620;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_658) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@48090.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_658) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@48091.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_675) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@48111.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_675) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@48112.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
