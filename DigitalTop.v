module DigitalTop( // @[:chipyard.TestHarness.RocketConfig.fir@259521.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@259522.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@259523.4]
  input         mem_axi4_0_aw_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output        mem_axi4_0_aw_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [3:0]  mem_axi4_0_aw_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [31:0] mem_axi4_0_aw_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [7:0]  mem_axi4_0_aw_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [2:0]  mem_axi4_0_aw_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [1:0]  mem_axi4_0_aw_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output        mem_axi4_0_aw_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [3:0]  mem_axi4_0_aw_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [2:0]  mem_axi4_0_aw_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [3:0]  mem_axi4_0_aw_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input         mem_axi4_0_w_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output        mem_axi4_0_w_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [63:0] mem_axi4_0_w_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [7:0]  mem_axi4_0_w_bits_strb, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output        mem_axi4_0_w_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output        mem_axi4_0_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input         mem_axi4_0_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input  [3:0]  mem_axi4_0_b_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input  [1:0]  mem_axi4_0_b_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input         mem_axi4_0_ar_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output        mem_axi4_0_ar_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [3:0]  mem_axi4_0_ar_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [31:0] mem_axi4_0_ar_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [7:0]  mem_axi4_0_ar_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [2:0]  mem_axi4_0_ar_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [1:0]  mem_axi4_0_ar_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output        mem_axi4_0_ar_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [3:0]  mem_axi4_0_ar_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [2:0]  mem_axi4_0_ar_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output [3:0]  mem_axi4_0_ar_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  output        mem_axi4_0_r_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input         mem_axi4_0_r_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input  [3:0]  mem_axi4_0_r_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input  [63:0] mem_axi4_0_r_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input  [1:0]  mem_axi4_0_r_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input         mem_axi4_0_r_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@259525.4]
  input         resetctrl_hartIsInReset_0, // @[:chipyard.TestHarness.RocketConfig.fir@259529.4]
  input         debug_clock, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input         debug_reset, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  output        debug_clockeddmi_dmi_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input         debug_clockeddmi_dmi_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input  [6:0]  debug_clockeddmi_dmi_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input  [31:0] debug_clockeddmi_dmi_req_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input  [1:0]  debug_clockeddmi_dmi_req_bits_op, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input         debug_clockeddmi_dmi_resp_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  output        debug_clockeddmi_dmi_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  output [31:0] debug_clockeddmi_dmi_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  output [1:0]  debug_clockeddmi_dmi_resp_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input         debug_clockeddmi_dmiClock, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input         debug_clockeddmi_dmiReset, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  output        debug_ndreset, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  output        debug_dmactive, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  input         debug_dmactiveAck, // @[:chipyard.TestHarness.RocketConfig.fir@259530.4]
  output        serial_in_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259532.4]
  input         serial_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259532.4]
  input  [31:0] serial_in_bits, // @[:chipyard.TestHarness.RocketConfig.fir@259532.4]
  input         serial_out_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259532.4]
  output        serial_out_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259532.4]
  output [31:0] serial_out_bits, // @[:chipyard.TestHarness.RocketConfig.fir@259532.4]
  output        uart_0_0_txd, // @[:chipyard.TestHarness.RocketConfig.fir@259533.4]
  input         uart_0_0_rxd // @[:chipyard.TestHarness.RocketConfig.fir@259533.4]
);
  wire  int_bus_auto_int_in_0; // @[InterruptBus.scala 13:27:chipyard.TestHarness.RocketConfig.fir@259547.4]
  wire  int_bus_auto_int_out_0; // @[InterruptBus.scala 13:27:chipyard.TestHarness.RocketConfig.fir@259547.4]
  wire  dummyClockGroupSourceNode_clock; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_reset; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_5_clock; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_5_reset; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_4_clock; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_4_reset; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_3_clock; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_3_reset; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_2_clock; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_2_reset; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_1_clock; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_1_reset; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_0_clock; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  dummyClockGroupSourceNode_auto_out_member_0_reset; // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [7:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [7:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [7:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [30:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [7:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_clock; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_reset; // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
  wire  subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [1:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [6:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [30:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [7:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [63:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [1:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [6:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [63:0] subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_fixedClockNode_out_clock; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_fixedClockNode_out_reset; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_clock; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_reset; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_bus_xing_in_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_bus_xing_in_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_bus_xing_in_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_bus_xing_in_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_bus_xing_in_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_bus_xing_in_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [30:0] subsystem_pbus_auto_bus_xing_in_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [7:0] subsystem_pbus_auto_bus_xing_in_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [63:0] subsystem_pbus_auto_bus_xing_in_a_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_bus_xing_in_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_bus_xing_in_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_bus_xing_in_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_bus_xing_in_d_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [1:0] subsystem_pbus_auto_bus_xing_in_d_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_bus_xing_in_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [2:0] subsystem_pbus_auto_bus_xing_in_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_bus_xing_in_d_bits_sink; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_bus_xing_in_d_bits_denied; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire [63:0] subsystem_pbus_auto_bus_xing_in_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_pbus_auto_bus_xing_in_d_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_ready; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_valid; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_opcode; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [3:0] subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_size; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [31:0] subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_address; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_mask; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [63:0] subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_data; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_ready; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_valid; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [63:0] subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_bits_data; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_clock; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_reset; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_ready; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_valid; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_a_bits_opcode; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_a_bits_param; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_a_bits_size; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_source; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [31:0] subsystem_fbus_auto_bus_xing_out_a_bits_address; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [7:0] subsystem_fbus_auto_bus_xing_out_a_bits_mask; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [63:0] subsystem_fbus_auto_bus_xing_out_a_bits_data; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_corrupt; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_bus_xing_out_d_ready; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_bus_xing_out_d_valid; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_d_bits_opcode; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [1:0] subsystem_fbus_auto_bus_xing_out_d_bits_param; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_d_bits_size; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_d_bits_sink; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_bus_xing_out_d_bits_denied; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire [63:0] subsystem_fbus_auto_bus_xing_out_d_bits_data; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_fbus_auto_bus_xing_out_d_bits_corrupt; // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [16:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [7:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [11:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [7:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [25:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [7:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [27:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [7:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [30:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [7:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_sink; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_denied; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [25:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [7:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [6:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_clock; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_reset; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_clock; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_reset; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_clock; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_reset; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_bus_xing_in_a_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_bus_xing_in_a_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_a_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_a_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [3:0] subsystem_cbus_auto_bus_xing_in_a_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_a_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [30:0] subsystem_cbus_auto_bus_xing_in_a_bits_address; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [7:0] subsystem_cbus_auto_bus_xing_in_a_bits_mask; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_bus_xing_in_a_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_bus_xing_in_a_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_ready; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_valid; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_d_bits_opcode; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [1:0] subsystem_cbus_auto_bus_xing_in_d_bits_param; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [3:0] subsystem_cbus_auto_bus_xing_in_d_bits_size; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_d_bits_source; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_sink; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_denied; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire [63:0] subsystem_cbus_auto_bus_xing_in_d_bits_data; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_corrupt; // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [31:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [7:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [63:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [7:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [31:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [7:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [63:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_fixer_in_a_ready; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_fixer_in_a_valid; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_a_bits_opcode; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_a_bits_param; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_a_bits_size; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_fixer_in_a_bits_source; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [31:0] subsystem_mbus_auto_fixer_in_a_bits_address; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [7:0] subsystem_mbus_auto_fixer_in_a_bits_mask; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [63:0] subsystem_mbus_auto_fixer_in_a_bits_data; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_corrupt; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_fixer_in_d_ready; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_fixer_in_d_valid; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_d_bits_opcode; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_d_bits_size; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [3:0] subsystem_mbus_auto_fixer_in_d_bits_source; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_fixer_in_d_bits_denied; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire [63:0] subsystem_mbus_auto_fixer_in_d_bits_data; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_fixer_in_d_bits_corrupt; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_clock; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_reset; // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [3:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [31:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [7:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [63:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [3:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [63:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [7:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [63:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_corrupt; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [63:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_corrupt; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [63:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_l2_ctl_in_a_ready; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_l2_ctl_in_a_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_opcode; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_param; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [1:0] subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_size; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [6:0] subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_source; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [25:0] subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_address; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [7:0] subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_mask; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [63:0] subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_data; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_corrupt; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_l2_ctl_in_d_ready; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_l2_ctl_in_d_valid; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [2:0] subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_opcode; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [1:0] subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_size; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [6:0] subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_source; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire [63:0] subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_data; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_clock; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_reset; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_clock; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_reset; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_clock; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_reset; // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
  wire  xbar_auto_int_in_0; // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259583.4]
  wire  xbar_auto_int_out_0; // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259583.4]
  wire  xbar_1_auto_int_in_0; // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259589.4]
  wire  xbar_1_auto_int_out_0; // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259589.4]
  wire  xbar_2_auto_int_in_0; // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259595.4]
  wire  xbar_2_auto_int_out_0; // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259595.4]
  wire  plic_clock; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_reset; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_auto_int_in_0; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_auto_int_out_1_0; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_auto_int_out_0_0; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_auto_in_a_ready; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_auto_in_a_valid; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [2:0] plic_auto_in_a_bits_opcode; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [2:0] plic_auto_in_a_bits_param; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [1:0] plic_auto_in_a_bits_size; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [6:0] plic_auto_in_a_bits_source; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [27:0] plic_auto_in_a_bits_address; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [7:0] plic_auto_in_a_bits_mask; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [63:0] plic_auto_in_a_bits_data; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_auto_in_a_bits_corrupt; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_auto_in_d_ready; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  plic_auto_in_d_valid; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [2:0] plic_auto_in_d_bits_opcode; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [1:0] plic_auto_in_d_bits_size; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [6:0] plic_auto_in_d_bits_source; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire [63:0] plic_auto_in_d_bits_data; // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
  wire  clint_clock; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_reset; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_auto_int_out_0; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_auto_int_out_1; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_auto_in_a_ready; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_auto_in_a_valid; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [2:0] clint_auto_in_a_bits_opcode; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [2:0] clint_auto_in_a_bits_param; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [1:0] clint_auto_in_a_bits_size; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [6:0] clint_auto_in_a_bits_source; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [25:0] clint_auto_in_a_bits_address; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [7:0] clint_auto_in_a_bits_mask; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [63:0] clint_auto_in_a_bits_data; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_auto_in_a_bits_corrupt; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_auto_in_d_ready; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_auto_in_d_valid; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [2:0] clint_auto_in_d_bits_opcode; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [1:0] clint_auto_in_d_bits_size; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [6:0] clint_auto_in_d_bits_source; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire [63:0] clint_auto_in_d_bits_data; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  clint_io_rtcTick; // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_a_ready; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_a_valid; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [2:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_opcode; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [2:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_param; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [1:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_size; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [6:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_source; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [11:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_address; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [7:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_mask; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [63:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_data; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_a_bits_corrupt; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_d_ready; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_d_valid; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [2:0] debug_1_auto_dmInner_dmInner_tl_in_d_bits_opcode; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [1:0] debug_1_auto_dmInner_dmInner_tl_in_d_bits_size; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [6:0] debug_1_auto_dmInner_dmInner_tl_in_d_bits_source; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [63:0] debug_1_auto_dmInner_dmInner_tl_in_d_bits_data; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_auto_dmOuter_intsource_out_sync_0; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_debug_clock; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_debug_reset; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_ctrl_ndreset; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_ctrl_dmactive; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_ctrl_dmactiveAck; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_dmi_dmi_req_ready; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_dmi_dmi_req_valid; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [6:0] debug_1_io_dmi_dmi_req_bits_addr; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [31:0] debug_1_io_dmi_dmi_req_bits_data; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [1:0] debug_1_io_dmi_dmi_req_bits_op; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_dmi_dmi_resp_ready; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_dmi_dmi_resp_valid; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [31:0] debug_1_io_dmi_dmi_resp_bits_data; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire [1:0] debug_1_io_dmi_dmi_resp_bits_resp; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_dmi_dmiClock; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_dmi_dmiReset; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  debug_1_io_hartIsInReset_0; // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
  wire  tile_clock; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_reset; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_intsink_in_sync_0; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_int_in_xing_in_2_sync_0; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_int_in_xing_in_1_sync_0; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_int_in_xing_in_0_sync_0; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_int_in_xing_in_0_sync_1; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_a_ready; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_a_valid; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [2:0] tile_auto_tl_master_xing_out_a_bits_opcode; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [2:0] tile_auto_tl_master_xing_out_a_bits_param; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [3:0] tile_auto_tl_master_xing_out_a_bits_size; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [1:0] tile_auto_tl_master_xing_out_a_bits_source; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [31:0] tile_auto_tl_master_xing_out_a_bits_address; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [7:0] tile_auto_tl_master_xing_out_a_bits_mask; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [63:0] tile_auto_tl_master_xing_out_a_bits_data; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_a_bits_corrupt; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_b_ready; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_b_valid; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [1:0] tile_auto_tl_master_xing_out_b_bits_param; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [31:0] tile_auto_tl_master_xing_out_b_bits_address; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_c_ready; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_c_valid; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [2:0] tile_auto_tl_master_xing_out_c_bits_opcode; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [2:0] tile_auto_tl_master_xing_out_c_bits_param; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [3:0] tile_auto_tl_master_xing_out_c_bits_size; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [1:0] tile_auto_tl_master_xing_out_c_bits_source; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [31:0] tile_auto_tl_master_xing_out_c_bits_address; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [63:0] tile_auto_tl_master_xing_out_c_bits_data; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_c_bits_corrupt; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_d_ready; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_d_valid; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [2:0] tile_auto_tl_master_xing_out_d_bits_opcode; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [1:0] tile_auto_tl_master_xing_out_d_bits_param; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [3:0] tile_auto_tl_master_xing_out_d_bits_size; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [1:0] tile_auto_tl_master_xing_out_d_bits_source; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [2:0] tile_auto_tl_master_xing_out_d_bits_sink; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_d_bits_denied; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [63:0] tile_auto_tl_master_xing_out_d_bits_data; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_d_bits_corrupt; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_tl_master_xing_out_e_valid; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire [2:0] tile_auto_tl_master_xing_out_e_bits_sink; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  tile_auto_wfi_out_0; // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
  wire  intsource_clock; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259630.4]
  wire  intsource_reset; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259630.4]
  wire  intsource_auto_in_0; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259630.4]
  wire  intsource_auto_in_1; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259630.4]
  wire  intsource_auto_out_sync_0; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259630.4]
  wire  intsource_auto_out_sync_1; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259630.4]
  wire  intsource_1_clock; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259636.4]
  wire  intsource_1_reset; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259636.4]
  wire  intsource_1_auto_in_0; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259636.4]
  wire  intsource_1_auto_out_sync_0; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259636.4]
  wire  intsource_2_clock; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259642.4]
  wire  intsource_2_reset; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259642.4]
  wire  intsource_2_auto_in_0; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259642.4]
  wire  intsource_2_auto_out_sync_0; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259642.4]
  wire  bootrom_clock; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire  bootrom_reset; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire  bootrom_auto_in_a_ready; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire  bootrom_auto_in_a_valid; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [2:0] bootrom_auto_in_a_bits_opcode; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [2:0] bootrom_auto_in_a_bits_param; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [1:0] bootrom_auto_in_a_bits_size; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [6:0] bootrom_auto_in_a_bits_source; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [16:0] bootrom_auto_in_a_bits_address; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [7:0] bootrom_auto_in_a_bits_mask; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire  bootrom_auto_in_a_bits_corrupt; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire  bootrom_auto_in_d_ready; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire  bootrom_auto_in_d_valid; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [1:0] bootrom_auto_in_d_bits_size; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [6:0] bootrom_auto_in_d_bits_source; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire [63:0] bootrom_auto_in_d_bits_data; // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
  wire  m_clock; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_reset; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_auto_out_a_ready; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_auto_out_a_valid; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire [2:0] m_auto_out_a_bits_opcode; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire [3:0] m_auto_out_a_bits_size; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire [31:0] m_auto_out_a_bits_address; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire [7:0] m_auto_out_a_bits_mask; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire [63:0] m_auto_out_a_bits_data; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_auto_out_d_ready; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_auto_out_d_valid; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire [63:0] m_auto_out_d_bits_data; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_io_serial_in_ready; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_io_serial_in_valid; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire [31:0] m_io_serial_in_bits; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_io_serial_out_ready; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  m_io_serial_out_valid; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire [31:0] m_io_serial_out_bits; // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
  wire  uartClockDomainWrapper_auto_uart_0_int_xing_out_sync_0; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_uart_0_control_xing_in_a_ready; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_uart_0_control_xing_in_a_valid; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [2:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_opcode; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [2:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_param; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [1:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_size; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [6:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_source; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [30:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_address; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [7:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_mask; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [63:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_data; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_corrupt; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_uart_0_control_xing_in_d_ready; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_uart_0_control_xing_in_d_valid; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [2:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_opcode; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [1:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_size; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [6:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_source; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire [63:0] uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_data; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_uart_0_io_out_txd; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_uart_0_io_out_rxd; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_clock_in_clock; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  uartClockDomainWrapper_auto_clock_in_reset; // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
  wire  intsink_1_auto_in_sync_0; // @[Crossing.scala 94:29:chipyard.TestHarness.RocketConfig.fir@259671.4]
  wire  intsink_1_auto_out_0; // @[Crossing.scala 94:29:chipyard.TestHarness.RocketConfig.fir@259671.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
  wire [31:0] Queue_io_enq_bits; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
  wire [31:0] Queue_io_deq_bits; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
  wire [31:0] Queue_1_io_enq_bits; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
  wire [31:0] Queue_1_io_deq_bits; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
  reg [6:0] _T_15; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@259768.4]
  reg [31:0] _RAND_0;
  wire  int_rtc_tick; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@259772.6]
  wire [6:0] _T_18; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@259774.6]
  IntXbar int_bus ( // @[InterruptBus.scala 13:27:chipyard.TestHarness.RocketConfig.fir@259547.4]
    .auto_int_in_0(int_bus_auto_int_in_0),
    .auto_int_out_0(int_bus_auto_int_out_0)
  );
  SimpleClockGroupSource dummyClockGroupSourceNode ( // @[ClockGroup.scala 72:81:chipyard.TestHarness.RocketConfig.fir@259553.4]
    .clock(dummyClockGroupSourceNode_clock),
    .reset(dummyClockGroupSourceNode_reset),
    .auto_out_member_5_clock(dummyClockGroupSourceNode_auto_out_member_5_clock),
    .auto_out_member_5_reset(dummyClockGroupSourceNode_auto_out_member_5_reset),
    .auto_out_member_4_clock(dummyClockGroupSourceNode_auto_out_member_4_clock),
    .auto_out_member_4_reset(dummyClockGroupSourceNode_auto_out_member_4_reset),
    .auto_out_member_3_clock(dummyClockGroupSourceNode_auto_out_member_3_clock),
    .auto_out_member_3_reset(dummyClockGroupSourceNode_auto_out_member_3_reset),
    .auto_out_member_2_clock(dummyClockGroupSourceNode_auto_out_member_2_clock),
    .auto_out_member_2_reset(dummyClockGroupSourceNode_auto_out_member_2_reset),
    .auto_out_member_1_clock(dummyClockGroupSourceNode_auto_out_member_1_clock),
    .auto_out_member_1_reset(dummyClockGroupSourceNode_auto_out_member_1_reset),
    .auto_out_member_0_clock(dummyClockGroupSourceNode_auto_out_member_0_clock),
    .auto_out_member_0_reset(dummyClockGroupSourceNode_auto_out_member_0_reset)
  );
  SystemBus subsystem_sbus ( // @[SystemBus.scala 25:26:chipyard.TestHarness.RocketConfig.fir@259559.4]
    .auto_coupler_from_tile_tl_master_xing_in_a_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready),
    .auto_coupler_from_tile_tl_master_xing_in_a_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_param(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_size(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_source(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_address(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_mask(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_data(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt),
    .auto_coupler_from_tile_tl_master_xing_in_b_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready),
    .auto_coupler_from_tile_tl_master_xing_in_b_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid),
    .auto_coupler_from_tile_tl_master_xing_in_b_bits_param(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_b_bits_address(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_c_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready),
    .auto_coupler_from_tile_tl_master_xing_in_c_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_param(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_size(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_source(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_address(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_data(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt),
    .auto_coupler_from_tile_tl_master_xing_in_d_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready),
    .auto_coupler_from_tile_tl_master_xing_in_d_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_param(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_size(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_source(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_sink(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_denied(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_data(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt),
    .auto_coupler_from_tile_tl_master_xing_in_e_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid),
    .auto_coupler_from_tile_tl_master_xing_in_e_bits_sink(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt),
    .auto_subsystem_sbus_clock_groups_in_member_5_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_clock),
    .auto_subsystem_sbus_clock_groups_in_member_5_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_reset),
    .auto_subsystem_sbus_clock_groups_in_member_4_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_clock),
    .auto_subsystem_sbus_clock_groups_in_member_4_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_reset),
    .auto_subsystem_sbus_clock_groups_in_member_3_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_clock),
    .auto_subsystem_sbus_clock_groups_in_member_3_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_reset),
    .auto_subsystem_sbus_clock_groups_in_member_2_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_clock),
    .auto_subsystem_sbus_clock_groups_in_member_2_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_reset),
    .auto_subsystem_sbus_clock_groups_in_member_1_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_clock),
    .auto_subsystem_sbus_clock_groups_in_member_1_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_reset),
    .auto_subsystem_sbus_clock_groups_in_member_0_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_clock),
    .auto_subsystem_sbus_clock_groups_in_member_0_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_reset),
    .auto_subsystem_sbus_clock_groups_out_2_member_1_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_clock),
    .auto_subsystem_sbus_clock_groups_out_2_member_1_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_reset),
    .auto_subsystem_sbus_clock_groups_out_2_member_0_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_clock),
    .auto_subsystem_sbus_clock_groups_out_2_member_0_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_reset),
    .auto_subsystem_sbus_clock_groups_out_1_member_0_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_clock),
    .auto_subsystem_sbus_clock_groups_out_1_member_0_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_reset),
    .auto_subsystem_sbus_clock_groups_out_0_member_1_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_clock),
    .auto_subsystem_sbus_clock_groups_out_0_member_1_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_reset),
    .auto_subsystem_sbus_clock_groups_out_0_member_0_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_clock),
    .auto_subsystem_sbus_clock_groups_out_0_member_0_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_reset)
  );
  PeripheryBus subsystem_pbus ( // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259563.4]
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_ready(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_ready),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_valid(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_valid),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_opcode(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_opcode),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_param(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_param),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_size(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_size),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_source(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_source),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_address(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_address),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_mask(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_mask),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_data(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_data),
    .auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_corrupt(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_corrupt),
    .auto_coupler_to_device_named_uart_0_control_xing_out_d_ready(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_ready),
    .auto_coupler_to_device_named_uart_0_control_xing_out_d_valid(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_valid),
    .auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_opcode(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_opcode),
    .auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_size(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_size),
    .auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_source(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_source),
    .auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_data(subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_data),
    .auto_fixedClockNode_out_clock(subsystem_pbus_auto_fixedClockNode_out_clock),
    .auto_fixedClockNode_out_reset(subsystem_pbus_auto_fixedClockNode_out_reset),
    .auto_subsystem_pbus_clock_groups_in_member_0_clock(subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_clock),
    .auto_subsystem_pbus_clock_groups_in_member_0_reset(subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_reset),
    .auto_bus_xing_in_a_ready(subsystem_pbus_auto_bus_xing_in_a_ready),
    .auto_bus_xing_in_a_valid(subsystem_pbus_auto_bus_xing_in_a_valid),
    .auto_bus_xing_in_a_bits_opcode(subsystem_pbus_auto_bus_xing_in_a_bits_opcode),
    .auto_bus_xing_in_a_bits_param(subsystem_pbus_auto_bus_xing_in_a_bits_param),
    .auto_bus_xing_in_a_bits_size(subsystem_pbus_auto_bus_xing_in_a_bits_size),
    .auto_bus_xing_in_a_bits_source(subsystem_pbus_auto_bus_xing_in_a_bits_source),
    .auto_bus_xing_in_a_bits_address(subsystem_pbus_auto_bus_xing_in_a_bits_address),
    .auto_bus_xing_in_a_bits_mask(subsystem_pbus_auto_bus_xing_in_a_bits_mask),
    .auto_bus_xing_in_a_bits_data(subsystem_pbus_auto_bus_xing_in_a_bits_data),
    .auto_bus_xing_in_a_bits_corrupt(subsystem_pbus_auto_bus_xing_in_a_bits_corrupt),
    .auto_bus_xing_in_d_ready(subsystem_pbus_auto_bus_xing_in_d_ready),
    .auto_bus_xing_in_d_valid(subsystem_pbus_auto_bus_xing_in_d_valid),
    .auto_bus_xing_in_d_bits_opcode(subsystem_pbus_auto_bus_xing_in_d_bits_opcode),
    .auto_bus_xing_in_d_bits_param(subsystem_pbus_auto_bus_xing_in_d_bits_param),
    .auto_bus_xing_in_d_bits_size(subsystem_pbus_auto_bus_xing_in_d_bits_size),
    .auto_bus_xing_in_d_bits_source(subsystem_pbus_auto_bus_xing_in_d_bits_source),
    .auto_bus_xing_in_d_bits_sink(subsystem_pbus_auto_bus_xing_in_d_bits_sink),
    .auto_bus_xing_in_d_bits_denied(subsystem_pbus_auto_bus_xing_in_d_bits_denied),
    .auto_bus_xing_in_d_bits_data(subsystem_pbus_auto_bus_xing_in_d_bits_data),
    .auto_bus_xing_in_d_bits_corrupt(subsystem_pbus_auto_bus_xing_in_d_bits_corrupt)
  );
  FrontBus subsystem_fbus ( // @[FrontBus.scala 22:26:chipyard.TestHarness.RocketConfig.fir@259567.4]
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_a_ready(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_ready),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_a_valid(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_valid),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_opcode(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_opcode),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_size(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_size),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_address(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_address),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_mask(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_mask),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_data(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_data),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_d_ready(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_ready),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_d_valid(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_valid),
    .auto_coupler_from_port_named_serialadapter_serialadapter_in_d_bits_data(subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_bits_data),
    .auto_subsystem_fbus_clock_groups_in_member_0_clock(subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_clock),
    .auto_subsystem_fbus_clock_groups_in_member_0_reset(subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_reset),
    .auto_bus_xing_out_a_ready(subsystem_fbus_auto_bus_xing_out_a_ready),
    .auto_bus_xing_out_a_valid(subsystem_fbus_auto_bus_xing_out_a_valid),
    .auto_bus_xing_out_a_bits_opcode(subsystem_fbus_auto_bus_xing_out_a_bits_opcode),
    .auto_bus_xing_out_a_bits_param(subsystem_fbus_auto_bus_xing_out_a_bits_param),
    .auto_bus_xing_out_a_bits_size(subsystem_fbus_auto_bus_xing_out_a_bits_size),
    .auto_bus_xing_out_a_bits_source(subsystem_fbus_auto_bus_xing_out_a_bits_source),
    .auto_bus_xing_out_a_bits_address(subsystem_fbus_auto_bus_xing_out_a_bits_address),
    .auto_bus_xing_out_a_bits_mask(subsystem_fbus_auto_bus_xing_out_a_bits_mask),
    .auto_bus_xing_out_a_bits_data(subsystem_fbus_auto_bus_xing_out_a_bits_data),
    .auto_bus_xing_out_a_bits_corrupt(subsystem_fbus_auto_bus_xing_out_a_bits_corrupt),
    .auto_bus_xing_out_d_ready(subsystem_fbus_auto_bus_xing_out_d_ready),
    .auto_bus_xing_out_d_valid(subsystem_fbus_auto_bus_xing_out_d_valid),
    .auto_bus_xing_out_d_bits_opcode(subsystem_fbus_auto_bus_xing_out_d_bits_opcode),
    .auto_bus_xing_out_d_bits_param(subsystem_fbus_auto_bus_xing_out_d_bits_param),
    .auto_bus_xing_out_d_bits_size(subsystem_fbus_auto_bus_xing_out_d_bits_size),
    .auto_bus_xing_out_d_bits_sink(subsystem_fbus_auto_bus_xing_out_d_bits_sink),
    .auto_bus_xing_out_d_bits_denied(subsystem_fbus_auto_bus_xing_out_d_bits_denied),
    .auto_bus_xing_out_d_bits_data(subsystem_fbus_auto_bus_xing_out_d_bits_data),
    .auto_bus_xing_out_d_bits_corrupt(subsystem_fbus_auto_bus_xing_out_d_bits_corrupt)
  );
  PeripheryBus_1 subsystem_cbus ( // @[PeripheryBus.scala 32:26:chipyard.TestHarness.RocketConfig.fir@259571.4]
    .auto_coupler_to_bootrom_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready),
    .auto_coupler_to_bootrom_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_param(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_param),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_address(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_mask),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt),
    .auto_coupler_to_bootrom_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready),
    .auto_coupler_to_bootrom_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data),
    .auto_coupler_to_debug_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready),
    .auto_coupler_to_debug_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid),
    .auto_coupler_to_debug_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_debug_fragmenter_out_a_bits_param(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_param),
    .auto_coupler_to_debug_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size),
    .auto_coupler_to_debug_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source),
    .auto_coupler_to_debug_fragmenter_out_a_bits_address(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address),
    .auto_coupler_to_debug_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask),
    .auto_coupler_to_debug_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data),
    .auto_coupler_to_debug_fragmenter_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_corrupt),
    .auto_coupler_to_debug_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready),
    .auto_coupler_to_debug_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid),
    .auto_coupler_to_debug_fragmenter_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode),
    .auto_coupler_to_debug_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size),
    .auto_coupler_to_debug_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source),
    .auto_coupler_to_debug_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data),
    .auto_coupler_to_clint_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready),
    .auto_coupler_to_clint_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid),
    .auto_coupler_to_clint_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_clint_fragmenter_out_a_bits_param(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_param),
    .auto_coupler_to_clint_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size),
    .auto_coupler_to_clint_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source),
    .auto_coupler_to_clint_fragmenter_out_a_bits_address(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address),
    .auto_coupler_to_clint_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask),
    .auto_coupler_to_clint_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data),
    .auto_coupler_to_clint_fragmenter_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_corrupt),
    .auto_coupler_to_clint_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready),
    .auto_coupler_to_clint_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid),
    .auto_coupler_to_clint_fragmenter_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode),
    .auto_coupler_to_clint_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size),
    .auto_coupler_to_clint_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source),
    .auto_coupler_to_clint_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data),
    .auto_coupler_to_plic_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready),
    .auto_coupler_to_plic_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid),
    .auto_coupler_to_plic_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_plic_fragmenter_out_a_bits_param(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_param),
    .auto_coupler_to_plic_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size),
    .auto_coupler_to_plic_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source),
    .auto_coupler_to_plic_fragmenter_out_a_bits_address(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address),
    .auto_coupler_to_plic_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask),
    .auto_coupler_to_plic_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data),
    .auto_coupler_to_plic_fragmenter_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_corrupt),
    .auto_coupler_to_plic_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready),
    .auto_coupler_to_plic_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid),
    .auto_coupler_to_plic_fragmenter_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode),
    .auto_coupler_to_plic_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size),
    .auto_coupler_to_plic_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source),
    .auto_coupler_to_plic_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_ready(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_valid(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_param(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_size(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_source(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_address(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_mask(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_data(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_ready(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_valid(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_param(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_param),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_size(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_source(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_sink(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_sink),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_denied(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_data(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_corrupt(subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_corrupt),
    .auto_coupler_to_l2_ctrl_buffer_out_a_ready(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_ready),
    .auto_coupler_to_l2_ctrl_buffer_out_a_valid(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_valid),
    .auto_coupler_to_l2_ctrl_buffer_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_opcode),
    .auto_coupler_to_l2_ctrl_buffer_out_a_bits_param(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_param),
    .auto_coupler_to_l2_ctrl_buffer_out_a_bits_size(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_size),
    .auto_coupler_to_l2_ctrl_buffer_out_a_bits_source(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_source),
    .auto_coupler_to_l2_ctrl_buffer_out_a_bits_address(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_address),
    .auto_coupler_to_l2_ctrl_buffer_out_a_bits_mask(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_mask),
    .auto_coupler_to_l2_ctrl_buffer_out_a_bits_data(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_data),
    .auto_coupler_to_l2_ctrl_buffer_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_corrupt),
    .auto_coupler_to_l2_ctrl_buffer_out_d_ready(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_ready),
    .auto_coupler_to_l2_ctrl_buffer_out_d_valid(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_valid),
    .auto_coupler_to_l2_ctrl_buffer_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_opcode),
    .auto_coupler_to_l2_ctrl_buffer_out_d_bits_size(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_size),
    .auto_coupler_to_l2_ctrl_buffer_out_d_bits_source(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_source),
    .auto_coupler_to_l2_ctrl_buffer_out_d_bits_data(subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_data),
    .auto_subsystem_cbus_clock_groups_in_member_1_clock(subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_clock),
    .auto_subsystem_cbus_clock_groups_in_member_1_reset(subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_reset),
    .auto_subsystem_cbus_clock_groups_in_member_0_clock(subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_clock),
    .auto_subsystem_cbus_clock_groups_in_member_0_reset(subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_reset),
    .auto_subsystem_cbus_clock_groups_out_member_0_clock(subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_clock),
    .auto_subsystem_cbus_clock_groups_out_member_0_reset(subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_reset),
    .auto_bus_xing_in_a_ready(subsystem_cbus_auto_bus_xing_in_a_ready),
    .auto_bus_xing_in_a_valid(subsystem_cbus_auto_bus_xing_in_a_valid),
    .auto_bus_xing_in_a_bits_opcode(subsystem_cbus_auto_bus_xing_in_a_bits_opcode),
    .auto_bus_xing_in_a_bits_param(subsystem_cbus_auto_bus_xing_in_a_bits_param),
    .auto_bus_xing_in_a_bits_size(subsystem_cbus_auto_bus_xing_in_a_bits_size),
    .auto_bus_xing_in_a_bits_source(subsystem_cbus_auto_bus_xing_in_a_bits_source),
    .auto_bus_xing_in_a_bits_address(subsystem_cbus_auto_bus_xing_in_a_bits_address),
    .auto_bus_xing_in_a_bits_mask(subsystem_cbus_auto_bus_xing_in_a_bits_mask),
    .auto_bus_xing_in_a_bits_data(subsystem_cbus_auto_bus_xing_in_a_bits_data),
    .auto_bus_xing_in_a_bits_corrupt(subsystem_cbus_auto_bus_xing_in_a_bits_corrupt),
    .auto_bus_xing_in_d_ready(subsystem_cbus_auto_bus_xing_in_d_ready),
    .auto_bus_xing_in_d_valid(subsystem_cbus_auto_bus_xing_in_d_valid),
    .auto_bus_xing_in_d_bits_opcode(subsystem_cbus_auto_bus_xing_in_d_bits_opcode),
    .auto_bus_xing_in_d_bits_param(subsystem_cbus_auto_bus_xing_in_d_bits_param),
    .auto_bus_xing_in_d_bits_size(subsystem_cbus_auto_bus_xing_in_d_bits_size),
    .auto_bus_xing_in_d_bits_source(subsystem_cbus_auto_bus_xing_in_d_bits_source),
    .auto_bus_xing_in_d_bits_sink(subsystem_cbus_auto_bus_xing_in_d_bits_sink),
    .auto_bus_xing_in_d_bits_denied(subsystem_cbus_auto_bus_xing_in_d_bits_denied),
    .auto_bus_xing_in_d_bits_data(subsystem_cbus_auto_bus_xing_in_d_bits_data),
    .auto_bus_xing_in_d_bits_corrupt(subsystem_cbus_auto_bus_xing_in_d_bits_corrupt)
  );
  MemoryBus subsystem_mbus ( // @[MemoryBus.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259575.4]
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last),
    .auto_fixer_in_a_ready(subsystem_mbus_auto_fixer_in_a_ready),
    .auto_fixer_in_a_valid(subsystem_mbus_auto_fixer_in_a_valid),
    .auto_fixer_in_a_bits_opcode(subsystem_mbus_auto_fixer_in_a_bits_opcode),
    .auto_fixer_in_a_bits_param(subsystem_mbus_auto_fixer_in_a_bits_param),
    .auto_fixer_in_a_bits_size(subsystem_mbus_auto_fixer_in_a_bits_size),
    .auto_fixer_in_a_bits_source(subsystem_mbus_auto_fixer_in_a_bits_source),
    .auto_fixer_in_a_bits_address(subsystem_mbus_auto_fixer_in_a_bits_address),
    .auto_fixer_in_a_bits_mask(subsystem_mbus_auto_fixer_in_a_bits_mask),
    .auto_fixer_in_a_bits_data(subsystem_mbus_auto_fixer_in_a_bits_data),
    .auto_fixer_in_a_bits_corrupt(subsystem_mbus_auto_fixer_in_a_bits_corrupt),
    .auto_fixer_in_d_ready(subsystem_mbus_auto_fixer_in_d_ready),
    .auto_fixer_in_d_valid(subsystem_mbus_auto_fixer_in_d_valid),
    .auto_fixer_in_d_bits_opcode(subsystem_mbus_auto_fixer_in_d_bits_opcode),
    .auto_fixer_in_d_bits_size(subsystem_mbus_auto_fixer_in_d_bits_size),
    .auto_fixer_in_d_bits_source(subsystem_mbus_auto_fixer_in_d_bits_source),
    .auto_fixer_in_d_bits_denied(subsystem_mbus_auto_fixer_in_d_bits_denied),
    .auto_fixer_in_d_bits_data(subsystem_mbus_auto_fixer_in_d_bits_data),
    .auto_fixer_in_d_bits_corrupt(subsystem_mbus_auto_fixer_in_d_bits_corrupt),
    .auto_subsystem_mbus_clock_groups_in_member_0_clock(subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_clock),
    .auto_subsystem_mbus_clock_groups_in_member_0_reset(subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_reset)
  );
  CoherenceManagerWrapper subsystem_l2_wrapper ( // @[BankedL2Params.scala 45:31:chipyard.TestHarness.RocketConfig.fir@259579.4]
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt),
    .auto_coherent_jbar_in_a_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready),
    .auto_coherent_jbar_in_a_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid),
    .auto_coherent_jbar_in_a_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode),
    .auto_coherent_jbar_in_a_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param),
    .auto_coherent_jbar_in_a_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size),
    .auto_coherent_jbar_in_a_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source),
    .auto_coherent_jbar_in_a_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address),
    .auto_coherent_jbar_in_a_bits_mask(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask),
    .auto_coherent_jbar_in_a_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data),
    .auto_coherent_jbar_in_a_bits_corrupt(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_corrupt),
    .auto_coherent_jbar_in_b_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready),
    .auto_coherent_jbar_in_b_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid),
    .auto_coherent_jbar_in_b_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param),
    .auto_coherent_jbar_in_b_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address),
    .auto_coherent_jbar_in_c_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready),
    .auto_coherent_jbar_in_c_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid),
    .auto_coherent_jbar_in_c_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode),
    .auto_coherent_jbar_in_c_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param),
    .auto_coherent_jbar_in_c_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size),
    .auto_coherent_jbar_in_c_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source),
    .auto_coherent_jbar_in_c_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address),
    .auto_coherent_jbar_in_c_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data),
    .auto_coherent_jbar_in_c_bits_corrupt(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_corrupt),
    .auto_coherent_jbar_in_d_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready),
    .auto_coherent_jbar_in_d_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid),
    .auto_coherent_jbar_in_d_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode),
    .auto_coherent_jbar_in_d_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param),
    .auto_coherent_jbar_in_d_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size),
    .auto_coherent_jbar_in_d_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source),
    .auto_coherent_jbar_in_d_bits_sink(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink),
    .auto_coherent_jbar_in_d_bits_denied(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied),
    .auto_coherent_jbar_in_d_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data),
    .auto_coherent_jbar_in_d_bits_corrupt(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt),
    .auto_coherent_jbar_in_e_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid),
    .auto_coherent_jbar_in_e_bits_sink(subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink),
    .auto_l2_ctl_in_a_ready(subsystem_l2_wrapper_auto_l2_ctl_in_a_ready),
    .auto_l2_ctl_in_a_valid(subsystem_l2_wrapper_auto_l2_ctl_in_a_valid),
    .auto_l2_ctl_in_a_bits_opcode(subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_opcode),
    .auto_l2_ctl_in_a_bits_param(subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_param),
    .auto_l2_ctl_in_a_bits_size(subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_size),
    .auto_l2_ctl_in_a_bits_source(subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_source),
    .auto_l2_ctl_in_a_bits_address(subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_address),
    .auto_l2_ctl_in_a_bits_mask(subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_mask),
    .auto_l2_ctl_in_a_bits_data(subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_data),
    .auto_l2_ctl_in_a_bits_corrupt(subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_corrupt),
    .auto_l2_ctl_in_d_ready(subsystem_l2_wrapper_auto_l2_ctl_in_d_ready),
    .auto_l2_ctl_in_d_valid(subsystem_l2_wrapper_auto_l2_ctl_in_d_valid),
    .auto_l2_ctl_in_d_bits_opcode(subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_opcode),
    .auto_l2_ctl_in_d_bits_size(subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_size),
    .auto_l2_ctl_in_d_bits_source(subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_source),
    .auto_l2_ctl_in_d_bits_data(subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_data),
    .auto_subsystem_l2_clock_groups_in_member_1_clock(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_clock),
    .auto_subsystem_l2_clock_groups_in_member_1_reset(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_reset),
    .auto_subsystem_l2_clock_groups_in_member_0_clock(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_clock),
    .auto_subsystem_l2_clock_groups_in_member_0_reset(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_reset),
    .auto_subsystem_l2_clock_groups_out_member_0_clock(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_clock),
    .auto_subsystem_l2_clock_groups_out_member_0_reset(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_reset)
  );
  IntXbar xbar ( // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259583.4]
    .auto_int_in_0(xbar_auto_int_in_0),
    .auto_int_out_0(xbar_auto_int_out_0)
  );
  IntXbar xbar_1 ( // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259589.4]
    .auto_int_in_0(xbar_1_auto_int_in_0),
    .auto_int_out_0(xbar_1_auto_int_out_0)
  );
  IntXbar xbar_2 ( // @[Xbar.scala 27:26:chipyard.TestHarness.RocketConfig.fir@259595.4]
    .auto_int_in_0(xbar_2_auto_int_in_0),
    .auto_int_out_0(xbar_2_auto_int_out_0)
  );
  TLPLIC plic ( // @[Plic.scala 352:26:chipyard.TestHarness.RocketConfig.fir@259601.4]
    .clock(plic_clock),
    .reset(plic_reset),
    .auto_int_in_0(plic_auto_int_in_0),
    .auto_int_out_1_0(plic_auto_int_out_1_0),
    .auto_int_out_0_0(plic_auto_int_out_0_0),
    .auto_in_a_ready(plic_auto_in_a_ready),
    .auto_in_a_valid(plic_auto_in_a_valid),
    .auto_in_a_bits_opcode(plic_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(plic_auto_in_a_bits_param),
    .auto_in_a_bits_size(plic_auto_in_a_bits_size),
    .auto_in_a_bits_source(plic_auto_in_a_bits_source),
    .auto_in_a_bits_address(plic_auto_in_a_bits_address),
    .auto_in_a_bits_mask(plic_auto_in_a_bits_mask),
    .auto_in_a_bits_data(plic_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(plic_auto_in_a_bits_corrupt),
    .auto_in_d_ready(plic_auto_in_d_ready),
    .auto_in_d_valid(plic_auto_in_d_valid),
    .auto_in_d_bits_opcode(plic_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(plic_auto_in_d_bits_size),
    .auto_in_d_bits_source(plic_auto_in_d_bits_source),
    .auto_in_d_bits_data(plic_auto_in_d_bits_data)
  );
  CLINT clint ( // @[CLINT.scala 109:27:chipyard.TestHarness.RocketConfig.fir@259607.4]
    .clock(clint_clock),
    .reset(clint_reset),
    .auto_int_out_0(clint_auto_int_out_0),
    .auto_int_out_1(clint_auto_int_out_1),
    .auto_in_a_ready(clint_auto_in_a_ready),
    .auto_in_a_valid(clint_auto_in_a_valid),
    .auto_in_a_bits_opcode(clint_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(clint_auto_in_a_bits_param),
    .auto_in_a_bits_size(clint_auto_in_a_bits_size),
    .auto_in_a_bits_source(clint_auto_in_a_bits_source),
    .auto_in_a_bits_address(clint_auto_in_a_bits_address),
    .auto_in_a_bits_mask(clint_auto_in_a_bits_mask),
    .auto_in_a_bits_data(clint_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(clint_auto_in_a_bits_corrupt),
    .auto_in_d_ready(clint_auto_in_d_ready),
    .auto_in_d_valid(clint_auto_in_d_valid),
    .auto_in_d_bits_opcode(clint_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(clint_auto_in_d_bits_size),
    .auto_in_d_bits_source(clint_auto_in_d_bits_source),
    .auto_in_d_bits_data(clint_auto_in_d_bits_data),
    .io_rtcTick(clint_io_rtcTick)
  );
  TLDebugModule debug_1 ( // @[Periphery.scala 80:27:chipyard.TestHarness.RocketConfig.fir@259620.4]
    .auto_dmInner_dmInner_tl_in_a_ready(debug_1_auto_dmInner_dmInner_tl_in_a_ready),
    .auto_dmInner_dmInner_tl_in_a_valid(debug_1_auto_dmInner_dmInner_tl_in_a_valid),
    .auto_dmInner_dmInner_tl_in_a_bits_opcode(debug_1_auto_dmInner_dmInner_tl_in_a_bits_opcode),
    .auto_dmInner_dmInner_tl_in_a_bits_param(debug_1_auto_dmInner_dmInner_tl_in_a_bits_param),
    .auto_dmInner_dmInner_tl_in_a_bits_size(debug_1_auto_dmInner_dmInner_tl_in_a_bits_size),
    .auto_dmInner_dmInner_tl_in_a_bits_source(debug_1_auto_dmInner_dmInner_tl_in_a_bits_source),
    .auto_dmInner_dmInner_tl_in_a_bits_address(debug_1_auto_dmInner_dmInner_tl_in_a_bits_address),
    .auto_dmInner_dmInner_tl_in_a_bits_mask(debug_1_auto_dmInner_dmInner_tl_in_a_bits_mask),
    .auto_dmInner_dmInner_tl_in_a_bits_data(debug_1_auto_dmInner_dmInner_tl_in_a_bits_data),
    .auto_dmInner_dmInner_tl_in_a_bits_corrupt(debug_1_auto_dmInner_dmInner_tl_in_a_bits_corrupt),
    .auto_dmInner_dmInner_tl_in_d_ready(debug_1_auto_dmInner_dmInner_tl_in_d_ready),
    .auto_dmInner_dmInner_tl_in_d_valid(debug_1_auto_dmInner_dmInner_tl_in_d_valid),
    .auto_dmInner_dmInner_tl_in_d_bits_opcode(debug_1_auto_dmInner_dmInner_tl_in_d_bits_opcode),
    .auto_dmInner_dmInner_tl_in_d_bits_size(debug_1_auto_dmInner_dmInner_tl_in_d_bits_size),
    .auto_dmInner_dmInner_tl_in_d_bits_source(debug_1_auto_dmInner_dmInner_tl_in_d_bits_source),
    .auto_dmInner_dmInner_tl_in_d_bits_data(debug_1_auto_dmInner_dmInner_tl_in_d_bits_data),
    .auto_dmOuter_intsource_out_sync_0(debug_1_auto_dmOuter_intsource_out_sync_0),
    .io_debug_clock(debug_1_io_debug_clock),
    .io_debug_reset(debug_1_io_debug_reset),
    .io_ctrl_ndreset(debug_1_io_ctrl_ndreset),
    .io_ctrl_dmactive(debug_1_io_ctrl_dmactive),
    .io_ctrl_dmactiveAck(debug_1_io_ctrl_dmactiveAck),
    .io_dmi_dmi_req_ready(debug_1_io_dmi_dmi_req_ready),
    .io_dmi_dmi_req_valid(debug_1_io_dmi_dmi_req_valid),
    .io_dmi_dmi_req_bits_addr(debug_1_io_dmi_dmi_req_bits_addr),
    .io_dmi_dmi_req_bits_data(debug_1_io_dmi_dmi_req_bits_data),
    .io_dmi_dmi_req_bits_op(debug_1_io_dmi_dmi_req_bits_op),
    .io_dmi_dmi_resp_ready(debug_1_io_dmi_dmi_resp_ready),
    .io_dmi_dmi_resp_valid(debug_1_io_dmi_dmi_resp_valid),
    .io_dmi_dmi_resp_bits_data(debug_1_io_dmi_dmi_resp_bits_data),
    .io_dmi_dmi_resp_bits_resp(debug_1_io_dmi_dmi_resp_bits_resp),
    .io_dmi_dmiClock(debug_1_io_dmi_dmiClock),
    .io_dmi_dmiReset(debug_1_io_dmi_dmiReset),
    .io_hartIsInReset_0(debug_1_io_hartIsInReset_0)
  );
  RocketTile tile ( // @[Subsystem.scala 60:21:chipyard.TestHarness.RocketConfig.fir@259623.4]
    .clock(tile_clock),
    .reset(tile_reset),
    .auto_intsink_in_sync_0(tile_auto_intsink_in_sync_0),
    .auto_int_in_xing_in_2_sync_0(tile_auto_int_in_xing_in_2_sync_0),
    .auto_int_in_xing_in_1_sync_0(tile_auto_int_in_xing_in_1_sync_0),
    .auto_int_in_xing_in_0_sync_0(tile_auto_int_in_xing_in_0_sync_0),
    .auto_int_in_xing_in_0_sync_1(tile_auto_int_in_xing_in_0_sync_1),
    .auto_tl_master_xing_out_a_ready(tile_auto_tl_master_xing_out_a_ready),
    .auto_tl_master_xing_out_a_valid(tile_auto_tl_master_xing_out_a_valid),
    .auto_tl_master_xing_out_a_bits_opcode(tile_auto_tl_master_xing_out_a_bits_opcode),
    .auto_tl_master_xing_out_a_bits_param(tile_auto_tl_master_xing_out_a_bits_param),
    .auto_tl_master_xing_out_a_bits_size(tile_auto_tl_master_xing_out_a_bits_size),
    .auto_tl_master_xing_out_a_bits_source(tile_auto_tl_master_xing_out_a_bits_source),
    .auto_tl_master_xing_out_a_bits_address(tile_auto_tl_master_xing_out_a_bits_address),
    .auto_tl_master_xing_out_a_bits_mask(tile_auto_tl_master_xing_out_a_bits_mask),
    .auto_tl_master_xing_out_a_bits_data(tile_auto_tl_master_xing_out_a_bits_data),
    .auto_tl_master_xing_out_a_bits_corrupt(tile_auto_tl_master_xing_out_a_bits_corrupt),
    .auto_tl_master_xing_out_b_ready(tile_auto_tl_master_xing_out_b_ready),
    .auto_tl_master_xing_out_b_valid(tile_auto_tl_master_xing_out_b_valid),
    .auto_tl_master_xing_out_b_bits_param(tile_auto_tl_master_xing_out_b_bits_param),
    .auto_tl_master_xing_out_b_bits_address(tile_auto_tl_master_xing_out_b_bits_address),
    .auto_tl_master_xing_out_c_ready(tile_auto_tl_master_xing_out_c_ready),
    .auto_tl_master_xing_out_c_valid(tile_auto_tl_master_xing_out_c_valid),
    .auto_tl_master_xing_out_c_bits_opcode(tile_auto_tl_master_xing_out_c_bits_opcode),
    .auto_tl_master_xing_out_c_bits_param(tile_auto_tl_master_xing_out_c_bits_param),
    .auto_tl_master_xing_out_c_bits_size(tile_auto_tl_master_xing_out_c_bits_size),
    .auto_tl_master_xing_out_c_bits_source(tile_auto_tl_master_xing_out_c_bits_source),
    .auto_tl_master_xing_out_c_bits_address(tile_auto_tl_master_xing_out_c_bits_address),
    .auto_tl_master_xing_out_c_bits_data(tile_auto_tl_master_xing_out_c_bits_data),
    .auto_tl_master_xing_out_c_bits_corrupt(tile_auto_tl_master_xing_out_c_bits_corrupt),
    .auto_tl_master_xing_out_d_ready(tile_auto_tl_master_xing_out_d_ready),
    .auto_tl_master_xing_out_d_valid(tile_auto_tl_master_xing_out_d_valid),
    .auto_tl_master_xing_out_d_bits_opcode(tile_auto_tl_master_xing_out_d_bits_opcode),
    .auto_tl_master_xing_out_d_bits_param(tile_auto_tl_master_xing_out_d_bits_param),
    .auto_tl_master_xing_out_d_bits_size(tile_auto_tl_master_xing_out_d_bits_size),
    .auto_tl_master_xing_out_d_bits_source(tile_auto_tl_master_xing_out_d_bits_source),
    .auto_tl_master_xing_out_d_bits_sink(tile_auto_tl_master_xing_out_d_bits_sink),
    .auto_tl_master_xing_out_d_bits_denied(tile_auto_tl_master_xing_out_d_bits_denied),
    .auto_tl_master_xing_out_d_bits_data(tile_auto_tl_master_xing_out_d_bits_data),
    .auto_tl_master_xing_out_d_bits_corrupt(tile_auto_tl_master_xing_out_d_bits_corrupt),
    .auto_tl_master_xing_out_e_valid(tile_auto_tl_master_xing_out_e_valid),
    .auto_tl_master_xing_out_e_bits_sink(tile_auto_tl_master_xing_out_e_bits_sink),
    .auto_wfi_out_0(tile_auto_wfi_out_0)
  );
  IntSyncCrossingSource_2 intsource ( // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259630.4]
    .clock(intsource_clock),
    .reset(intsource_reset),
    .auto_in_0(intsource_auto_in_0),
    .auto_in_1(intsource_auto_in_1),
    .auto_out_sync_0(intsource_auto_out_sync_0),
    .auto_out_sync_1(intsource_auto_out_sync_1)
  );
  IntSyncCrossingSource_3 intsource_1 ( // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259636.4]
    .clock(intsource_1_clock),
    .reset(intsource_1_reset),
    .auto_in_0(intsource_1_auto_in_0),
    .auto_out_sync_0(intsource_1_auto_out_sync_0)
  );
  IntSyncCrossingSource_3 intsource_2 ( // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@259642.4]
    .clock(intsource_2_clock),
    .reset(intsource_2_reset),
    .auto_in_0(intsource_2_auto_in_0),
    .auto_out_sync_0(intsource_2_auto_out_sync_0)
  );
  TLROM bootrom ( // @[BootROM.scala 72:27:chipyard.TestHarness.RocketConfig.fir@259654.4]
    .clock(bootrom_clock),
    .reset(bootrom_reset),
    .auto_in_a_ready(bootrom_auto_in_a_ready),
    .auto_in_a_valid(bootrom_auto_in_a_valid),
    .auto_in_a_bits_opcode(bootrom_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(bootrom_auto_in_a_bits_param),
    .auto_in_a_bits_size(bootrom_auto_in_a_bits_size),
    .auto_in_a_bits_source(bootrom_auto_in_a_bits_source),
    .auto_in_a_bits_address(bootrom_auto_in_a_bits_address),
    .auto_in_a_bits_mask(bootrom_auto_in_a_bits_mask),
    .auto_in_a_bits_corrupt(bootrom_auto_in_a_bits_corrupt),
    .auto_in_d_ready(bootrom_auto_in_d_ready),
    .auto_in_d_valid(bootrom_auto_in_d_valid),
    .auto_in_d_bits_size(bootrom_auto_in_d_bits_size),
    .auto_in_d_bits_source(bootrom_auto_in_d_bits_source),
    .auto_in_d_bits_data(bootrom_auto_in_d_bits_data)
  );
  SerialAdapter m ( // @[SerialAdapter.scala 212:23:chipyard.TestHarness.RocketConfig.fir@259660.4]
    .clock(m_clock),
    .reset(m_reset),
    .auto_out_a_ready(m_auto_out_a_ready),
    .auto_out_a_valid(m_auto_out_a_valid),
    .auto_out_a_bits_opcode(m_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(m_auto_out_a_bits_size),
    .auto_out_a_bits_address(m_auto_out_a_bits_address),
    .auto_out_a_bits_mask(m_auto_out_a_bits_mask),
    .auto_out_a_bits_data(m_auto_out_a_bits_data),
    .auto_out_d_ready(m_auto_out_d_ready),
    .auto_out_d_valid(m_auto_out_d_valid),
    .auto_out_d_bits_data(m_auto_out_d_bits_data),
    .io_serial_in_ready(m_io_serial_in_ready),
    .io_serial_in_valid(m_io_serial_in_valid),
    .io_serial_in_bits(m_io_serial_in_bits),
    .io_serial_out_ready(m_io_serial_out_ready),
    .io_serial_out_valid(m_io_serial_out_valid),
    .io_serial_out_bits(m_io_serial_out_bits)
  );
  ClockSinkDomain uartClockDomainWrapper ( // @[UART.scala 237:44:chipyard.TestHarness.RocketConfig.fir@259667.4]
    .auto_uart_0_int_xing_out_sync_0(uartClockDomainWrapper_auto_uart_0_int_xing_out_sync_0),
    .auto_uart_0_control_xing_in_a_ready(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_ready),
    .auto_uart_0_control_xing_in_a_valid(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_valid),
    .auto_uart_0_control_xing_in_a_bits_opcode(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_opcode),
    .auto_uart_0_control_xing_in_a_bits_param(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_param),
    .auto_uart_0_control_xing_in_a_bits_size(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_size),
    .auto_uart_0_control_xing_in_a_bits_source(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_source),
    .auto_uart_0_control_xing_in_a_bits_address(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_address),
    .auto_uart_0_control_xing_in_a_bits_mask(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_mask),
    .auto_uart_0_control_xing_in_a_bits_data(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_data),
    .auto_uart_0_control_xing_in_a_bits_corrupt(uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_corrupt),
    .auto_uart_0_control_xing_in_d_ready(uartClockDomainWrapper_auto_uart_0_control_xing_in_d_ready),
    .auto_uart_0_control_xing_in_d_valid(uartClockDomainWrapper_auto_uart_0_control_xing_in_d_valid),
    .auto_uart_0_control_xing_in_d_bits_opcode(uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_opcode),
    .auto_uart_0_control_xing_in_d_bits_size(uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_size),
    .auto_uart_0_control_xing_in_d_bits_source(uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_source),
    .auto_uart_0_control_xing_in_d_bits_data(uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_data),
    .auto_uart_0_io_out_txd(uartClockDomainWrapper_auto_uart_0_io_out_txd),
    .auto_uart_0_io_out_rxd(uartClockDomainWrapper_auto_uart_0_io_out_rxd),
    .auto_clock_in_clock(uartClockDomainWrapper_auto_clock_in_clock),
    .auto_clock_in_reset(uartClockDomainWrapper_auto_clock_in_reset)
  );
  IntSyncSyncCrossingSink_1 intsink_1 ( // @[Crossing.scala 94:29:chipyard.TestHarness.RocketConfig.fir@259671.4]
    .auto_in_sync_0(intsink_1_auto_in_sync_0),
    .auto_out_0(intsink_1_auto_out_0)
  );
  Queue_34 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259783.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits(Queue_io_enq_bits),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits(Queue_io_deq_bits)
  );
  Queue_34 Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@259792.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits(Queue_1_io_enq_bits),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits(Queue_1_io_deq_bits)
  );
  assign int_rtc_tick = _T_15 == 7'h63; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@259772.6]
  assign _T_18 = _T_15 + 7'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@259774.6]
  assign mem_axi4_0_aw_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_id = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_addr = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_len = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_size = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_burst = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_lock = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_cache = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_prot = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_aw_bits_qos = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_w_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_w_bits_data = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_w_bits_strb = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_w_bits_last = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_b_ready = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_id = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_addr = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_len = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_size = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_burst = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_lock = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_cache = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_prot = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_ar_bits_qos = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign mem_axi4_0_r_ready = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259753.4]
  assign debug_clockeddmi_dmi_req_ready = debug_1_io_dmi_dmi_req_ready; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_clockeddmi_dmi_resp_valid = debug_1_io_dmi_dmi_resp_valid; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_clockeddmi_dmi_resp_bits_data = debug_1_io_dmi_dmi_resp_bits_data; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_clockeddmi_dmi_resp_bits_resp = debug_1_io_dmi_dmi_resp_bits_resp; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_ndreset = debug_1_io_ctrl_ndreset; // @[Periphery.scala 141:19:chipyard.TestHarness.RocketConfig.fir@259762.4]
  assign debug_dmactive = debug_1_io_ctrl_dmactive; // @[Periphery.scala 142:20:chipyard.TestHarness.RocketConfig.fir@259763.4]
  assign serial_in_ready = Queue_1_io_enq_ready; // @[Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@259797.4]
  assign serial_out_valid = Queue_io_deq_valid; // @[SerialAdapter.scala 229:19:chipyard.TestHarness.RocketConfig.fir@259790.4]
  assign serial_out_bits = Queue_io_deq_bits; // @[SerialAdapter.scala 229:19:chipyard.TestHarness.RocketConfig.fir@259789.4]
  assign uart_0_0_txd = uartClockDomainWrapper_auto_uart_0_io_out_txd; // @[Nodes.scala 672:56:chipyard.TestHarness.RocketConfig.fir@259801.4]
  assign int_bus_auto_int_in_0 = intsink_1_auto_out_0; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259750.4]
  assign dummyClockGroupSourceNode_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259557.4]
  assign dummyClockGroupSourceNode_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259558.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid = tile_auto_tl_master_xing_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode = tile_auto_tl_master_xing_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param = tile_auto_tl_master_xing_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size = tile_auto_tl_master_xing_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source = tile_auto_tl_master_xing_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address = tile_auto_tl_master_xing_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask = tile_auto_tl_master_xing_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data = tile_auto_tl_master_xing_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt = tile_auto_tl_master_xing_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready = tile_auto_tl_master_xing_out_b_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid = tile_auto_tl_master_xing_out_c_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode = tile_auto_tl_master_xing_out_c_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param = tile_auto_tl_master_xing_out_c_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size = tile_auto_tl_master_xing_out_c_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source = tile_auto_tl_master_xing_out_c_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address = tile_auto_tl_master_xing_out_c_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data = tile_auto_tl_master_xing_out_c_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt = tile_auto_tl_master_xing_out_c_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready = tile_auto_tl_master_xing_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid = tile_auto_tl_master_xing_out_e_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink = tile_auto_tl_master_xing_out_e_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready = subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid = subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param = subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address = subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready = subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid = subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid = subsystem_fbus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode = subsystem_fbus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param = subsystem_fbus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size = subsystem_fbus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source = subsystem_fbus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address = subsystem_fbus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask = subsystem_fbus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data = subsystem_fbus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt = subsystem_fbus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready = subsystem_fbus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready = subsystem_cbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid = subsystem_cbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode = subsystem_cbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param = subsystem_cbus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size = subsystem_cbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source = subsystem_cbus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink = subsystem_cbus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied = subsystem_cbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data = subsystem_cbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt = subsystem_cbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_clock = dummyClockGroupSourceNode_auto_out_member_5_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_reset = dummyClockGroupSourceNode_auto_out_member_5_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_clock = dummyClockGroupSourceNode_auto_out_member_4_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_reset = dummyClockGroupSourceNode_auto_out_member_4_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_clock = dummyClockGroupSourceNode_auto_out_member_3_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_reset = dummyClockGroupSourceNode_auto_out_member_3_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_clock = dummyClockGroupSourceNode_auto_out_member_2_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_reset = dummyClockGroupSourceNode_auto_out_member_2_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_clock = dummyClockGroupSourceNode_auto_out_member_1_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_reset = dummyClockGroupSourceNode_auto_out_member_1_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_clock = dummyClockGroupSourceNode_auto_out_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_reset = dummyClockGroupSourceNode_auto_out_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259710.4]
  assign subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_ready = uartClockDomainWrapper_auto_uart_0_control_xing_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_valid = uartClockDomainWrapper_auto_uart_0_control_xing_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_opcode = uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_size = uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_source = uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_bits_data = uartClockDomainWrapper_auto_uart_0_control_xing_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_clock = subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_clock; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259715.4]
  assign subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_reset = subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_reset; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259715.4]
  assign subsystem_pbus_auto_bus_xing_in_a_valid = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_a_bits_param = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_a_bits_size = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_a_bits_source = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_a_bits_address = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_a_bits_mask = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_a_bits_data = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_pbus_auto_bus_xing_in_d_ready = subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_valid = m_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_opcode = m_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_size = m_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_address = m_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_mask = m_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_bits_data = m_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_ready = m_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259712.4]
  assign subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259712.4]
  assign subsystem_fbus_auto_bus_xing_out_a_ready = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_fbus_auto_bus_xing_out_d_valid = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_opcode = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_param = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_size = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_sink = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_denied = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_data = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_corrupt = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259720.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready = bootrom_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid = bootrom_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size = bootrom_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source = bootrom_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data = bootrom_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready = debug_1_auto_dmInner_dmInner_tl_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid = debug_1_auto_dmInner_dmInner_tl_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode = debug_1_auto_dmInner_dmInner_tl_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size = debug_1_auto_dmInner_dmInner_tl_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source = debug_1_auto_dmInner_dmInner_tl_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data = debug_1_auto_dmInner_dmInner_tl_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready = clint_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid = clint_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode = clint_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size = clint_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source = clint_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data = clint_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready = plic_auto_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid = plic_auto_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode = plic_auto_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size = plic_auto_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source = plic_auto_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data = plic_auto_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_ready = subsystem_pbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_valid = subsystem_pbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_opcode = subsystem_pbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_param = subsystem_pbus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_size = subsystem_pbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_source = subsystem_pbus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_sink = subsystem_pbus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_denied = subsystem_pbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_data = subsystem_pbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_corrupt = subsystem_pbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259719.4]
  assign subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_ready = subsystem_l2_wrapper_auto_l2_ctl_in_a_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_valid = subsystem_l2_wrapper_auto_l2_ctl_in_d_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_opcode = subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_size = subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_source = subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_bits_data = subsystem_l2_wrapper_auto_l2_ctl_in_d_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259711.4]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259711.4]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259711.4]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259711.4]
  assign subsystem_cbus_auto_bus_xing_in_a_valid = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_opcode = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_param = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_size = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_source = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_address = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_mask = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_data = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_corrupt = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_cbus_auto_bus_xing_in_d_ready = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259718.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready = mem_axi4_0_aw_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready = mem_axi4_0_w_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid = mem_axi4_0_b_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id = mem_axi4_0_b_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp = mem_axi4_0_b_bits_resp; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready = mem_axi4_0_ar_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid = mem_axi4_0_r_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id = mem_axi4_0_r_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data = mem_axi4_0_r_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp = mem_axi4_0_r_bits_resp; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last = mem_axi4_0_r_bits_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259745.4]
  assign subsystem_mbus_auto_fixer_in_a_valid = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_opcode = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_param = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_size = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_source = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_address = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_mask = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_data = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_corrupt = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_fixer_in_d_ready = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_clock = subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_clock; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259716.4]
  assign subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_reset = subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_reset; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259716.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready = subsystem_mbus_auto_fixer_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid = subsystem_mbus_auto_fixer_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode = subsystem_mbus_auto_fixer_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size = subsystem_mbus_auto_fixer_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source = subsystem_mbus_auto_fixer_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied = subsystem_mbus_auto_fixer_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data = subsystem_mbus_auto_fixer_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt = subsystem_mbus_auto_fixer_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259722.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_corrupt = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_corrupt = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259721.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_valid = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_param = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_size = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_source = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_address = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_mask = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_data = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_l2_ctl_in_d_ready = subsystem_cbus_auto_coupler_to_l2_ctrl_buffer_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259717.4]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259713.4]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259713.4]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259713.4]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259713.4]
  assign xbar_auto_int_in_0 = 1'h0; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259735.4]
  assign xbar_1_auto_int_in_0 = tile_auto_wfi_out_0; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259737.4]
  assign xbar_2_auto_int_in_0 = 1'h0; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259736.4]
  assign plic_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259605.4]
  assign plic_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259606.4]
  assign plic_auto_int_in_0 = int_bus_auto_int_out_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259709.4]
  assign plic_auto_in_a_valid = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_a_bits_param = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_a_bits_mask = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_a_bits_data = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign plic_auto_in_d_ready = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259728.4]
  assign clint_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259612.4]
  assign clint_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259613.4]
  assign clint_auto_in_a_valid = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_a_bits_param = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_a_bits_mask = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_a_bits_data = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_auto_in_d_ready = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259730.4]
  assign clint_io_rtcTick = _T_15 == 7'h63; // @[RTC.scala 24:29:chipyard.TestHarness.RocketConfig.fir@259781.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_valid = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_param = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_size = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_source = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_address = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_mask = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_data = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_d_ready = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259733.4]
  assign debug_1_io_debug_clock = debug_clock; // @[Periphery.scala 139:38:chipyard.TestHarness.RocketConfig.fir@259761.4]
  assign debug_1_io_debug_reset = debug_reset; // @[Periphery.scala 138:38:chipyard.TestHarness.RocketConfig.fir@259760.4]
  assign debug_1_io_ctrl_dmactiveAck = debug_dmactiveAck; // @[Periphery.scala 143:43:chipyard.TestHarness.RocketConfig.fir@259764.4]
  assign debug_1_io_dmi_dmi_req_valid = debug_clockeddmi_dmi_req_valid; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_1_io_dmi_dmi_req_bits_addr = debug_clockeddmi_dmi_req_bits_addr; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_1_io_dmi_dmi_req_bits_data = debug_clockeddmi_dmi_req_bits_data; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_1_io_dmi_dmi_req_bits_op = debug_clockeddmi_dmi_req_bits_op; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_1_io_dmi_dmi_resp_ready = debug_clockeddmi_dmi_resp_ready; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_1_io_dmi_dmiClock = debug_clockeddmi_dmiClock; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_1_io_dmi_dmiReset = debug_clockeddmi_dmiReset; // @[Periphery.scala 126:68:chipyard.TestHarness.RocketConfig.fir@259759.4]
  assign debug_1_io_hartIsInReset_0 = resetctrl_hartIsInReset_0; // @[Periphery.scala 109:40:chipyard.TestHarness.RocketConfig.fir@259758.4]
  assign tile_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259628.4]
  assign tile_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259629.4]
  assign tile_auto_intsink_in_sync_0 = debug_1_auto_dmOuter_intsource_out_sync_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259732.4]
  assign tile_auto_int_in_xing_in_2_sync_0 = intsource_2_auto_out_sync_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259743.4]
  assign tile_auto_int_in_xing_in_1_sync_0 = intsource_1_auto_out_sync_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259741.4]
  assign tile_auto_int_in_xing_in_0_sync_0 = intsource_auto_out_sync_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259739.4]
  assign tile_auto_int_in_xing_in_0_sync_1 = intsource_auto_out_sync_1; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259739.4]
  assign tile_auto_tl_master_xing_out_a_ready = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_b_valid = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_b_bits_param = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_b_bits_address = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_c_ready = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_valid = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_bits_opcode = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_bits_param = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_bits_size = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_bits_source = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_bits_sink = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_bits_denied = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_bits_data = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign tile_auto_tl_master_xing_out_d_bits_corrupt = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259738.4]
  assign intsource_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259634.4]
  assign intsource_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259635.4]
  assign intsource_auto_in_0 = clint_auto_int_out_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259729.4]
  assign intsource_auto_in_1 = clint_auto_int_out_1; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259729.4]
  assign intsource_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259640.4]
  assign intsource_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259641.4]
  assign intsource_1_auto_in_0 = plic_auto_int_out_0_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259726.4]
  assign intsource_2_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259646.4]
  assign intsource_2_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259647.4]
  assign intsource_2_auto_in_0 = plic_auto_int_out_1_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259727.4]
  assign bootrom_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259658.4]
  assign bootrom_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259659.4]
  assign bootrom_auto_in_a_valid = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign bootrom_auto_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign bootrom_auto_in_a_bits_param = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign bootrom_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign bootrom_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign bootrom_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign bootrom_auto_in_a_bits_mask = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign bootrom_auto_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign bootrom_auto_in_d_ready = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259746.4]
  assign m_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259665.4]
  assign m_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259666.4]
  assign m_auto_out_a_ready = subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign m_auto_out_d_valid = subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign m_auto_out_d_bits_data = subsystem_fbus_auto_coupler_from_port_named_serialadapter_serialadapter_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259747.4]
  assign m_io_serial_in_valid = Queue_1_io_deq_valid; // @[SerialAdapter.scala 230:26:chipyard.TestHarness.RocketConfig.fir@259799.4]
  assign m_io_serial_in_bits = Queue_1_io_deq_bits; // @[SerialAdapter.scala 230:26:chipyard.TestHarness.RocketConfig.fir@259798.4]
  assign m_io_serial_out_ready = Queue_io_enq_ready; // @[Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@259788.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_valid = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_opcode = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_param = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_size = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_source = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_address = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_mask = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_data = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_a_bits_corrupt = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_control_xing_in_d_ready = subsystem_pbus_auto_coupler_to_device_named_uart_0_control_xing_out_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259749.4]
  assign uartClockDomainWrapper_auto_uart_0_io_out_rxd = uart_0_0_rxd; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@259748.4]
  assign uartClockDomainWrapper_auto_clock_in_clock = subsystem_pbus_auto_fixedClockNode_out_clock; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259714.4]
  assign uartClockDomainWrapper_auto_clock_in_reset = subsystem_pbus_auto_fixedClockNode_out_reset; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259714.4]
  assign intsink_1_auto_in_sync_0 = uartClockDomainWrapper_auto_uart_0_int_xing_out_sync_0; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@259751.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259784.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259785.4]
  assign Queue_io_enq_valid = m_io_serial_out_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@259786.4]
  assign Queue_io_enq_bits = m_io_serial_out_bits; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@259787.4]
  assign Queue_io_deq_ready = serial_out_ready; // @[SerialAdapter.scala 229:19:chipyard.TestHarness.RocketConfig.fir@259791.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@259793.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@259794.4]
  assign Queue_1_io_enq_valid = serial_in_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@259795.4]
  assign Queue_1_io_enq_bits = serial_in_bits; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@259796.4]
  assign Queue_1_io_deq_ready = m_io_serial_in_ready; // @[SerialAdapter.scala 230:26:chipyard.TestHarness.RocketConfig.fir@259800.4]
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
  _T_15 = _RAND_0[6:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_15 <= 7'h0;
    end else if (int_rtc_tick) begin
      _T_15 <= 7'h0;
    end else begin
      _T_15 <= _T_18;
    end
  end
endmodule
