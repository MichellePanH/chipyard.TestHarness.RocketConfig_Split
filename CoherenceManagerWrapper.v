module CoherenceManagerWrapper( // @[:chipyard.TestHarness.RocketConfig.fir@119392.2]
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [3:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [7:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [63:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [3:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [63:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coherent_jbar_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coherent_jbar_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [31:0] auto_coherent_jbar_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [7:0]  auto_coherent_jbar_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [63:0] auto_coherent_jbar_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coherent_jbar_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coherent_jbar_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coherent_jbar_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [1:0]  auto_coherent_jbar_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [31:0] auto_coherent_jbar_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coherent_jbar_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coherent_jbar_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [31:0] auto_coherent_jbar_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [63:0] auto_coherent_jbar_in_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coherent_jbar_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coherent_jbar_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coherent_jbar_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [2:0]  auto_coherent_jbar_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [1:0]  auto_coherent_jbar_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [2:0]  auto_coherent_jbar_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [2:0]  auto_coherent_jbar_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [2:0]  auto_coherent_jbar_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coherent_jbar_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [63:0] auto_coherent_jbar_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_coherent_jbar_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_coherent_jbar_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_coherent_jbar_in_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_l2_ctl_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_l2_ctl_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_l2_ctl_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [2:0]  auto_l2_ctl_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [1:0]  auto_l2_ctl_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [6:0]  auto_l2_ctl_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [25:0] auto_l2_ctl_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [7:0]  auto_l2_ctl_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input  [63:0] auto_l2_ctl_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_l2_ctl_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_l2_ctl_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_l2_ctl_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [2:0]  auto_l2_ctl_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [1:0]  auto_l2_ctl_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [6:0]  auto_l2_ctl_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output [63:0] auto_l2_ctl_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_subsystem_l2_clock_groups_in_member_1_clock, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_subsystem_l2_clock_groups_in_member_1_reset, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_subsystem_l2_clock_groups_in_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  input         auto_subsystem_l2_clock_groups_in_member_0_reset, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_subsystem_l2_clock_groups_out_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
  output        auto_subsystem_l2_clock_groups_out_member_0_reset // @[:chipyard.TestHarness.RocketConfig.fir@119393.4]
);
  wire  subsystem_l2_clock_groups_auto_in_member_1_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
  wire  subsystem_l2_clock_groups_auto_in_member_1_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
  wire  subsystem_l2_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
  wire  subsystem_l2_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
  wire  subsystem_l2_clock_groups_auto_out_1_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
  wire  subsystem_l2_clock_groups_auto_out_1_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
  wire  subsystem_l2_clock_groups_auto_out_0_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
  wire  subsystem_l2_clock_groups_auto_out_0_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@119409.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@119409.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@119409.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@119409.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@119411.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@119411.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@119411.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@119411.4]
  wire  l2_clock; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_reset; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_ctl_in_a_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_ctl_in_a_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_ctl_in_a_bits_opcode; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_ctl_in_a_bits_param; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [1:0] l2_auto_ctl_in_a_bits_size; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [6:0] l2_auto_ctl_in_a_bits_source; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [25:0] l2_auto_ctl_in_a_bits_address; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [7:0] l2_auto_ctl_in_a_bits_mask; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [63:0] l2_auto_ctl_in_a_bits_data; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_ctl_in_a_bits_corrupt; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_ctl_in_d_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_ctl_in_d_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_ctl_in_d_bits_opcode; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [1:0] l2_auto_ctl_in_d_bits_size; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [6:0] l2_auto_ctl_in_d_bits_source; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [63:0] l2_auto_ctl_in_d_bits_data; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_a_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_a_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_a_bits_opcode; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_a_bits_param; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_a_bits_size; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_a_bits_source; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [31:0] l2_auto_in_a_bits_address; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [7:0] l2_auto_in_a_bits_mask; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [63:0] l2_auto_in_a_bits_data; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_a_bits_corrupt; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_b_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_b_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [1:0] l2_auto_in_b_bits_param; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [31:0] l2_auto_in_b_bits_address; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_c_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_c_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_c_bits_opcode; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_c_bits_param; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_c_bits_size; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_c_bits_source; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [31:0] l2_auto_in_c_bits_address; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [63:0] l2_auto_in_c_bits_data; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_c_bits_corrupt; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_d_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_d_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_d_bits_opcode; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [1:0] l2_auto_in_d_bits_param; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_d_bits_size; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_d_bits_source; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_d_bits_sink; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_d_bits_denied; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [63:0] l2_auto_in_d_bits_data; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_d_bits_corrupt; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_in_e_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_in_e_bits_sink; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_a_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_a_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_a_bits_opcode; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_a_bits_param; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_a_bits_size; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_a_bits_source; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [31:0] l2_auto_out_a_bits_address; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [7:0] l2_auto_out_a_bits_mask; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [63:0] l2_auto_out_a_bits_data; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_a_bits_corrupt; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_c_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_c_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_c_bits_opcode; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_c_bits_param; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_c_bits_size; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_c_bits_source; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [31:0] l2_auto_out_c_bits_address; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [63:0] l2_auto_out_c_bits_data; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_c_bits_corrupt; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_d_ready; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_d_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_d_bits_opcode; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [1:0] l2_auto_out_d_bits_param; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_d_bits_size; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_d_bits_source; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_d_bits_sink; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_d_bits_denied; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [63:0] l2_auto_out_d_bits_data; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_d_bits_corrupt; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  l2_auto_out_e_valid; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire [2:0] l2_auto_out_e_bits_sink; // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
  wire  filter_clock; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_reset; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_a_ready; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_a_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_a_bits_opcode; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_a_bits_param; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_a_bits_size; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_a_bits_source; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [31:0] filter_auto_in_a_bits_address; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [7:0] filter_auto_in_a_bits_mask; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [63:0] filter_auto_in_a_bits_data; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_a_bits_corrupt; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_b_ready; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_b_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [1:0] filter_auto_in_b_bits_param; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [31:0] filter_auto_in_b_bits_address; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_c_ready; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_c_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_c_bits_opcode; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_c_bits_param; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_c_bits_size; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_c_bits_source; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [31:0] filter_auto_in_c_bits_address; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [63:0] filter_auto_in_c_bits_data; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_c_bits_corrupt; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_d_ready; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_d_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_d_bits_opcode; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [1:0] filter_auto_in_d_bits_param; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_d_bits_size; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_d_bits_source; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_d_bits_sink; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_d_bits_denied; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [63:0] filter_auto_in_d_bits_data; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_d_bits_corrupt; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_in_e_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_in_e_bits_sink; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_a_ready; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_a_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_a_bits_opcode; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_a_bits_param; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_a_bits_size; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_a_bits_source; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [31:0] filter_auto_out_a_bits_address; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [7:0] filter_auto_out_a_bits_mask; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [63:0] filter_auto_out_a_bits_data; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_a_bits_corrupt; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_b_ready; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_b_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [1:0] filter_auto_out_b_bits_param; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [31:0] filter_auto_out_b_bits_address; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_c_ready; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_c_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_c_bits_opcode; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_c_bits_param; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_c_bits_size; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_c_bits_source; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [31:0] filter_auto_out_c_bits_address; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [63:0] filter_auto_out_c_bits_data; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_c_bits_corrupt; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_d_ready; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_d_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_d_bits_opcode; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [1:0] filter_auto_out_d_bits_param; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_d_bits_size; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_d_bits_source; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_d_bits_sink; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_d_bits_denied; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [63:0] filter_auto_out_d_bits_data; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_d_bits_corrupt; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  filter_auto_out_e_valid; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire [2:0] filter_auto_out_e_bits_sink; // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
  wire  InclusiveCache_inner_TLBuffer_clock; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_reset; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_a_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_a_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_a_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_a_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_a_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_a_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [31:0] InclusiveCache_inner_TLBuffer_auto_in_a_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [7:0] InclusiveCache_inner_TLBuffer_auto_in_a_bits_mask; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [63:0] InclusiveCache_inner_TLBuffer_auto_in_a_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_a_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_b_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_b_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [1:0] InclusiveCache_inner_TLBuffer_auto_in_b_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [31:0] InclusiveCache_inner_TLBuffer_auto_in_b_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_c_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_c_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_c_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_c_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_c_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_c_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [31:0] InclusiveCache_inner_TLBuffer_auto_in_c_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [63:0] InclusiveCache_inner_TLBuffer_auto_in_c_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_c_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_d_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_d_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_d_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [1:0] InclusiveCache_inner_TLBuffer_auto_in_d_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_d_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_d_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_d_bits_sink; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_d_bits_denied; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [63:0] InclusiveCache_inner_TLBuffer_auto_in_d_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_d_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_in_e_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_in_e_bits_sink; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_a_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_a_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_a_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_a_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_a_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_a_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [31:0] InclusiveCache_inner_TLBuffer_auto_out_a_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [7:0] InclusiveCache_inner_TLBuffer_auto_out_a_bits_mask; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [63:0] InclusiveCache_inner_TLBuffer_auto_out_a_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_a_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_b_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_b_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [1:0] InclusiveCache_inner_TLBuffer_auto_out_b_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [31:0] InclusiveCache_inner_TLBuffer_auto_out_b_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_c_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_c_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_c_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_c_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_c_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_c_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [31:0] InclusiveCache_inner_TLBuffer_auto_out_c_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [63:0] InclusiveCache_inner_TLBuffer_auto_out_c_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_c_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_d_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_d_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_d_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [1:0] InclusiveCache_inner_TLBuffer_auto_out_d_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_d_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_d_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_d_bits_sink; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_d_bits_denied; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [63:0] InclusiveCache_inner_TLBuffer_auto_out_d_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_d_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_inner_TLBuffer_auto_out_e_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire [2:0] InclusiveCache_inner_TLBuffer_auto_out_e_bits_sink; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
  wire  InclusiveCache_outer_TLBuffer_clock; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_reset; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_a_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_a_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_a_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_a_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_a_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_a_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [31:0] InclusiveCache_outer_TLBuffer_auto_in_a_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [7:0] InclusiveCache_outer_TLBuffer_auto_in_a_bits_mask; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [63:0] InclusiveCache_outer_TLBuffer_auto_in_a_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_a_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_c_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_c_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_c_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_c_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_c_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_c_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [31:0] InclusiveCache_outer_TLBuffer_auto_in_c_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [63:0] InclusiveCache_outer_TLBuffer_auto_in_c_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_c_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_d_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_d_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_d_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [1:0] InclusiveCache_outer_TLBuffer_auto_in_d_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_d_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_d_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_d_bits_sink; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_d_bits_denied; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [63:0] InclusiveCache_outer_TLBuffer_auto_in_d_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_d_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_in_e_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_in_e_bits_sink; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_a_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_a_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_a_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_a_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_a_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_a_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [31:0] InclusiveCache_outer_TLBuffer_auto_out_a_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [7:0] InclusiveCache_outer_TLBuffer_auto_out_a_bits_mask; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [63:0] InclusiveCache_outer_TLBuffer_auto_out_a_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_a_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_c_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_c_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_c_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_c_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_c_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_c_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [31:0] InclusiveCache_outer_TLBuffer_auto_out_c_bits_address; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [63:0] InclusiveCache_outer_TLBuffer_auto_out_c_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_c_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_d_ready; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_d_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_d_bits_opcode; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [1:0] InclusiveCache_outer_TLBuffer_auto_out_d_bits_param; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_d_bits_size; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_d_bits_source; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_d_bits_sink; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_d_bits_denied; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [63:0] InclusiveCache_outer_TLBuffer_auto_out_d_bits_data; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_d_bits_corrupt; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  InclusiveCache_outer_TLBuffer_auto_out_e_valid; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire [2:0] InclusiveCache_outer_TLBuffer_auto_out_e_bits_sink; // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
  wire  cork_clock; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_reset; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_a_ready; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_a_valid; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_a_bits_opcode; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_a_bits_param; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_a_bits_size; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_a_bits_source; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [31:0] cork_auto_in_a_bits_address; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [7:0] cork_auto_in_a_bits_mask; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [63:0] cork_auto_in_a_bits_data; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_a_bits_corrupt; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_c_ready; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_c_valid; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_c_bits_opcode; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_c_bits_param; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_c_bits_size; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_c_bits_source; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [31:0] cork_auto_in_c_bits_address; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [63:0] cork_auto_in_c_bits_data; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_c_bits_corrupt; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_d_ready; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_d_valid; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_d_bits_opcode; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [1:0] cork_auto_in_d_bits_param; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_d_bits_size; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_d_bits_source; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_d_bits_sink; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_d_bits_denied; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [63:0] cork_auto_in_d_bits_data; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_d_bits_corrupt; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_in_e_valid; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_in_e_bits_sink; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_out_a_ready; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_out_a_valid; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_out_a_bits_opcode; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_out_a_bits_param; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_out_a_bits_size; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [3:0] cork_auto_out_a_bits_source; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [31:0] cork_auto_out_a_bits_address; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [7:0] cork_auto_out_a_bits_mask; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [63:0] cork_auto_out_a_bits_data; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_out_a_bits_corrupt; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_out_d_ready; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_out_d_valid; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_out_d_bits_opcode; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [2:0] cork_auto_out_d_bits_size; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [3:0] cork_auto_out_d_bits_source; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_out_d_bits_denied; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire [63:0] cork_auto_out_d_bits_data; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  cork_auto_out_d_bits_corrupt; // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
  wire  coherent_jbar_clock; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_reset; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_a_ready; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_a_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_a_bits_opcode; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_a_bits_param; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_a_bits_size; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_a_bits_source; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [31:0] coherent_jbar_auto_in_a_bits_address; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [7:0] coherent_jbar_auto_in_a_bits_mask; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [63:0] coherent_jbar_auto_in_a_bits_data; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_a_bits_corrupt; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_b_ready; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_b_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [1:0] coherent_jbar_auto_in_b_bits_param; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [31:0] coherent_jbar_auto_in_b_bits_address; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_c_ready; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_c_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_c_bits_opcode; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_c_bits_param; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_c_bits_size; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_c_bits_source; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [31:0] coherent_jbar_auto_in_c_bits_address; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [63:0] coherent_jbar_auto_in_c_bits_data; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_c_bits_corrupt; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_d_ready; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_d_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_d_bits_opcode; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [1:0] coherent_jbar_auto_in_d_bits_param; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_d_bits_size; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_d_bits_source; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_d_bits_sink; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_d_bits_denied; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [63:0] coherent_jbar_auto_in_d_bits_data; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_d_bits_corrupt; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_in_e_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_in_e_bits_sink; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_a_ready; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_a_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_a_bits_opcode; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_a_bits_param; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_a_bits_size; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_a_bits_source; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [31:0] coherent_jbar_auto_out_a_bits_address; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [7:0] coherent_jbar_auto_out_a_bits_mask; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [63:0] coherent_jbar_auto_out_a_bits_data; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_a_bits_corrupt; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_b_ready; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_b_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [1:0] coherent_jbar_auto_out_b_bits_param; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [31:0] coherent_jbar_auto_out_b_bits_address; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_c_ready; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_c_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_c_bits_opcode; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_c_bits_param; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_c_bits_size; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_c_bits_source; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [31:0] coherent_jbar_auto_out_c_bits_address; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [63:0] coherent_jbar_auto_out_c_bits_data; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_c_bits_corrupt; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_d_ready; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_d_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_d_bits_opcode; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [1:0] coherent_jbar_auto_out_d_bits_param; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_d_bits_size; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_d_bits_source; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_d_bits_sink; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_d_bits_denied; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [63:0] coherent_jbar_auto_out_d_bits_data; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_d_bits_corrupt; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  coherent_jbar_auto_out_e_valid; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire [2:0] coherent_jbar_auto_out_e_bits_sink; // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
  wire  binder_clock; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_reset; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_in_a_ready; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_in_a_valid; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_in_a_bits_opcode; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_in_a_bits_param; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_in_a_bits_size; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [3:0] binder_auto_in_a_bits_source; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [31:0] binder_auto_in_a_bits_address; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [7:0] binder_auto_in_a_bits_mask; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [63:0] binder_auto_in_a_bits_data; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_in_a_bits_corrupt; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_in_d_ready; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_in_d_valid; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_in_d_bits_opcode; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_in_d_bits_size; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [3:0] binder_auto_in_d_bits_source; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_in_d_bits_denied; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [63:0] binder_auto_in_d_bits_data; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_in_d_bits_corrupt; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_out_a_ready; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_out_a_valid; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_out_a_bits_opcode; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_out_a_bits_param; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_out_a_bits_size; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [3:0] binder_auto_out_a_bits_source; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [31:0] binder_auto_out_a_bits_address; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [7:0] binder_auto_out_a_bits_mask; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [63:0] binder_auto_out_a_bits_data; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_out_a_bits_corrupt; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_out_d_ready; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_out_d_valid; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_out_d_bits_opcode; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [2:0] binder_auto_out_d_bits_size; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [3:0] binder_auto_out_d_bits_source; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_out_d_bits_denied; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire [63:0] binder_auto_out_d_bits_data; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  binder_auto_out_d_bits_corrupt; // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
  wire  coupler_to_bus_named_subsystem_mbus_clock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_reset; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [3:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [7:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [63:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [3:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [63:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [3:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [7:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [63:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [3:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire [63:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
  ClockGroupAggregator_3 subsystem_l2_clock_groups ( // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@119407.4]
    .auto_in_member_1_clock(subsystem_l2_clock_groups_auto_in_member_1_clock),
    .auto_in_member_1_reset(subsystem_l2_clock_groups_auto_in_member_1_reset),
    .auto_in_member_0_clock(subsystem_l2_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_l2_clock_groups_auto_in_member_0_reset),
    .auto_out_1_member_0_clock(subsystem_l2_clock_groups_auto_out_1_member_0_clock),
    .auto_out_1_member_0_reset(subsystem_l2_clock_groups_auto_out_1_member_0_reset),
    .auto_out_0_member_0_clock(subsystem_l2_clock_groups_auto_out_0_member_0_clock),
    .auto_out_0_member_0_reset(subsystem_l2_clock_groups_auto_out_0_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@119409.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@119411.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  InclusiveCache l2 ( // @[Configs.scala 75:24:chipyard.TestHarness.RocketConfig.fir@119413.4]
    .clock(l2_clock),
    .reset(l2_reset),
    .auto_ctl_in_a_ready(l2_auto_ctl_in_a_ready),
    .auto_ctl_in_a_valid(l2_auto_ctl_in_a_valid),
    .auto_ctl_in_a_bits_opcode(l2_auto_ctl_in_a_bits_opcode),
    .auto_ctl_in_a_bits_param(l2_auto_ctl_in_a_bits_param),
    .auto_ctl_in_a_bits_size(l2_auto_ctl_in_a_bits_size),
    .auto_ctl_in_a_bits_source(l2_auto_ctl_in_a_bits_source),
    .auto_ctl_in_a_bits_address(l2_auto_ctl_in_a_bits_address),
    .auto_ctl_in_a_bits_mask(l2_auto_ctl_in_a_bits_mask),
    .auto_ctl_in_a_bits_data(l2_auto_ctl_in_a_bits_data),
    .auto_ctl_in_a_bits_corrupt(l2_auto_ctl_in_a_bits_corrupt),
    .auto_ctl_in_d_ready(l2_auto_ctl_in_d_ready),
    .auto_ctl_in_d_valid(l2_auto_ctl_in_d_valid),
    .auto_ctl_in_d_bits_opcode(l2_auto_ctl_in_d_bits_opcode),
    .auto_ctl_in_d_bits_size(l2_auto_ctl_in_d_bits_size),
    .auto_ctl_in_d_bits_source(l2_auto_ctl_in_d_bits_source),
    .auto_ctl_in_d_bits_data(l2_auto_ctl_in_d_bits_data),
    .auto_in_a_ready(l2_auto_in_a_ready),
    .auto_in_a_valid(l2_auto_in_a_valid),
    .auto_in_a_bits_opcode(l2_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(l2_auto_in_a_bits_param),
    .auto_in_a_bits_size(l2_auto_in_a_bits_size),
    .auto_in_a_bits_source(l2_auto_in_a_bits_source),
    .auto_in_a_bits_address(l2_auto_in_a_bits_address),
    .auto_in_a_bits_mask(l2_auto_in_a_bits_mask),
    .auto_in_a_bits_data(l2_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(l2_auto_in_a_bits_corrupt),
    .auto_in_b_ready(l2_auto_in_b_ready),
    .auto_in_b_valid(l2_auto_in_b_valid),
    .auto_in_b_bits_param(l2_auto_in_b_bits_param),
    .auto_in_b_bits_address(l2_auto_in_b_bits_address),
    .auto_in_c_ready(l2_auto_in_c_ready),
    .auto_in_c_valid(l2_auto_in_c_valid),
    .auto_in_c_bits_opcode(l2_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(l2_auto_in_c_bits_param),
    .auto_in_c_bits_size(l2_auto_in_c_bits_size),
    .auto_in_c_bits_source(l2_auto_in_c_bits_source),
    .auto_in_c_bits_address(l2_auto_in_c_bits_address),
    .auto_in_c_bits_data(l2_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(l2_auto_in_c_bits_corrupt),
    .auto_in_d_ready(l2_auto_in_d_ready),
    .auto_in_d_valid(l2_auto_in_d_valid),
    .auto_in_d_bits_opcode(l2_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(l2_auto_in_d_bits_param),
    .auto_in_d_bits_size(l2_auto_in_d_bits_size),
    .auto_in_d_bits_source(l2_auto_in_d_bits_source),
    .auto_in_d_bits_sink(l2_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(l2_auto_in_d_bits_denied),
    .auto_in_d_bits_data(l2_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(l2_auto_in_d_bits_corrupt),
    .auto_in_e_valid(l2_auto_in_e_valid),
    .auto_in_e_bits_sink(l2_auto_in_e_bits_sink),
    .auto_out_a_ready(l2_auto_out_a_ready),
    .auto_out_a_valid(l2_auto_out_a_valid),
    .auto_out_a_bits_opcode(l2_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(l2_auto_out_a_bits_param),
    .auto_out_a_bits_size(l2_auto_out_a_bits_size),
    .auto_out_a_bits_source(l2_auto_out_a_bits_source),
    .auto_out_a_bits_address(l2_auto_out_a_bits_address),
    .auto_out_a_bits_mask(l2_auto_out_a_bits_mask),
    .auto_out_a_bits_data(l2_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(l2_auto_out_a_bits_corrupt),
    .auto_out_c_ready(l2_auto_out_c_ready),
    .auto_out_c_valid(l2_auto_out_c_valid),
    .auto_out_c_bits_opcode(l2_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(l2_auto_out_c_bits_param),
    .auto_out_c_bits_size(l2_auto_out_c_bits_size),
    .auto_out_c_bits_source(l2_auto_out_c_bits_source),
    .auto_out_c_bits_address(l2_auto_out_c_bits_address),
    .auto_out_c_bits_data(l2_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(l2_auto_out_c_bits_corrupt),
    .auto_out_d_ready(l2_auto_out_d_ready),
    .auto_out_d_valid(l2_auto_out_d_valid),
    .auto_out_d_bits_opcode(l2_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(l2_auto_out_d_bits_param),
    .auto_out_d_bits_size(l2_auto_out_d_bits_size),
    .auto_out_d_bits_source(l2_auto_out_d_bits_source),
    .auto_out_d_bits_sink(l2_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(l2_auto_out_d_bits_denied),
    .auto_out_d_bits_data(l2_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(l2_auto_out_d_bits_corrupt),
    .auto_out_e_valid(l2_auto_out_e_valid),
    .auto_out_e_bits_sink(l2_auto_out_e_bits_sink)
  );
  TLFilter filter ( // @[Configs.scala 102:28:chipyard.TestHarness.RocketConfig.fir@119419.4]
    .clock(filter_clock),
    .reset(filter_reset),
    .auto_in_a_ready(filter_auto_in_a_ready),
    .auto_in_a_valid(filter_auto_in_a_valid),
    .auto_in_a_bits_opcode(filter_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(filter_auto_in_a_bits_param),
    .auto_in_a_bits_size(filter_auto_in_a_bits_size),
    .auto_in_a_bits_source(filter_auto_in_a_bits_source),
    .auto_in_a_bits_address(filter_auto_in_a_bits_address),
    .auto_in_a_bits_mask(filter_auto_in_a_bits_mask),
    .auto_in_a_bits_data(filter_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(filter_auto_in_a_bits_corrupt),
    .auto_in_b_ready(filter_auto_in_b_ready),
    .auto_in_b_valid(filter_auto_in_b_valid),
    .auto_in_b_bits_param(filter_auto_in_b_bits_param),
    .auto_in_b_bits_address(filter_auto_in_b_bits_address),
    .auto_in_c_ready(filter_auto_in_c_ready),
    .auto_in_c_valid(filter_auto_in_c_valid),
    .auto_in_c_bits_opcode(filter_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(filter_auto_in_c_bits_param),
    .auto_in_c_bits_size(filter_auto_in_c_bits_size),
    .auto_in_c_bits_source(filter_auto_in_c_bits_source),
    .auto_in_c_bits_address(filter_auto_in_c_bits_address),
    .auto_in_c_bits_data(filter_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(filter_auto_in_c_bits_corrupt),
    .auto_in_d_ready(filter_auto_in_d_ready),
    .auto_in_d_valid(filter_auto_in_d_valid),
    .auto_in_d_bits_opcode(filter_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(filter_auto_in_d_bits_param),
    .auto_in_d_bits_size(filter_auto_in_d_bits_size),
    .auto_in_d_bits_source(filter_auto_in_d_bits_source),
    .auto_in_d_bits_sink(filter_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(filter_auto_in_d_bits_denied),
    .auto_in_d_bits_data(filter_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(filter_auto_in_d_bits_corrupt),
    .auto_in_e_valid(filter_auto_in_e_valid),
    .auto_in_e_bits_sink(filter_auto_in_e_bits_sink),
    .auto_out_a_ready(filter_auto_out_a_ready),
    .auto_out_a_valid(filter_auto_out_a_valid),
    .auto_out_a_bits_opcode(filter_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(filter_auto_out_a_bits_param),
    .auto_out_a_bits_size(filter_auto_out_a_bits_size),
    .auto_out_a_bits_source(filter_auto_out_a_bits_source),
    .auto_out_a_bits_address(filter_auto_out_a_bits_address),
    .auto_out_a_bits_mask(filter_auto_out_a_bits_mask),
    .auto_out_a_bits_data(filter_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(filter_auto_out_a_bits_corrupt),
    .auto_out_b_ready(filter_auto_out_b_ready),
    .auto_out_b_valid(filter_auto_out_b_valid),
    .auto_out_b_bits_param(filter_auto_out_b_bits_param),
    .auto_out_b_bits_address(filter_auto_out_b_bits_address),
    .auto_out_c_ready(filter_auto_out_c_ready),
    .auto_out_c_valid(filter_auto_out_c_valid),
    .auto_out_c_bits_opcode(filter_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(filter_auto_out_c_bits_param),
    .auto_out_c_bits_size(filter_auto_out_c_bits_size),
    .auto_out_c_bits_source(filter_auto_out_c_bits_source),
    .auto_out_c_bits_address(filter_auto_out_c_bits_address),
    .auto_out_c_bits_data(filter_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(filter_auto_out_c_bits_corrupt),
    .auto_out_d_ready(filter_auto_out_d_ready),
    .auto_out_d_valid(filter_auto_out_d_valid),
    .auto_out_d_bits_opcode(filter_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(filter_auto_out_d_bits_param),
    .auto_out_d_bits_size(filter_auto_out_d_bits_size),
    .auto_out_d_bits_source(filter_auto_out_d_bits_source),
    .auto_out_d_bits_sink(filter_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(filter_auto_out_d_bits_denied),
    .auto_out_d_bits_data(filter_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(filter_auto_out_d_bits_corrupt),
    .auto_out_e_valid(filter_auto_out_e_valid),
    .auto_out_e_bits_sink(filter_auto_out_e_bits_sink)
  );
  TLBuffer_9 InclusiveCache_inner_TLBuffer ( // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119425.4]
    .clock(InclusiveCache_inner_TLBuffer_clock),
    .reset(InclusiveCache_inner_TLBuffer_reset),
    .auto_in_a_ready(InclusiveCache_inner_TLBuffer_auto_in_a_ready),
    .auto_in_a_valid(InclusiveCache_inner_TLBuffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(InclusiveCache_inner_TLBuffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(InclusiveCache_inner_TLBuffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(InclusiveCache_inner_TLBuffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(InclusiveCache_inner_TLBuffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(InclusiveCache_inner_TLBuffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(InclusiveCache_inner_TLBuffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(InclusiveCache_inner_TLBuffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(InclusiveCache_inner_TLBuffer_auto_in_a_bits_corrupt),
    .auto_in_b_ready(InclusiveCache_inner_TLBuffer_auto_in_b_ready),
    .auto_in_b_valid(InclusiveCache_inner_TLBuffer_auto_in_b_valid),
    .auto_in_b_bits_param(InclusiveCache_inner_TLBuffer_auto_in_b_bits_param),
    .auto_in_b_bits_address(InclusiveCache_inner_TLBuffer_auto_in_b_bits_address),
    .auto_in_c_ready(InclusiveCache_inner_TLBuffer_auto_in_c_ready),
    .auto_in_c_valid(InclusiveCache_inner_TLBuffer_auto_in_c_valid),
    .auto_in_c_bits_opcode(InclusiveCache_inner_TLBuffer_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(InclusiveCache_inner_TLBuffer_auto_in_c_bits_param),
    .auto_in_c_bits_size(InclusiveCache_inner_TLBuffer_auto_in_c_bits_size),
    .auto_in_c_bits_source(InclusiveCache_inner_TLBuffer_auto_in_c_bits_source),
    .auto_in_c_bits_address(InclusiveCache_inner_TLBuffer_auto_in_c_bits_address),
    .auto_in_c_bits_data(InclusiveCache_inner_TLBuffer_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(InclusiveCache_inner_TLBuffer_auto_in_c_bits_corrupt),
    .auto_in_d_ready(InclusiveCache_inner_TLBuffer_auto_in_d_ready),
    .auto_in_d_valid(InclusiveCache_inner_TLBuffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(InclusiveCache_inner_TLBuffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(InclusiveCache_inner_TLBuffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(InclusiveCache_inner_TLBuffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(InclusiveCache_inner_TLBuffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(InclusiveCache_inner_TLBuffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(InclusiveCache_inner_TLBuffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(InclusiveCache_inner_TLBuffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(InclusiveCache_inner_TLBuffer_auto_in_d_bits_corrupt),
    .auto_in_e_valid(InclusiveCache_inner_TLBuffer_auto_in_e_valid),
    .auto_in_e_bits_sink(InclusiveCache_inner_TLBuffer_auto_in_e_bits_sink),
    .auto_out_a_ready(InclusiveCache_inner_TLBuffer_auto_out_a_ready),
    .auto_out_a_valid(InclusiveCache_inner_TLBuffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(InclusiveCache_inner_TLBuffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(InclusiveCache_inner_TLBuffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(InclusiveCache_inner_TLBuffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(InclusiveCache_inner_TLBuffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(InclusiveCache_inner_TLBuffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(InclusiveCache_inner_TLBuffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(InclusiveCache_inner_TLBuffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(InclusiveCache_inner_TLBuffer_auto_out_a_bits_corrupt),
    .auto_out_b_ready(InclusiveCache_inner_TLBuffer_auto_out_b_ready),
    .auto_out_b_valid(InclusiveCache_inner_TLBuffer_auto_out_b_valid),
    .auto_out_b_bits_param(InclusiveCache_inner_TLBuffer_auto_out_b_bits_param),
    .auto_out_b_bits_address(InclusiveCache_inner_TLBuffer_auto_out_b_bits_address),
    .auto_out_c_ready(InclusiveCache_inner_TLBuffer_auto_out_c_ready),
    .auto_out_c_valid(InclusiveCache_inner_TLBuffer_auto_out_c_valid),
    .auto_out_c_bits_opcode(InclusiveCache_inner_TLBuffer_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(InclusiveCache_inner_TLBuffer_auto_out_c_bits_param),
    .auto_out_c_bits_size(InclusiveCache_inner_TLBuffer_auto_out_c_bits_size),
    .auto_out_c_bits_source(InclusiveCache_inner_TLBuffer_auto_out_c_bits_source),
    .auto_out_c_bits_address(InclusiveCache_inner_TLBuffer_auto_out_c_bits_address),
    .auto_out_c_bits_data(InclusiveCache_inner_TLBuffer_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(InclusiveCache_inner_TLBuffer_auto_out_c_bits_corrupt),
    .auto_out_d_ready(InclusiveCache_inner_TLBuffer_auto_out_d_ready),
    .auto_out_d_valid(InclusiveCache_inner_TLBuffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(InclusiveCache_inner_TLBuffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(InclusiveCache_inner_TLBuffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(InclusiveCache_inner_TLBuffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(InclusiveCache_inner_TLBuffer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(InclusiveCache_inner_TLBuffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(InclusiveCache_inner_TLBuffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(InclusiveCache_inner_TLBuffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(InclusiveCache_inner_TLBuffer_auto_out_d_bits_corrupt),
    .auto_out_e_valid(InclusiveCache_inner_TLBuffer_auto_out_e_valid),
    .auto_out_e_bits_sink(InclusiveCache_inner_TLBuffer_auto_out_e_bits_sink)
  );
  TLBuffer_10 InclusiveCache_outer_TLBuffer ( // @[Parameters.scala 54:69:chipyard.TestHarness.RocketConfig.fir@119431.4]
    .clock(InclusiveCache_outer_TLBuffer_clock),
    .reset(InclusiveCache_outer_TLBuffer_reset),
    .auto_in_a_ready(InclusiveCache_outer_TLBuffer_auto_in_a_ready),
    .auto_in_a_valid(InclusiveCache_outer_TLBuffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(InclusiveCache_outer_TLBuffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(InclusiveCache_outer_TLBuffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(InclusiveCache_outer_TLBuffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(InclusiveCache_outer_TLBuffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(InclusiveCache_outer_TLBuffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(InclusiveCache_outer_TLBuffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(InclusiveCache_outer_TLBuffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(InclusiveCache_outer_TLBuffer_auto_in_a_bits_corrupt),
    .auto_in_c_ready(InclusiveCache_outer_TLBuffer_auto_in_c_ready),
    .auto_in_c_valid(InclusiveCache_outer_TLBuffer_auto_in_c_valid),
    .auto_in_c_bits_opcode(InclusiveCache_outer_TLBuffer_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(InclusiveCache_outer_TLBuffer_auto_in_c_bits_param),
    .auto_in_c_bits_size(InclusiveCache_outer_TLBuffer_auto_in_c_bits_size),
    .auto_in_c_bits_source(InclusiveCache_outer_TLBuffer_auto_in_c_bits_source),
    .auto_in_c_bits_address(InclusiveCache_outer_TLBuffer_auto_in_c_bits_address),
    .auto_in_c_bits_data(InclusiveCache_outer_TLBuffer_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(InclusiveCache_outer_TLBuffer_auto_in_c_bits_corrupt),
    .auto_in_d_ready(InclusiveCache_outer_TLBuffer_auto_in_d_ready),
    .auto_in_d_valid(InclusiveCache_outer_TLBuffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(InclusiveCache_outer_TLBuffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(InclusiveCache_outer_TLBuffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(InclusiveCache_outer_TLBuffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(InclusiveCache_outer_TLBuffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(InclusiveCache_outer_TLBuffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(InclusiveCache_outer_TLBuffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(InclusiveCache_outer_TLBuffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(InclusiveCache_outer_TLBuffer_auto_in_d_bits_corrupt),
    .auto_in_e_valid(InclusiveCache_outer_TLBuffer_auto_in_e_valid),
    .auto_in_e_bits_sink(InclusiveCache_outer_TLBuffer_auto_in_e_bits_sink),
    .auto_out_a_ready(InclusiveCache_outer_TLBuffer_auto_out_a_ready),
    .auto_out_a_valid(InclusiveCache_outer_TLBuffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(InclusiveCache_outer_TLBuffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(InclusiveCache_outer_TLBuffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(InclusiveCache_outer_TLBuffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(InclusiveCache_outer_TLBuffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(InclusiveCache_outer_TLBuffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(InclusiveCache_outer_TLBuffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(InclusiveCache_outer_TLBuffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(InclusiveCache_outer_TLBuffer_auto_out_a_bits_corrupt),
    .auto_out_c_ready(InclusiveCache_outer_TLBuffer_auto_out_c_ready),
    .auto_out_c_valid(InclusiveCache_outer_TLBuffer_auto_out_c_valid),
    .auto_out_c_bits_opcode(InclusiveCache_outer_TLBuffer_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(InclusiveCache_outer_TLBuffer_auto_out_c_bits_param),
    .auto_out_c_bits_size(InclusiveCache_outer_TLBuffer_auto_out_c_bits_size),
    .auto_out_c_bits_source(InclusiveCache_outer_TLBuffer_auto_out_c_bits_source),
    .auto_out_c_bits_address(InclusiveCache_outer_TLBuffer_auto_out_c_bits_address),
    .auto_out_c_bits_data(InclusiveCache_outer_TLBuffer_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(InclusiveCache_outer_TLBuffer_auto_out_c_bits_corrupt),
    .auto_out_d_ready(InclusiveCache_outer_TLBuffer_auto_out_d_ready),
    .auto_out_d_valid(InclusiveCache_outer_TLBuffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(InclusiveCache_outer_TLBuffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(InclusiveCache_outer_TLBuffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(InclusiveCache_outer_TLBuffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(InclusiveCache_outer_TLBuffer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(InclusiveCache_outer_TLBuffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(InclusiveCache_outer_TLBuffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(InclusiveCache_outer_TLBuffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(InclusiveCache_outer_TLBuffer_auto_out_d_bits_corrupt),
    .auto_out_e_valid(InclusiveCache_outer_TLBuffer_auto_out_e_valid),
    .auto_out_e_bits_sink(InclusiveCache_outer_TLBuffer_auto_out_e_bits_sink)
  );
  TLCacheCork cork ( // @[Configs.scala 105:26:chipyard.TestHarness.RocketConfig.fir@119437.4]
    .clock(cork_clock),
    .reset(cork_reset),
    .auto_in_a_ready(cork_auto_in_a_ready),
    .auto_in_a_valid(cork_auto_in_a_valid),
    .auto_in_a_bits_opcode(cork_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(cork_auto_in_a_bits_param),
    .auto_in_a_bits_size(cork_auto_in_a_bits_size),
    .auto_in_a_bits_source(cork_auto_in_a_bits_source),
    .auto_in_a_bits_address(cork_auto_in_a_bits_address),
    .auto_in_a_bits_mask(cork_auto_in_a_bits_mask),
    .auto_in_a_bits_data(cork_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(cork_auto_in_a_bits_corrupt),
    .auto_in_c_ready(cork_auto_in_c_ready),
    .auto_in_c_valid(cork_auto_in_c_valid),
    .auto_in_c_bits_opcode(cork_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(cork_auto_in_c_bits_param),
    .auto_in_c_bits_size(cork_auto_in_c_bits_size),
    .auto_in_c_bits_source(cork_auto_in_c_bits_source),
    .auto_in_c_bits_address(cork_auto_in_c_bits_address),
    .auto_in_c_bits_data(cork_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(cork_auto_in_c_bits_corrupt),
    .auto_in_d_ready(cork_auto_in_d_ready),
    .auto_in_d_valid(cork_auto_in_d_valid),
    .auto_in_d_bits_opcode(cork_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(cork_auto_in_d_bits_param),
    .auto_in_d_bits_size(cork_auto_in_d_bits_size),
    .auto_in_d_bits_source(cork_auto_in_d_bits_source),
    .auto_in_d_bits_sink(cork_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(cork_auto_in_d_bits_denied),
    .auto_in_d_bits_data(cork_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(cork_auto_in_d_bits_corrupt),
    .auto_in_e_valid(cork_auto_in_e_valid),
    .auto_in_e_bits_sink(cork_auto_in_e_bits_sink),
    .auto_out_a_ready(cork_auto_out_a_ready),
    .auto_out_a_valid(cork_auto_out_a_valid),
    .auto_out_a_bits_opcode(cork_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(cork_auto_out_a_bits_param),
    .auto_out_a_bits_size(cork_auto_out_a_bits_size),
    .auto_out_a_bits_source(cork_auto_out_a_bits_source),
    .auto_out_a_bits_address(cork_auto_out_a_bits_address),
    .auto_out_a_bits_mask(cork_auto_out_a_bits_mask),
    .auto_out_a_bits_data(cork_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(cork_auto_out_a_bits_corrupt),
    .auto_out_d_ready(cork_auto_out_d_ready),
    .auto_out_d_valid(cork_auto_out_d_valid),
    .auto_out_d_bits_opcode(cork_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(cork_auto_out_d_bits_size),
    .auto_out_d_bits_source(cork_auto_out_d_bits_source),
    .auto_out_d_bits_denied(cork_auto_out_d_bits_denied),
    .auto_out_d_bits_data(cork_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(cork_auto_out_d_bits_corrupt)
  );
  TLJbar coherent_jbar ( // @[BankedL2Params.scala 56:41:chipyard.TestHarness.RocketConfig.fir@119443.4]
    .clock(coherent_jbar_clock),
    .reset(coherent_jbar_reset),
    .auto_in_a_ready(coherent_jbar_auto_in_a_ready),
    .auto_in_a_valid(coherent_jbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(coherent_jbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(coherent_jbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(coherent_jbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(coherent_jbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(coherent_jbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(coherent_jbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(coherent_jbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(coherent_jbar_auto_in_a_bits_corrupt),
    .auto_in_b_ready(coherent_jbar_auto_in_b_ready),
    .auto_in_b_valid(coherent_jbar_auto_in_b_valid),
    .auto_in_b_bits_param(coherent_jbar_auto_in_b_bits_param),
    .auto_in_b_bits_address(coherent_jbar_auto_in_b_bits_address),
    .auto_in_c_ready(coherent_jbar_auto_in_c_ready),
    .auto_in_c_valid(coherent_jbar_auto_in_c_valid),
    .auto_in_c_bits_opcode(coherent_jbar_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(coherent_jbar_auto_in_c_bits_param),
    .auto_in_c_bits_size(coherent_jbar_auto_in_c_bits_size),
    .auto_in_c_bits_source(coherent_jbar_auto_in_c_bits_source),
    .auto_in_c_bits_address(coherent_jbar_auto_in_c_bits_address),
    .auto_in_c_bits_data(coherent_jbar_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(coherent_jbar_auto_in_c_bits_corrupt),
    .auto_in_d_ready(coherent_jbar_auto_in_d_ready),
    .auto_in_d_valid(coherent_jbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(coherent_jbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(coherent_jbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(coherent_jbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(coherent_jbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(coherent_jbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(coherent_jbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(coherent_jbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(coherent_jbar_auto_in_d_bits_corrupt),
    .auto_in_e_valid(coherent_jbar_auto_in_e_valid),
    .auto_in_e_bits_sink(coherent_jbar_auto_in_e_bits_sink),
    .auto_out_a_ready(coherent_jbar_auto_out_a_ready),
    .auto_out_a_valid(coherent_jbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(coherent_jbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(coherent_jbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(coherent_jbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(coherent_jbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(coherent_jbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(coherent_jbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(coherent_jbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(coherent_jbar_auto_out_a_bits_corrupt),
    .auto_out_b_ready(coherent_jbar_auto_out_b_ready),
    .auto_out_b_valid(coherent_jbar_auto_out_b_valid),
    .auto_out_b_bits_param(coherent_jbar_auto_out_b_bits_param),
    .auto_out_b_bits_address(coherent_jbar_auto_out_b_bits_address),
    .auto_out_c_ready(coherent_jbar_auto_out_c_ready),
    .auto_out_c_valid(coherent_jbar_auto_out_c_valid),
    .auto_out_c_bits_opcode(coherent_jbar_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(coherent_jbar_auto_out_c_bits_param),
    .auto_out_c_bits_size(coherent_jbar_auto_out_c_bits_size),
    .auto_out_c_bits_source(coherent_jbar_auto_out_c_bits_source),
    .auto_out_c_bits_address(coherent_jbar_auto_out_c_bits_address),
    .auto_out_c_bits_data(coherent_jbar_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(coherent_jbar_auto_out_c_bits_corrupt),
    .auto_out_d_ready(coherent_jbar_auto_out_d_ready),
    .auto_out_d_valid(coherent_jbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(coherent_jbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(coherent_jbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(coherent_jbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(coherent_jbar_auto_out_d_bits_source),
    .auto_out_d_bits_sink(coherent_jbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(coherent_jbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(coherent_jbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(coherent_jbar_auto_out_d_bits_corrupt),
    .auto_out_e_valid(coherent_jbar_auto_out_e_valid),
    .auto_out_e_bits_sink(coherent_jbar_auto_out_e_bits_sink)
  );
  BankBinder binder ( // @[BankBinder.scala 68:28:chipyard.TestHarness.RocketConfig.fir@119449.4]
    .clock(binder_clock),
    .reset(binder_reset),
    .auto_in_a_ready(binder_auto_in_a_ready),
    .auto_in_a_valid(binder_auto_in_a_valid),
    .auto_in_a_bits_opcode(binder_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(binder_auto_in_a_bits_param),
    .auto_in_a_bits_size(binder_auto_in_a_bits_size),
    .auto_in_a_bits_source(binder_auto_in_a_bits_source),
    .auto_in_a_bits_address(binder_auto_in_a_bits_address),
    .auto_in_a_bits_mask(binder_auto_in_a_bits_mask),
    .auto_in_a_bits_data(binder_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(binder_auto_in_a_bits_corrupt),
    .auto_in_d_ready(binder_auto_in_d_ready),
    .auto_in_d_valid(binder_auto_in_d_valid),
    .auto_in_d_bits_opcode(binder_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(binder_auto_in_d_bits_size),
    .auto_in_d_bits_source(binder_auto_in_d_bits_source),
    .auto_in_d_bits_denied(binder_auto_in_d_bits_denied),
    .auto_in_d_bits_data(binder_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(binder_auto_in_d_bits_corrupt),
    .auto_out_a_ready(binder_auto_out_a_ready),
    .auto_out_a_valid(binder_auto_out_a_valid),
    .auto_out_a_bits_opcode(binder_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(binder_auto_out_a_bits_param),
    .auto_out_a_bits_size(binder_auto_out_a_bits_size),
    .auto_out_a_bits_source(binder_auto_out_a_bits_source),
    .auto_out_a_bits_address(binder_auto_out_a_bits_address),
    .auto_out_a_bits_mask(binder_auto_out_a_bits_mask),
    .auto_out_a_bits_data(binder_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(binder_auto_out_a_bits_corrupt),
    .auto_out_d_ready(binder_auto_out_d_ready),
    .auto_out_d_valid(binder_auto_out_d_valid),
    .auto_out_d_bits_opcode(binder_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(binder_auto_out_d_bits_size),
    .auto_out_d_bits_source(binder_auto_out_d_bits_source),
    .auto_out_d_bits_denied(binder_auto_out_d_bits_denied),
    .auto_out_d_bits_data(binder_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(binder_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_15 coupler_to_bus_named_subsystem_mbus ( // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@119455.4]
    .clock(coupler_to_bus_named_subsystem_mbus_clock),
    .reset(coupler_to_bus_named_subsystem_mbus_reset),
    .auto_widget_in_a_ready(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_mask(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_size(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_denied(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt),
    .auto_widget_out_a_ready(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready),
    .auto_widget_out_a_valid(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid),
    .auto_widget_out_a_bits_opcode(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode),
    .auto_widget_out_a_bits_param(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_param),
    .auto_widget_out_a_bits_size(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size),
    .auto_widget_out_a_bits_source(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source),
    .auto_widget_out_a_bits_address(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address),
    .auto_widget_out_a_bits_mask(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask),
    .auto_widget_out_a_bits_data(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data),
    .auto_widget_out_a_bits_corrupt(coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_corrupt),
    .auto_widget_out_d_ready(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready),
    .auto_widget_out_d_valid(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid),
    .auto_widget_out_d_bits_opcode(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode),
    .auto_widget_out_d_bits_size(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size),
    .auto_widget_out_d_bits_source(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source),
    .auto_widget_out_d_bits_denied(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied),
    .auto_widget_out_d_bits_data(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data),
    .auto_widget_out_d_bits_corrupt(coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt)
  );
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt = coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready = coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign auto_coherent_jbar_in_a_ready = coherent_jbar_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_b_valid = coherent_jbar_auto_in_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_b_bits_param = coherent_jbar_auto_in_b_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_b_bits_address = coherent_jbar_auto_in_b_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_c_ready = coherent_jbar_auto_in_c_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_valid = coherent_jbar_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_bits_opcode = coherent_jbar_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_bits_param = coherent_jbar_auto_in_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_bits_size = coherent_jbar_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_bits_source = coherent_jbar_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_bits_sink = coherent_jbar_auto_in_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_bits_denied = coherent_jbar_auto_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_bits_data = coherent_jbar_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_coherent_jbar_in_d_bits_corrupt = coherent_jbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign auto_l2_ctl_in_a_ready = l2_auto_ctl_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign auto_l2_ctl_in_d_valid = l2_auto_ctl_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign auto_l2_ctl_in_d_bits_opcode = l2_auto_ctl_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign auto_l2_ctl_in_d_bits_size = l2_auto_ctl_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign auto_l2_ctl_in_d_bits_source = l2_auto_ctl_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign auto_l2_ctl_in_d_bits_data = l2_auto_ctl_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign auto_subsystem_l2_clock_groups_out_member_0_clock = subsystem_l2_clock_groups_auto_out_1_member_0_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119473.4]
  assign auto_subsystem_l2_clock_groups_out_member_0_reset = subsystem_l2_clock_groups_auto_out_1_member_0_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119473.4]
  assign subsystem_l2_clock_groups_auto_in_member_1_clock = auto_subsystem_l2_clock_groups_in_member_1_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119474.4]
  assign subsystem_l2_clock_groups_auto_in_member_1_reset = auto_subsystem_l2_clock_groups_in_member_1_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119474.4]
  assign subsystem_l2_clock_groups_auto_in_member_0_clock = auto_subsystem_l2_clock_groups_in_member_0_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119474.4]
  assign subsystem_l2_clock_groups_auto_in_member_0_reset = auto_subsystem_l2_clock_groups_in_member_0_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119474.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_l2_clock_groups_auto_out_0_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119463.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_l2_clock_groups_auto_out_0_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119463.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119464.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119464.4]
  assign l2_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@119417.4]
  assign l2_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@119418.4]
  assign l2_auto_ctl_in_a_valid = auto_l2_ctl_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_a_bits_opcode = auto_l2_ctl_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_a_bits_param = auto_l2_ctl_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_a_bits_size = auto_l2_ctl_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_a_bits_source = auto_l2_ctl_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_a_bits_address = auto_l2_ctl_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_a_bits_mask = auto_l2_ctl_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_a_bits_data = auto_l2_ctl_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_a_bits_corrupt = auto_l2_ctl_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_ctl_in_d_ready = auto_l2_ctl_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119475.4]
  assign l2_auto_in_a_valid = InclusiveCache_inner_TLBuffer_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_a_bits_opcode = InclusiveCache_inner_TLBuffer_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_a_bits_param = InclusiveCache_inner_TLBuffer_auto_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_a_bits_size = InclusiveCache_inner_TLBuffer_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_a_bits_source = InclusiveCache_inner_TLBuffer_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_a_bits_address = InclusiveCache_inner_TLBuffer_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_a_bits_mask = InclusiveCache_inner_TLBuffer_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_a_bits_data = InclusiveCache_inner_TLBuffer_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_a_bits_corrupt = InclusiveCache_inner_TLBuffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_b_ready = InclusiveCache_inner_TLBuffer_auto_out_b_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_c_valid = InclusiveCache_inner_TLBuffer_auto_out_c_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_c_bits_opcode = InclusiveCache_inner_TLBuffer_auto_out_c_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_c_bits_param = InclusiveCache_inner_TLBuffer_auto_out_c_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_c_bits_size = InclusiveCache_inner_TLBuffer_auto_out_c_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_c_bits_source = InclusiveCache_inner_TLBuffer_auto_out_c_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_c_bits_address = InclusiveCache_inner_TLBuffer_auto_out_c_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_c_bits_data = InclusiveCache_inner_TLBuffer_auto_out_c_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_c_bits_corrupt = InclusiveCache_inner_TLBuffer_auto_out_c_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_d_ready = InclusiveCache_inner_TLBuffer_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_e_valid = InclusiveCache_inner_TLBuffer_auto_out_e_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_in_e_bits_sink = InclusiveCache_inner_TLBuffer_auto_out_e_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign l2_auto_out_a_ready = InclusiveCache_outer_TLBuffer_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_c_ready = InclusiveCache_outer_TLBuffer_auto_in_c_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_valid = InclusiveCache_outer_TLBuffer_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_bits_opcode = InclusiveCache_outer_TLBuffer_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_bits_param = InclusiveCache_outer_TLBuffer_auto_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_bits_size = InclusiveCache_outer_TLBuffer_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_bits_source = InclusiveCache_outer_TLBuffer_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_bits_sink = InclusiveCache_outer_TLBuffer_auto_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_bits_denied = InclusiveCache_outer_TLBuffer_auto_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_bits_data = InclusiveCache_outer_TLBuffer_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign l2_auto_out_d_bits_corrupt = InclusiveCache_outer_TLBuffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign filter_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@119423.4]
  assign filter_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@119424.4]
  assign filter_auto_in_a_valid = coherent_jbar_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_a_bits_opcode = coherent_jbar_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_a_bits_param = coherent_jbar_auto_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_a_bits_size = coherent_jbar_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_a_bits_source = coherent_jbar_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_a_bits_address = coherent_jbar_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_a_bits_mask = coherent_jbar_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_a_bits_data = coherent_jbar_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_a_bits_corrupt = coherent_jbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_b_ready = coherent_jbar_auto_out_b_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_c_valid = coherent_jbar_auto_out_c_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_c_bits_opcode = coherent_jbar_auto_out_c_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_c_bits_param = coherent_jbar_auto_out_c_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_c_bits_size = coherent_jbar_auto_out_c_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_c_bits_source = coherent_jbar_auto_out_c_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_c_bits_address = coherent_jbar_auto_out_c_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_c_bits_data = coherent_jbar_auto_out_c_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_c_bits_corrupt = coherent_jbar_auto_out_c_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_d_ready = coherent_jbar_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_e_valid = coherent_jbar_auto_out_e_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_in_e_bits_sink = coherent_jbar_auto_out_e_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign filter_auto_out_a_ready = InclusiveCache_inner_TLBuffer_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_b_valid = InclusiveCache_inner_TLBuffer_auto_in_b_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_b_bits_param = InclusiveCache_inner_TLBuffer_auto_in_b_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_b_bits_address = InclusiveCache_inner_TLBuffer_auto_in_b_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_c_ready = InclusiveCache_inner_TLBuffer_auto_in_c_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_valid = InclusiveCache_inner_TLBuffer_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_bits_opcode = InclusiveCache_inner_TLBuffer_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_bits_param = InclusiveCache_inner_TLBuffer_auto_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_bits_size = InclusiveCache_inner_TLBuffer_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_bits_source = InclusiveCache_inner_TLBuffer_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_bits_sink = InclusiveCache_inner_TLBuffer_auto_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_bits_denied = InclusiveCache_inner_TLBuffer_auto_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_bits_data = InclusiveCache_inner_TLBuffer_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign filter_auto_out_d_bits_corrupt = InclusiveCache_inner_TLBuffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@119429.4]
  assign InclusiveCache_inner_TLBuffer_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@119430.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_valid = filter_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_bits_opcode = filter_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_bits_param = filter_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_bits_size = filter_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_bits_source = filter_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_bits_address = filter_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_bits_mask = filter_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_bits_data = filter_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_a_bits_corrupt = filter_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_b_ready = filter_auto_out_b_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_c_valid = filter_auto_out_c_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_c_bits_opcode = filter_auto_out_c_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_c_bits_param = filter_auto_out_c_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_c_bits_size = filter_auto_out_c_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_c_bits_source = filter_auto_out_c_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_c_bits_address = filter_auto_out_c_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_c_bits_data = filter_auto_out_c_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_c_bits_corrupt = filter_auto_out_c_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_d_ready = filter_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_e_valid = filter_auto_out_e_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_in_e_bits_sink = filter_auto_out_e_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119467.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_a_ready = l2_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_b_valid = l2_auto_in_b_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_b_bits_param = l2_auto_in_b_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_b_bits_address = l2_auto_in_b_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_c_ready = l2_auto_in_c_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_valid = l2_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_bits_opcode = l2_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_bits_param = l2_auto_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_bits_size = l2_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_bits_source = l2_auto_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_bits_sink = l2_auto_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_bits_denied = l2_auto_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_bits_data = l2_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_inner_TLBuffer_auto_out_d_bits_corrupt = l2_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119468.4]
  assign InclusiveCache_outer_TLBuffer_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@119435.4]
  assign InclusiveCache_outer_TLBuffer_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@119436.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_valid = l2_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_bits_opcode = l2_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_bits_param = l2_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_bits_size = l2_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_bits_source = l2_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_bits_address = l2_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_bits_mask = l2_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_bits_data = l2_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_a_bits_corrupt = l2_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_c_valid = l2_auto_out_c_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_c_bits_opcode = l2_auto_out_c_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_c_bits_param = l2_auto_out_c_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_c_bits_size = l2_auto_out_c_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_c_bits_source = l2_auto_out_c_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_c_bits_address = l2_auto_out_c_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_c_bits_data = l2_auto_out_c_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_c_bits_corrupt = l2_auto_out_c_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_d_ready = l2_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_e_valid = l2_auto_out_e_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_in_e_bits_sink = l2_auto_out_e_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119466.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_a_ready = cork_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_c_ready = cork_auto_in_c_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_valid = cork_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_bits_opcode = cork_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_bits_param = cork_auto_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_bits_size = cork_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_bits_source = cork_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_bits_sink = cork_auto_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_bits_denied = cork_auto_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_bits_data = cork_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign InclusiveCache_outer_TLBuffer_auto_out_d_bits_corrupt = cork_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@119441.4]
  assign cork_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@119442.4]
  assign cork_auto_in_a_valid = InclusiveCache_outer_TLBuffer_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_a_bits_opcode = InclusiveCache_outer_TLBuffer_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_a_bits_param = InclusiveCache_outer_TLBuffer_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_a_bits_size = InclusiveCache_outer_TLBuffer_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_a_bits_source = InclusiveCache_outer_TLBuffer_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_a_bits_address = InclusiveCache_outer_TLBuffer_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_a_bits_mask = InclusiveCache_outer_TLBuffer_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_a_bits_data = InclusiveCache_outer_TLBuffer_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_a_bits_corrupt = InclusiveCache_outer_TLBuffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_c_valid = InclusiveCache_outer_TLBuffer_auto_out_c_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_c_bits_opcode = InclusiveCache_outer_TLBuffer_auto_out_c_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_c_bits_param = InclusiveCache_outer_TLBuffer_auto_out_c_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_c_bits_size = InclusiveCache_outer_TLBuffer_auto_out_c_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_c_bits_source = InclusiveCache_outer_TLBuffer_auto_out_c_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_c_bits_address = InclusiveCache_outer_TLBuffer_auto_out_c_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_c_bits_data = InclusiveCache_outer_TLBuffer_auto_out_c_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_c_bits_corrupt = InclusiveCache_outer_TLBuffer_auto_out_c_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_d_ready = InclusiveCache_outer_TLBuffer_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_e_valid = InclusiveCache_outer_TLBuffer_auto_out_e_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_in_e_bits_sink = InclusiveCache_outer_TLBuffer_auto_out_e_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119469.4]
  assign cork_auto_out_a_ready = binder_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign cork_auto_out_d_valid = binder_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign cork_auto_out_d_bits_opcode = binder_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign cork_auto_out_d_bits_size = binder_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign cork_auto_out_d_bits_source = binder_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign cork_auto_out_d_bits_denied = binder_auto_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign cork_auto_out_d_bits_data = binder_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign cork_auto_out_d_bits_corrupt = binder_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign coherent_jbar_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@119447.4]
  assign coherent_jbar_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@119448.4]
  assign coherent_jbar_auto_in_a_valid = auto_coherent_jbar_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_a_bits_opcode = auto_coherent_jbar_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_a_bits_param = auto_coherent_jbar_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_a_bits_size = auto_coherent_jbar_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_a_bits_source = auto_coherent_jbar_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_a_bits_address = auto_coherent_jbar_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_a_bits_mask = auto_coherent_jbar_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_a_bits_data = auto_coherent_jbar_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_a_bits_corrupt = auto_coherent_jbar_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_b_ready = auto_coherent_jbar_in_b_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_c_valid = auto_coherent_jbar_in_c_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_c_bits_opcode = auto_coherent_jbar_in_c_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_c_bits_param = auto_coherent_jbar_in_c_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_c_bits_size = auto_coherent_jbar_in_c_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_c_bits_source = auto_coherent_jbar_in_c_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_c_bits_address = auto_coherent_jbar_in_c_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_c_bits_data = auto_coherent_jbar_in_c_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_c_bits_corrupt = auto_coherent_jbar_in_c_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_d_ready = auto_coherent_jbar_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_e_valid = auto_coherent_jbar_in_e_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_in_e_bits_sink = auto_coherent_jbar_in_e_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119476.4]
  assign coherent_jbar_auto_out_a_ready = filter_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_b_valid = filter_auto_in_b_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_b_bits_param = filter_auto_in_b_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_b_bits_address = filter_auto_in_b_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_c_ready = filter_auto_in_c_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_valid = filter_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_bits_opcode = filter_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_bits_param = filter_auto_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_bits_size = filter_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_bits_source = filter_auto_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_bits_sink = filter_auto_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_bits_denied = filter_auto_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_bits_data = filter_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign coherent_jbar_auto_out_d_bits_corrupt = filter_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@119471.4]
  assign binder_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@119453.4]
  assign binder_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@119454.4]
  assign binder_auto_in_a_valid = cork_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_a_bits_opcode = cork_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_a_bits_param = cork_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_a_bits_size = cork_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_a_bits_source = cork_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_a_bits_address = cork_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_a_bits_mask = cork_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_a_bits_data = cork_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_a_bits_corrupt = cork_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_in_d_ready = cork_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119470.4]
  assign binder_auto_out_a_ready = coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign binder_auto_out_d_valid = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign binder_auto_out_d_bits_opcode = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign binder_auto_out_d_bits_size = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign binder_auto_out_d_bits_source = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign binder_auto_out_d_bits_denied = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign binder_auto_out_d_bits_data = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign binder_auto_out_d_bits_corrupt = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@119459.4]
  assign coupler_to_bus_named_subsystem_mbus_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@119460.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid = binder_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode = binder_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_param = binder_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size = binder_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source = binder_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address = binder_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask = binder_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data = binder_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_corrupt = binder_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready = binder_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@119472.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready = auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt = auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119477.4]
endmodule
