module FrontBus( // @[:chipyard.TestHarness.RocketConfig.fir@41045.2]
  output        auto_coupler_from_port_named_serialadapter_serialadapter_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input         auto_coupler_from_port_named_serialadapter_serialadapter_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [2:0]  auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [3:0]  auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [31:0] auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [7:0]  auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [63:0] auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input         auto_coupler_from_port_named_serialadapter_serialadapter_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output        auto_coupler_from_port_named_serialadapter_serialadapter_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output [63:0] auto_coupler_from_port_named_serialadapter_serialadapter_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input         auto_subsystem_fbus_clock_groups_in_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input         auto_subsystem_fbus_clock_groups_in_member_0_reset, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input         auto_bus_xing_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output        auto_bus_xing_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output [2:0]  auto_bus_xing_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output [2:0]  auto_bus_xing_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output [3:0]  auto_bus_xing_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output        auto_bus_xing_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output [31:0] auto_bus_xing_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output [7:0]  auto_bus_xing_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output [63:0] auto_bus_xing_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output        auto_bus_xing_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  output        auto_bus_xing_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input         auto_bus_xing_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [2:0]  auto_bus_xing_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [1:0]  auto_bus_xing_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [3:0]  auto_bus_xing_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [2:0]  auto_bus_xing_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input         auto_bus_xing_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input  [63:0] auto_bus_xing_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
  input         auto_bus_xing_out_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@41046.4]
);
  wire  subsystem_fbus_clock_groups_auto_in_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@41060.4]
  wire  subsystem_fbus_clock_groups_auto_in_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@41060.4]
  wire  subsystem_fbus_clock_groups_auto_out_member_0_clock; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@41060.4]
  wire  subsystem_fbus_clock_groups_auto_out_member_0_reset; // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@41060.4]
  wire  clockGroup_auto_in_member_0_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@41062.4]
  wire  clockGroup_auto_in_member_0_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@41062.4]
  wire  clockGroup_auto_out_clock; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@41062.4]
  wire  clockGroup_auto_out_reset; // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@41062.4]
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@41064.4]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@41064.4]
  wire  fixedClockNode_auto_out_clock; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@41064.4]
  wire  fixedClockNode_auto_out_reset; // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@41064.4]
  wire  subsystem_fbus_xbar_clock; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_reset; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_in_a_ready; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_in_a_valid; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [2:0] subsystem_fbus_xbar_auto_in_a_bits_opcode; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [3:0] subsystem_fbus_xbar_auto_in_a_bits_size; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [31:0] subsystem_fbus_xbar_auto_in_a_bits_address; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [7:0] subsystem_fbus_xbar_auto_in_a_bits_mask; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [63:0] subsystem_fbus_xbar_auto_in_a_bits_data; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_in_d_ready; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_in_d_valid; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [2:0] subsystem_fbus_xbar_auto_in_d_bits_opcode; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [1:0] subsystem_fbus_xbar_auto_in_d_bits_param; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [3:0] subsystem_fbus_xbar_auto_in_d_bits_size; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [2:0] subsystem_fbus_xbar_auto_in_d_bits_sink; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_in_d_bits_denied; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [63:0] subsystem_fbus_xbar_auto_in_d_bits_data; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_in_d_bits_corrupt; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_out_a_ready; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_out_a_valid; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [2:0] subsystem_fbus_xbar_auto_out_a_bits_opcode; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [3:0] subsystem_fbus_xbar_auto_out_a_bits_size; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [31:0] subsystem_fbus_xbar_auto_out_a_bits_address; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [7:0] subsystem_fbus_xbar_auto_out_a_bits_mask; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [63:0] subsystem_fbus_xbar_auto_out_a_bits_data; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_out_d_ready; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_out_d_valid; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [2:0] subsystem_fbus_xbar_auto_out_d_bits_opcode; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [1:0] subsystem_fbus_xbar_auto_out_d_bits_param; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [3:0] subsystem_fbus_xbar_auto_out_d_bits_size; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [2:0] subsystem_fbus_xbar_auto_out_d_bits_sink; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_out_d_bits_denied; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire [63:0] subsystem_fbus_xbar_auto_out_d_bits_data; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  subsystem_fbus_xbar_auto_out_d_bits_corrupt; // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
  wire  buffer_clock; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [31:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [2:0] buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [31:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [2:0] buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
  wire  coupler_from_port_named_serialadapter_clock; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_reset; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_buffer_out_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_buffer_out_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [2:0] coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [3:0] coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [31:0] coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [7:0] coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [63:0] coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_buffer_out_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_buffer_out_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [2:0] coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [1:0] coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_param; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [3:0] coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [2:0] coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_sink; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_denied; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [63:0] coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_serialadapter_in_a_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_serialadapter_in_a_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [2:0] coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_opcode; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [3:0] coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_size; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [31:0] coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_address; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [7:0] coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_mask; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [63:0] coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_serialadapter_in_d_ready; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire  coupler_from_port_named_serialadapter_auto_serialadapter_in_d_valid; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  wire [63:0] coupler_from_port_named_serialadapter_auto_serialadapter_in_d_bits_data; // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
  ClockGroupAggregator_1 subsystem_fbus_clock_groups ( // @[BusWrapper.scala 40:48:chipyard.TestHarness.RocketConfig.fir@41060.4]
    .auto_in_member_0_clock(subsystem_fbus_clock_groups_auto_in_member_0_clock),
    .auto_in_member_0_reset(subsystem_fbus_clock_groups_auto_in_member_0_reset),
    .auto_out_member_0_clock(subsystem_fbus_clock_groups_auto_out_member_0_clock),
    .auto_out_member_0_reset(subsystem_fbus_clock_groups_auto_out_member_0_reset)
  );
  ClockGroup clockGroup ( // @[BusWrapper.scala 41:38:chipyard.TestHarness.RocketConfig.fir@41062.4]
    .auto_in_member_0_clock(clockGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(clockGroup_auto_in_member_0_reset),
    .auto_out_clock(clockGroup_auto_out_clock),
    .auto_out_reset(clockGroup_auto_out_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 97:107:chipyard.TestHarness.RocketConfig.fir@41064.4]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_clock(fixedClockNode_auto_out_clock),
    .auto_out_reset(fixedClockNode_auto_out_reset)
  );
  TLXbar_3 subsystem_fbus_xbar ( // @[BusWrapper.scala 348:32:chipyard.TestHarness.RocketConfig.fir@41066.4]
    .clock(subsystem_fbus_xbar_clock),
    .reset(subsystem_fbus_xbar_reset),
    .auto_in_a_ready(subsystem_fbus_xbar_auto_in_a_ready),
    .auto_in_a_valid(subsystem_fbus_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(subsystem_fbus_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(subsystem_fbus_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_address(subsystem_fbus_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(subsystem_fbus_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(subsystem_fbus_xbar_auto_in_a_bits_data),
    .auto_in_d_ready(subsystem_fbus_xbar_auto_in_d_ready),
    .auto_in_d_valid(subsystem_fbus_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(subsystem_fbus_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(subsystem_fbus_xbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(subsystem_fbus_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_sink(subsystem_fbus_xbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(subsystem_fbus_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(subsystem_fbus_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(subsystem_fbus_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(subsystem_fbus_xbar_auto_out_a_ready),
    .auto_out_a_valid(subsystem_fbus_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(subsystem_fbus_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(subsystem_fbus_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_address(subsystem_fbus_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(subsystem_fbus_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(subsystem_fbus_xbar_auto_out_a_bits_data),
    .auto_out_d_ready(subsystem_fbus_xbar_auto_out_d_ready),
    .auto_out_d_valid(subsystem_fbus_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(subsystem_fbus_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(subsystem_fbus_xbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(subsystem_fbus_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_sink(subsystem_fbus_xbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(subsystem_fbus_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(subsystem_fbus_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(subsystem_fbus_xbar_auto_out_d_bits_corrupt)
  );
  TLBuffer_3 buffer ( // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41072.4]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
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
    .auto_out_d_bits_param(buffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_sink(buffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_5 coupler_from_port_named_serialadapter ( // @[LazyModule.scala 233:27:chipyard.TestHarness.RocketConfig.fir@41078.4]
    .clock(coupler_from_port_named_serialadapter_clock),
    .reset(coupler_from_port_named_serialadapter_reset),
    .auto_buffer_out_a_ready(coupler_from_port_named_serialadapter_auto_buffer_out_a_ready),
    .auto_buffer_out_a_valid(coupler_from_port_named_serialadapter_auto_buffer_out_a_valid),
    .auto_buffer_out_a_bits_opcode(coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_opcode),
    .auto_buffer_out_a_bits_size(coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_size),
    .auto_buffer_out_a_bits_address(coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_address),
    .auto_buffer_out_a_bits_mask(coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_mask),
    .auto_buffer_out_a_bits_data(coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_data),
    .auto_buffer_out_d_ready(coupler_from_port_named_serialadapter_auto_buffer_out_d_ready),
    .auto_buffer_out_d_valid(coupler_from_port_named_serialadapter_auto_buffer_out_d_valid),
    .auto_buffer_out_d_bits_opcode(coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_opcode),
    .auto_buffer_out_d_bits_param(coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_param),
    .auto_buffer_out_d_bits_size(coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_size),
    .auto_buffer_out_d_bits_sink(coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_sink),
    .auto_buffer_out_d_bits_denied(coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_denied),
    .auto_buffer_out_d_bits_data(coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_data),
    .auto_buffer_out_d_bits_corrupt(coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_corrupt),
    .auto_serialadapter_in_a_ready(coupler_from_port_named_serialadapter_auto_serialadapter_in_a_ready),
    .auto_serialadapter_in_a_valid(coupler_from_port_named_serialadapter_auto_serialadapter_in_a_valid),
    .auto_serialadapter_in_a_bits_opcode(coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_opcode),
    .auto_serialadapter_in_a_bits_size(coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_size),
    .auto_serialadapter_in_a_bits_address(coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_address),
    .auto_serialadapter_in_a_bits_mask(coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_mask),
    .auto_serialadapter_in_a_bits_data(coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_data),
    .auto_serialadapter_in_d_ready(coupler_from_port_named_serialadapter_auto_serialadapter_in_d_ready),
    .auto_serialadapter_in_d_valid(coupler_from_port_named_serialadapter_auto_serialadapter_in_d_valid),
    .auto_serialadapter_in_d_bits_data(coupler_from_port_named_serialadapter_auto_serialadapter_in_d_bits_data)
  );
  assign auto_coupler_from_port_named_serialadapter_serialadapter_in_a_ready = coupler_from_port_named_serialadapter_auto_serialadapter_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign auto_coupler_from_port_named_serialadapter_serialadapter_in_d_valid = coupler_from_port_named_serialadapter_auto_serialadapter_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign auto_coupler_from_port_named_serialadapter_serialadapter_in_d_bits_data = coupler_from_port_named_serialadapter_auto_serialadapter_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign auto_bus_xing_out_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign auto_bus_xing_out_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41097.4]
  assign subsystem_fbus_clock_groups_auto_in_member_0_clock = auto_subsystem_fbus_clock_groups_in_member_0_clock; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41098.4]
  assign subsystem_fbus_clock_groups_auto_in_member_0_reset = auto_subsystem_fbus_clock_groups_in_member_0_reset; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41098.4]
  assign clockGroup_auto_in_member_0_clock = subsystem_fbus_clock_groups_auto_out_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41091.4]
  assign clockGroup_auto_in_member_0_reset = subsystem_fbus_clock_groups_auto_out_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41091.4]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41092.4]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41092.4]
  assign subsystem_fbus_xbar_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@41070.4]
  assign subsystem_fbus_xbar_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@41071.4]
  assign subsystem_fbus_xbar_auto_in_a_valid = coupler_from_port_named_serialadapter_auto_buffer_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_opcode = coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_size = coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_address = coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_mask = coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign subsystem_fbus_xbar_auto_in_a_bits_data = coupler_from_port_named_serialadapter_auto_buffer_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign subsystem_fbus_xbar_auto_in_d_ready = coupler_from_port_named_serialadapter_auto_buffer_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign subsystem_fbus_xbar_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign subsystem_fbus_xbar_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign subsystem_fbus_xbar_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign buffer_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@41076.4]
  assign buffer_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@41077.4]
  assign buffer_auto_in_a_valid = subsystem_fbus_xbar_auto_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign buffer_auto_in_a_bits_opcode = subsystem_fbus_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign buffer_auto_in_a_bits_size = subsystem_fbus_xbar_auto_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign buffer_auto_in_a_bits_address = subsystem_fbus_xbar_auto_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign buffer_auto_in_a_bits_mask = subsystem_fbus_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign buffer_auto_in_a_bits_data = subsystem_fbus_xbar_auto_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign buffer_auto_in_d_ready = subsystem_fbus_xbar_auto_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41094.4]
  assign buffer_auto_out_a_ready = auto_bus_xing_out_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign buffer_auto_out_d_valid = auto_bus_xing_out_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign buffer_auto_out_d_bits_opcode = auto_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign buffer_auto_out_d_bits_param = auto_bus_xing_out_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign buffer_auto_out_d_bits_size = auto_bus_xing_out_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign buffer_auto_out_d_bits_sink = auto_bus_xing_out_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign buffer_auto_out_d_bits_denied = auto_bus_xing_out_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign buffer_auto_out_d_bits_data = auto_bus_xing_out_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign buffer_auto_out_d_bits_corrupt = auto_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41095.4]
  assign coupler_from_port_named_serialadapter_clock = fixedClockNode_auto_out_clock; // @[:chipyard.TestHarness.RocketConfig.fir@41082.4]
  assign coupler_from_port_named_serialadapter_reset = fixedClockNode_auto_out_reset; // @[:chipyard.TestHarness.RocketConfig.fir@41083.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_a_ready = subsystem_fbus_xbar_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_d_valid = subsystem_fbus_xbar_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_opcode = subsystem_fbus_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_param = subsystem_fbus_xbar_auto_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_size = subsystem_fbus_xbar_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_sink = subsystem_fbus_xbar_auto_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_denied = subsystem_fbus_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_data = subsystem_fbus_xbar_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_buffer_out_d_bits_corrupt = subsystem_fbus_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41096.4]
  assign coupler_from_port_named_serialadapter_auto_serialadapter_in_a_valid = auto_coupler_from_port_named_serialadapter_serialadapter_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_opcode = auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_size = auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_address = auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_mask = auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign coupler_from_port_named_serialadapter_auto_serialadapter_in_a_bits_data = auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
  assign coupler_from_port_named_serialadapter_auto_serialadapter_in_d_ready = auto_coupler_from_port_named_serialadapter_serialadapter_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41099.4]
endmodule
