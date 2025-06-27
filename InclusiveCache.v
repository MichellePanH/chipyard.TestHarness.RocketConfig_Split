module InclusiveCache( // @[:chipyard.TestHarness.RocketConfig.fir@101746.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@101747.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@101748.4]
  output        auto_ctl_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_ctl_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_ctl_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_ctl_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [1:0]  auto_ctl_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [6:0]  auto_ctl_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [25:0] auto_ctl_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [7:0]  auto_ctl_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [63:0] auto_ctl_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_ctl_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_ctl_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_ctl_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_ctl_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [1:0]  auto_ctl_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [6:0]  auto_ctl_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [63:0] auto_ctl_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [31:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [1:0]  auto_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [31:0] auto_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [31:0] auto_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [63:0] auto_in_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [1:0]  auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_in_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [31:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_out_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_out_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [31:0] auto_out_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [63:0] auto_out_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_out_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [1:0]  auto_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [2:0]  auto_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input  [63:0] auto_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  input         auto_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output        auto_out_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
  output [2:0]  auto_out_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@101749.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_b_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_b_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [1:0] TLMonitor_io_in_b_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [31:0] TLMonitor_io_in_b_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_c_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire [2:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
  wire  TLMonitor_1_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire  TLMonitor_1_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire  TLMonitor_1_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire  TLMonitor_1_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [1:0] TLMonitor_1_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [6:0] TLMonitor_1_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [25:0] TLMonitor_1_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [7:0] TLMonitor_1_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire  TLMonitor_1_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire  TLMonitor_1_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire  TLMonitor_1_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire [6:0] TLMonitor_1_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire  Queue_io_enq_bits_read; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire [8:0] Queue_io_enq_bits_index; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire [7:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire [6:0] Queue_io_enq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire [1:0] Queue_io_enq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire  Queue_io_deq_bits_read; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire [8:0] Queue_io_deq_bits_index; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire [7:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire [6:0] Queue_io_deq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire [1:0] Queue_io_deq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
  wire  mods_0_clock; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_reset; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_a_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_a_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_a_bits_opcode; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_a_bits_param; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_a_bits_size; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_a_bits_source; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [31:0] mods_0_io_in_a_bits_address; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [7:0] mods_0_io_in_a_bits_mask; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [63:0] mods_0_io_in_a_bits_data; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_a_bits_corrupt; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_b_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_b_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [1:0] mods_0_io_in_b_bits_param; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [31:0] mods_0_io_in_b_bits_address; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_c_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_c_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_c_bits_opcode; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_c_bits_param; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_c_bits_size; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_c_bits_source; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [31:0] mods_0_io_in_c_bits_address; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [63:0] mods_0_io_in_c_bits_data; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_c_bits_corrupt; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_d_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_d_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_d_bits_opcode; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [1:0] mods_0_io_in_d_bits_param; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_d_bits_size; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_d_bits_source; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_d_bits_sink; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_d_bits_denied; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [63:0] mods_0_io_in_d_bits_data; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_d_bits_corrupt; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_in_e_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_in_e_bits_sink; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_a_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_a_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_a_bits_opcode; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_a_bits_param; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_a_bits_size; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_a_bits_source; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [31:0] mods_0_io_out_a_bits_address; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [7:0] mods_0_io_out_a_bits_mask; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [63:0] mods_0_io_out_a_bits_data; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_a_bits_corrupt; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_c_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_c_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_c_bits_opcode; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_c_bits_param; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_c_bits_size; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_c_bits_source; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [31:0] mods_0_io_out_c_bits_address; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [63:0] mods_0_io_out_c_bits_data; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_c_bits_corrupt; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_d_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_d_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_d_bits_opcode; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [1:0] mods_0_io_out_d_bits_param; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_d_bits_size; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_d_bits_source; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_d_bits_sink; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_d_bits_denied; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [63:0] mods_0_io_out_d_bits_data; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_d_bits_corrupt; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_out_e_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [2:0] mods_0_io_out_e_bits_sink; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_req_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_req_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire [31:0] mods_0_io_req_bits_address; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_resp_ready; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  wire  mods_0_io_resp_valid; // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
  reg  flushInValid; // @[InclusiveCache.scala 140:33:chipyard.TestHarness.RocketConfig.fir@101831.4]
  reg [31:0] _RAND_0;
  reg [63:0] flushInAddress; // @[InclusiveCache.scala 142:29:chipyard.TestHarness.RocketConfig.fir@101835.4]
  reg [63:0] _RAND_1;
  reg  flushOutValid; // @[InclusiveCache.scala 144:33:chipyard.TestHarness.RocketConfig.fir@101839.4]
  reg [31:0] _RAND_2;
  wire  _T_335; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102287.4]
  wire  _T_336; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102288.4]
  wire  _T_337; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102289.4]
  wire [1:0] _T_246; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@102141.4]
  wire [3:0] _T_252; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@102147.4]
  wire  _T_355; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102319.4]
  wire [8:0] _T_11; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101884.4]
  wire  _T_15; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101888.4]
  wire  _T_356; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102320.4]
  wire [7:0] _T_76; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101953.4]
  wire [7:0] _T_74; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101951.4]
  wire [7:0] _T_72; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101949.4]
  wire [7:0] _T_70; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101947.4]
  wire [7:0] _T_68; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101945.4]
  wire [7:0] _T_66; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101943.4]
  wire [7:0] _T_64; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101941.4]
  wire [7:0] _T_62; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101939.4]
  wire [63:0] _T_83; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@101960.4]
  wire  _T_117; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102003.4]
  wire  _T_121; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102007.4]
  wire  _T_349; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102310.4]
  wire  _T_350; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102311.4]
  wire  _T_91; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101968.4]
  wire  _T_95; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101972.4]
  wire  flushOutReady; // @[InclusiveCache.scala 156:21:chipyard.TestHarness.RocketConfig.fir@102009.4]
  wire  _GEN_0; // @[InclusiveCache.scala 147:26:chipyard.TestHarness.RocketConfig.fir@101843.4]
  wire [63:0] _T_381; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@102397.4]
  wire [64:0] _T_382; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@102398.4]
  wire [64:0] _T_384; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@102400.4]
  wire  _T_385; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@102401.4]
  wire  _T_386; // @[InclusiveCache.scala 207:25:chipyard.TestHarness.RocketConfig.fir@102405.4]
  wire  flushNoMatch; // @[InclusiveCache.scala 205:26:chipyard.TestHarness.RocketConfig.fir@102402.4]
  wire  _T_3; // @[InclusiveCache.scala 150:24:chipyard.TestHarness.RocketConfig.fir@101849.4]
  wire  flushInReady; // @[InclusiveCache.scala 207:53:chipyard.TestHarness.RocketConfig.fir@102406.4]
  wire  _GEN_1; // @[InclusiveCache.scala 148:26:chipyard.TestHarness.RocketConfig.fir@101846.4]
  wire  _GEN_3; // @[InclusiveCache.scala 150:41:chipyard.TestHarness.RocketConfig.fir@101850.4]
  wire  _T_5; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@101856.4]
  wire [8:0] _T_10; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101883.4]
  wire  _T_12; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101885.4]
  wire [7:0] _T_31; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101908.4]
  wire [7:0] _T_33; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101910.4]
  wire [7:0] _T_35; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101912.4]
  wire [7:0] _T_37; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101914.4]
  wire [7:0] _T_39; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101916.4]
  wire [7:0] _T_41; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101918.4]
  wire [7:0] _T_43; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101920.4]
  wire [7:0] _T_45; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101922.4]
  wire [63:0] _T_52; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@101929.4]
  wire  _T_87; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101964.4]
  wire  _T_8_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101868.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@101881.4]
  wire  _T_257; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102152.4]
  wire [1:0] _T_236; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@102131.4]
  wire [3:0] _T_247; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@102142.4]
  wire  _T_283; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102197.4]
  wire  _T_284; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102198.4]
  wire  _T_296; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102219.4]
  wire  _T_297; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102220.4]
  wire  _T_94; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101971.4]
  wire  _GEN_5; // @[InclusiveCache.scala 164:21:chipyard.TestHarness.RocketConfig.fir@101977.4]
  wire  _T_97; // @[InclusiveCache.scala 165:23:chipyard.TestHarness.RocketConfig.fir@101980.4]
  wire  _T_98; // @[InclusiveCache.scala 165:20:chipyard.TestHarness.RocketConfig.fir@101981.4]
  wire  _T_103; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101989.4]
  wire  _T_104; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101990.4]
  wire  _T_106; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101992.4]
  wire  _T_107; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101993.4]
  wire  _T_113; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101999.4]
  wire  _T_302; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102228.4]
  wire  _T_303; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102229.4]
  wire  _T_120; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102006.4]
  wire  _GEN_8; // @[InclusiveCache.scala 157:21:chipyard.TestHarness.RocketConfig.fir@102012.4]
  wire  _T_124; // @[InclusiveCache.scala 158:20:chipyard.TestHarness.RocketConfig.fir@102016.4]
  wire [35:0] _T_125; // @[InclusiveCache.scala 158:63:chipyard.TestHarness.RocketConfig.fir@102018.6]
  wire  _T_130; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102025.4]
  wire  _T_131; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102026.4]
  wire  _T_133; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102028.4]
  wire  _T_134; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102029.4]
  wire  _T_262; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102163.4]
  wire  _T_300; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102225.4]
  wire  _T_306; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102234.4]
  wire  _GEN_16; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102242.4]
  wire  _GEN_17; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102242.4]
  wire  _T_315; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102254.4]
  wire  _T_353; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102316.4]
  wire  _T_359; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102325.4]
  wire  _GEN_24; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102333.4]
  wire  _GEN_25; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102333.4]
  wire  _T_363; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102334.4]
  wire  _T_364; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102335.4]
  wire  _GEN_37; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102352.4]
  wire  _GEN_27; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102352.4]
  wire  _GEN_28; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102352.4]
  wire  _GEN_29; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102352.4]
  wire [63:0] _GEN_31; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102360.4]
  wire [63:0] _GEN_32; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102360.4]
  wire [63:0] _GEN_33; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102360.4]
  wire  _T_7_bits_read; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101866.4 RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102344.4]
  wire  _GEN_36; // @[InclusiveCache.scala 208:38:chipyard.TestHarness.RocketConfig.fir@102409.4]
  wire  _T_387; // @[InclusiveCache.scala 209:15:chipyard.TestHarness.RocketConfig.fir@102412.4]
  wire  _T_388; // @[InclusiveCache.scala 209:40:chipyard.TestHarness.RocketConfig.fir@102413.4]
  wire  _T_390; // @[InclusiveCache.scala 209:14:chipyard.TestHarness.RocketConfig.fir@102415.4]
  wire  _T_391; // @[InclusiveCache.scala 209:14:chipyard.TestHarness.RocketConfig.fir@102416.4]
  TLMonitor_39 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101756.4]
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
    .io_in_b_ready(TLMonitor_io_in_b_ready),
    .io_in_b_valid(TLMonitor_io_in_b_valid),
    .io_in_b_bits_param(TLMonitor_io_in_b_bits_param),
    .io_in_b_bits_address(TLMonitor_io_in_b_bits_address),
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
  TLMonitor_40 TLMonitor_1 ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@101805.4]
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
    .io_in_d_ready(TLMonitor_1_io_in_d_ready),
    .io_in_d_valid(TLMonitor_1_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_1_io_in_d_bits_opcode),
    .io_in_d_bits_size(TLMonitor_1_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_1_io_in_d_bits_source)
  );
  Queue_15 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@101871.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_read(Queue_io_enq_bits_read),
    .io_enq_bits_index(Queue_io_enq_bits_index),
    .io_enq_bits_mask(Queue_io_enq_bits_mask),
    .io_enq_bits_extra_tlrr_extra_source(Queue_io_enq_bits_extra_tlrr_extra_source),
    .io_enq_bits_extra_tlrr_extra_size(Queue_io_enq_bits_extra_tlrr_extra_size),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_read(Queue_io_deq_bits_read),
    .io_deq_bits_index(Queue_io_deq_bits_index),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_extra_tlrr_extra_source(Queue_io_deq_bits_extra_tlrr_extra_source),
    .io_deq_bits_extra_tlrr_extra_size(Queue_io_deq_bits_extra_tlrr_extra_size)
  );
  Scheduler mods_0 ( // @[InclusiveCache.scala 199:29:chipyard.TestHarness.RocketConfig.fir@102391.4]
    .clock(mods_0_clock),
    .reset(mods_0_reset),
    .io_in_a_ready(mods_0_io_in_a_ready),
    .io_in_a_valid(mods_0_io_in_a_valid),
    .io_in_a_bits_opcode(mods_0_io_in_a_bits_opcode),
    .io_in_a_bits_param(mods_0_io_in_a_bits_param),
    .io_in_a_bits_size(mods_0_io_in_a_bits_size),
    .io_in_a_bits_source(mods_0_io_in_a_bits_source),
    .io_in_a_bits_address(mods_0_io_in_a_bits_address),
    .io_in_a_bits_mask(mods_0_io_in_a_bits_mask),
    .io_in_a_bits_data(mods_0_io_in_a_bits_data),
    .io_in_a_bits_corrupt(mods_0_io_in_a_bits_corrupt),
    .io_in_b_ready(mods_0_io_in_b_ready),
    .io_in_b_valid(mods_0_io_in_b_valid),
    .io_in_b_bits_param(mods_0_io_in_b_bits_param),
    .io_in_b_bits_address(mods_0_io_in_b_bits_address),
    .io_in_c_ready(mods_0_io_in_c_ready),
    .io_in_c_valid(mods_0_io_in_c_valid),
    .io_in_c_bits_opcode(mods_0_io_in_c_bits_opcode),
    .io_in_c_bits_param(mods_0_io_in_c_bits_param),
    .io_in_c_bits_size(mods_0_io_in_c_bits_size),
    .io_in_c_bits_source(mods_0_io_in_c_bits_source),
    .io_in_c_bits_address(mods_0_io_in_c_bits_address),
    .io_in_c_bits_data(mods_0_io_in_c_bits_data),
    .io_in_c_bits_corrupt(mods_0_io_in_c_bits_corrupt),
    .io_in_d_ready(mods_0_io_in_d_ready),
    .io_in_d_valid(mods_0_io_in_d_valid),
    .io_in_d_bits_opcode(mods_0_io_in_d_bits_opcode),
    .io_in_d_bits_param(mods_0_io_in_d_bits_param),
    .io_in_d_bits_size(mods_0_io_in_d_bits_size),
    .io_in_d_bits_source(mods_0_io_in_d_bits_source),
    .io_in_d_bits_sink(mods_0_io_in_d_bits_sink),
    .io_in_d_bits_denied(mods_0_io_in_d_bits_denied),
    .io_in_d_bits_data(mods_0_io_in_d_bits_data),
    .io_in_d_bits_corrupt(mods_0_io_in_d_bits_corrupt),
    .io_in_e_valid(mods_0_io_in_e_valid),
    .io_in_e_bits_sink(mods_0_io_in_e_bits_sink),
    .io_out_a_ready(mods_0_io_out_a_ready),
    .io_out_a_valid(mods_0_io_out_a_valid),
    .io_out_a_bits_opcode(mods_0_io_out_a_bits_opcode),
    .io_out_a_bits_param(mods_0_io_out_a_bits_param),
    .io_out_a_bits_size(mods_0_io_out_a_bits_size),
    .io_out_a_bits_source(mods_0_io_out_a_bits_source),
    .io_out_a_bits_address(mods_0_io_out_a_bits_address),
    .io_out_a_bits_mask(mods_0_io_out_a_bits_mask),
    .io_out_a_bits_data(mods_0_io_out_a_bits_data),
    .io_out_a_bits_corrupt(mods_0_io_out_a_bits_corrupt),
    .io_out_c_ready(mods_0_io_out_c_ready),
    .io_out_c_valid(mods_0_io_out_c_valid),
    .io_out_c_bits_opcode(mods_0_io_out_c_bits_opcode),
    .io_out_c_bits_param(mods_0_io_out_c_bits_param),
    .io_out_c_bits_size(mods_0_io_out_c_bits_size),
    .io_out_c_bits_source(mods_0_io_out_c_bits_source),
    .io_out_c_bits_address(mods_0_io_out_c_bits_address),
    .io_out_c_bits_data(mods_0_io_out_c_bits_data),
    .io_out_c_bits_corrupt(mods_0_io_out_c_bits_corrupt),
    .io_out_d_ready(mods_0_io_out_d_ready),
    .io_out_d_valid(mods_0_io_out_d_valid),
    .io_out_d_bits_opcode(mods_0_io_out_d_bits_opcode),
    .io_out_d_bits_param(mods_0_io_out_d_bits_param),
    .io_out_d_bits_size(mods_0_io_out_d_bits_size),
    .io_out_d_bits_source(mods_0_io_out_d_bits_source),
    .io_out_d_bits_sink(mods_0_io_out_d_bits_sink),
    .io_out_d_bits_denied(mods_0_io_out_d_bits_denied),
    .io_out_d_bits_data(mods_0_io_out_d_bits_data),
    .io_out_d_bits_corrupt(mods_0_io_out_d_bits_corrupt),
    .io_out_e_valid(mods_0_io_out_e_valid),
    .io_out_e_bits_sink(mods_0_io_out_e_bits_sink),
    .io_req_ready(mods_0_io_req_ready),
    .io_req_valid(mods_0_io_req_valid),
    .io_req_bits_address(mods_0_io_req_bits_address),
    .io_resp_ready(mods_0_io_resp_ready),
    .io_resp_valid(mods_0_io_resp_valid)
  );
  assign _T_335 = Queue_io_deq_valid & auto_ctl_in_d_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102287.4]
  assign _T_336 = ~Queue_io_deq_bits_read; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102288.4]
  assign _T_337 = _T_335 & _T_336; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102289.4]
  assign _T_246 = {Queue_io_deq_bits_index[6],Queue_io_deq_bits_index[3]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@102141.4]
  assign _T_252 = 4'h1 << _T_246; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@102147.4]
  assign _T_355 = _T_337 & _T_252[3]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102319.4]
  assign _T_11 = Queue_io_deq_bits_index & 9'h1b7; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101884.4]
  assign _T_15 = _T_11 == 9'h0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101888.4]
  assign _T_356 = _T_355 & _T_15; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102320.4]
  assign _T_76 = Queue_io_deq_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101953.4]
  assign _T_74 = Queue_io_deq_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101951.4]
  assign _T_72 = Queue_io_deq_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101949.4]
  assign _T_70 = Queue_io_deq_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101947.4]
  assign _T_68 = Queue_io_deq_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101945.4]
  assign _T_66 = Queue_io_deq_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101943.4]
  assign _T_64 = Queue_io_deq_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101941.4]
  assign _T_62 = Queue_io_deq_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101939.4]
  assign _T_83 = {_T_76,_T_74,_T_72,_T_70,_T_68,_T_66,_T_64,_T_62}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@101960.4]
  assign _T_117 = &_T_83[31:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102003.4]
  assign _T_121 = _T_356 & _T_117; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102007.4]
  assign _T_349 = _T_337 & _T_252[2]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102310.4]
  assign _T_350 = _T_349 & _T_15; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102311.4]
  assign _T_91 = &_T_83; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101968.4]
  assign _T_95 = _T_350 & _T_91; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101972.4]
  assign flushOutReady = _T_121 | _T_95; // @[InclusiveCache.scala 156:21:chipyard.TestHarness.RocketConfig.fir@102009.4]
  assign _GEN_0 = flushOutReady ? 1'h0 : flushOutValid; // @[InclusiveCache.scala 147:26:chipyard.TestHarness.RocketConfig.fir@101843.4]
  assign _T_381 = flushInAddress ^ 64'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@102397.4]
  assign _T_382 = {1'b0,$signed(_T_381)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@102398.4]
  assign _T_384 = $signed(_T_382) & -65'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@102400.4]
  assign _T_385 = $signed(_T_384) == 65'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@102401.4]
  assign _T_386 = _T_385 & mods_0_io_req_ready; // @[InclusiveCache.scala 207:25:chipyard.TestHarness.RocketConfig.fir@102405.4]
  assign flushNoMatch = _T_385 ? 1'h0 : 1'h1; // @[InclusiveCache.scala 205:26:chipyard.TestHarness.RocketConfig.fir@102402.4]
  assign _T_3 = flushNoMatch & flushInValid; // @[InclusiveCache.scala 150:24:chipyard.TestHarness.RocketConfig.fir@101849.4]
  assign flushInReady = _T_386 | _T_3; // @[InclusiveCache.scala 207:53:chipyard.TestHarness.RocketConfig.fir@102406.4]
  assign _GEN_1 = flushInReady ? 1'h0 : flushInValid; // @[InclusiveCache.scala 148:26:chipyard.TestHarness.RocketConfig.fir@101846.4]
  assign _GEN_3 = _T_3 | _GEN_0; // @[InclusiveCache.scala 150:41:chipyard.TestHarness.RocketConfig.fir@101850.4]
  assign _T_5 = auto_ctl_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@101856.4]
  assign _T_10 = auto_ctl_in_a_bits_address[11:3] & 9'h1b7; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101883.4]
  assign _T_12 = _T_10 == 9'h0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101885.4]
  assign _T_31 = auto_ctl_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101908.4]
  assign _T_33 = auto_ctl_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101910.4]
  assign _T_35 = auto_ctl_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101912.4]
  assign _T_37 = auto_ctl_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101914.4]
  assign _T_39 = auto_ctl_in_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101916.4]
  assign _T_41 = auto_ctl_in_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101918.4]
  assign _T_43 = auto_ctl_in_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101920.4]
  assign _T_45 = auto_ctl_in_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@101922.4]
  assign _T_52 = {_T_45,_T_43,_T_41,_T_39,_T_37,_T_35,_T_33,_T_31}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@101929.4]
  assign _T_87 = &_T_52; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101964.4]
  assign _T_8_ready = Queue_io_enq_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101868.4 Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@101881.4]
  assign _T_257 = auto_ctl_in_a_valid & _T_8_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102152.4]
  assign _T_236 = {auto_ctl_in_a_bits_address[9],auto_ctl_in_a_bits_address[6]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@102131.4]
  assign _T_247 = 4'h1 << _T_236; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@102142.4]
  assign _T_283 = ~_T_5; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102197.4]
  assign _T_284 = _T_257 & _T_283; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102198.4]
  assign _T_296 = _T_284 & _T_247[2]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102219.4]
  assign _T_297 = _T_296 & _T_12; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102220.4]
  assign _T_94 = _T_297 & _T_87; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101971.4]
  assign _GEN_5 = _T_94 | _GEN_1; // @[InclusiveCache.scala 164:21:chipyard.TestHarness.RocketConfig.fir@101977.4]
  assign _T_97 = ~flushInValid; // @[InclusiveCache.scala 165:23:chipyard.TestHarness.RocketConfig.fir@101980.4]
  assign _T_98 = _T_94 & _T_97; // @[InclusiveCache.scala 165:20:chipyard.TestHarness.RocketConfig.fir@101981.4]
  assign _T_103 = ~_T_87; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101989.4]
  assign _T_104 = _T_97 | _T_103; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101990.4]
  assign _T_106 = ~_T_91; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101992.4]
  assign _T_107 = flushOutValid | _T_106; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101993.4]
  assign _T_113 = &_T_52[31:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101999.4]
  assign _T_302 = _T_284 & _T_247[3]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102228.4]
  assign _T_303 = _T_302 & _T_12; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102229.4]
  assign _T_120 = _T_303 & _T_113; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102006.4]
  assign _GEN_8 = _T_120 | _GEN_5; // @[InclusiveCache.scala 157:21:chipyard.TestHarness.RocketConfig.fir@102012.4]
  assign _T_124 = _T_120 & _T_97; // @[InclusiveCache.scala 158:20:chipyard.TestHarness.RocketConfig.fir@102016.4]
  assign _T_125 = {auto_ctl_in_a_bits_data[31:0], 4'h0}; // @[InclusiveCache.scala 158:63:chipyard.TestHarness.RocketConfig.fir@102018.6]
  assign _T_130 = ~_T_113; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102025.4]
  assign _T_131 = _T_97 | _T_130; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102026.4]
  assign _T_133 = ~_T_117; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102028.4]
  assign _T_134 = flushOutValid | _T_133; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102029.4]
  assign _T_262 = ~_T_12; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102163.4]
  assign _T_300 = _T_104 | _T_262; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102225.4]
  assign _T_306 = _T_131 | _T_262; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102234.4]
  assign _GEN_16 = 2'h2 == _T_236 ? _T_300 : 1'h1; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102242.4]
  assign _GEN_17 = 2'h3 == _T_236 ? _T_306 : _GEN_16; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102242.4]
  assign _T_315 = ~_T_15; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102254.4]
  assign _T_353 = _T_107 | _T_315; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102316.4]
  assign _T_359 = _T_134 | _T_315; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102325.4]
  assign _GEN_24 = 2'h2 == _T_246 ? _T_353 : 1'h1; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102333.4]
  assign _GEN_25 = 2'h3 == _T_246 ? _T_359 : _GEN_24; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102333.4]
  assign _T_363 = _T_5 | _GEN_17; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102334.4]
  assign _T_364 = Queue_io_deq_bits_read | _GEN_25; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102335.4]
  assign _GEN_37 = 2'h1 == _T_246; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102352.4]
  assign _GEN_27 = _GEN_37 | _T_15; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102352.4]
  assign _GEN_28 = 2'h2 == _T_246 ? _T_15 : _GEN_27; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102352.4]
  assign _GEN_29 = 2'h3 == _T_246 ? _T_15 : _GEN_28; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102352.4]
  assign _GEN_31 = 2'h1 == _T_246 ? 64'h0 : 64'h60a0801; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102360.4]
  assign _GEN_32 = 2'h2 == _T_246 ? 64'h0 : _GEN_31; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102360.4]
  assign _GEN_33 = 2'h3 == _T_246 ? 64'h0 : _GEN_32; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@102360.4]
  assign _T_7_bits_read = Queue_io_deq_bits_read; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@101866.4 RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102344.4]
  assign _GEN_36 = mods_0_io_resp_valid | _GEN_3; // @[InclusiveCache.scala 208:38:chipyard.TestHarness.RocketConfig.fir@102409.4]
  assign _T_387 = ~mods_0_io_resp_valid; // @[InclusiveCache.scala 209:15:chipyard.TestHarness.RocketConfig.fir@102412.4]
  assign _T_388 = _T_387 | _T_385; // @[InclusiveCache.scala 209:40:chipyard.TestHarness.RocketConfig.fir@102413.4]
  assign _T_390 = _T_388 | reset; // @[InclusiveCache.scala 209:14:chipyard.TestHarness.RocketConfig.fir@102415.4]
  assign _T_391 = ~_T_390; // @[InclusiveCache.scala 209:14:chipyard.TestHarness.RocketConfig.fir@102416.4]
  assign auto_ctl_in_a_ready = _T_8_ready & _T_363; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101830.4]
  assign auto_ctl_in_d_valid = Queue_io_deq_valid & _T_364; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101830.4]
  assign auto_ctl_in_d_bits_opcode = {{2'd0}, _T_7_bits_read}; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101830.4]
  assign auto_ctl_in_d_bits_size = Queue_io_deq_bits_extra_tlrr_extra_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101830.4]
  assign auto_ctl_in_d_bits_source = Queue_io_deq_bits_extra_tlrr_extra_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101830.4]
  assign auto_ctl_in_d_bits_data = _GEN_29 ? _GEN_33 : 64'h0; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101830.4]
  assign auto_in_a_ready = mods_0_io_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_b_valid = mods_0_io_in_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_b_bits_param = mods_0_io_in_b_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_b_bits_address = mods_0_io_in_b_bits_address | 32'h80000000; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_c_ready = mods_0_io_in_c_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_valid = mods_0_io_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_bits_opcode = mods_0_io_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_bits_param = mods_0_io_in_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_bits_size = mods_0_io_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_bits_source = mods_0_io_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_bits_sink = mods_0_io_in_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_bits_denied = mods_0_io_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_bits_data = mods_0_io_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_in_d_bits_corrupt = mods_0_io_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@101829.4]
  assign auto_out_a_valid = mods_0_io_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_a_bits_opcode = mods_0_io_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_a_bits_param = mods_0_io_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_a_bits_size = mods_0_io_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_a_bits_source = mods_0_io_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_a_bits_address = mods_0_io_out_a_bits_address | 32'h80000000; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_a_bits_mask = mods_0_io_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_a_bits_data = mods_0_io_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_a_bits_corrupt = mods_0_io_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_c_valid = mods_0_io_out_c_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_c_bits_opcode = mods_0_io_out_c_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_c_bits_param = mods_0_io_out_c_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_c_bits_size = mods_0_io_out_c_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_c_bits_source = mods_0_io_out_c_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_c_bits_address = mods_0_io_out_c_bits_address | 32'h80000000; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_c_bits_data = mods_0_io_out_c_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_c_bits_corrupt = mods_0_io_out_c_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_d_ready = mods_0_io_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_e_valid = mods_0_io_out_e_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign auto_out_e_bits_sink = mods_0_io_out_e_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@101828.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@101757.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@101758.4]
  assign TLMonitor_io_in_a_ready = mods_0_io_in_a_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101800.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101799.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101798.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101797.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101796.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101795.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101794.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101793.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101791.4]
  assign TLMonitor_io_in_b_ready = auto_in_b_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101790.4]
  assign TLMonitor_io_in_b_valid = mods_0_io_in_b_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101789.4]
  assign TLMonitor_io_in_b_bits_param = mods_0_io_in_b_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101787.4]
  assign TLMonitor_io_in_b_bits_address = mods_0_io_in_b_bits_address | 32'h80000000; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101784.4]
  assign TLMonitor_io_in_c_ready = mods_0_io_in_c_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101780.4]
  assign TLMonitor_io_in_c_valid = auto_in_c_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101779.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101778.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101777.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101776.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101775.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101774.4]
  assign TLMonitor_io_in_c_bits_corrupt = auto_in_c_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101772.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101771.4]
  assign TLMonitor_io_in_d_valid = mods_0_io_in_d_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101770.4]
  assign TLMonitor_io_in_d_bits_opcode = mods_0_io_in_d_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101769.4]
  assign TLMonitor_io_in_d_bits_param = mods_0_io_in_d_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101768.4]
  assign TLMonitor_io_in_d_bits_size = mods_0_io_in_d_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101767.4]
  assign TLMonitor_io_in_d_bits_source = mods_0_io_in_d_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101766.4]
  assign TLMonitor_io_in_d_bits_sink = mods_0_io_in_d_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101765.4]
  assign TLMonitor_io_in_d_bits_denied = mods_0_io_in_d_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101764.4]
  assign TLMonitor_io_in_d_bits_corrupt = mods_0_io_in_d_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101762.4]
  assign TLMonitor_io_in_e_valid = auto_in_e_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101760.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101759.4]
  assign TLMonitor_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@101806.4]
  assign TLMonitor_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@101807.4]
  assign TLMonitor_1_io_in_a_ready = _T_8_ready & _T_363; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101827.4]
  assign TLMonitor_1_io_in_a_valid = auto_ctl_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101826.4]
  assign TLMonitor_1_io_in_a_bits_opcode = auto_ctl_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101825.4]
  assign TLMonitor_1_io_in_a_bits_param = auto_ctl_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101824.4]
  assign TLMonitor_1_io_in_a_bits_size = auto_ctl_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101823.4]
  assign TLMonitor_1_io_in_a_bits_source = auto_ctl_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101822.4]
  assign TLMonitor_1_io_in_a_bits_address = auto_ctl_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101821.4]
  assign TLMonitor_1_io_in_a_bits_mask = auto_ctl_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101820.4]
  assign TLMonitor_1_io_in_a_bits_corrupt = auto_ctl_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101818.4]
  assign TLMonitor_1_io_in_d_ready = auto_ctl_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101817.4]
  assign TLMonitor_1_io_in_d_valid = Queue_io_deq_valid & _T_364; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101816.4]
  assign TLMonitor_1_io_in_d_bits_opcode = {{2'd0}, _T_7_bits_read}; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101815.4]
  assign TLMonitor_1_io_in_d_bits_size = Queue_io_deq_bits_extra_tlrr_extra_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101813.4]
  assign TLMonitor_1_io_in_d_bits_source = Queue_io_deq_bits_extra_tlrr_extra_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@101812.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@101872.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@101873.4]
  assign Queue_io_enq_valid = auto_ctl_in_a_valid & _T_363; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@101874.4]
  assign Queue_io_enq_bits_read = auto_ctl_in_a_bits_opcode == 3'h4; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@101880.4]
  assign Queue_io_enq_bits_index = auto_ctl_in_a_bits_address[11:3]; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@101879.4]
  assign Queue_io_enq_bits_mask = auto_ctl_in_a_bits_mask; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@101877.4]
  assign Queue_io_enq_bits_extra_tlrr_extra_source = auto_ctl_in_a_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@101876.4]
  assign Queue_io_enq_bits_extra_tlrr_extra_size = auto_ctl_in_a_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@101875.4]
  assign Queue_io_deq_ready = auto_ctl_in_d_ready & _T_364; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@102341.4]
  assign mods_0_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@102393.4]
  assign mods_0_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@102394.4]
  assign mods_0_io_in_a_valid = auto_in_a_valid; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_a_bits_param = auto_in_a_bits_param; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_a_bits_size = auto_in_a_bits_size; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_a_bits_source = auto_in_a_bits_source; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_a_bits_address = auto_in_a_bits_address; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_a_bits_mask = auto_in_a_bits_mask; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_a_bits_data = auto_in_a_bits_data; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_b_ready = auto_in_b_ready; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_c_valid = auto_in_c_valid; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_c_bits_param = auto_in_c_bits_param; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_c_bits_size = auto_in_c_bits_size; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_c_bits_source = auto_in_c_bits_source; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_c_bits_address = auto_in_c_bits_address; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_c_bits_data = auto_in_c_bits_data; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_c_bits_corrupt = auto_in_c_bits_corrupt; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_d_ready = auto_in_d_ready; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_e_valid = auto_in_e_valid; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_in_e_bits_sink = auto_in_e_bits_sink; // @[InclusiveCache.scala 201:23:chipyard.TestHarness.RocketConfig.fir@102395.4]
  assign mods_0_io_out_a_ready = auto_out_a_ready; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_c_ready = auto_out_c_ready; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_valid = auto_out_d_valid; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_bits_opcode = auto_out_d_bits_opcode; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_bits_param = auto_out_d_bits_param; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_bits_size = auto_out_d_bits_size; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_bits_source = auto_out_d_bits_source; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_bits_sink = auto_out_d_bits_sink; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_bits_denied = auto_out_d_bits_denied; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_bits_data = auto_out_d_bits_data; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_out_d_bits_corrupt = auto_out_d_bits_corrupt; // @[InclusiveCache.scala 202:11:chipyard.TestHarness.RocketConfig.fir@102396.4]
  assign mods_0_io_req_valid = flushInValid & _T_385; // @[InclusiveCache.scala 211:30:chipyard.TestHarness.RocketConfig.fir@102422.4]
  assign mods_0_io_req_bits_address = flushInAddress[31:0]; // @[InclusiveCache.scala 212:37:chipyard.TestHarness.RocketConfig.fir@102423.4]
  assign mods_0_io_resp_ready = ~flushOutValid; // @[InclusiveCache.scala 213:31:chipyard.TestHarness.RocketConfig.fir@102425.4]
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
  flushInValid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  flushInAddress = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  flushOutValid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      flushInValid <= 1'h0;
    end else begin
      flushInValid <= _GEN_8;
    end
    if (_T_124) begin
      flushInAddress <= {{28'd0}, _T_125};
    end else if (_T_98) begin
      flushInAddress <= auto_ctl_in_a_bits_data;
    end
    if (reset) begin
      flushOutValid <= 1'h0;
    end else begin
      flushOutValid <= _GEN_36;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_391) begin
          $fwrite(32'h80000002,"Assertion failed\n    at InclusiveCache.scala:209 assert (!scheduler.io.resp.valid || flushSelect)\n"); // @[InclusiveCache.scala 209:14:chipyard.TestHarness.RocketConfig.fir@102418.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_391) begin
          $fatal; // @[InclusiveCache.scala 209:14:chipyard.TestHarness.RocketConfig.fir@102419.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
