module SystemBus( // @[:chipyard.TestHarness.RocketConfig.fir@20833.2]
  output        auto_coupler_from_tile_tl_master_xing_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_tile_tl_master_xing_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [3:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [1:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [31:0] auto_coupler_from_tile_tl_master_xing_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [7:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [63:0] auto_coupler_from_tile_tl_master_xing_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_tile_tl_master_xing_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_tile_tl_master_xing_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [31:0] auto_coupler_from_tile_tl_master_xing_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_tile_tl_master_xing_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_tile_tl_master_xing_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [3:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [1:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [31:0] auto_coupler_from_tile_tl_master_xing_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [63:0] auto_coupler_from_tile_tl_master_xing_in_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_tile_tl_master_xing_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_tile_tl_master_xing_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [3:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_tile_tl_master_xing_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [63:0] auto_coupler_from_tile_tl_master_xing_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_tile_tl_master_xing_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [7:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [63:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [63:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [63:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [31:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [7:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [63:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [1:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [63:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [3:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [30:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [7:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output [63:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [1:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [3:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input  [63:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_5_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_5_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_4_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_4_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_3_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_3_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_2_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_2_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_1_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_1_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  input         auto_subsystem_sbus_clock_groups_in_member_0_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_2_member_1_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_2_member_1_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_2_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_2_member_0_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_1_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_1_member_0_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_0_member_1_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_0_member_1_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_0_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
  output        auto_subsystem_sbus_clock_groups_out_0_member_0_reset // @[:chipyard.TestHarness.RocketConfig.fir@20834.4]
);
  wire  subsystem_sbus_clock_groups_auto_in_member_5_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_5_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_4_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_4_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_3_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_3_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_2_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_2_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_1_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_1_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_1_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_1_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_2_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_2_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_1_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_1_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_0_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  subsystem_sbus_clock_groups_auto_out_0_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@20850.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@20850.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@20850.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@20850.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@20852.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@20852.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@20852.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@20852.4]
  wire  system_bus_xbar_clock; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_reset; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_a_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_a_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_in_1_a_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [31:0] system_bus_xbar_auto_in_1_a_bits_address; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [7:0] system_bus_xbar_auto_in_1_a_bits_mask; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_in_1_a_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_a_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_b_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_b_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_in_1_b_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [31:0] system_bus_xbar_auto_in_1_b_bits_address; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_c_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_c_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_1_c_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_1_c_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [3:0] system_bus_xbar_auto_in_1_c_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_in_1_c_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [31:0] system_bus_xbar_auto_in_1_c_bits_address; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_in_1_c_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_c_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_d_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_d_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_1_d_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [3:0] system_bus_xbar_auto_in_1_d_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_1_d_bits_sink; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_d_bits_denied; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_in_1_d_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_d_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_1_e_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_1_e_bits_sink; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_0_a_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_0_a_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_0_a_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [31:0] system_bus_xbar_auto_in_0_a_bits_address; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [7:0] system_bus_xbar_auto_in_0_a_bits_mask; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_in_0_a_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_0_a_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_0_d_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_0_d_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_0_d_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [3:0] system_bus_xbar_auto_in_0_d_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_in_0_d_bits_sink; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_0_d_bits_denied; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_in_0_d_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_in_0_d_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_a_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_a_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [31:0] system_bus_xbar_auto_out_1_a_bits_address; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [7:0] system_bus_xbar_auto_out_1_a_bits_mask; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_out_1_a_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_a_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_b_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_b_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_out_1_b_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [31:0] system_bus_xbar_auto_out_1_b_bits_address; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_c_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_c_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [31:0] system_bus_xbar_auto_out_1_c_bits_address; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_out_1_c_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_c_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_d_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_d_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_sink; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_d_bits_denied; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_out_1_d_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_d_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_1_e_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_1_e_bits_sink; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_0_a_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_0_a_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [3:0] system_bus_xbar_auto_out_0_a_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [30:0] system_bus_xbar_auto_out_0_a_bits_address; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [7:0] system_bus_xbar_auto_out_0_a_bits_mask; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_out_0_a_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_0_a_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_0_d_ready; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_0_d_valid; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_0_d_bits_opcode; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [1:0] system_bus_xbar_auto_out_0_d_bits_param; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [3:0] system_bus_xbar_auto_out_0_d_bits_size; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [2:0] system_bus_xbar_auto_out_0_d_bits_source; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_0_d_bits_sink; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_0_d_bits_denied; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire [63:0] system_bus_xbar_auto_out_0_d_bits_data; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  system_bus_xbar_auto_out_0_d_bits_corrupt; // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
  wire  fixer_clock; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_reset; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_a_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_a_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_1_a_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_1_a_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_in_1_a_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_in_1_a_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [31:0] fixer_auto_in_1_a_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [7:0] fixer_auto_in_1_a_bits_mask; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_in_1_a_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_a_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_b_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_b_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_in_1_b_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [31:0] fixer_auto_in_1_b_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_c_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_c_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_1_c_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_1_c_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_in_1_c_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_in_1_c_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [31:0] fixer_auto_in_1_c_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_in_1_c_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_c_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_d_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_d_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_1_d_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_in_1_d_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_in_1_d_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_in_1_d_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_1_d_bits_sink; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_d_bits_denied; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_in_1_d_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_d_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_1_e_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_1_e_bits_sink; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_0_a_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_0_a_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_0_a_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_0_a_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_in_0_a_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_0_a_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [31:0] fixer_auto_in_0_a_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [7:0] fixer_auto_in_0_a_bits_mask; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_in_0_a_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_0_a_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_0_d_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_0_d_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_0_d_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_in_0_d_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_in_0_d_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_in_0_d_bits_sink; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_0_d_bits_denied; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_in_0_d_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_in_0_d_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_a_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_a_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_1_a_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_1_a_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_out_1_a_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_out_1_a_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [31:0] fixer_auto_out_1_a_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [7:0] fixer_auto_out_1_a_bits_mask; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_out_1_a_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_a_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_b_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_b_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_out_1_b_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [31:0] fixer_auto_out_1_b_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_c_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_c_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_1_c_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_1_c_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_out_1_c_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_out_1_c_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [31:0] fixer_auto_out_1_c_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_out_1_c_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_c_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_d_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_d_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_1_d_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_out_1_d_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_out_1_d_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_out_1_d_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_1_d_bits_sink; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_d_bits_denied; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_out_1_d_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_d_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_1_e_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_1_e_bits_sink; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_0_a_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_0_a_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_0_a_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_0_a_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_out_0_a_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_0_a_bits_source; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [31:0] fixer_auto_out_0_a_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [7:0] fixer_auto_out_0_a_bits_mask; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_out_0_a_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_0_a_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_0_d_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_0_d_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_0_d_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [1:0] fixer_auto_out_0_d_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [3:0] fixer_auto_out_0_d_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [2:0] fixer_auto_out_0_d_bits_sink; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_0_d_bits_denied; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire [63:0] fixer_auto_out_0_d_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  fixer_auto_out_0_d_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
  wire  coupler_to_bus_named_subsystem_cbus_clock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_reset; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [30:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [7:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [63:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [1:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [63:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [30:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [7:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [63:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [1:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire [63:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
  wire  coupler_from_bus_named_subsystem_fbus_clock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_reset; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [7:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [63:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [1:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [63:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [7:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [63:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [1:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire [63:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
  wire  coupler_to_bus_named_subsystem_l2_clock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_reset; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [7:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [7:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
  wire  coupler_from_tile_clock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_reset; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [3:0] coupler_from_tile_auto_buffer_out_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [7:0] coupler_from_tile_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [63:0] coupler_from_tile_auto_buffer_out_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_b_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_b_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_b_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_b_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_c_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_c_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_c_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_c_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [3:0] coupler_from_tile_auto_buffer_out_c_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_c_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [31:0] coupler_from_tile_auto_buffer_out_c_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [63:0] coupler_from_tile_auto_buffer_out_c_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_c_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [3:0] coupler_from_tile_auto_buffer_out_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_buffer_out_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [63:0] coupler_from_tile_auto_buffer_out_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_buffer_out_e_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_buffer_out_e_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [7:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [63:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_b_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_b_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_c_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_c_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [63:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_c_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [63:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire  coupler_from_tile_auto_tl_master_xing_in_e_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
  ClockGroupAggregator subsystem_sbus_clock_groups ( // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@20848.4]
    .auto_in_member_5_clock(subsystem_sbus_clock_groups_auto_in_member_5_clock),
    .auto_in_member_5_reset(subsystem_sbus_clock_groups_auto_in_member_5_reset),
    .auto_in_member_4_clock(subsystem_sbus_clock_groups_auto_in_member_4_clock),
    .auto_in_member_4_reset(subsystem_sbus_clock_groups_auto_in_member_4_reset),
    .auto_in_member_3_clock(subsystem_sbus_clock_groups_auto_in_member_3_clock),
    .auto_in_member_3_reset(subsystem_sbus_clock_groups_auto_in_member_3_reset),
    .auto_in_member_2_clock(subsystem_sbus_clock_groups_auto_in_member_2_clock),
    .auto_in_member_2_reset(subsystem_sbus_clock_groups_auto_in_member_2_reset),
    .auto_in_member_1_clock(subsystem_sbus_clock_groups_auto_in_member_1_clock),
    .auto_in_member_1_reset(subsystem_sbus_clock_groups_auto_in_member_1_reset),
    .auto_in_member_0_clock(subsystem_sbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_sbus_clock_groups_auto_in_member_0_reset),
    .auto_out_3_member_1_clock(subsystem_sbus_clock_groups_auto_out_3_member_1_clock),
    .auto_out_3_member_1_reset(subsystem_sbus_clock_groups_auto_out_3_member_1_reset),
    .auto_out_3_member_0_clock(subsystem_sbus_clock_groups_auto_out_3_member_0_clock),
    .auto_out_3_member_0_reset(subsystem_sbus_clock_groups_auto_out_3_member_0_reset),
    .auto_out_2_member_0_clock(subsystem_sbus_clock_groups_auto_out_2_member_0_clock),
    .auto_out_2_member_0_reset(subsystem_sbus_clock_groups_auto_out_2_member_0_reset),
    .auto_out_1_member_1_clock(subsystem_sbus_clock_groups_auto_out_1_member_1_clock),
    .auto_out_1_member_1_reset(subsystem_sbus_clock_groups_auto_out_1_member_1_reset),
    .auto_out_1_member_0_clock(subsystem_sbus_clock_groups_auto_out_1_member_0_clock),
    .auto_out_1_member_0_reset(subsystem_sbus_clock_groups_auto_out_1_member_0_reset),
    .auto_out_0_member_0_clock(subsystem_sbus_clock_groups_auto_out_0_member_0_clock),
    .auto_out_0_member_0_reset(subsystem_sbus_clock_groups_auto_out_0_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@20850.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@20852.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  TLXbar system_bus_xbar ( // @[SystemBus.scala 38:43:chipyard.TestHarness.RocketConfig.fir@20854.4]
    .clock(system_bus_xbar_clock),
    .reset(system_bus_xbar_reset),
    .auto_in_1_a_ready(system_bus_xbar_auto_in_1_a_ready),
    .auto_in_1_a_valid(system_bus_xbar_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(system_bus_xbar_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(system_bus_xbar_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(system_bus_xbar_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(system_bus_xbar_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(system_bus_xbar_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(system_bus_xbar_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(system_bus_xbar_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(system_bus_xbar_auto_in_1_a_bits_corrupt),
    .auto_in_1_b_ready(system_bus_xbar_auto_in_1_b_ready),
    .auto_in_1_b_valid(system_bus_xbar_auto_in_1_b_valid),
    .auto_in_1_b_bits_param(system_bus_xbar_auto_in_1_b_bits_param),
    .auto_in_1_b_bits_address(system_bus_xbar_auto_in_1_b_bits_address),
    .auto_in_1_c_ready(system_bus_xbar_auto_in_1_c_ready),
    .auto_in_1_c_valid(system_bus_xbar_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(system_bus_xbar_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(system_bus_xbar_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(system_bus_xbar_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(system_bus_xbar_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(system_bus_xbar_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_data(system_bus_xbar_auto_in_1_c_bits_data),
    .auto_in_1_c_bits_corrupt(system_bus_xbar_auto_in_1_c_bits_corrupt),
    .auto_in_1_d_ready(system_bus_xbar_auto_in_1_d_ready),
    .auto_in_1_d_valid(system_bus_xbar_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(system_bus_xbar_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(system_bus_xbar_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(system_bus_xbar_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(system_bus_xbar_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(system_bus_xbar_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(system_bus_xbar_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(system_bus_xbar_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(system_bus_xbar_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_valid(system_bus_xbar_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(system_bus_xbar_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(system_bus_xbar_auto_in_0_a_ready),
    .auto_in_0_a_valid(system_bus_xbar_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(system_bus_xbar_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(system_bus_xbar_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(system_bus_xbar_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(system_bus_xbar_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(system_bus_xbar_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(system_bus_xbar_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(system_bus_xbar_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(system_bus_xbar_auto_in_0_a_bits_corrupt),
    .auto_in_0_d_ready(system_bus_xbar_auto_in_0_d_ready),
    .auto_in_0_d_valid(system_bus_xbar_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(system_bus_xbar_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(system_bus_xbar_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(system_bus_xbar_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_sink(system_bus_xbar_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(system_bus_xbar_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(system_bus_xbar_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(system_bus_xbar_auto_in_0_d_bits_corrupt),
    .auto_out_1_a_ready(system_bus_xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(system_bus_xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(system_bus_xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(system_bus_xbar_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(system_bus_xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(system_bus_xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(system_bus_xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(system_bus_xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(system_bus_xbar_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(system_bus_xbar_auto_out_1_a_bits_corrupt),
    .auto_out_1_b_ready(system_bus_xbar_auto_out_1_b_ready),
    .auto_out_1_b_valid(system_bus_xbar_auto_out_1_b_valid),
    .auto_out_1_b_bits_param(system_bus_xbar_auto_out_1_b_bits_param),
    .auto_out_1_b_bits_address(system_bus_xbar_auto_out_1_b_bits_address),
    .auto_out_1_c_ready(system_bus_xbar_auto_out_1_c_ready),
    .auto_out_1_c_valid(system_bus_xbar_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(system_bus_xbar_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(system_bus_xbar_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(system_bus_xbar_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(system_bus_xbar_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(system_bus_xbar_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_data(system_bus_xbar_auto_out_1_c_bits_data),
    .auto_out_1_c_bits_corrupt(system_bus_xbar_auto_out_1_c_bits_corrupt),
    .auto_out_1_d_ready(system_bus_xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(system_bus_xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(system_bus_xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(system_bus_xbar_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(system_bus_xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(system_bus_xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(system_bus_xbar_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(system_bus_xbar_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(system_bus_xbar_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(system_bus_xbar_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_valid(system_bus_xbar_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(system_bus_xbar_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(system_bus_xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(system_bus_xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(system_bus_xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(system_bus_xbar_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(system_bus_xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(system_bus_xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(system_bus_xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(system_bus_xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(system_bus_xbar_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(system_bus_xbar_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(system_bus_xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(system_bus_xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(system_bus_xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(system_bus_xbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(system_bus_xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(system_bus_xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(system_bus_xbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(system_bus_xbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(system_bus_xbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(system_bus_xbar_auto_out_0_d_bits_corrupt)
  );
  TLFIFOFixer fixer ( // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@20860.4]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_1_a_ready(fixer_auto_in_1_a_ready),
    .auto_in_1_a_valid(fixer_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(fixer_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(fixer_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(fixer_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(fixer_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(fixer_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(fixer_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(fixer_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(fixer_auto_in_1_a_bits_corrupt),
    .auto_in_1_b_ready(fixer_auto_in_1_b_ready),
    .auto_in_1_b_valid(fixer_auto_in_1_b_valid),
    .auto_in_1_b_bits_param(fixer_auto_in_1_b_bits_param),
    .auto_in_1_b_bits_address(fixer_auto_in_1_b_bits_address),
    .auto_in_1_c_ready(fixer_auto_in_1_c_ready),
    .auto_in_1_c_valid(fixer_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(fixer_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(fixer_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(fixer_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(fixer_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(fixer_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_data(fixer_auto_in_1_c_bits_data),
    .auto_in_1_c_bits_corrupt(fixer_auto_in_1_c_bits_corrupt),
    .auto_in_1_d_ready(fixer_auto_in_1_d_ready),
    .auto_in_1_d_valid(fixer_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(fixer_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(fixer_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(fixer_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(fixer_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(fixer_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(fixer_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(fixer_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(fixer_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_valid(fixer_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(fixer_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(fixer_auto_in_0_a_ready),
    .auto_in_0_a_valid(fixer_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(fixer_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(fixer_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(fixer_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(fixer_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(fixer_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(fixer_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(fixer_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(fixer_auto_in_0_a_bits_corrupt),
    .auto_in_0_d_ready(fixer_auto_in_0_d_ready),
    .auto_in_0_d_valid(fixer_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(fixer_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(fixer_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(fixer_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_sink(fixer_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(fixer_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(fixer_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(fixer_auto_in_0_d_bits_corrupt),
    .auto_out_1_a_ready(fixer_auto_out_1_a_ready),
    .auto_out_1_a_valid(fixer_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(fixer_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(fixer_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(fixer_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(fixer_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(fixer_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(fixer_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(fixer_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(fixer_auto_out_1_a_bits_corrupt),
    .auto_out_1_b_ready(fixer_auto_out_1_b_ready),
    .auto_out_1_b_valid(fixer_auto_out_1_b_valid),
    .auto_out_1_b_bits_param(fixer_auto_out_1_b_bits_param),
    .auto_out_1_b_bits_address(fixer_auto_out_1_b_bits_address),
    .auto_out_1_c_ready(fixer_auto_out_1_c_ready),
    .auto_out_1_c_valid(fixer_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(fixer_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(fixer_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(fixer_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(fixer_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(fixer_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_data(fixer_auto_out_1_c_bits_data),
    .auto_out_1_c_bits_corrupt(fixer_auto_out_1_c_bits_corrupt),
    .auto_out_1_d_ready(fixer_auto_out_1_d_ready),
    .auto_out_1_d_valid(fixer_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(fixer_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(fixer_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(fixer_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(fixer_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(fixer_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(fixer_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(fixer_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(fixer_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_valid(fixer_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(fixer_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(fixer_auto_out_0_a_ready),
    .auto_out_0_a_valid(fixer_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(fixer_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(fixer_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(fixer_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(fixer_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(fixer_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(fixer_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(fixer_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(fixer_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(fixer_auto_out_0_d_ready),
    .auto_out_0_d_valid(fixer_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(fixer_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(fixer_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(fixer_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_sink(fixer_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(fixer_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(fixer_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(fixer_auto_out_0_d_bits_corrupt)
  );
  SimpleLazyModule coupler_to_bus_named_subsystem_cbus ( // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20866.4]
    .clock(coupler_to_bus_named_subsystem_cbus_clock),
    .reset(coupler_to_bus_named_subsystem_cbus_reset),
    .auto_widget_in_a_ready(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_mask(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_param(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param),
    .auto_widget_in_d_bits_size(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_sink(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink),
    .auto_widget_in_d_bits_denied(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt),
    .auto_bus_xing_out_a_ready(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready),
    .auto_bus_xing_out_a_valid(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid),
    .auto_bus_xing_out_a_bits_opcode(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode),
    .auto_bus_xing_out_a_bits_param(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param),
    .auto_bus_xing_out_a_bits_size(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size),
    .auto_bus_xing_out_a_bits_source(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source),
    .auto_bus_xing_out_a_bits_address(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address),
    .auto_bus_xing_out_a_bits_mask(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask),
    .auto_bus_xing_out_a_bits_data(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data),
    .auto_bus_xing_out_a_bits_corrupt(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt),
    .auto_bus_xing_out_d_ready(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready),
    .auto_bus_xing_out_d_valid(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid),
    .auto_bus_xing_out_d_bits_opcode(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode),
    .auto_bus_xing_out_d_bits_param(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param),
    .auto_bus_xing_out_d_bits_size(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size),
    .auto_bus_xing_out_d_bits_source(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source),
    .auto_bus_xing_out_d_bits_sink(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink),
    .auto_bus_xing_out_d_bits_denied(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied),
    .auto_bus_xing_out_d_bits_data(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data),
    .auto_bus_xing_out_d_bits_corrupt(coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt)
  );
  SimpleLazyModule_1 coupler_from_bus_named_subsystem_fbus ( // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20872.4]
    .clock(coupler_from_bus_named_subsystem_fbus_clock),
    .reset(coupler_from_bus_named_subsystem_fbus_reset),
    .auto_widget_out_a_ready(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready),
    .auto_widget_out_a_valid(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid),
    .auto_widget_out_a_bits_opcode(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode),
    .auto_widget_out_a_bits_param(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param),
    .auto_widget_out_a_bits_size(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size),
    .auto_widget_out_a_bits_source(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source),
    .auto_widget_out_a_bits_address(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address),
    .auto_widget_out_a_bits_mask(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask),
    .auto_widget_out_a_bits_data(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data),
    .auto_widget_out_a_bits_corrupt(coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt),
    .auto_widget_out_d_ready(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready),
    .auto_widget_out_d_valid(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid),
    .auto_widget_out_d_bits_opcode(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode),
    .auto_widget_out_d_bits_param(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_param),
    .auto_widget_out_d_bits_size(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size),
    .auto_widget_out_d_bits_sink(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_sink),
    .auto_widget_out_d_bits_denied(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied),
    .auto_widget_out_d_bits_data(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data),
    .auto_widget_out_d_bits_corrupt(coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt),
    .auto_bus_xing_in_a_ready(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready),
    .auto_bus_xing_in_a_valid(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid),
    .auto_bus_xing_in_a_bits_opcode(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode),
    .auto_bus_xing_in_a_bits_param(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param),
    .auto_bus_xing_in_a_bits_size(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size),
    .auto_bus_xing_in_a_bits_source(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source),
    .auto_bus_xing_in_a_bits_address(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address),
    .auto_bus_xing_in_a_bits_mask(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask),
    .auto_bus_xing_in_a_bits_data(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data),
    .auto_bus_xing_in_a_bits_corrupt(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt),
    .auto_bus_xing_in_d_ready(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready),
    .auto_bus_xing_in_d_valid(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid),
    .auto_bus_xing_in_d_bits_opcode(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode),
    .auto_bus_xing_in_d_bits_param(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_param),
    .auto_bus_xing_in_d_bits_size(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size),
    .auto_bus_xing_in_d_bits_sink(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_sink),
    .auto_bus_xing_in_d_bits_denied(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied),
    .auto_bus_xing_in_d_bits_data(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data),
    .auto_bus_xing_in_d_bits_corrupt(coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt)
  );
  SimpleLazyModule_2 coupler_to_bus_named_subsystem_l2 ( // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20878.4]
    .clock(coupler_to_bus_named_subsystem_l2_clock),
    .reset(coupler_to_bus_named_subsystem_l2_reset),
    .auto_widget_in_a_ready(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_mask(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_b_ready(coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready),
    .auto_widget_in_b_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid),
    .auto_widget_in_b_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param),
    .auto_widget_in_b_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address),
    .auto_widget_in_c_ready(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready),
    .auto_widget_in_c_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid),
    .auto_widget_in_c_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode),
    .auto_widget_in_c_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param),
    .auto_widget_in_c_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size),
    .auto_widget_in_c_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source),
    .auto_widget_in_c_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address),
    .auto_widget_in_c_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data),
    .auto_widget_in_c_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param),
    .auto_widget_in_d_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_sink(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink),
    .auto_widget_in_d_bits_denied(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt),
    .auto_widget_in_e_valid(coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid),
    .auto_widget_in_e_bits_sink(coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink),
    .auto_widget_out_a_ready(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready),
    .auto_widget_out_a_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid),
    .auto_widget_out_a_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode),
    .auto_widget_out_a_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param),
    .auto_widget_out_a_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size),
    .auto_widget_out_a_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source),
    .auto_widget_out_a_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address),
    .auto_widget_out_a_bits_mask(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask),
    .auto_widget_out_a_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data),
    .auto_widget_out_a_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_corrupt),
    .auto_widget_out_b_ready(coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready),
    .auto_widget_out_b_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid),
    .auto_widget_out_b_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param),
    .auto_widget_out_b_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address),
    .auto_widget_out_c_ready(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready),
    .auto_widget_out_c_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid),
    .auto_widget_out_c_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode),
    .auto_widget_out_c_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param),
    .auto_widget_out_c_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size),
    .auto_widget_out_c_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source),
    .auto_widget_out_c_bits_address(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address),
    .auto_widget_out_c_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data),
    .auto_widget_out_c_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_corrupt),
    .auto_widget_out_d_ready(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready),
    .auto_widget_out_d_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid),
    .auto_widget_out_d_bits_opcode(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode),
    .auto_widget_out_d_bits_param(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param),
    .auto_widget_out_d_bits_size(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size),
    .auto_widget_out_d_bits_source(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source),
    .auto_widget_out_d_bits_sink(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink),
    .auto_widget_out_d_bits_denied(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied),
    .auto_widget_out_d_bits_data(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data),
    .auto_widget_out_d_bits_corrupt(coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt),
    .auto_widget_out_e_valid(coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid),
    .auto_widget_out_e_bits_sink(coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink)
  );
  SimpleLazyModule_3 coupler_from_tile ( // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@20884.4]
    .clock(coupler_from_tile_clock),
    .reset(coupler_from_tile_reset),
    .auto_buffer_out_a_ready(coupler_from_tile_auto_buffer_out_a_ready),
    .auto_buffer_out_a_valid(coupler_from_tile_auto_buffer_out_a_valid),
    .auto_buffer_out_a_bits_opcode(coupler_from_tile_auto_buffer_out_a_bits_opcode),
    .auto_buffer_out_a_bits_param(coupler_from_tile_auto_buffer_out_a_bits_param),
    .auto_buffer_out_a_bits_size(coupler_from_tile_auto_buffer_out_a_bits_size),
    .auto_buffer_out_a_bits_source(coupler_from_tile_auto_buffer_out_a_bits_source),
    .auto_buffer_out_a_bits_address(coupler_from_tile_auto_buffer_out_a_bits_address),
    .auto_buffer_out_a_bits_mask(coupler_from_tile_auto_buffer_out_a_bits_mask),
    .auto_buffer_out_a_bits_data(coupler_from_tile_auto_buffer_out_a_bits_data),
    .auto_buffer_out_a_bits_corrupt(coupler_from_tile_auto_buffer_out_a_bits_corrupt),
    .auto_buffer_out_b_ready(coupler_from_tile_auto_buffer_out_b_ready),
    .auto_buffer_out_b_valid(coupler_from_tile_auto_buffer_out_b_valid),
    .auto_buffer_out_b_bits_param(coupler_from_tile_auto_buffer_out_b_bits_param),
    .auto_buffer_out_b_bits_address(coupler_from_tile_auto_buffer_out_b_bits_address),
    .auto_buffer_out_c_ready(coupler_from_tile_auto_buffer_out_c_ready),
    .auto_buffer_out_c_valid(coupler_from_tile_auto_buffer_out_c_valid),
    .auto_buffer_out_c_bits_opcode(coupler_from_tile_auto_buffer_out_c_bits_opcode),
    .auto_buffer_out_c_bits_param(coupler_from_tile_auto_buffer_out_c_bits_param),
    .auto_buffer_out_c_bits_size(coupler_from_tile_auto_buffer_out_c_bits_size),
    .auto_buffer_out_c_bits_source(coupler_from_tile_auto_buffer_out_c_bits_source),
    .auto_buffer_out_c_bits_address(coupler_from_tile_auto_buffer_out_c_bits_address),
    .auto_buffer_out_c_bits_data(coupler_from_tile_auto_buffer_out_c_bits_data),
    .auto_buffer_out_c_bits_corrupt(coupler_from_tile_auto_buffer_out_c_bits_corrupt),
    .auto_buffer_out_d_ready(coupler_from_tile_auto_buffer_out_d_ready),
    .auto_buffer_out_d_valid(coupler_from_tile_auto_buffer_out_d_valid),
    .auto_buffer_out_d_bits_opcode(coupler_from_tile_auto_buffer_out_d_bits_opcode),
    .auto_buffer_out_d_bits_param(coupler_from_tile_auto_buffer_out_d_bits_param),
    .auto_buffer_out_d_bits_size(coupler_from_tile_auto_buffer_out_d_bits_size),
    .auto_buffer_out_d_bits_source(coupler_from_tile_auto_buffer_out_d_bits_source),
    .auto_buffer_out_d_bits_sink(coupler_from_tile_auto_buffer_out_d_bits_sink),
    .auto_buffer_out_d_bits_denied(coupler_from_tile_auto_buffer_out_d_bits_denied),
    .auto_buffer_out_d_bits_data(coupler_from_tile_auto_buffer_out_d_bits_data),
    .auto_buffer_out_d_bits_corrupt(coupler_from_tile_auto_buffer_out_d_bits_corrupt),
    .auto_buffer_out_e_valid(coupler_from_tile_auto_buffer_out_e_valid),
    .auto_buffer_out_e_bits_sink(coupler_from_tile_auto_buffer_out_e_bits_sink),
    .auto_tl_master_xing_in_a_ready(coupler_from_tile_auto_tl_master_xing_in_a_ready),
    .auto_tl_master_xing_in_a_valid(coupler_from_tile_auto_tl_master_xing_in_a_valid),
    .auto_tl_master_xing_in_a_bits_opcode(coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode),
    .auto_tl_master_xing_in_a_bits_param(coupler_from_tile_auto_tl_master_xing_in_a_bits_param),
    .auto_tl_master_xing_in_a_bits_size(coupler_from_tile_auto_tl_master_xing_in_a_bits_size),
    .auto_tl_master_xing_in_a_bits_source(coupler_from_tile_auto_tl_master_xing_in_a_bits_source),
    .auto_tl_master_xing_in_a_bits_address(coupler_from_tile_auto_tl_master_xing_in_a_bits_address),
    .auto_tl_master_xing_in_a_bits_mask(coupler_from_tile_auto_tl_master_xing_in_a_bits_mask),
    .auto_tl_master_xing_in_a_bits_data(coupler_from_tile_auto_tl_master_xing_in_a_bits_data),
    .auto_tl_master_xing_in_a_bits_corrupt(coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt),
    .auto_tl_master_xing_in_b_ready(coupler_from_tile_auto_tl_master_xing_in_b_ready),
    .auto_tl_master_xing_in_b_valid(coupler_from_tile_auto_tl_master_xing_in_b_valid),
    .auto_tl_master_xing_in_b_bits_param(coupler_from_tile_auto_tl_master_xing_in_b_bits_param),
    .auto_tl_master_xing_in_b_bits_address(coupler_from_tile_auto_tl_master_xing_in_b_bits_address),
    .auto_tl_master_xing_in_c_ready(coupler_from_tile_auto_tl_master_xing_in_c_ready),
    .auto_tl_master_xing_in_c_valid(coupler_from_tile_auto_tl_master_xing_in_c_valid),
    .auto_tl_master_xing_in_c_bits_opcode(coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode),
    .auto_tl_master_xing_in_c_bits_param(coupler_from_tile_auto_tl_master_xing_in_c_bits_param),
    .auto_tl_master_xing_in_c_bits_size(coupler_from_tile_auto_tl_master_xing_in_c_bits_size),
    .auto_tl_master_xing_in_c_bits_source(coupler_from_tile_auto_tl_master_xing_in_c_bits_source),
    .auto_tl_master_xing_in_c_bits_address(coupler_from_tile_auto_tl_master_xing_in_c_bits_address),
    .auto_tl_master_xing_in_c_bits_data(coupler_from_tile_auto_tl_master_xing_in_c_bits_data),
    .auto_tl_master_xing_in_c_bits_corrupt(coupler_from_tile_auto_tl_master_xing_in_c_bits_corrupt),
    .auto_tl_master_xing_in_d_ready(coupler_from_tile_auto_tl_master_xing_in_d_ready),
    .auto_tl_master_xing_in_d_valid(coupler_from_tile_auto_tl_master_xing_in_d_valid),
    .auto_tl_master_xing_in_d_bits_opcode(coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode),
    .auto_tl_master_xing_in_d_bits_param(coupler_from_tile_auto_tl_master_xing_in_d_bits_param),
    .auto_tl_master_xing_in_d_bits_size(coupler_from_tile_auto_tl_master_xing_in_d_bits_size),
    .auto_tl_master_xing_in_d_bits_source(coupler_from_tile_auto_tl_master_xing_in_d_bits_source),
    .auto_tl_master_xing_in_d_bits_sink(coupler_from_tile_auto_tl_master_xing_in_d_bits_sink),
    .auto_tl_master_xing_in_d_bits_denied(coupler_from_tile_auto_tl_master_xing_in_d_bits_denied),
    .auto_tl_master_xing_in_d_bits_data(coupler_from_tile_auto_tl_master_xing_in_d_bits_data),
    .auto_tl_master_xing_in_d_bits_corrupt(coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt),
    .auto_tl_master_xing_in_e_valid(coupler_from_tile_auto_tl_master_xing_in_e_valid),
    .auto_tl_master_xing_in_e_bits_sink(coupler_from_tile_auto_tl_master_xing_in_e_bits_sink)
  );
  assign auto_coupler_from_tile_tl_master_xing_in_a_ready = coupler_from_tile_auto_tl_master_xing_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_b_valid = coupler_from_tile_auto_tl_master_xing_in_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_b_bits_param = coupler_from_tile_auto_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_b_bits_address = coupler_from_tile_auto_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_c_ready = coupler_from_tile_auto_tl_master_xing_in_c_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_valid = coupler_from_tile_auto_tl_master_xing_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode = coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_param = coupler_from_tile_auto_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_size = coupler_from_tile_auto_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_source = coupler_from_tile_auto_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_sink = coupler_from_tile_auto_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_denied = coupler_from_tile_auto_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_data = coupler_from_tile_auto_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt = coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt = coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready = coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt = coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready = coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid = coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink = coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt = coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready = coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign auto_subsystem_sbus_clock_groups_out_2_member_1_clock = subsystem_sbus_clock_groups_auto_out_3_member_1_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20903.4]
  assign auto_subsystem_sbus_clock_groups_out_2_member_1_reset = subsystem_sbus_clock_groups_auto_out_3_member_1_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20903.4]
  assign auto_subsystem_sbus_clock_groups_out_2_member_0_clock = subsystem_sbus_clock_groups_auto_out_3_member_0_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20903.4]
  assign auto_subsystem_sbus_clock_groups_out_2_member_0_reset = subsystem_sbus_clock_groups_auto_out_3_member_0_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20903.4]
  assign auto_subsystem_sbus_clock_groups_out_1_member_0_clock = subsystem_sbus_clock_groups_auto_out_2_member_0_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20902.4]
  assign auto_subsystem_sbus_clock_groups_out_1_member_0_reset = subsystem_sbus_clock_groups_auto_out_2_member_0_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20902.4]
  assign auto_subsystem_sbus_clock_groups_out_0_member_1_clock = subsystem_sbus_clock_groups_auto_out_1_member_1_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20901.4]
  assign auto_subsystem_sbus_clock_groups_out_0_member_1_reset = subsystem_sbus_clock_groups_auto_out_1_member_1_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20901.4]
  assign auto_subsystem_sbus_clock_groups_out_0_member_0_clock = subsystem_sbus_clock_groups_auto_out_1_member_0_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20901.4]
  assign auto_subsystem_sbus_clock_groups_out_0_member_0_reset = subsystem_sbus_clock_groups_auto_out_1_member_0_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20901.4]
  assign subsystem_sbus_clock_groups_auto_in_member_5_clock = auto_subsystem_sbus_clock_groups_in_member_5_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_5_reset = auto_subsystem_sbus_clock_groups_in_member_5_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_4_clock = auto_subsystem_sbus_clock_groups_in_member_4_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_4_reset = auto_subsystem_sbus_clock_groups_in_member_4_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_3_clock = auto_subsystem_sbus_clock_groups_in_member_3_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_3_reset = auto_subsystem_sbus_clock_groups_in_member_3_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_2_clock = auto_subsystem_sbus_clock_groups_in_member_2_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_2_reset = auto_subsystem_sbus_clock_groups_in_member_2_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_1_clock = auto_subsystem_sbus_clock_groups_in_member_1_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_1_reset = auto_subsystem_sbus_clock_groups_in_member_1_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_0_clock = auto_subsystem_sbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign subsystem_sbus_clock_groups_auto_in_member_0_reset = auto_subsystem_sbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20904.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_sbus_clock_groups_auto_out_0_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20892.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_sbus_clock_groups_auto_out_0_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20892.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20893.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20893.4]
  assign system_bus_xbar_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@20858.4]
  assign system_bus_xbar_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@20859.4]
  assign system_bus_xbar_auto_in_1_a_valid = fixer_auto_out_1_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_a_bits_opcode = fixer_auto_out_1_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_a_bits_param = fixer_auto_out_1_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_a_bits_size = fixer_auto_out_1_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_a_bits_source = fixer_auto_out_1_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_a_bits_address = fixer_auto_out_1_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_a_bits_mask = fixer_auto_out_1_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_a_bits_data = fixer_auto_out_1_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_a_bits_corrupt = fixer_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_b_ready = fixer_auto_out_1_b_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_c_valid = fixer_auto_out_1_c_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_c_bits_opcode = fixer_auto_out_1_c_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_c_bits_param = fixer_auto_out_1_c_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_c_bits_size = fixer_auto_out_1_c_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_c_bits_source = fixer_auto_out_1_c_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_c_bits_address = fixer_auto_out_1_c_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_c_bits_data = fixer_auto_out_1_c_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_c_bits_corrupt = fixer_auto_out_1_c_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_d_ready = fixer_auto_out_1_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_e_valid = fixer_auto_out_1_e_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_1_e_bits_sink = fixer_auto_out_1_e_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign system_bus_xbar_auto_in_0_a_valid = fixer_auto_out_0_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_a_bits_opcode = fixer_auto_out_0_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_a_bits_param = fixer_auto_out_0_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_a_bits_size = fixer_auto_out_0_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_a_bits_source = fixer_auto_out_0_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_a_bits_address = fixer_auto_out_0_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_a_bits_mask = fixer_auto_out_0_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_a_bits_data = fixer_auto_out_0_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_a_bits_corrupt = fixer_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_in_0_d_ready = fixer_auto_out_0_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign system_bus_xbar_auto_out_1_a_ready = coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_b_valid = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_b_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_b_bits_address = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_c_ready = coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_valid = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_bits_opcode = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_bits_size = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_bits_source = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_bits_sink = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_bits_denied = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_bits_data = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_1_d_bits_corrupt = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign system_bus_xbar_auto_out_0_a_ready = coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_valid = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_bits_opcode = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_bits_param = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_bits_size = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_bits_source = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_bits_sink = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_bits_denied = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_bits_data = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign system_bus_xbar_auto_out_0_d_bits_corrupt = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign fixer_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@20864.4]
  assign fixer_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@20865.4]
  assign fixer_auto_in_1_a_valid = coupler_from_tile_auto_buffer_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_a_bits_opcode = coupler_from_tile_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_a_bits_param = coupler_from_tile_auto_buffer_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_a_bits_size = coupler_from_tile_auto_buffer_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_a_bits_source = coupler_from_tile_auto_buffer_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_a_bits_address = coupler_from_tile_auto_buffer_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_a_bits_mask = coupler_from_tile_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_a_bits_data = coupler_from_tile_auto_buffer_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_a_bits_corrupt = coupler_from_tile_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_b_ready = coupler_from_tile_auto_buffer_out_b_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_c_valid = coupler_from_tile_auto_buffer_out_c_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_c_bits_opcode = coupler_from_tile_auto_buffer_out_c_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_c_bits_param = coupler_from_tile_auto_buffer_out_c_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_c_bits_size = coupler_from_tile_auto_buffer_out_c_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_c_bits_source = coupler_from_tile_auto_buffer_out_c_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_c_bits_address = coupler_from_tile_auto_buffer_out_c_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_c_bits_data = coupler_from_tile_auto_buffer_out_c_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_c_bits_corrupt = coupler_from_tile_auto_buffer_out_c_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_d_ready = coupler_from_tile_auto_buffer_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_e_valid = coupler_from_tile_auto_buffer_out_e_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_1_e_bits_sink = coupler_from_tile_auto_buffer_out_e_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign fixer_auto_in_0_a_valid = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_a_bits_opcode = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_a_bits_param = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_a_bits_size = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_a_bits_source = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_a_bits_address = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_a_bits_mask = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_a_bits_data = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_a_bits_corrupt = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_in_0_d_ready = coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign fixer_auto_out_1_a_ready = system_bus_xbar_auto_in_1_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_b_valid = system_bus_xbar_auto_in_1_b_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_b_bits_param = system_bus_xbar_auto_in_1_b_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_b_bits_address = system_bus_xbar_auto_in_1_b_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_c_ready = system_bus_xbar_auto_in_1_c_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_valid = system_bus_xbar_auto_in_1_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_bits_opcode = system_bus_xbar_auto_in_1_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_bits_param = system_bus_xbar_auto_in_1_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_bits_size = system_bus_xbar_auto_in_1_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_bits_source = system_bus_xbar_auto_in_1_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_bits_sink = system_bus_xbar_auto_in_1_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_bits_denied = system_bus_xbar_auto_in_1_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_bits_data = system_bus_xbar_auto_in_1_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_1_d_bits_corrupt = system_bus_xbar_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20898.4]
  assign fixer_auto_out_0_a_ready = system_bus_xbar_auto_in_0_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign fixer_auto_out_0_d_valid = system_bus_xbar_auto_in_0_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign fixer_auto_out_0_d_bits_opcode = system_bus_xbar_auto_in_0_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign fixer_auto_out_0_d_bits_param = system_bus_xbar_auto_in_0_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign fixer_auto_out_0_d_bits_size = system_bus_xbar_auto_in_0_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign fixer_auto_out_0_d_bits_sink = system_bus_xbar_auto_in_0_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign fixer_auto_out_0_d_bits_denied = system_bus_xbar_auto_in_0_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign fixer_auto_out_0_d_bits_data = system_bus_xbar_auto_in_0_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign fixer_auto_out_0_d_bits_corrupt = system_bus_xbar_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20897.4]
  assign coupler_to_bus_named_subsystem_cbus_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@20870.4]
  assign coupler_to_bus_named_subsystem_cbus_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@20871.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid = system_bus_xbar_auto_out_0_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_0_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_0_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt = system_bus_xbar_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready = system_bus_xbar_auto_out_0_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20895.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt = auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20905.4]
  assign coupler_from_bus_named_subsystem_fbus_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@20876.4]
  assign coupler_from_bus_named_subsystem_fbus_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@20877.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready = fixer_auto_in_0_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid = fixer_auto_in_0_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode = fixer_auto_in_0_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_param = fixer_auto_in_0_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size = fixer_auto_in_0_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_sink = fixer_auto_in_0_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied = fixer_auto_in_0_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data = fixer_auto_in_0_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt = fixer_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20899.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready = auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20906.4]
  assign coupler_to_bus_named_subsystem_l2_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@20882.4]
  assign coupler_to_bus_named_subsystem_l2_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@20883.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid = system_bus_xbar_auto_out_1_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_1_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_corrupt = system_bus_xbar_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready = system_bus_xbar_auto_out_1_b_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid = system_bus_xbar_auto_out_1_c_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode = system_bus_xbar_auto_out_1_c_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param = system_bus_xbar_auto_out_1_c_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size = system_bus_xbar_auto_out_1_c_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source = system_bus_xbar_auto_out_1_c_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address = system_bus_xbar_auto_out_1_c_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data = system_bus_xbar_auto_out_1_c_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_corrupt = system_bus_xbar_auto_out_1_c_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready = system_bus_xbar_auto_out_1_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid = system_bus_xbar_auto_out_1_e_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink = system_bus_xbar_auto_out_1_e_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20896.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready = auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid = auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param = auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address = auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready = auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt = auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20907.4]
  assign coupler_from_tile_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@20888.4]
  assign coupler_from_tile_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@20889.4]
  assign coupler_from_tile_auto_buffer_out_a_ready = fixer_auto_in_1_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_b_valid = fixer_auto_in_1_b_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_b_bits_param = fixer_auto_in_1_b_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_b_bits_address = fixer_auto_in_1_b_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_c_ready = fixer_auto_in_1_c_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_valid = fixer_auto_in_1_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_opcode = fixer_auto_in_1_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_param = fixer_auto_in_1_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_size = fixer_auto_in_1_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_source = fixer_auto_in_1_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_sink = fixer_auto_in_1_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_denied = fixer_auto_in_1_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_data = fixer_auto_in_1_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_buffer_out_d_bits_corrupt = fixer_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@20900.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_valid = auto_coupler_from_tile_tl_master_xing_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode = auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_param = auto_coupler_from_tile_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_size = auto_coupler_from_tile_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_source = auto_coupler_from_tile_tl_master_xing_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_address = auto_coupler_from_tile_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_mask = auto_coupler_from_tile_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_data = auto_coupler_from_tile_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt = auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_b_ready = auto_coupler_from_tile_tl_master_xing_in_b_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_valid = auto_coupler_from_tile_tl_master_xing_in_c_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode = auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_param = auto_coupler_from_tile_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_size = auto_coupler_from_tile_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_source = auto_coupler_from_tile_tl_master_xing_in_c_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_address = auto_coupler_from_tile_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_data = auto_coupler_from_tile_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_corrupt = auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_d_ready = auto_coupler_from_tile_tl_master_xing_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_e_valid = auto_coupler_from_tile_tl_master_xing_in_e_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
  assign coupler_from_tile_auto_tl_master_xing_in_e_bits_sink = auto_coupler_from_tile_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20908.4]
endmodule
