module MemoryBus( // @[:chipyard.TestHarness.RocketConfig.fir@79789.2]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [31:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [7:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [63:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [7:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [31:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [7:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [63:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_fixer_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_fixer_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [2:0]  auto_fixer_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [2:0]  auto_fixer_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [2:0]  auto_fixer_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [3:0]  auto_fixer_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [31:0] auto_fixer_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [7:0]  auto_fixer_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input  [63:0] auto_fixer_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_fixer_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_fixer_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_fixer_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [2:0]  auto_fixer_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [2:0]  auto_fixer_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [3:0]  auto_fixer_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_fixer_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output [63:0] auto_fixer_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  output        auto_fixer_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_subsystem_mbus_clock_groups_in_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
  input         auto_subsystem_mbus_clock_groups_in_member_0_reset // @[:chipyard.TestHarness.RocketConfig.fir@79790.4]
);
  wire  subsystem_mbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@79804.4]
  wire  subsystem_mbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@79804.4]
  wire  subsystem_mbus_clock_groups_auto_out_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@79804.4]
  wire  subsystem_mbus_clock_groups_auto_out_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@79804.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@79806.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@79806.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@79806.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@79806.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@79808.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@79808.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@79808.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@79808.4]
  wire  subsystem_mbus_xbar_clock; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_reset; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_in_a_ready; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_in_a_valid; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_a_bits_opcode; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_a_bits_param; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_a_bits_size; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [3:0] subsystem_mbus_xbar_auto_in_a_bits_source; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [31:0] subsystem_mbus_xbar_auto_in_a_bits_address; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [7:0] subsystem_mbus_xbar_auto_in_a_bits_mask; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [63:0] subsystem_mbus_xbar_auto_in_a_bits_data; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_in_a_bits_corrupt; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_in_d_ready; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_in_d_valid; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_d_bits_opcode; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_in_d_bits_size; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [3:0] subsystem_mbus_xbar_auto_in_d_bits_source; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_in_d_bits_denied; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [63:0] subsystem_mbus_xbar_auto_in_d_bits_data; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_in_d_bits_corrupt; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_out_a_ready; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_out_a_valid; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_a_bits_opcode; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_a_bits_param; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_a_bits_size; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [3:0] subsystem_mbus_xbar_auto_out_a_bits_source; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [31:0] subsystem_mbus_xbar_auto_out_a_bits_address; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [7:0] subsystem_mbus_xbar_auto_out_a_bits_mask; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [63:0] subsystem_mbus_xbar_auto_out_a_bits_data; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_out_a_bits_corrupt; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_out_d_ready; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_out_d_valid; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_d_bits_opcode; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [2:0] subsystem_mbus_xbar_auto_out_d_bits_size; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [3:0] subsystem_mbus_xbar_auto_out_d_bits_source; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_out_d_bits_denied; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire [63:0] subsystem_mbus_xbar_auto_out_d_bits_data; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  subsystem_mbus_xbar_auto_out_d_bits_corrupt; // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
  wire  fixer_clock; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_reset; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_in_a_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_in_a_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_in_a_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_in_a_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [3:0] fixer_auto_in_a_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [31:0] fixer_auto_in_a_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [7:0] fixer_auto_in_a_bits_mask; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [63:0] fixer_auto_in_a_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_in_a_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_in_d_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_in_d_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_in_d_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [3:0] fixer_auto_in_d_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_in_d_bits_denied; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [63:0] fixer_auto_in_d_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_in_d_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_out_a_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_out_a_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_out_a_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_out_a_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [3:0] fixer_auto_out_a_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [31:0] fixer_auto_out_a_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [7:0] fixer_auto_out_a_bits_mask; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [63:0] fixer_auto_out_a_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_out_a_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_out_d_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_out_d_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [2:0] fixer_auto_out_d_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [3:0] fixer_auto_out_d_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_out_d_bits_denied; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire [63:0] fixer_auto_out_d_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  fixer_auto_out_d_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
  wire  picker_clock; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_reset; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_in_a_ready; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_in_a_valid; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_in_a_bits_opcode; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_in_a_bits_param; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_in_a_bits_size; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [3:0] picker_auto_in_a_bits_source; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [31:0] picker_auto_in_a_bits_address; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [7:0] picker_auto_in_a_bits_mask; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [63:0] picker_auto_in_a_bits_data; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_in_a_bits_corrupt; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_in_d_ready; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_in_d_valid; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_in_d_bits_opcode; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_in_d_bits_size; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [3:0] picker_auto_in_d_bits_source; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_in_d_bits_denied; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [63:0] picker_auto_in_d_bits_data; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_in_d_bits_corrupt; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_out_a_ready; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_out_a_valid; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_out_a_bits_opcode; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_out_a_bits_param; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_out_a_bits_size; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [3:0] picker_auto_out_a_bits_source; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [31:0] picker_auto_out_a_bits_address; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [7:0] picker_auto_out_a_bits_mask; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [63:0] picker_auto_out_a_bits_data; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_out_a_bits_corrupt; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_out_d_ready; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_out_d_valid; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_out_d_bits_opcode; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [2:0] picker_auto_out_d_bits_size; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [3:0] picker_auto_out_d_bits_source; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_out_d_bits_denied; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire [63:0] picker_auto_out_d_bits_data; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  picker_auto_out_d_bits_corrupt; // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
  wire  coupler_to_memory_controller_port_named_axi4_clock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_reset; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [63:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [63:0] coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [63:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [63:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
  ClockGroupAggregator_1 subsystem_mbus_clock_groups ( // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@79804.4]
    .auto_in_member_0_clock(subsystem_mbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_mbus_clock_groups_auto_in_member_0_reset),
    .auto_out_member_0_clock(subsystem_mbus_clock_groups_auto_out_member_0_clock),
    .auto_out_member_0_reset(subsystem_mbus_clock_groups_auto_out_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@79806.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@79808.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  TLXbar_6 subsystem_mbus_xbar ( // @[MemoryBus.scala 41:32:chipyard.TestHarness.RocketConfig.fir@79810.4]
    .clock(subsystem_mbus_xbar_clock),
    .reset(subsystem_mbus_xbar_reset),
    .auto_in_a_ready(subsystem_mbus_xbar_auto_in_a_ready),
    .auto_in_a_valid(subsystem_mbus_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(subsystem_mbus_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(subsystem_mbus_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(subsystem_mbus_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(subsystem_mbus_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(subsystem_mbus_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(subsystem_mbus_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(subsystem_mbus_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(subsystem_mbus_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(subsystem_mbus_xbar_auto_in_d_ready),
    .auto_in_d_valid(subsystem_mbus_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(subsystem_mbus_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(subsystem_mbus_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(subsystem_mbus_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_denied(subsystem_mbus_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(subsystem_mbus_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(subsystem_mbus_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(subsystem_mbus_xbar_auto_out_a_ready),
    .auto_out_a_valid(subsystem_mbus_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(subsystem_mbus_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(subsystem_mbus_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(subsystem_mbus_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(subsystem_mbus_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(subsystem_mbus_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(subsystem_mbus_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(subsystem_mbus_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(subsystem_mbus_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(subsystem_mbus_xbar_auto_out_d_ready),
    .auto_out_d_valid(subsystem_mbus_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(subsystem_mbus_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(subsystem_mbus_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(subsystem_mbus_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_denied(subsystem_mbus_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(subsystem_mbus_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(subsystem_mbus_xbar_auto_out_d_bits_corrupt)
  );
  TLFIFOFixer_4 fixer ( // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@79816.4]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(fixer_auto_in_a_bits_param),
    .auto_in_a_bits_size(fixer_auto_in_a_bits_size),
    .auto_in_a_bits_source(fixer_auto_in_a_bits_source),
    .auto_in_a_bits_address(fixer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(fixer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fixer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(fixer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(fixer_auto_in_d_ready),
    .auto_in_d_valid(fixer_auto_in_d_valid),
    .auto_in_d_bits_opcode(fixer_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(fixer_auto_in_d_bits_size),
    .auto_in_d_bits_source(fixer_auto_in_d_bits_source),
    .auto_in_d_bits_denied(fixer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(fixer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(fixer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(fixer_auto_out_a_ready),
    .auto_out_a_valid(fixer_auto_out_a_valid),
    .auto_out_a_bits_opcode(fixer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(fixer_auto_out_a_bits_param),
    .auto_out_a_bits_size(fixer_auto_out_a_bits_size),
    .auto_out_a_bits_source(fixer_auto_out_a_bits_source),
    .auto_out_a_bits_address(fixer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(fixer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fixer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(fixer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_source(fixer_auto_out_d_bits_source),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  ProbePicker picker ( // @[ProbePicker.scala 65:28:chipyard.TestHarness.RocketConfig.fir@79822.4]
    .clock(picker_clock),
    .reset(picker_reset),
    .auto_in_a_ready(picker_auto_in_a_ready),
    .auto_in_a_valid(picker_auto_in_a_valid),
    .auto_in_a_bits_opcode(picker_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(picker_auto_in_a_bits_param),
    .auto_in_a_bits_size(picker_auto_in_a_bits_size),
    .auto_in_a_bits_source(picker_auto_in_a_bits_source),
    .auto_in_a_bits_address(picker_auto_in_a_bits_address),
    .auto_in_a_bits_mask(picker_auto_in_a_bits_mask),
    .auto_in_a_bits_data(picker_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(picker_auto_in_a_bits_corrupt),
    .auto_in_d_ready(picker_auto_in_d_ready),
    .auto_in_d_valid(picker_auto_in_d_valid),
    .auto_in_d_bits_opcode(picker_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(picker_auto_in_d_bits_size),
    .auto_in_d_bits_source(picker_auto_in_d_bits_source),
    .auto_in_d_bits_denied(picker_auto_in_d_bits_denied),
    .auto_in_d_bits_data(picker_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(picker_auto_in_d_bits_corrupt),
    .auto_out_a_ready(picker_auto_out_a_ready),
    .auto_out_a_valid(picker_auto_out_a_valid),
    .auto_out_a_bits_opcode(picker_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(picker_auto_out_a_bits_param),
    .auto_out_a_bits_size(picker_auto_out_a_bits_size),
    .auto_out_a_bits_source(picker_auto_out_a_bits_source),
    .auto_out_a_bits_address(picker_auto_out_a_bits_address),
    .auto_out_a_bits_mask(picker_auto_out_a_bits_mask),
    .auto_out_a_bits_data(picker_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(picker_auto_out_a_bits_corrupt),
    .auto_out_d_ready(picker_auto_out_d_ready),
    .auto_out_d_valid(picker_auto_out_d_valid),
    .auto_out_d_bits_opcode(picker_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(picker_auto_out_d_bits_size),
    .auto_out_d_bits_source(picker_auto_out_d_bits_source),
    .auto_out_d_bits_denied(picker_auto_out_d_bits_denied),
    .auto_out_d_bits_data(picker_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(picker_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_14 coupler_to_memory_controller_port_named_axi4 ( // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@79828.4]
    .clock(coupler_to_memory_controller_port_named_axi4_clock),
    .reset(coupler_to_memory_controller_port_named_axi4_reset),
    .auto_widget_in_a_ready(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_mask(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_size(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_denied(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_corrupt),
    .auto_axi4yank_out_aw_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready),
    .auto_axi4yank_out_aw_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid),
    .auto_axi4yank_out_aw_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id),
    .auto_axi4yank_out_aw_bits_addr(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr),
    .auto_axi4yank_out_aw_bits_len(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len),
    .auto_axi4yank_out_aw_bits_size(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size),
    .auto_axi4yank_out_aw_bits_burst(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst),
    .auto_axi4yank_out_aw_bits_lock(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock),
    .auto_axi4yank_out_aw_bits_cache(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache),
    .auto_axi4yank_out_aw_bits_prot(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot),
    .auto_axi4yank_out_aw_bits_qos(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos),
    .auto_axi4yank_out_w_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready),
    .auto_axi4yank_out_w_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid),
    .auto_axi4yank_out_w_bits_data(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data),
    .auto_axi4yank_out_w_bits_strb(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb),
    .auto_axi4yank_out_w_bits_last(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last),
    .auto_axi4yank_out_b_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready),
    .auto_axi4yank_out_b_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid),
    .auto_axi4yank_out_b_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id),
    .auto_axi4yank_out_b_bits_resp(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp),
    .auto_axi4yank_out_ar_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready),
    .auto_axi4yank_out_ar_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid),
    .auto_axi4yank_out_ar_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id),
    .auto_axi4yank_out_ar_bits_addr(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr),
    .auto_axi4yank_out_ar_bits_len(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len),
    .auto_axi4yank_out_ar_bits_size(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size),
    .auto_axi4yank_out_ar_bits_burst(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst),
    .auto_axi4yank_out_ar_bits_lock(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock),
    .auto_axi4yank_out_ar_bits_cache(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache),
    .auto_axi4yank_out_ar_bits_prot(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot),
    .auto_axi4yank_out_ar_bits_qos(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos),
    .auto_axi4yank_out_r_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready),
    .auto_axi4yank_out_r_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid),
    .auto_axi4yank_out_r_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id),
    .auto_axi4yank_out_r_bits_data(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data),
    .auto_axi4yank_out_r_bits_resp(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp),
    .auto_axi4yank_out_r_bits_last(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last)
  );
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready = coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign auto_fixer_in_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign auto_fixer_in_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign auto_fixer_in_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign auto_fixer_in_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign auto_fixer_in_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign auto_fixer_in_d_bits_denied = fixer_auto_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign auto_fixer_in_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign auto_fixer_in_d_bits_corrupt = fixer_auto_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign subsystem_mbus_clock_groups_auto_in_member_0_clock = auto_subsystem_mbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79842.4]
  assign subsystem_mbus_clock_groups_auto_in_member_0_reset = auto_subsystem_mbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79842.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_mbus_clock_groups_auto_out_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79836.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_mbus_clock_groups_auto_out_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79836.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79837.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79837.4]
  assign subsystem_mbus_xbar_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@79814.4]
  assign subsystem_mbus_xbar_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@79815.4]
  assign subsystem_mbus_xbar_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_param = fixer_auto_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_a_bits_corrupt = fixer_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign subsystem_mbus_xbar_auto_out_a_ready = picker_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign subsystem_mbus_xbar_auto_out_d_valid = picker_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_opcode = picker_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_size = picker_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_source = picker_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_denied = picker_auto_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_data = picker_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign subsystem_mbus_xbar_auto_out_d_bits_corrupt = picker_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign fixer_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@79820.4]
  assign fixer_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@79821.4]
  assign fixer_auto_in_a_valid = auto_fixer_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_a_bits_opcode = auto_fixer_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_a_bits_param = auto_fixer_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_a_bits_size = auto_fixer_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_a_bits_source = auto_fixer_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_a_bits_address = auto_fixer_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_a_bits_mask = auto_fixer_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_a_bits_data = auto_fixer_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_a_bits_corrupt = auto_fixer_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_in_d_ready = auto_fixer_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@79843.4]
  assign fixer_auto_out_a_ready = subsystem_mbus_xbar_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign fixer_auto_out_d_valid = subsystem_mbus_xbar_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign fixer_auto_out_d_bits_opcode = subsystem_mbus_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign fixer_auto_out_d_bits_size = subsystem_mbus_xbar_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign fixer_auto_out_d_bits_source = subsystem_mbus_xbar_auto_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign fixer_auto_out_d_bits_denied = subsystem_mbus_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign fixer_auto_out_d_bits_data = subsystem_mbus_xbar_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign fixer_auto_out_d_bits_corrupt = subsystem_mbus_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@79840.4]
  assign picker_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@79826.4]
  assign picker_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@79827.4]
  assign picker_auto_in_a_valid = subsystem_mbus_xbar_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_a_bits_opcode = subsystem_mbus_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_a_bits_param = subsystem_mbus_xbar_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_a_bits_size = subsystem_mbus_xbar_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_a_bits_source = subsystem_mbus_xbar_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_a_bits_address = subsystem_mbus_xbar_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_a_bits_mask = subsystem_mbus_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_a_bits_data = subsystem_mbus_xbar_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_a_bits_corrupt = subsystem_mbus_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_in_d_ready = subsystem_mbus_xbar_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79839.4]
  assign picker_auto_out_a_ready = coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign picker_auto_out_d_valid = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign picker_auto_out_d_bits_opcode = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign picker_auto_out_d_bits_size = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign picker_auto_out_d_bits_source = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign picker_auto_out_d_bits_denied = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign picker_auto_out_d_bits_data = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign picker_auto_out_d_bits_corrupt = coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@79832.4]
  assign coupler_to_memory_controller_port_named_axi4_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@79833.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_valid = picker_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_opcode = picker_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_param = picker_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_size = picker_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_source = picker_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_address = picker_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_mask = picker_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_data = picker_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_a_bits_corrupt = picker_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_widget_in_d_ready = picker_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@79841.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last = auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@79844.4]
endmodule
