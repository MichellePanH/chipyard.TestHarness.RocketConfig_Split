module PeripheryBus( // @[:chipyard.TestHarness.RocketConfig.fir@33306.2]
  input         auto_coupler_to_device_named_uart_0_control_xing_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_coupler_to_device_named_uart_0_control_xing_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [2:0]  auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [2:0]  auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [1:0]  auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [6:0]  auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [30:0] auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [7:0]  auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [63:0] auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_coupler_to_device_named_uart_0_control_xing_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input         auto_coupler_to_device_named_uart_0_control_xing_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [2:0]  auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [1:0]  auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [6:0]  auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [63:0] auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_fixedClockNode_out_clock, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_fixedClockNode_out_reset, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input         auto_subsystem_pbus_clock_groups_in_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input         auto_subsystem_pbus_clock_groups_in_member_0_reset, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_bus_xing_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input         auto_bus_xing_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [2:0]  auto_bus_xing_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [2:0]  auto_bus_xing_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [2:0]  auto_bus_xing_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [2:0]  auto_bus_xing_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [30:0] auto_bus_xing_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [7:0]  auto_bus_xing_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input  [63:0] auto_bus_xing_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input         auto_bus_xing_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  input         auto_bus_xing_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_bus_xing_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [2:0]  auto_bus_xing_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [1:0]  auto_bus_xing_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [2:0]  auto_bus_xing_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [2:0]  auto_bus_xing_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_bus_xing_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_bus_xing_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output [63:0] auto_bus_xing_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
  output        auto_bus_xing_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@33307.4]
);
  wire  subsystem_pbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@33321.4]
  wire  subsystem_pbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@33321.4]
  wire  subsystem_pbus_clock_groups_auto_out_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@33321.4]
  wire  subsystem_pbus_clock_groups_auto_out_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@33321.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@33323.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@33323.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@33323.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@33323.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@33325.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@33325.4]
  wire  fixedClockNode_auto_out_1_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@33325.4]
  wire  fixedClockNode_auto_out_1_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@33325.4]
  wire  fixedClockNode_auto_out_0_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@33325.4]
  wire  fixedClockNode_auto_out_0_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@33325.4]
  wire  fixer_clock; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_reset; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_in_a_ready; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_in_a_valid; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_in_a_bits_param; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_in_a_bits_size; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_in_a_bits_source; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [30:0] fixer_auto_in_a_bits_address; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [7:0] fixer_auto_in_a_bits_mask; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [63:0] fixer_auto_in_a_bits_data; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_in_d_ready; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_in_d_valid; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_in_d_bits_size; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_in_d_bits_source; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [63:0] fixer_auto_in_d_bits_data; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_out_a_ready; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_out_a_valid; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_out_a_bits_param; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_out_a_bits_size; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_out_a_bits_source; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [30:0] fixer_auto_out_a_bits_address; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [7:0] fixer_auto_out_a_bits_mask; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [63:0] fixer_auto_out_a_bits_data; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_out_a_bits_corrupt; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_out_d_ready; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  fixer_auto_out_d_valid; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_out_d_bits_size; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [2:0] fixer_auto_out_d_bits_source; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire [63:0] fixer_auto_out_d_bits_data; // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
  wire  in_xbar_clock; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_reset; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_in_a_ready; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_in_a_valid; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_in_a_bits_opcode; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_in_a_bits_param; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_in_a_bits_size; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_in_a_bits_source; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [30:0] in_xbar_auto_in_a_bits_address; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [7:0] in_xbar_auto_in_a_bits_mask; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [63:0] in_xbar_auto_in_a_bits_data; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_in_d_ready; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_in_d_valid; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_in_d_bits_opcode; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [1:0] in_xbar_auto_in_d_bits_param; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_in_d_bits_size; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_in_d_bits_source; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_in_d_bits_sink; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_in_d_bits_denied; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [63:0] in_xbar_auto_in_d_bits_data; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_in_d_bits_corrupt; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_out_a_ready; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_out_a_valid; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_out_a_bits_opcode; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_out_a_bits_param; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_out_a_bits_size; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_out_a_bits_source; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [30:0] in_xbar_auto_out_a_bits_address; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [7:0] in_xbar_auto_out_a_bits_mask; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [63:0] in_xbar_auto_out_a_bits_data; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_out_a_bits_corrupt; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_out_d_ready; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_out_d_valid; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_out_d_bits_opcode; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [1:0] in_xbar_auto_out_d_bits_param; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_out_d_bits_size; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [2:0] in_xbar_auto_out_d_bits_source; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_out_d_bits_sink; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_out_d_bits_denied; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire [63:0] in_xbar_auto_out_d_bits_data; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  in_xbar_auto_out_d_bits_corrupt; // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
  wire  out_xbar_clock; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_reset; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_in_a_ready; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_in_a_valid; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_in_a_bits_opcode; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_in_a_bits_param; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_in_a_bits_size; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_in_a_bits_source; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [30:0] out_xbar_auto_in_a_bits_address; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [7:0] out_xbar_auto_in_a_bits_mask; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [63:0] out_xbar_auto_in_a_bits_data; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_in_d_ready; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_in_d_valid; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_in_d_bits_opcode; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_in_d_bits_size; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_in_d_bits_source; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [63:0] out_xbar_auto_in_d_bits_data; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_out_a_ready; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_out_a_valid; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_out_a_bits_opcode; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_out_a_bits_param; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_out_a_bits_size; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_out_a_bits_source; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [30:0] out_xbar_auto_out_a_bits_address; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [7:0] out_xbar_auto_out_a_bits_mask; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [63:0] out_xbar_auto_out_a_bits_data; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_out_a_bits_corrupt; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_out_d_ready; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  out_xbar_auto_out_d_valid; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_out_d_bits_opcode; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_out_d_bits_size; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [2:0] out_xbar_auto_out_d_bits_source; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire [63:0] out_xbar_auto_out_d_bits_data; // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
  wire  buffer_clock; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [30:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [30:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [2:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
  wire  atomics_clock; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_reset; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_in_a_ready; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_in_a_valid; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_in_a_bits_opcode; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_in_a_bits_param; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_in_a_bits_size; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_in_a_bits_source; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [30:0] atomics_auto_in_a_bits_address; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [7:0] atomics_auto_in_a_bits_mask; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [63:0] atomics_auto_in_a_bits_data; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_in_a_bits_corrupt; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_in_d_ready; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_in_d_valid; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_in_d_bits_opcode; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [1:0] atomics_auto_in_d_bits_param; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_in_d_bits_size; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_in_d_bits_source; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_in_d_bits_sink; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_in_d_bits_denied; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [63:0] atomics_auto_in_d_bits_data; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_in_d_bits_corrupt; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_out_a_ready; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_out_a_valid; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_out_a_bits_opcode; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_out_a_bits_param; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_out_a_bits_size; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_out_a_bits_source; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [30:0] atomics_auto_out_a_bits_address; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [7:0] atomics_auto_out_a_bits_mask; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [63:0] atomics_auto_out_a_bits_data; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_out_a_bits_corrupt; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_out_d_ready; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_out_d_valid; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_out_d_bits_opcode; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [1:0] atomics_auto_out_d_bits_param; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_out_d_bits_size; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [2:0] atomics_auto_out_d_bits_source; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_out_d_bits_sink; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_out_d_bits_denied; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire [63:0] atomics_auto_out_d_bits_data; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  atomics_auto_out_d_bits_corrupt; // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
  wire  buffer_1_clock; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_reset; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_in_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_in_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_in_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_in_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_in_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [30:0] buffer_1_auto_in_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [7:0] buffer_1_auto_in_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [63:0] buffer_1_auto_in_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_in_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_in_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [1:0] buffer_1_auto_in_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_in_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_in_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_in_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_in_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [63:0] buffer_1_auto_in_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_out_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_out_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_out_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_out_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_out_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [30:0] buffer_1_auto_out_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [7:0] buffer_1_auto_out_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [63:0] buffer_1_auto_out_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_out_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_out_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [1:0] buffer_1_auto_out_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_out_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [2:0] buffer_1_auto_out_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_out_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_out_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire [63:0] buffer_1_auto_out_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  buffer_1_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
  wire  coupler_to_device_named_uart_0_clock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_reset; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_fragmenter_in_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_fragmenter_in_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [30:0] coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [7:0] coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [63:0] coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_fragmenter_in_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_fragmenter_in_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [63:0] coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_control_xing_out_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_control_xing_out_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [1:0] coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [6:0] coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [30:0] coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [7:0] coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [63:0] coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_control_xing_out_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire  coupler_to_device_named_uart_0_auto_control_xing_out_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [2:0] coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [1:0] coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [6:0] coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_source; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  wire [63:0] coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
  ClockGroupAggregator_1 subsystem_pbus_clock_groups ( // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@33321.4]
    .auto_in_member_0_clock(subsystem_pbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_pbus_clock_groups_auto_in_member_0_reset),
    .auto_out_member_0_clock(subsystem_pbus_clock_groups_auto_out_member_0_clock),
    .auto_out_member_0_reset(subsystem_pbus_clock_groups_auto_out_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@33323.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast_1 fixedClockNode ( // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@33325.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_1_clock(fixedClockNode_auto_out_1_clock),
    .auto_out_1_reset(fixedClockNode_auto_out_1_reset),
    .auto_out_0_clock(fixedClockNode_auto_out_0_clock),
    .auto_out_0_reset(fixedClockNode_auto_out_0_reset)
  );
  TLFIFOFixer_1 fixer ( // @[PeripheryBus.scala 45:33:chipyard.TestHarness.RocketConfig.fir@33327.4]
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
    .auto_in_d_bits_data(fixer_auto_in_d_bits_data),
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
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data)
  );
  TLXbar_1 in_xbar ( // @[PeripheryBus.scala 47:29:chipyard.TestHarness.RocketConfig.fir@33333.4]
    .clock(in_xbar_clock),
    .reset(in_xbar_reset),
    .auto_in_a_ready(in_xbar_auto_in_a_ready),
    .auto_in_a_valid(in_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(in_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(in_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(in_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(in_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(in_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(in_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(in_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(in_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(in_xbar_auto_in_d_ready),
    .auto_in_d_valid(in_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(in_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(in_xbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(in_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(in_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(in_xbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(in_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(in_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(in_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(in_xbar_auto_out_a_ready),
    .auto_out_a_valid(in_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(in_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(in_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(in_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(in_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(in_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(in_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(in_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(in_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(in_xbar_auto_out_d_ready),
    .auto_out_d_valid(in_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(in_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(in_xbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(in_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(in_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_sink(in_xbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(in_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(in_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(in_xbar_auto_out_d_bits_corrupt)
  );
  TLXbar_2 out_xbar ( // @[PeripheryBus.scala 48:30:chipyard.TestHarness.RocketConfig.fir@33339.4]
    .clock(out_xbar_clock),
    .reset(out_xbar_reset),
    .auto_in_a_ready(out_xbar_auto_in_a_ready),
    .auto_in_a_valid(out_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(out_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(out_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(out_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(out_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(out_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(out_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(out_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(out_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(out_xbar_auto_in_d_ready),
    .auto_in_d_valid(out_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(out_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(out_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(out_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_data(out_xbar_auto_in_d_bits_data),
    .auto_out_a_ready(out_xbar_auto_out_a_ready),
    .auto_out_a_valid(out_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(out_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(out_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(out_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(out_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(out_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(out_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(out_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(out_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(out_xbar_auto_out_d_ready),
    .auto_out_d_valid(out_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(out_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(out_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(out_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_data(out_xbar_auto_out_d_bits_data)
  );
  TLBuffer_1 buffer ( // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33345.4]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data)
  );
  TLAtomicAutomata atomics ( // @[AtomicAutomata.scala 283:29:chipyard.TestHarness.RocketConfig.fir@33351.4]
    .clock(atomics_clock),
    .reset(atomics_reset),
    .auto_in_a_ready(atomics_auto_in_a_ready),
    .auto_in_a_valid(atomics_auto_in_a_valid),
    .auto_in_a_bits_opcode(atomics_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(atomics_auto_in_a_bits_param),
    .auto_in_a_bits_size(atomics_auto_in_a_bits_size),
    .auto_in_a_bits_source(atomics_auto_in_a_bits_source),
    .auto_in_a_bits_address(atomics_auto_in_a_bits_address),
    .auto_in_a_bits_mask(atomics_auto_in_a_bits_mask),
    .auto_in_a_bits_data(atomics_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(atomics_auto_in_a_bits_corrupt),
    .auto_in_d_ready(atomics_auto_in_d_ready),
    .auto_in_d_valid(atomics_auto_in_d_valid),
    .auto_in_d_bits_opcode(atomics_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(atomics_auto_in_d_bits_param),
    .auto_in_d_bits_size(atomics_auto_in_d_bits_size),
    .auto_in_d_bits_source(atomics_auto_in_d_bits_source),
    .auto_in_d_bits_sink(atomics_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(atomics_auto_in_d_bits_denied),
    .auto_in_d_bits_data(atomics_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(atomics_auto_in_d_bits_corrupt),
    .auto_out_a_ready(atomics_auto_out_a_ready),
    .auto_out_a_valid(atomics_auto_out_a_valid),
    .auto_out_a_bits_opcode(atomics_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(atomics_auto_out_a_bits_param),
    .auto_out_a_bits_size(atomics_auto_out_a_bits_size),
    .auto_out_a_bits_source(atomics_auto_out_a_bits_source),
    .auto_out_a_bits_address(atomics_auto_out_a_bits_address),
    .auto_out_a_bits_mask(atomics_auto_out_a_bits_mask),
    .auto_out_a_bits_data(atomics_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(atomics_auto_out_a_bits_corrupt),
    .auto_out_d_ready(atomics_auto_out_d_ready),
    .auto_out_d_valid(atomics_auto_out_d_valid),
    .auto_out_d_bits_opcode(atomics_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(atomics_auto_out_d_bits_param),
    .auto_out_d_bits_size(atomics_auto_out_d_bits_size),
    .auto_out_d_bits_source(atomics_auto_out_d_bits_source),
    .auto_out_d_bits_sink(atomics_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(atomics_auto_out_d_bits_denied),
    .auto_out_d_bits_data(atomics_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(atomics_auto_out_d_bits_corrupt)
  );
  TLBuffer_2 buffer_1 ( // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@33357.4]
    .clock(buffer_1_clock),
    .reset(buffer_1_reset),
    .auto_in_a_ready(buffer_1_auto_in_a_ready),
    .auto_in_a_valid(buffer_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_1_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_1_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_1_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_1_auto_in_d_ready),
    .auto_in_d_valid(buffer_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_1_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_1_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_1_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_1_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_1_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_1_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_1_auto_out_a_ready),
    .auto_out_a_valid(buffer_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_1_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_1_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_1_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_1_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_1_auto_out_d_ready),
    .auto_out_d_valid(buffer_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_1_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_1_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_1_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_1_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_1_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_1_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_4 coupler_to_device_named_uart_0 ( // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@33363.4]
    .clock(coupler_to_device_named_uart_0_clock),
    .reset(coupler_to_device_named_uart_0_reset),
    .auto_fragmenter_in_a_ready(coupler_to_device_named_uart_0_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_device_named_uart_0_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_data(coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_data),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_device_named_uart_0_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_device_named_uart_0_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_opcode(coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_opcode),
    .auto_fragmenter_in_d_bits_size(coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_data),
    .auto_control_xing_out_a_ready(coupler_to_device_named_uart_0_auto_control_xing_out_a_ready),
    .auto_control_xing_out_a_valid(coupler_to_device_named_uart_0_auto_control_xing_out_a_valid),
    .auto_control_xing_out_a_bits_opcode(coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_opcode),
    .auto_control_xing_out_a_bits_param(coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_param),
    .auto_control_xing_out_a_bits_size(coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_size),
    .auto_control_xing_out_a_bits_source(coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_source),
    .auto_control_xing_out_a_bits_address(coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_address),
    .auto_control_xing_out_a_bits_mask(coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_mask),
    .auto_control_xing_out_a_bits_data(coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_data),
    .auto_control_xing_out_a_bits_corrupt(coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_corrupt),
    .auto_control_xing_out_d_ready(coupler_to_device_named_uart_0_auto_control_xing_out_d_ready),
    .auto_control_xing_out_d_valid(coupler_to_device_named_uart_0_auto_control_xing_out_d_valid),
    .auto_control_xing_out_d_bits_opcode(coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_opcode),
    .auto_control_xing_out_d_bits_size(coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_size),
    .auto_control_xing_out_d_bits_source(coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_source),
    .auto_control_xing_out_d_bits_data(coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_data)
  );
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_valid = coupler_to_device_named_uart_0_auto_control_xing_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_opcode = coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_param = coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_size = coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_source = coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_address = coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_mask = coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_data = coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_corrupt = coupler_to_device_named_uart_0_auto_control_xing_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_coupler_to_device_named_uart_0_control_xing_out_d_ready = coupler_to_device_named_uart_0_auto_control_xing_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign auto_fixedClockNode_out_clock = fixedClockNode_auto_out_1_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33388.4]
  assign auto_fixedClockNode_out_reset = fixedClockNode_auto_out_1_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33388.4]
  assign auto_bus_xing_in_a_ready = buffer_1_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_valid = buffer_1_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_bits_opcode = buffer_1_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_bits_param = buffer_1_auto_in_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_bits_size = buffer_1_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_bits_source = buffer_1_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_bits_sink = buffer_1_auto_in_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_bits_denied = buffer_1_auto_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_bits_data = buffer_1_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign auto_bus_xing_in_d_bits_corrupt = buffer_1_auto_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33386.4]
  assign subsystem_pbus_clock_groups_auto_in_member_0_clock = auto_subsystem_pbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33387.4]
  assign subsystem_pbus_clock_groups_auto_in_member_0_reset = auto_subsystem_pbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33387.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_pbus_clock_groups_auto_out_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33376.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_pbus_clock_groups_auto_out_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33376.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33377.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33377.4]
  assign fixer_clock = fixedClockNode_auto_out_0_clock; // @[:chipyard.TestHarness.RocketConfig.fir@33331.4]
  assign fixer_reset = fixedClockNode_auto_out_0_reset; // @[:chipyard.TestHarness.RocketConfig.fir@33332.4]
  assign fixer_auto_in_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_in_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign fixer_auto_out_a_ready = out_xbar_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign fixer_auto_out_d_valid = out_xbar_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign fixer_auto_out_d_bits_opcode = out_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign fixer_auto_out_d_bits_size = out_xbar_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign fixer_auto_out_d_bits_source = out_xbar_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign fixer_auto_out_d_bits_data = out_xbar_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign in_xbar_clock = fixedClockNode_auto_out_0_clock; // @[:chipyard.TestHarness.RocketConfig.fir@33337.4]
  assign in_xbar_reset = fixedClockNode_auto_out_0_reset; // @[:chipyard.TestHarness.RocketConfig.fir@33338.4]
  assign in_xbar_auto_in_a_valid = buffer_1_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_a_bits_opcode = buffer_1_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_a_bits_param = buffer_1_auto_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_a_bits_size = buffer_1_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_a_bits_source = buffer_1_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_a_bits_address = buffer_1_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_a_bits_mask = buffer_1_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_a_bits_data = buffer_1_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_a_bits_corrupt = buffer_1_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_in_d_ready = buffer_1_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign in_xbar_auto_out_a_ready = atomics_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_valid = atomics_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_bits_opcode = atomics_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_bits_param = atomics_auto_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_bits_size = atomics_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_bits_source = atomics_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_bits_sink = atomics_auto_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_bits_denied = atomics_auto_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_bits_data = atomics_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign in_xbar_auto_out_d_bits_corrupt = atomics_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign out_xbar_clock = fixedClockNode_auto_out_0_clock; // @[:chipyard.TestHarness.RocketConfig.fir@33343.4]
  assign out_xbar_reset = fixedClockNode_auto_out_0_reset; // @[:chipyard.TestHarness.RocketConfig.fir@33344.4]
  assign out_xbar_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_a_bits_param = fixer_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_a_bits_corrupt = fixer_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33379.4]
  assign out_xbar_auto_out_a_ready = coupler_to_device_named_uart_0_auto_fragmenter_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign out_xbar_auto_out_d_valid = coupler_to_device_named_uart_0_auto_fragmenter_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign out_xbar_auto_out_d_bits_opcode = coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign out_xbar_auto_out_d_bits_size = coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign out_xbar_auto_out_d_bits_source = coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign out_xbar_auto_out_d_bits_data = coupler_to_device_named_uart_0_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign buffer_clock = fixedClockNode_auto_out_0_clock; // @[:chipyard.TestHarness.RocketConfig.fir@33349.4]
  assign buffer_reset = fixedClockNode_auto_out_0_reset; // @[:chipyard.TestHarness.RocketConfig.fir@33350.4]
  assign buffer_auto_in_a_valid = atomics_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_a_bits_opcode = atomics_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_a_bits_param = atomics_auto_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_a_bits_size = atomics_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_a_bits_source = atomics_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_a_bits_address = atomics_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_a_bits_mask = atomics_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_a_bits_data = atomics_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_a_bits_corrupt = atomics_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_in_d_ready = atomics_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_auto_out_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign buffer_auto_out_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign buffer_auto_out_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign buffer_auto_out_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign buffer_auto_out_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign buffer_auto_out_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33382.4]
  assign atomics_clock = fixedClockNode_auto_out_0_clock; // @[:chipyard.TestHarness.RocketConfig.fir@33355.4]
  assign atomics_reset = fixedClockNode_auto_out_0_reset; // @[:chipyard.TestHarness.RocketConfig.fir@33356.4]
  assign atomics_auto_in_a_valid = in_xbar_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_a_bits_opcode = in_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_a_bits_param = in_xbar_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_a_bits_size = in_xbar_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_a_bits_source = in_xbar_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_a_bits_address = in_xbar_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_a_bits_mask = in_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_a_bits_data = in_xbar_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_a_bits_corrupt = in_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_in_d_ready = in_xbar_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33380.4]
  assign atomics_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign atomics_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33383.4]
  assign buffer_1_clock = fixedClockNode_auto_out_0_clock; // @[:chipyard.TestHarness.RocketConfig.fir@33361.4]
  assign buffer_1_reset = fixedClockNode_auto_out_0_reset; // @[:chipyard.TestHarness.RocketConfig.fir@33362.4]
  assign buffer_1_auto_in_a_valid = auto_bus_xing_in_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_a_bits_opcode = auto_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_a_bits_param = auto_bus_xing_in_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_a_bits_size = auto_bus_xing_in_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_a_bits_source = auto_bus_xing_in_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_a_bits_address = auto_bus_xing_in_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_a_bits_mask = auto_bus_xing_in_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_a_bits_data = auto_bus_xing_in_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_a_bits_corrupt = auto_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_in_d_ready = auto_bus_xing_in_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33385.4]
  assign buffer_1_auto_out_a_ready = in_xbar_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_valid = in_xbar_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_bits_opcode = in_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_bits_param = in_xbar_auto_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_bits_size = in_xbar_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_bits_source = in_xbar_auto_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_bits_sink = in_xbar_auto_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_bits_denied = in_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_bits_data = in_xbar_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign buffer_1_auto_out_d_bits_corrupt = in_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33384.4]
  assign coupler_to_device_named_uart_0_clock = fixedClockNode_auto_out_0_clock; // @[:chipyard.TestHarness.RocketConfig.fir@33367.4]
  assign coupler_to_device_named_uart_0_reset = fixedClockNode_auto_out_0_reset; // @[:chipyard.TestHarness.RocketConfig.fir@33368.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_valid = out_xbar_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_data = out_xbar_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_fragmenter_in_d_ready = out_xbar_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@33381.4]
  assign coupler_to_device_named_uart_0_auto_control_xing_out_a_ready = auto_coupler_to_device_named_uart_0_control_xing_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign coupler_to_device_named_uart_0_auto_control_xing_out_d_valid = auto_coupler_to_device_named_uart_0_control_xing_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_opcode = auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_size = auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_source = auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
  assign coupler_to_device_named_uart_0_auto_control_xing_out_d_bits_data = auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33389.4]
endmodule
