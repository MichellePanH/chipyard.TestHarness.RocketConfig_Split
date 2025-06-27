module ChipTop( // @[:chipyard.TestHarness.RocketConfig.fir@263331.2]
  input         debug_clock, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input         debug_reset, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  output        debug_clockeddmi_dmi_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input         debug_clockeddmi_dmi_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input  [6:0]  debug_clockeddmi_dmi_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input  [31:0] debug_clockeddmi_dmi_req_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input  [1:0]  debug_clockeddmi_dmi_req_bits_op, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input         debug_clockeddmi_dmi_resp_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  output        debug_clockeddmi_dmi_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  output [31:0] debug_clockeddmi_dmi_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  output [1:0]  debug_clockeddmi_dmi_resp_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input         debug_clockeddmi_dmiClock, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input         debug_clockeddmi_dmiReset, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  output        debug_ndreset, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  output        debug_dmactive, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input         debug_dmactiveAck, // @[:chipyard.TestHarness.RocketConfig.fir@263333.4]
  input         resetctrl_hartIsInReset_0, // @[:chipyard.TestHarness.RocketConfig.fir@263334.4]
  output        serial_in_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263336.4]
  input         serial_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263336.4]
  input  [31:0] serial_in_bits, // @[:chipyard.TestHarness.RocketConfig.fir@263336.4]
  input         serial_out_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263336.4]
  output        serial_out_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263336.4]
  output [31:0] serial_out_bits, // @[:chipyard.TestHarness.RocketConfig.fir@263336.4]
  input         mem_axi4_aw_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        mem_axi4_aw_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [3:0]  mem_axi4_aw_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [31:0] mem_axi4_aw_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [7:0]  mem_axi4_aw_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [2:0]  mem_axi4_aw_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [1:0]  mem_axi4_aw_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        mem_axi4_aw_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [3:0]  mem_axi4_aw_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [2:0]  mem_axi4_aw_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [3:0]  mem_axi4_aw_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input         mem_axi4_w_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        mem_axi4_w_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [63:0] mem_axi4_w_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [7:0]  mem_axi4_w_bits_strb, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        mem_axi4_w_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        mem_axi4_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input         mem_axi4_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input  [3:0]  mem_axi4_b_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input  [1:0]  mem_axi4_b_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input         mem_axi4_ar_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        mem_axi4_ar_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [3:0]  mem_axi4_ar_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [31:0] mem_axi4_ar_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [7:0]  mem_axi4_ar_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [2:0]  mem_axi4_ar_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [1:0]  mem_axi4_ar_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        mem_axi4_ar_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [3:0]  mem_axi4_ar_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [2:0]  mem_axi4_ar_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output [3:0]  mem_axi4_ar_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        mem_axi4_r_ready, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input         mem_axi4_r_valid, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input  [3:0]  mem_axi4_r_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input  [63:0] mem_axi4_r_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input  [1:0]  mem_axi4_r_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  input         mem_axi4_r_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@263337.4]
  output        uart_0_txd, // @[:chipyard.TestHarness.RocketConfig.fir@263338.4]
  input         uart_0_rxd, // @[:chipyard.TestHarness.RocketConfig.fir@263338.4]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@263339.4]
  input         reset // @[:chipyard.TestHarness.RocketConfig.fir@263340.4]
);
  wire  system_clock; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_reset; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_aw_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_aw_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [3:0] system_mem_axi4_0_aw_bits_id; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [31:0] system_mem_axi4_0_aw_bits_addr; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [7:0] system_mem_axi4_0_aw_bits_len; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [2:0] system_mem_axi4_0_aw_bits_size; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [1:0] system_mem_axi4_0_aw_bits_burst; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_aw_bits_lock; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [3:0] system_mem_axi4_0_aw_bits_cache; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [2:0] system_mem_axi4_0_aw_bits_prot; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [3:0] system_mem_axi4_0_aw_bits_qos; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_w_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_w_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [63:0] system_mem_axi4_0_w_bits_data; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [7:0] system_mem_axi4_0_w_bits_strb; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_w_bits_last; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_b_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_b_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [3:0] system_mem_axi4_0_b_bits_id; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [1:0] system_mem_axi4_0_b_bits_resp; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_ar_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_ar_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [3:0] system_mem_axi4_0_ar_bits_id; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [31:0] system_mem_axi4_0_ar_bits_addr; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [7:0] system_mem_axi4_0_ar_bits_len; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [2:0] system_mem_axi4_0_ar_bits_size; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [1:0] system_mem_axi4_0_ar_bits_burst; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_ar_bits_lock; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [3:0] system_mem_axi4_0_ar_bits_cache; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [2:0] system_mem_axi4_0_ar_bits_prot; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [3:0] system_mem_axi4_0_ar_bits_qos; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_r_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_r_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [3:0] system_mem_axi4_0_r_bits_id; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [63:0] system_mem_axi4_0_r_bits_data; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [1:0] system_mem_axi4_0_r_bits_resp; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_mem_axi4_0_r_bits_last; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_resetctrl_hartIsInReset_0; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_clock; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_reset; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_clockeddmi_dmi_req_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_clockeddmi_dmi_req_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [6:0] system_debug_clockeddmi_dmi_req_bits_addr; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [31:0] system_debug_clockeddmi_dmi_req_bits_data; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [1:0] system_debug_clockeddmi_dmi_req_bits_op; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_clockeddmi_dmi_resp_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_clockeddmi_dmi_resp_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [31:0] system_debug_clockeddmi_dmi_resp_bits_data; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [1:0] system_debug_clockeddmi_dmi_resp_bits_resp; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_clockeddmi_dmiClock; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_clockeddmi_dmiReset; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_ndreset; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_dmactive; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_debug_dmactiveAck; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_serial_in_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_serial_in_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [31:0] system_serial_in_bits; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_serial_out_ready; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_serial_out_valid; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire [31:0] system_serial_out_bits; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_uart_0_0_txd; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  system_uart_0_0_rxd; // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
  wire  iocell_debug_dmactiveAck_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263347.4]
  wire  iocell_debug_dmactiveAck_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263347.4]
  wire  iocell_debug_dmactiveAck_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263347.4]
  wire  iocell_debug_dmactive_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263356.4]
  wire  iocell_debug_dmactive_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263356.4]
  wire  iocell_debug_dmactive_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263356.4]
  wire  iocell_debug_ndreset_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263365.4]
  wire  iocell_debug_ndreset_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263365.4]
  wire  iocell_debug_ndreset_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263365.4]
  wire  iocell_debug_clockeddmi_dmiReset_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263374.4]
  wire  iocell_debug_clockeddmi_dmiReset_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263374.4]
  wire  iocell_debug_clockeddmi_dmiReset_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263374.4]
  wire  iocell_debug_clockeddmi_dmiClock_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263383.4]
  wire  iocell_debug_clockeddmi_dmiClock_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263383.4]
  wire  iocell_debug_clockeddmi_dmiClock_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263383.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_resp_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263395.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_resp_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263395.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_resp_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263395.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_resp_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263401.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_resp_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263401.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_resp_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263401.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263441.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263441.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263441.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263447.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263447.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263447.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263453.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263453.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263453.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263459.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263459.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263459.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_4_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263465.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_4_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263465.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_4_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263465.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_5_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263471.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_5_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263471.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_5_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263471.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_6_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263477.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_6_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263477.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_6_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263477.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_7_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263483.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_7_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263483.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_7_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263483.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_8_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263489.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_8_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263489.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_8_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263489.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_9_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263495.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_9_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263495.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_9_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263495.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_10_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263501.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_10_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263501.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_10_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263501.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_11_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263507.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_11_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263507.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_11_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263507.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_12_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263513.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_12_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263513.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_12_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263513.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_13_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263519.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_13_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263519.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_13_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263519.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_14_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263525.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_14_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263525.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_14_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263525.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_15_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263531.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_15_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263531.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_15_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263531.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_16_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263537.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_16_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263537.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_16_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263537.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_17_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263543.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_17_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263543.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_17_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263543.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_18_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263549.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_18_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263549.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_18_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263549.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_19_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263555.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_19_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263555.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_19_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263555.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_20_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263561.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_20_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263561.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_20_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263561.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_21_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263567.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_21_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263567.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_21_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263567.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_22_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263573.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_22_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263573.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_22_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263573.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_23_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263579.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_23_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263579.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_23_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263579.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_24_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263585.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_24_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263585.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_24_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263585.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_25_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263591.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_25_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263591.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_25_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263591.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_26_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263597.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_26_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263597.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_26_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263597.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_27_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263603.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_27_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263603.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_27_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263603.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_28_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263609.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_28_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263609.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_28_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263609.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_29_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263615.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_29_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263615.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_29_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263615.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_30_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263621.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_30_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263621.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_30_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263621.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_31_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263627.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_31_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263627.4]
  wire  iocell_debug_clockeddmi_dmi_resp_bits_data_31_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263627.4]
  wire  iocell_debug_clockeddmi_dmi_resp_valid_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263665.4]
  wire  iocell_debug_clockeddmi_dmi_resp_valid_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263665.4]
  wire  iocell_debug_clockeddmi_dmi_resp_valid_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263665.4]
  wire  iocell_debug_clockeddmi_dmi_resp_ready_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263674.4]
  wire  iocell_debug_clockeddmi_dmi_resp_ready_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263674.4]
  wire  iocell_debug_clockeddmi_dmi_resp_ready_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263674.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_op_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263685.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_op_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263685.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_op_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263685.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_op_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263691.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_op_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263691.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_op_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263691.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263731.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263731.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263731.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263737.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263737.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263737.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_2_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263743.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_2_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263743.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_2_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263743.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_3_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263749.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_3_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263749.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_3_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263749.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_4_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263755.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_4_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263755.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_4_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263755.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_5_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263761.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_5_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263761.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_5_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263761.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_6_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263767.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_6_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263767.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_6_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263767.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_7_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263773.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_7_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263773.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_7_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263773.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_8_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263779.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_8_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263779.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_8_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263779.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_9_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263785.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_9_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263785.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_9_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263785.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_10_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263791.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_10_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263791.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_10_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263791.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_11_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263797.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_11_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263797.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_11_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263797.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_12_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263803.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_12_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263803.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_12_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263803.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_13_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263809.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_13_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263809.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_13_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263809.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_14_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263815.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_14_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263815.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_14_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263815.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_15_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263821.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_15_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263821.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_15_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263821.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_16_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263827.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_16_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263827.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_16_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263827.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_17_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263833.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_17_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263833.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_17_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263833.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_18_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263839.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_18_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263839.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_18_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263839.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_19_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263845.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_19_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263845.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_19_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263845.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_20_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263851.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_20_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263851.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_20_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263851.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_21_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263857.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_21_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263857.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_21_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263857.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_22_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263863.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_22_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263863.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_22_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263863.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_23_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263869.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_23_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263869.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_23_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263869.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_24_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263875.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_24_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263875.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_24_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263875.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_25_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263881.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_25_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263881.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_25_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263881.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_26_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263887.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_26_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263887.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_26_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263887.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_27_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263893.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_27_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263893.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_27_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263893.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_28_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263899.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_28_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263899.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_28_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263899.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_29_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263905.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_29_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263905.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_29_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263905.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_30_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263911.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_30_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263911.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_30_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263911.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_31_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263917.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_31_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263917.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_data_31_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263917.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263962.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263962.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263962.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263968.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263968.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263968.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_2_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263974.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_2_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263974.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_2_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263974.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_3_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263980.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_3_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263980.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_3_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263980.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_4_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263986.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_4_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263986.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_4_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263986.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_5_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263992.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_5_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263992.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_5_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263992.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_6_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263998.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_6_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263998.4]
  wire  iocell_debug_clockeddmi_dmi_req_bits_addr_6_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263998.4]
  wire  iocell_debug_clockeddmi_dmi_req_valid_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264011.4]
  wire  iocell_debug_clockeddmi_dmi_req_valid_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264011.4]
  wire  iocell_debug_clockeddmi_dmi_req_valid_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264011.4]
  wire  iocell_debug_clockeddmi_dmi_req_ready_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264020.4]
  wire  iocell_debug_clockeddmi_dmi_req_ready_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264020.4]
  wire  iocell_debug_clockeddmi_dmi_req_ready_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264020.4]
  wire  iocell_debug_reset_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264029.4]
  wire  iocell_debug_reset_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264029.4]
  wire  iocell_debug_reset_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264029.4]
  wire  iocell_debug_clock_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264038.4]
  wire  iocell_debug_clock_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264038.4]
  wire  iocell_debug_clock_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264038.4]
  wire  iocell_resetctrl_hartIsInReset_0_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264048.4]
  wire  iocell_resetctrl_hartIsInReset_0_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264048.4]
  wire  iocell_resetctrl_hartIsInReset_0_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264048.4]
  wire  iocell_serial_out_bits_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264090.4]
  wire  iocell_serial_out_bits_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264090.4]
  wire  iocell_serial_out_bits_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264090.4]
  wire  iocell_serial_out_bits_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264096.4]
  wire  iocell_serial_out_bits_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264096.4]
  wire  iocell_serial_out_bits_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264096.4]
  wire  iocell_serial_out_bits_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264102.4]
  wire  iocell_serial_out_bits_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264102.4]
  wire  iocell_serial_out_bits_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264102.4]
  wire  iocell_serial_out_bits_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264108.4]
  wire  iocell_serial_out_bits_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264108.4]
  wire  iocell_serial_out_bits_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264108.4]
  wire  iocell_serial_out_bits_4_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264114.4]
  wire  iocell_serial_out_bits_4_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264114.4]
  wire  iocell_serial_out_bits_4_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264114.4]
  wire  iocell_serial_out_bits_5_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264120.4]
  wire  iocell_serial_out_bits_5_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264120.4]
  wire  iocell_serial_out_bits_5_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264120.4]
  wire  iocell_serial_out_bits_6_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264126.4]
  wire  iocell_serial_out_bits_6_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264126.4]
  wire  iocell_serial_out_bits_6_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264126.4]
  wire  iocell_serial_out_bits_7_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264132.4]
  wire  iocell_serial_out_bits_7_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264132.4]
  wire  iocell_serial_out_bits_7_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264132.4]
  wire  iocell_serial_out_bits_8_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264138.4]
  wire  iocell_serial_out_bits_8_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264138.4]
  wire  iocell_serial_out_bits_8_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264138.4]
  wire  iocell_serial_out_bits_9_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264144.4]
  wire  iocell_serial_out_bits_9_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264144.4]
  wire  iocell_serial_out_bits_9_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264144.4]
  wire  iocell_serial_out_bits_10_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264150.4]
  wire  iocell_serial_out_bits_10_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264150.4]
  wire  iocell_serial_out_bits_10_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264150.4]
  wire  iocell_serial_out_bits_11_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264156.4]
  wire  iocell_serial_out_bits_11_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264156.4]
  wire  iocell_serial_out_bits_11_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264156.4]
  wire  iocell_serial_out_bits_12_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264162.4]
  wire  iocell_serial_out_bits_12_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264162.4]
  wire  iocell_serial_out_bits_12_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264162.4]
  wire  iocell_serial_out_bits_13_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264168.4]
  wire  iocell_serial_out_bits_13_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264168.4]
  wire  iocell_serial_out_bits_13_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264168.4]
  wire  iocell_serial_out_bits_14_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264174.4]
  wire  iocell_serial_out_bits_14_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264174.4]
  wire  iocell_serial_out_bits_14_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264174.4]
  wire  iocell_serial_out_bits_15_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264180.4]
  wire  iocell_serial_out_bits_15_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264180.4]
  wire  iocell_serial_out_bits_15_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264180.4]
  wire  iocell_serial_out_bits_16_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264186.4]
  wire  iocell_serial_out_bits_16_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264186.4]
  wire  iocell_serial_out_bits_16_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264186.4]
  wire  iocell_serial_out_bits_17_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264192.4]
  wire  iocell_serial_out_bits_17_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264192.4]
  wire  iocell_serial_out_bits_17_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264192.4]
  wire  iocell_serial_out_bits_18_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264198.4]
  wire  iocell_serial_out_bits_18_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264198.4]
  wire  iocell_serial_out_bits_18_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264198.4]
  wire  iocell_serial_out_bits_19_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264204.4]
  wire  iocell_serial_out_bits_19_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264204.4]
  wire  iocell_serial_out_bits_19_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264204.4]
  wire  iocell_serial_out_bits_20_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264210.4]
  wire  iocell_serial_out_bits_20_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264210.4]
  wire  iocell_serial_out_bits_20_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264210.4]
  wire  iocell_serial_out_bits_21_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264216.4]
  wire  iocell_serial_out_bits_21_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264216.4]
  wire  iocell_serial_out_bits_21_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264216.4]
  wire  iocell_serial_out_bits_22_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264222.4]
  wire  iocell_serial_out_bits_22_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264222.4]
  wire  iocell_serial_out_bits_22_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264222.4]
  wire  iocell_serial_out_bits_23_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264228.4]
  wire  iocell_serial_out_bits_23_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264228.4]
  wire  iocell_serial_out_bits_23_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264228.4]
  wire  iocell_serial_out_bits_24_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264234.4]
  wire  iocell_serial_out_bits_24_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264234.4]
  wire  iocell_serial_out_bits_24_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264234.4]
  wire  iocell_serial_out_bits_25_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264240.4]
  wire  iocell_serial_out_bits_25_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264240.4]
  wire  iocell_serial_out_bits_25_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264240.4]
  wire  iocell_serial_out_bits_26_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264246.4]
  wire  iocell_serial_out_bits_26_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264246.4]
  wire  iocell_serial_out_bits_26_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264246.4]
  wire  iocell_serial_out_bits_27_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264252.4]
  wire  iocell_serial_out_bits_27_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264252.4]
  wire  iocell_serial_out_bits_27_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264252.4]
  wire  iocell_serial_out_bits_28_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264258.4]
  wire  iocell_serial_out_bits_28_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264258.4]
  wire  iocell_serial_out_bits_28_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264258.4]
  wire  iocell_serial_out_bits_29_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264264.4]
  wire  iocell_serial_out_bits_29_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264264.4]
  wire  iocell_serial_out_bits_29_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264264.4]
  wire  iocell_serial_out_bits_30_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264270.4]
  wire  iocell_serial_out_bits_30_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264270.4]
  wire  iocell_serial_out_bits_30_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264270.4]
  wire  iocell_serial_out_bits_31_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264276.4]
  wire  iocell_serial_out_bits_31_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264276.4]
  wire  iocell_serial_out_bits_31_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264276.4]
  wire  iocell_serial_out_valid_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264314.4]
  wire  iocell_serial_out_valid_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264314.4]
  wire  iocell_serial_out_valid_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264314.4]
  wire  iocell_serial_out_ready_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264323.4]
  wire  iocell_serial_out_ready_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264323.4]
  wire  iocell_serial_out_ready_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264323.4]
  wire  iocell_serial_in_bits_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264364.4]
  wire  iocell_serial_in_bits_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264364.4]
  wire  iocell_serial_in_bits_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264364.4]
  wire  iocell_serial_in_bits_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264370.4]
  wire  iocell_serial_in_bits_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264370.4]
  wire  iocell_serial_in_bits_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264370.4]
  wire  iocell_serial_in_bits_2_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264376.4]
  wire  iocell_serial_in_bits_2_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264376.4]
  wire  iocell_serial_in_bits_2_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264376.4]
  wire  iocell_serial_in_bits_3_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264382.4]
  wire  iocell_serial_in_bits_3_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264382.4]
  wire  iocell_serial_in_bits_3_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264382.4]
  wire  iocell_serial_in_bits_4_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264388.4]
  wire  iocell_serial_in_bits_4_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264388.4]
  wire  iocell_serial_in_bits_4_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264388.4]
  wire  iocell_serial_in_bits_5_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264394.4]
  wire  iocell_serial_in_bits_5_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264394.4]
  wire  iocell_serial_in_bits_5_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264394.4]
  wire  iocell_serial_in_bits_6_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264400.4]
  wire  iocell_serial_in_bits_6_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264400.4]
  wire  iocell_serial_in_bits_6_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264400.4]
  wire  iocell_serial_in_bits_7_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264406.4]
  wire  iocell_serial_in_bits_7_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264406.4]
  wire  iocell_serial_in_bits_7_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264406.4]
  wire  iocell_serial_in_bits_8_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264412.4]
  wire  iocell_serial_in_bits_8_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264412.4]
  wire  iocell_serial_in_bits_8_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264412.4]
  wire  iocell_serial_in_bits_9_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264418.4]
  wire  iocell_serial_in_bits_9_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264418.4]
  wire  iocell_serial_in_bits_9_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264418.4]
  wire  iocell_serial_in_bits_10_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264424.4]
  wire  iocell_serial_in_bits_10_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264424.4]
  wire  iocell_serial_in_bits_10_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264424.4]
  wire  iocell_serial_in_bits_11_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264430.4]
  wire  iocell_serial_in_bits_11_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264430.4]
  wire  iocell_serial_in_bits_11_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264430.4]
  wire  iocell_serial_in_bits_12_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264436.4]
  wire  iocell_serial_in_bits_12_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264436.4]
  wire  iocell_serial_in_bits_12_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264436.4]
  wire  iocell_serial_in_bits_13_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264442.4]
  wire  iocell_serial_in_bits_13_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264442.4]
  wire  iocell_serial_in_bits_13_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264442.4]
  wire  iocell_serial_in_bits_14_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264448.4]
  wire  iocell_serial_in_bits_14_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264448.4]
  wire  iocell_serial_in_bits_14_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264448.4]
  wire  iocell_serial_in_bits_15_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264454.4]
  wire  iocell_serial_in_bits_15_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264454.4]
  wire  iocell_serial_in_bits_15_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264454.4]
  wire  iocell_serial_in_bits_16_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264460.4]
  wire  iocell_serial_in_bits_16_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264460.4]
  wire  iocell_serial_in_bits_16_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264460.4]
  wire  iocell_serial_in_bits_17_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264466.4]
  wire  iocell_serial_in_bits_17_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264466.4]
  wire  iocell_serial_in_bits_17_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264466.4]
  wire  iocell_serial_in_bits_18_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264472.4]
  wire  iocell_serial_in_bits_18_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264472.4]
  wire  iocell_serial_in_bits_18_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264472.4]
  wire  iocell_serial_in_bits_19_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264478.4]
  wire  iocell_serial_in_bits_19_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264478.4]
  wire  iocell_serial_in_bits_19_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264478.4]
  wire  iocell_serial_in_bits_20_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264484.4]
  wire  iocell_serial_in_bits_20_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264484.4]
  wire  iocell_serial_in_bits_20_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264484.4]
  wire  iocell_serial_in_bits_21_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264490.4]
  wire  iocell_serial_in_bits_21_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264490.4]
  wire  iocell_serial_in_bits_21_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264490.4]
  wire  iocell_serial_in_bits_22_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264496.4]
  wire  iocell_serial_in_bits_22_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264496.4]
  wire  iocell_serial_in_bits_22_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264496.4]
  wire  iocell_serial_in_bits_23_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264502.4]
  wire  iocell_serial_in_bits_23_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264502.4]
  wire  iocell_serial_in_bits_23_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264502.4]
  wire  iocell_serial_in_bits_24_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264508.4]
  wire  iocell_serial_in_bits_24_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264508.4]
  wire  iocell_serial_in_bits_24_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264508.4]
  wire  iocell_serial_in_bits_25_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264514.4]
  wire  iocell_serial_in_bits_25_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264514.4]
  wire  iocell_serial_in_bits_25_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264514.4]
  wire  iocell_serial_in_bits_26_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264520.4]
  wire  iocell_serial_in_bits_26_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264520.4]
  wire  iocell_serial_in_bits_26_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264520.4]
  wire  iocell_serial_in_bits_27_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264526.4]
  wire  iocell_serial_in_bits_27_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264526.4]
  wire  iocell_serial_in_bits_27_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264526.4]
  wire  iocell_serial_in_bits_28_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264532.4]
  wire  iocell_serial_in_bits_28_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264532.4]
  wire  iocell_serial_in_bits_28_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264532.4]
  wire  iocell_serial_in_bits_29_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264538.4]
  wire  iocell_serial_in_bits_29_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264538.4]
  wire  iocell_serial_in_bits_29_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264538.4]
  wire  iocell_serial_in_bits_30_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264544.4]
  wire  iocell_serial_in_bits_30_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264544.4]
  wire  iocell_serial_in_bits_30_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264544.4]
  wire  iocell_serial_in_bits_31_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264550.4]
  wire  iocell_serial_in_bits_31_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264550.4]
  wire  iocell_serial_in_bits_31_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264550.4]
  wire  iocell_serial_in_valid_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264588.4]
  wire  iocell_serial_in_valid_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264588.4]
  wire  iocell_serial_in_valid_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264588.4]
  wire  iocell_serial_in_ready_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264597.4]
  wire  iocell_serial_in_ready_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264597.4]
  wire  iocell_serial_in_ready_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264597.4]
  wire  iocell_mem_axi4_r_bits_last_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264606.4]
  wire  iocell_mem_axi4_r_bits_last_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264606.4]
  wire  iocell_mem_axi4_r_bits_last_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264606.4]
  wire  iocell_mem_axi4_r_bits_resp_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264617.4]
  wire  iocell_mem_axi4_r_bits_resp_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264617.4]
  wire  iocell_mem_axi4_r_bits_resp_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264617.4]
  wire  iocell_mem_axi4_r_bits_resp_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264623.4]
  wire  iocell_mem_axi4_r_bits_resp_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264623.4]
  wire  iocell_mem_axi4_r_bits_resp_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264623.4]
  wire  iocell_mem_axi4_r_bits_data_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264695.4]
  wire  iocell_mem_axi4_r_bits_data_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264695.4]
  wire  iocell_mem_axi4_r_bits_data_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264695.4]
  wire  iocell_mem_axi4_r_bits_data_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264701.4]
  wire  iocell_mem_axi4_r_bits_data_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264701.4]
  wire  iocell_mem_axi4_r_bits_data_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264701.4]
  wire  iocell_mem_axi4_r_bits_data_2_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264707.4]
  wire  iocell_mem_axi4_r_bits_data_2_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264707.4]
  wire  iocell_mem_axi4_r_bits_data_2_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264707.4]
  wire  iocell_mem_axi4_r_bits_data_3_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264713.4]
  wire  iocell_mem_axi4_r_bits_data_3_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264713.4]
  wire  iocell_mem_axi4_r_bits_data_3_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264713.4]
  wire  iocell_mem_axi4_r_bits_data_4_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264719.4]
  wire  iocell_mem_axi4_r_bits_data_4_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264719.4]
  wire  iocell_mem_axi4_r_bits_data_4_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264719.4]
  wire  iocell_mem_axi4_r_bits_data_5_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264725.4]
  wire  iocell_mem_axi4_r_bits_data_5_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264725.4]
  wire  iocell_mem_axi4_r_bits_data_5_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264725.4]
  wire  iocell_mem_axi4_r_bits_data_6_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264731.4]
  wire  iocell_mem_axi4_r_bits_data_6_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264731.4]
  wire  iocell_mem_axi4_r_bits_data_6_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264731.4]
  wire  iocell_mem_axi4_r_bits_data_7_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264737.4]
  wire  iocell_mem_axi4_r_bits_data_7_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264737.4]
  wire  iocell_mem_axi4_r_bits_data_7_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264737.4]
  wire  iocell_mem_axi4_r_bits_data_8_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264743.4]
  wire  iocell_mem_axi4_r_bits_data_8_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264743.4]
  wire  iocell_mem_axi4_r_bits_data_8_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264743.4]
  wire  iocell_mem_axi4_r_bits_data_9_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264749.4]
  wire  iocell_mem_axi4_r_bits_data_9_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264749.4]
  wire  iocell_mem_axi4_r_bits_data_9_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264749.4]
  wire  iocell_mem_axi4_r_bits_data_10_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264755.4]
  wire  iocell_mem_axi4_r_bits_data_10_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264755.4]
  wire  iocell_mem_axi4_r_bits_data_10_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264755.4]
  wire  iocell_mem_axi4_r_bits_data_11_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264761.4]
  wire  iocell_mem_axi4_r_bits_data_11_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264761.4]
  wire  iocell_mem_axi4_r_bits_data_11_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264761.4]
  wire  iocell_mem_axi4_r_bits_data_12_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264767.4]
  wire  iocell_mem_axi4_r_bits_data_12_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264767.4]
  wire  iocell_mem_axi4_r_bits_data_12_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264767.4]
  wire  iocell_mem_axi4_r_bits_data_13_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264773.4]
  wire  iocell_mem_axi4_r_bits_data_13_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264773.4]
  wire  iocell_mem_axi4_r_bits_data_13_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264773.4]
  wire  iocell_mem_axi4_r_bits_data_14_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264779.4]
  wire  iocell_mem_axi4_r_bits_data_14_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264779.4]
  wire  iocell_mem_axi4_r_bits_data_14_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264779.4]
  wire  iocell_mem_axi4_r_bits_data_15_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264785.4]
  wire  iocell_mem_axi4_r_bits_data_15_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264785.4]
  wire  iocell_mem_axi4_r_bits_data_15_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264785.4]
  wire  iocell_mem_axi4_r_bits_data_16_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264791.4]
  wire  iocell_mem_axi4_r_bits_data_16_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264791.4]
  wire  iocell_mem_axi4_r_bits_data_16_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264791.4]
  wire  iocell_mem_axi4_r_bits_data_17_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264797.4]
  wire  iocell_mem_axi4_r_bits_data_17_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264797.4]
  wire  iocell_mem_axi4_r_bits_data_17_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264797.4]
  wire  iocell_mem_axi4_r_bits_data_18_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264803.4]
  wire  iocell_mem_axi4_r_bits_data_18_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264803.4]
  wire  iocell_mem_axi4_r_bits_data_18_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264803.4]
  wire  iocell_mem_axi4_r_bits_data_19_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264809.4]
  wire  iocell_mem_axi4_r_bits_data_19_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264809.4]
  wire  iocell_mem_axi4_r_bits_data_19_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264809.4]
  wire  iocell_mem_axi4_r_bits_data_20_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264815.4]
  wire  iocell_mem_axi4_r_bits_data_20_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264815.4]
  wire  iocell_mem_axi4_r_bits_data_20_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264815.4]
  wire  iocell_mem_axi4_r_bits_data_21_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264821.4]
  wire  iocell_mem_axi4_r_bits_data_21_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264821.4]
  wire  iocell_mem_axi4_r_bits_data_21_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264821.4]
  wire  iocell_mem_axi4_r_bits_data_22_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264827.4]
  wire  iocell_mem_axi4_r_bits_data_22_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264827.4]
  wire  iocell_mem_axi4_r_bits_data_22_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264827.4]
  wire  iocell_mem_axi4_r_bits_data_23_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264833.4]
  wire  iocell_mem_axi4_r_bits_data_23_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264833.4]
  wire  iocell_mem_axi4_r_bits_data_23_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264833.4]
  wire  iocell_mem_axi4_r_bits_data_24_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264839.4]
  wire  iocell_mem_axi4_r_bits_data_24_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264839.4]
  wire  iocell_mem_axi4_r_bits_data_24_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264839.4]
  wire  iocell_mem_axi4_r_bits_data_25_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264845.4]
  wire  iocell_mem_axi4_r_bits_data_25_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264845.4]
  wire  iocell_mem_axi4_r_bits_data_25_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264845.4]
  wire  iocell_mem_axi4_r_bits_data_26_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264851.4]
  wire  iocell_mem_axi4_r_bits_data_26_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264851.4]
  wire  iocell_mem_axi4_r_bits_data_26_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264851.4]
  wire  iocell_mem_axi4_r_bits_data_27_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264857.4]
  wire  iocell_mem_axi4_r_bits_data_27_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264857.4]
  wire  iocell_mem_axi4_r_bits_data_27_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264857.4]
  wire  iocell_mem_axi4_r_bits_data_28_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264863.4]
  wire  iocell_mem_axi4_r_bits_data_28_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264863.4]
  wire  iocell_mem_axi4_r_bits_data_28_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264863.4]
  wire  iocell_mem_axi4_r_bits_data_29_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264869.4]
  wire  iocell_mem_axi4_r_bits_data_29_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264869.4]
  wire  iocell_mem_axi4_r_bits_data_29_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264869.4]
  wire  iocell_mem_axi4_r_bits_data_30_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264875.4]
  wire  iocell_mem_axi4_r_bits_data_30_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264875.4]
  wire  iocell_mem_axi4_r_bits_data_30_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264875.4]
  wire  iocell_mem_axi4_r_bits_data_31_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264881.4]
  wire  iocell_mem_axi4_r_bits_data_31_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264881.4]
  wire  iocell_mem_axi4_r_bits_data_31_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264881.4]
  wire  iocell_mem_axi4_r_bits_data_32_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264887.4]
  wire  iocell_mem_axi4_r_bits_data_32_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264887.4]
  wire  iocell_mem_axi4_r_bits_data_32_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264887.4]
  wire  iocell_mem_axi4_r_bits_data_33_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264893.4]
  wire  iocell_mem_axi4_r_bits_data_33_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264893.4]
  wire  iocell_mem_axi4_r_bits_data_33_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264893.4]
  wire  iocell_mem_axi4_r_bits_data_34_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264899.4]
  wire  iocell_mem_axi4_r_bits_data_34_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264899.4]
  wire  iocell_mem_axi4_r_bits_data_34_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264899.4]
  wire  iocell_mem_axi4_r_bits_data_35_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264905.4]
  wire  iocell_mem_axi4_r_bits_data_35_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264905.4]
  wire  iocell_mem_axi4_r_bits_data_35_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264905.4]
  wire  iocell_mem_axi4_r_bits_data_36_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264911.4]
  wire  iocell_mem_axi4_r_bits_data_36_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264911.4]
  wire  iocell_mem_axi4_r_bits_data_36_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264911.4]
  wire  iocell_mem_axi4_r_bits_data_37_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264917.4]
  wire  iocell_mem_axi4_r_bits_data_37_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264917.4]
  wire  iocell_mem_axi4_r_bits_data_37_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264917.4]
  wire  iocell_mem_axi4_r_bits_data_38_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264923.4]
  wire  iocell_mem_axi4_r_bits_data_38_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264923.4]
  wire  iocell_mem_axi4_r_bits_data_38_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264923.4]
  wire  iocell_mem_axi4_r_bits_data_39_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264929.4]
  wire  iocell_mem_axi4_r_bits_data_39_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264929.4]
  wire  iocell_mem_axi4_r_bits_data_39_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264929.4]
  wire  iocell_mem_axi4_r_bits_data_40_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264935.4]
  wire  iocell_mem_axi4_r_bits_data_40_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264935.4]
  wire  iocell_mem_axi4_r_bits_data_40_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264935.4]
  wire  iocell_mem_axi4_r_bits_data_41_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264941.4]
  wire  iocell_mem_axi4_r_bits_data_41_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264941.4]
  wire  iocell_mem_axi4_r_bits_data_41_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264941.4]
  wire  iocell_mem_axi4_r_bits_data_42_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264947.4]
  wire  iocell_mem_axi4_r_bits_data_42_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264947.4]
  wire  iocell_mem_axi4_r_bits_data_42_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264947.4]
  wire  iocell_mem_axi4_r_bits_data_43_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264953.4]
  wire  iocell_mem_axi4_r_bits_data_43_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264953.4]
  wire  iocell_mem_axi4_r_bits_data_43_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264953.4]
  wire  iocell_mem_axi4_r_bits_data_44_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264959.4]
  wire  iocell_mem_axi4_r_bits_data_44_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264959.4]
  wire  iocell_mem_axi4_r_bits_data_44_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264959.4]
  wire  iocell_mem_axi4_r_bits_data_45_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264965.4]
  wire  iocell_mem_axi4_r_bits_data_45_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264965.4]
  wire  iocell_mem_axi4_r_bits_data_45_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264965.4]
  wire  iocell_mem_axi4_r_bits_data_46_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264971.4]
  wire  iocell_mem_axi4_r_bits_data_46_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264971.4]
  wire  iocell_mem_axi4_r_bits_data_46_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264971.4]
  wire  iocell_mem_axi4_r_bits_data_47_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264977.4]
  wire  iocell_mem_axi4_r_bits_data_47_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264977.4]
  wire  iocell_mem_axi4_r_bits_data_47_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264977.4]
  wire  iocell_mem_axi4_r_bits_data_48_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264983.4]
  wire  iocell_mem_axi4_r_bits_data_48_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264983.4]
  wire  iocell_mem_axi4_r_bits_data_48_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264983.4]
  wire  iocell_mem_axi4_r_bits_data_49_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264989.4]
  wire  iocell_mem_axi4_r_bits_data_49_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264989.4]
  wire  iocell_mem_axi4_r_bits_data_49_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264989.4]
  wire  iocell_mem_axi4_r_bits_data_50_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264995.4]
  wire  iocell_mem_axi4_r_bits_data_50_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264995.4]
  wire  iocell_mem_axi4_r_bits_data_50_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264995.4]
  wire  iocell_mem_axi4_r_bits_data_51_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265001.4]
  wire  iocell_mem_axi4_r_bits_data_51_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265001.4]
  wire  iocell_mem_axi4_r_bits_data_51_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265001.4]
  wire  iocell_mem_axi4_r_bits_data_52_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265007.4]
  wire  iocell_mem_axi4_r_bits_data_52_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265007.4]
  wire  iocell_mem_axi4_r_bits_data_52_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265007.4]
  wire  iocell_mem_axi4_r_bits_data_53_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265013.4]
  wire  iocell_mem_axi4_r_bits_data_53_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265013.4]
  wire  iocell_mem_axi4_r_bits_data_53_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265013.4]
  wire  iocell_mem_axi4_r_bits_data_54_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265019.4]
  wire  iocell_mem_axi4_r_bits_data_54_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265019.4]
  wire  iocell_mem_axi4_r_bits_data_54_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265019.4]
  wire  iocell_mem_axi4_r_bits_data_55_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265025.4]
  wire  iocell_mem_axi4_r_bits_data_55_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265025.4]
  wire  iocell_mem_axi4_r_bits_data_55_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265025.4]
  wire  iocell_mem_axi4_r_bits_data_56_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265031.4]
  wire  iocell_mem_axi4_r_bits_data_56_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265031.4]
  wire  iocell_mem_axi4_r_bits_data_56_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265031.4]
  wire  iocell_mem_axi4_r_bits_data_57_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265037.4]
  wire  iocell_mem_axi4_r_bits_data_57_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265037.4]
  wire  iocell_mem_axi4_r_bits_data_57_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265037.4]
  wire  iocell_mem_axi4_r_bits_data_58_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265043.4]
  wire  iocell_mem_axi4_r_bits_data_58_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265043.4]
  wire  iocell_mem_axi4_r_bits_data_58_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265043.4]
  wire  iocell_mem_axi4_r_bits_data_59_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265049.4]
  wire  iocell_mem_axi4_r_bits_data_59_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265049.4]
  wire  iocell_mem_axi4_r_bits_data_59_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265049.4]
  wire  iocell_mem_axi4_r_bits_data_60_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265055.4]
  wire  iocell_mem_axi4_r_bits_data_60_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265055.4]
  wire  iocell_mem_axi4_r_bits_data_60_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265055.4]
  wire  iocell_mem_axi4_r_bits_data_61_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265061.4]
  wire  iocell_mem_axi4_r_bits_data_61_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265061.4]
  wire  iocell_mem_axi4_r_bits_data_61_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265061.4]
  wire  iocell_mem_axi4_r_bits_data_62_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265067.4]
  wire  iocell_mem_axi4_r_bits_data_62_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265067.4]
  wire  iocell_mem_axi4_r_bits_data_62_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265067.4]
  wire  iocell_mem_axi4_r_bits_data_63_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265073.4]
  wire  iocell_mem_axi4_r_bits_data_63_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265073.4]
  wire  iocell_mem_axi4_r_bits_data_63_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265073.4]
  wire  iocell_mem_axi4_r_bits_id_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265147.4]
  wire  iocell_mem_axi4_r_bits_id_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265147.4]
  wire  iocell_mem_axi4_r_bits_id_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265147.4]
  wire  iocell_mem_axi4_r_bits_id_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265153.4]
  wire  iocell_mem_axi4_r_bits_id_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265153.4]
  wire  iocell_mem_axi4_r_bits_id_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265153.4]
  wire  iocell_mem_axi4_r_bits_id_2_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265159.4]
  wire  iocell_mem_axi4_r_bits_id_2_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265159.4]
  wire  iocell_mem_axi4_r_bits_id_2_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265159.4]
  wire  iocell_mem_axi4_r_bits_id_3_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265165.4]
  wire  iocell_mem_axi4_r_bits_id_3_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265165.4]
  wire  iocell_mem_axi4_r_bits_id_3_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265165.4]
  wire  iocell_mem_axi4_r_valid_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265175.4]
  wire  iocell_mem_axi4_r_valid_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265175.4]
  wire  iocell_mem_axi4_r_valid_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265175.4]
  wire  iocell_mem_axi4_r_ready_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265184.4]
  wire  iocell_mem_axi4_r_ready_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265184.4]
  wire  iocell_mem_axi4_r_ready_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265184.4]
  wire  iocell_mem_axi4_ar_bits_qos_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265197.4]
  wire  iocell_mem_axi4_ar_bits_qos_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265197.4]
  wire  iocell_mem_axi4_ar_bits_qos_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265197.4]
  wire  iocell_mem_axi4_ar_bits_qos_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265203.4]
  wire  iocell_mem_axi4_ar_bits_qos_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265203.4]
  wire  iocell_mem_axi4_ar_bits_qos_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265203.4]
  wire  iocell_mem_axi4_ar_bits_qos_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265209.4]
  wire  iocell_mem_axi4_ar_bits_qos_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265209.4]
  wire  iocell_mem_axi4_ar_bits_qos_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265209.4]
  wire  iocell_mem_axi4_ar_bits_qos_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265215.4]
  wire  iocell_mem_axi4_ar_bits_qos_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265215.4]
  wire  iocell_mem_axi4_ar_bits_qos_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265215.4]
  wire  iocell_mem_axi4_ar_bits_prot_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265228.4]
  wire  iocell_mem_axi4_ar_bits_prot_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265228.4]
  wire  iocell_mem_axi4_ar_bits_prot_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265228.4]
  wire  iocell_mem_axi4_ar_bits_prot_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265234.4]
  wire  iocell_mem_axi4_ar_bits_prot_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265234.4]
  wire  iocell_mem_axi4_ar_bits_prot_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265234.4]
  wire  iocell_mem_axi4_ar_bits_prot_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265240.4]
  wire  iocell_mem_axi4_ar_bits_prot_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265240.4]
  wire  iocell_mem_axi4_ar_bits_prot_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265240.4]
  wire  iocell_mem_axi4_ar_bits_cache_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265253.4]
  wire  iocell_mem_axi4_ar_bits_cache_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265253.4]
  wire  iocell_mem_axi4_ar_bits_cache_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265253.4]
  wire  iocell_mem_axi4_ar_bits_cache_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265259.4]
  wire  iocell_mem_axi4_ar_bits_cache_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265259.4]
  wire  iocell_mem_axi4_ar_bits_cache_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265259.4]
  wire  iocell_mem_axi4_ar_bits_cache_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265265.4]
  wire  iocell_mem_axi4_ar_bits_cache_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265265.4]
  wire  iocell_mem_axi4_ar_bits_cache_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265265.4]
  wire  iocell_mem_axi4_ar_bits_cache_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265271.4]
  wire  iocell_mem_axi4_ar_bits_cache_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265271.4]
  wire  iocell_mem_axi4_ar_bits_cache_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265271.4]
  wire  iocell_mem_axi4_ar_bits_lock_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265282.4]
  wire  iocell_mem_axi4_ar_bits_lock_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265282.4]
  wire  iocell_mem_axi4_ar_bits_lock_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265282.4]
  wire  iocell_mem_axi4_ar_bits_burst_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265291.4]
  wire  iocell_mem_axi4_ar_bits_burst_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265291.4]
  wire  iocell_mem_axi4_ar_bits_burst_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265291.4]
  wire  iocell_mem_axi4_ar_bits_burst_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265297.4]
  wire  iocell_mem_axi4_ar_bits_burst_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265297.4]
  wire  iocell_mem_axi4_ar_bits_burst_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265297.4]
  wire  iocell_mem_axi4_ar_bits_size_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265308.4]
  wire  iocell_mem_axi4_ar_bits_size_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265308.4]
  wire  iocell_mem_axi4_ar_bits_size_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265308.4]
  wire  iocell_mem_axi4_ar_bits_size_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265314.4]
  wire  iocell_mem_axi4_ar_bits_size_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265314.4]
  wire  iocell_mem_axi4_ar_bits_size_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265314.4]
  wire  iocell_mem_axi4_ar_bits_size_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265320.4]
  wire  iocell_mem_axi4_ar_bits_size_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265320.4]
  wire  iocell_mem_axi4_ar_bits_size_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265320.4]
  wire  iocell_mem_axi4_ar_bits_len_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265337.4]
  wire  iocell_mem_axi4_ar_bits_len_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265337.4]
  wire  iocell_mem_axi4_ar_bits_len_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265337.4]
  wire  iocell_mem_axi4_ar_bits_len_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265343.4]
  wire  iocell_mem_axi4_ar_bits_len_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265343.4]
  wire  iocell_mem_axi4_ar_bits_len_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265343.4]
  wire  iocell_mem_axi4_ar_bits_len_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265349.4]
  wire  iocell_mem_axi4_ar_bits_len_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265349.4]
  wire  iocell_mem_axi4_ar_bits_len_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265349.4]
  wire  iocell_mem_axi4_ar_bits_len_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265355.4]
  wire  iocell_mem_axi4_ar_bits_len_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265355.4]
  wire  iocell_mem_axi4_ar_bits_len_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265355.4]
  wire  iocell_mem_axi4_ar_bits_len_4_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265361.4]
  wire  iocell_mem_axi4_ar_bits_len_4_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265361.4]
  wire  iocell_mem_axi4_ar_bits_len_4_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265361.4]
  wire  iocell_mem_axi4_ar_bits_len_5_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265367.4]
  wire  iocell_mem_axi4_ar_bits_len_5_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265367.4]
  wire  iocell_mem_axi4_ar_bits_len_5_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265367.4]
  wire  iocell_mem_axi4_ar_bits_len_6_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265373.4]
  wire  iocell_mem_axi4_ar_bits_len_6_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265373.4]
  wire  iocell_mem_axi4_ar_bits_len_6_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265373.4]
  wire  iocell_mem_axi4_ar_bits_len_7_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265379.4]
  wire  iocell_mem_axi4_ar_bits_len_7_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265379.4]
  wire  iocell_mem_axi4_ar_bits_len_7_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265379.4]
  wire  iocell_mem_axi4_ar_bits_addr_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265425.4]
  wire  iocell_mem_axi4_ar_bits_addr_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265425.4]
  wire  iocell_mem_axi4_ar_bits_addr_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265425.4]
  wire  iocell_mem_axi4_ar_bits_addr_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265431.4]
  wire  iocell_mem_axi4_ar_bits_addr_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265431.4]
  wire  iocell_mem_axi4_ar_bits_addr_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265431.4]
  wire  iocell_mem_axi4_ar_bits_addr_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265437.4]
  wire  iocell_mem_axi4_ar_bits_addr_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265437.4]
  wire  iocell_mem_axi4_ar_bits_addr_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265437.4]
  wire  iocell_mem_axi4_ar_bits_addr_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265443.4]
  wire  iocell_mem_axi4_ar_bits_addr_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265443.4]
  wire  iocell_mem_axi4_ar_bits_addr_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265443.4]
  wire  iocell_mem_axi4_ar_bits_addr_4_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265449.4]
  wire  iocell_mem_axi4_ar_bits_addr_4_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265449.4]
  wire  iocell_mem_axi4_ar_bits_addr_4_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265449.4]
  wire  iocell_mem_axi4_ar_bits_addr_5_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265455.4]
  wire  iocell_mem_axi4_ar_bits_addr_5_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265455.4]
  wire  iocell_mem_axi4_ar_bits_addr_5_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265455.4]
  wire  iocell_mem_axi4_ar_bits_addr_6_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265461.4]
  wire  iocell_mem_axi4_ar_bits_addr_6_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265461.4]
  wire  iocell_mem_axi4_ar_bits_addr_6_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265461.4]
  wire  iocell_mem_axi4_ar_bits_addr_7_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265467.4]
  wire  iocell_mem_axi4_ar_bits_addr_7_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265467.4]
  wire  iocell_mem_axi4_ar_bits_addr_7_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265467.4]
  wire  iocell_mem_axi4_ar_bits_addr_8_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265473.4]
  wire  iocell_mem_axi4_ar_bits_addr_8_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265473.4]
  wire  iocell_mem_axi4_ar_bits_addr_8_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265473.4]
  wire  iocell_mem_axi4_ar_bits_addr_9_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265479.4]
  wire  iocell_mem_axi4_ar_bits_addr_9_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265479.4]
  wire  iocell_mem_axi4_ar_bits_addr_9_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265479.4]
  wire  iocell_mem_axi4_ar_bits_addr_10_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265485.4]
  wire  iocell_mem_axi4_ar_bits_addr_10_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265485.4]
  wire  iocell_mem_axi4_ar_bits_addr_10_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265485.4]
  wire  iocell_mem_axi4_ar_bits_addr_11_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265491.4]
  wire  iocell_mem_axi4_ar_bits_addr_11_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265491.4]
  wire  iocell_mem_axi4_ar_bits_addr_11_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265491.4]
  wire  iocell_mem_axi4_ar_bits_addr_12_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265497.4]
  wire  iocell_mem_axi4_ar_bits_addr_12_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265497.4]
  wire  iocell_mem_axi4_ar_bits_addr_12_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265497.4]
  wire  iocell_mem_axi4_ar_bits_addr_13_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265503.4]
  wire  iocell_mem_axi4_ar_bits_addr_13_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265503.4]
  wire  iocell_mem_axi4_ar_bits_addr_13_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265503.4]
  wire  iocell_mem_axi4_ar_bits_addr_14_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265509.4]
  wire  iocell_mem_axi4_ar_bits_addr_14_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265509.4]
  wire  iocell_mem_axi4_ar_bits_addr_14_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265509.4]
  wire  iocell_mem_axi4_ar_bits_addr_15_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265515.4]
  wire  iocell_mem_axi4_ar_bits_addr_15_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265515.4]
  wire  iocell_mem_axi4_ar_bits_addr_15_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265515.4]
  wire  iocell_mem_axi4_ar_bits_addr_16_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265521.4]
  wire  iocell_mem_axi4_ar_bits_addr_16_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265521.4]
  wire  iocell_mem_axi4_ar_bits_addr_16_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265521.4]
  wire  iocell_mem_axi4_ar_bits_addr_17_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265527.4]
  wire  iocell_mem_axi4_ar_bits_addr_17_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265527.4]
  wire  iocell_mem_axi4_ar_bits_addr_17_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265527.4]
  wire  iocell_mem_axi4_ar_bits_addr_18_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265533.4]
  wire  iocell_mem_axi4_ar_bits_addr_18_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265533.4]
  wire  iocell_mem_axi4_ar_bits_addr_18_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265533.4]
  wire  iocell_mem_axi4_ar_bits_addr_19_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265539.4]
  wire  iocell_mem_axi4_ar_bits_addr_19_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265539.4]
  wire  iocell_mem_axi4_ar_bits_addr_19_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265539.4]
  wire  iocell_mem_axi4_ar_bits_addr_20_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265545.4]
  wire  iocell_mem_axi4_ar_bits_addr_20_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265545.4]
  wire  iocell_mem_axi4_ar_bits_addr_20_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265545.4]
  wire  iocell_mem_axi4_ar_bits_addr_21_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265551.4]
  wire  iocell_mem_axi4_ar_bits_addr_21_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265551.4]
  wire  iocell_mem_axi4_ar_bits_addr_21_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265551.4]
  wire  iocell_mem_axi4_ar_bits_addr_22_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265557.4]
  wire  iocell_mem_axi4_ar_bits_addr_22_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265557.4]
  wire  iocell_mem_axi4_ar_bits_addr_22_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265557.4]
  wire  iocell_mem_axi4_ar_bits_addr_23_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265563.4]
  wire  iocell_mem_axi4_ar_bits_addr_23_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265563.4]
  wire  iocell_mem_axi4_ar_bits_addr_23_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265563.4]
  wire  iocell_mem_axi4_ar_bits_addr_24_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265569.4]
  wire  iocell_mem_axi4_ar_bits_addr_24_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265569.4]
  wire  iocell_mem_axi4_ar_bits_addr_24_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265569.4]
  wire  iocell_mem_axi4_ar_bits_addr_25_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265575.4]
  wire  iocell_mem_axi4_ar_bits_addr_25_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265575.4]
  wire  iocell_mem_axi4_ar_bits_addr_25_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265575.4]
  wire  iocell_mem_axi4_ar_bits_addr_26_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265581.4]
  wire  iocell_mem_axi4_ar_bits_addr_26_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265581.4]
  wire  iocell_mem_axi4_ar_bits_addr_26_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265581.4]
  wire  iocell_mem_axi4_ar_bits_addr_27_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265587.4]
  wire  iocell_mem_axi4_ar_bits_addr_27_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265587.4]
  wire  iocell_mem_axi4_ar_bits_addr_27_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265587.4]
  wire  iocell_mem_axi4_ar_bits_addr_28_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265593.4]
  wire  iocell_mem_axi4_ar_bits_addr_28_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265593.4]
  wire  iocell_mem_axi4_ar_bits_addr_28_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265593.4]
  wire  iocell_mem_axi4_ar_bits_addr_29_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265599.4]
  wire  iocell_mem_axi4_ar_bits_addr_29_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265599.4]
  wire  iocell_mem_axi4_ar_bits_addr_29_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265599.4]
  wire  iocell_mem_axi4_ar_bits_addr_30_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265605.4]
  wire  iocell_mem_axi4_ar_bits_addr_30_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265605.4]
  wire  iocell_mem_axi4_ar_bits_addr_30_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265605.4]
  wire  iocell_mem_axi4_ar_bits_addr_31_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265611.4]
  wire  iocell_mem_axi4_ar_bits_addr_31_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265611.4]
  wire  iocell_mem_axi4_ar_bits_addr_31_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265611.4]
  wire  iocell_mem_axi4_ar_bits_id_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265653.4]
  wire  iocell_mem_axi4_ar_bits_id_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265653.4]
  wire  iocell_mem_axi4_ar_bits_id_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265653.4]
  wire  iocell_mem_axi4_ar_bits_id_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265659.4]
  wire  iocell_mem_axi4_ar_bits_id_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265659.4]
  wire  iocell_mem_axi4_ar_bits_id_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265659.4]
  wire  iocell_mem_axi4_ar_bits_id_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265665.4]
  wire  iocell_mem_axi4_ar_bits_id_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265665.4]
  wire  iocell_mem_axi4_ar_bits_id_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265665.4]
  wire  iocell_mem_axi4_ar_bits_id_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265671.4]
  wire  iocell_mem_axi4_ar_bits_id_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265671.4]
  wire  iocell_mem_axi4_ar_bits_id_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265671.4]
  wire  iocell_mem_axi4_ar_valid_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265681.4]
  wire  iocell_mem_axi4_ar_valid_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265681.4]
  wire  iocell_mem_axi4_ar_valid_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265681.4]
  wire  iocell_mem_axi4_ar_ready_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265690.4]
  wire  iocell_mem_axi4_ar_ready_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265690.4]
  wire  iocell_mem_axi4_ar_ready_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265690.4]
  wire  iocell_mem_axi4_b_bits_resp_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265701.4]
  wire  iocell_mem_axi4_b_bits_resp_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265701.4]
  wire  iocell_mem_axi4_b_bits_resp_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265701.4]
  wire  iocell_mem_axi4_b_bits_resp_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265707.4]
  wire  iocell_mem_axi4_b_bits_resp_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265707.4]
  wire  iocell_mem_axi4_b_bits_resp_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265707.4]
  wire  iocell_mem_axi4_b_bits_id_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265719.4]
  wire  iocell_mem_axi4_b_bits_id_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265719.4]
  wire  iocell_mem_axi4_b_bits_id_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265719.4]
  wire  iocell_mem_axi4_b_bits_id_1_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265725.4]
  wire  iocell_mem_axi4_b_bits_id_1_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265725.4]
  wire  iocell_mem_axi4_b_bits_id_1_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265725.4]
  wire  iocell_mem_axi4_b_bits_id_2_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265731.4]
  wire  iocell_mem_axi4_b_bits_id_2_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265731.4]
  wire  iocell_mem_axi4_b_bits_id_2_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265731.4]
  wire  iocell_mem_axi4_b_bits_id_3_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265737.4]
  wire  iocell_mem_axi4_b_bits_id_3_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265737.4]
  wire  iocell_mem_axi4_b_bits_id_3_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265737.4]
  wire  iocell_mem_axi4_b_valid_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265747.4]
  wire  iocell_mem_axi4_b_valid_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265747.4]
  wire  iocell_mem_axi4_b_valid_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265747.4]
  wire  iocell_mem_axi4_b_ready_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265756.4]
  wire  iocell_mem_axi4_b_ready_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265756.4]
  wire  iocell_mem_axi4_b_ready_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265756.4]
  wire  iocell_mem_axi4_w_bits_last_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265765.4]
  wire  iocell_mem_axi4_w_bits_last_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265765.4]
  wire  iocell_mem_axi4_w_bits_last_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265765.4]
  wire  iocell_mem_axi4_w_bits_strb_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265782.4]
  wire  iocell_mem_axi4_w_bits_strb_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265782.4]
  wire  iocell_mem_axi4_w_bits_strb_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265782.4]
  wire  iocell_mem_axi4_w_bits_strb_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265788.4]
  wire  iocell_mem_axi4_w_bits_strb_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265788.4]
  wire  iocell_mem_axi4_w_bits_strb_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265788.4]
  wire  iocell_mem_axi4_w_bits_strb_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265794.4]
  wire  iocell_mem_axi4_w_bits_strb_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265794.4]
  wire  iocell_mem_axi4_w_bits_strb_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265794.4]
  wire  iocell_mem_axi4_w_bits_strb_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265800.4]
  wire  iocell_mem_axi4_w_bits_strb_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265800.4]
  wire  iocell_mem_axi4_w_bits_strb_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265800.4]
  wire  iocell_mem_axi4_w_bits_strb_4_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265806.4]
  wire  iocell_mem_axi4_w_bits_strb_4_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265806.4]
  wire  iocell_mem_axi4_w_bits_strb_4_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265806.4]
  wire  iocell_mem_axi4_w_bits_strb_5_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265812.4]
  wire  iocell_mem_axi4_w_bits_strb_5_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265812.4]
  wire  iocell_mem_axi4_w_bits_strb_5_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265812.4]
  wire  iocell_mem_axi4_w_bits_strb_6_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265818.4]
  wire  iocell_mem_axi4_w_bits_strb_6_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265818.4]
  wire  iocell_mem_axi4_w_bits_strb_6_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265818.4]
  wire  iocell_mem_axi4_w_bits_strb_7_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265824.4]
  wire  iocell_mem_axi4_w_bits_strb_7_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265824.4]
  wire  iocell_mem_axi4_w_bits_strb_7_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265824.4]
  wire  iocell_mem_axi4_w_bits_data_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265902.4]
  wire  iocell_mem_axi4_w_bits_data_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265902.4]
  wire  iocell_mem_axi4_w_bits_data_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265902.4]
  wire  iocell_mem_axi4_w_bits_data_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265908.4]
  wire  iocell_mem_axi4_w_bits_data_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265908.4]
  wire  iocell_mem_axi4_w_bits_data_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265908.4]
  wire  iocell_mem_axi4_w_bits_data_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265914.4]
  wire  iocell_mem_axi4_w_bits_data_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265914.4]
  wire  iocell_mem_axi4_w_bits_data_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265914.4]
  wire  iocell_mem_axi4_w_bits_data_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265920.4]
  wire  iocell_mem_axi4_w_bits_data_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265920.4]
  wire  iocell_mem_axi4_w_bits_data_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265920.4]
  wire  iocell_mem_axi4_w_bits_data_4_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265926.4]
  wire  iocell_mem_axi4_w_bits_data_4_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265926.4]
  wire  iocell_mem_axi4_w_bits_data_4_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265926.4]
  wire  iocell_mem_axi4_w_bits_data_5_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265932.4]
  wire  iocell_mem_axi4_w_bits_data_5_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265932.4]
  wire  iocell_mem_axi4_w_bits_data_5_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265932.4]
  wire  iocell_mem_axi4_w_bits_data_6_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265938.4]
  wire  iocell_mem_axi4_w_bits_data_6_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265938.4]
  wire  iocell_mem_axi4_w_bits_data_6_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265938.4]
  wire  iocell_mem_axi4_w_bits_data_7_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265944.4]
  wire  iocell_mem_axi4_w_bits_data_7_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265944.4]
  wire  iocell_mem_axi4_w_bits_data_7_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265944.4]
  wire  iocell_mem_axi4_w_bits_data_8_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265950.4]
  wire  iocell_mem_axi4_w_bits_data_8_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265950.4]
  wire  iocell_mem_axi4_w_bits_data_8_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265950.4]
  wire  iocell_mem_axi4_w_bits_data_9_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265956.4]
  wire  iocell_mem_axi4_w_bits_data_9_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265956.4]
  wire  iocell_mem_axi4_w_bits_data_9_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265956.4]
  wire  iocell_mem_axi4_w_bits_data_10_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265962.4]
  wire  iocell_mem_axi4_w_bits_data_10_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265962.4]
  wire  iocell_mem_axi4_w_bits_data_10_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265962.4]
  wire  iocell_mem_axi4_w_bits_data_11_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265968.4]
  wire  iocell_mem_axi4_w_bits_data_11_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265968.4]
  wire  iocell_mem_axi4_w_bits_data_11_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265968.4]
  wire  iocell_mem_axi4_w_bits_data_12_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265974.4]
  wire  iocell_mem_axi4_w_bits_data_12_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265974.4]
  wire  iocell_mem_axi4_w_bits_data_12_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265974.4]
  wire  iocell_mem_axi4_w_bits_data_13_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265980.4]
  wire  iocell_mem_axi4_w_bits_data_13_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265980.4]
  wire  iocell_mem_axi4_w_bits_data_13_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265980.4]
  wire  iocell_mem_axi4_w_bits_data_14_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265986.4]
  wire  iocell_mem_axi4_w_bits_data_14_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265986.4]
  wire  iocell_mem_axi4_w_bits_data_14_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265986.4]
  wire  iocell_mem_axi4_w_bits_data_15_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265992.4]
  wire  iocell_mem_axi4_w_bits_data_15_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265992.4]
  wire  iocell_mem_axi4_w_bits_data_15_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265992.4]
  wire  iocell_mem_axi4_w_bits_data_16_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265998.4]
  wire  iocell_mem_axi4_w_bits_data_16_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265998.4]
  wire  iocell_mem_axi4_w_bits_data_16_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265998.4]
  wire  iocell_mem_axi4_w_bits_data_17_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266004.4]
  wire  iocell_mem_axi4_w_bits_data_17_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266004.4]
  wire  iocell_mem_axi4_w_bits_data_17_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266004.4]
  wire  iocell_mem_axi4_w_bits_data_18_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266010.4]
  wire  iocell_mem_axi4_w_bits_data_18_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266010.4]
  wire  iocell_mem_axi4_w_bits_data_18_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266010.4]
  wire  iocell_mem_axi4_w_bits_data_19_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266016.4]
  wire  iocell_mem_axi4_w_bits_data_19_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266016.4]
  wire  iocell_mem_axi4_w_bits_data_19_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266016.4]
  wire  iocell_mem_axi4_w_bits_data_20_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266022.4]
  wire  iocell_mem_axi4_w_bits_data_20_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266022.4]
  wire  iocell_mem_axi4_w_bits_data_20_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266022.4]
  wire  iocell_mem_axi4_w_bits_data_21_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266028.4]
  wire  iocell_mem_axi4_w_bits_data_21_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266028.4]
  wire  iocell_mem_axi4_w_bits_data_21_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266028.4]
  wire  iocell_mem_axi4_w_bits_data_22_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266034.4]
  wire  iocell_mem_axi4_w_bits_data_22_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266034.4]
  wire  iocell_mem_axi4_w_bits_data_22_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266034.4]
  wire  iocell_mem_axi4_w_bits_data_23_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266040.4]
  wire  iocell_mem_axi4_w_bits_data_23_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266040.4]
  wire  iocell_mem_axi4_w_bits_data_23_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266040.4]
  wire  iocell_mem_axi4_w_bits_data_24_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266046.4]
  wire  iocell_mem_axi4_w_bits_data_24_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266046.4]
  wire  iocell_mem_axi4_w_bits_data_24_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266046.4]
  wire  iocell_mem_axi4_w_bits_data_25_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266052.4]
  wire  iocell_mem_axi4_w_bits_data_25_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266052.4]
  wire  iocell_mem_axi4_w_bits_data_25_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266052.4]
  wire  iocell_mem_axi4_w_bits_data_26_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266058.4]
  wire  iocell_mem_axi4_w_bits_data_26_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266058.4]
  wire  iocell_mem_axi4_w_bits_data_26_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266058.4]
  wire  iocell_mem_axi4_w_bits_data_27_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266064.4]
  wire  iocell_mem_axi4_w_bits_data_27_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266064.4]
  wire  iocell_mem_axi4_w_bits_data_27_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266064.4]
  wire  iocell_mem_axi4_w_bits_data_28_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266070.4]
  wire  iocell_mem_axi4_w_bits_data_28_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266070.4]
  wire  iocell_mem_axi4_w_bits_data_28_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266070.4]
  wire  iocell_mem_axi4_w_bits_data_29_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266076.4]
  wire  iocell_mem_axi4_w_bits_data_29_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266076.4]
  wire  iocell_mem_axi4_w_bits_data_29_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266076.4]
  wire  iocell_mem_axi4_w_bits_data_30_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266082.4]
  wire  iocell_mem_axi4_w_bits_data_30_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266082.4]
  wire  iocell_mem_axi4_w_bits_data_30_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266082.4]
  wire  iocell_mem_axi4_w_bits_data_31_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266088.4]
  wire  iocell_mem_axi4_w_bits_data_31_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266088.4]
  wire  iocell_mem_axi4_w_bits_data_31_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266088.4]
  wire  iocell_mem_axi4_w_bits_data_32_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266094.4]
  wire  iocell_mem_axi4_w_bits_data_32_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266094.4]
  wire  iocell_mem_axi4_w_bits_data_32_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266094.4]
  wire  iocell_mem_axi4_w_bits_data_33_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266100.4]
  wire  iocell_mem_axi4_w_bits_data_33_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266100.4]
  wire  iocell_mem_axi4_w_bits_data_33_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266100.4]
  wire  iocell_mem_axi4_w_bits_data_34_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266106.4]
  wire  iocell_mem_axi4_w_bits_data_34_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266106.4]
  wire  iocell_mem_axi4_w_bits_data_34_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266106.4]
  wire  iocell_mem_axi4_w_bits_data_35_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266112.4]
  wire  iocell_mem_axi4_w_bits_data_35_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266112.4]
  wire  iocell_mem_axi4_w_bits_data_35_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266112.4]
  wire  iocell_mem_axi4_w_bits_data_36_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266118.4]
  wire  iocell_mem_axi4_w_bits_data_36_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266118.4]
  wire  iocell_mem_axi4_w_bits_data_36_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266118.4]
  wire  iocell_mem_axi4_w_bits_data_37_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266124.4]
  wire  iocell_mem_axi4_w_bits_data_37_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266124.4]
  wire  iocell_mem_axi4_w_bits_data_37_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266124.4]
  wire  iocell_mem_axi4_w_bits_data_38_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266130.4]
  wire  iocell_mem_axi4_w_bits_data_38_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266130.4]
  wire  iocell_mem_axi4_w_bits_data_38_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266130.4]
  wire  iocell_mem_axi4_w_bits_data_39_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266136.4]
  wire  iocell_mem_axi4_w_bits_data_39_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266136.4]
  wire  iocell_mem_axi4_w_bits_data_39_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266136.4]
  wire  iocell_mem_axi4_w_bits_data_40_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266142.4]
  wire  iocell_mem_axi4_w_bits_data_40_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266142.4]
  wire  iocell_mem_axi4_w_bits_data_40_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266142.4]
  wire  iocell_mem_axi4_w_bits_data_41_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266148.4]
  wire  iocell_mem_axi4_w_bits_data_41_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266148.4]
  wire  iocell_mem_axi4_w_bits_data_41_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266148.4]
  wire  iocell_mem_axi4_w_bits_data_42_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266154.4]
  wire  iocell_mem_axi4_w_bits_data_42_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266154.4]
  wire  iocell_mem_axi4_w_bits_data_42_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266154.4]
  wire  iocell_mem_axi4_w_bits_data_43_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266160.4]
  wire  iocell_mem_axi4_w_bits_data_43_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266160.4]
  wire  iocell_mem_axi4_w_bits_data_43_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266160.4]
  wire  iocell_mem_axi4_w_bits_data_44_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266166.4]
  wire  iocell_mem_axi4_w_bits_data_44_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266166.4]
  wire  iocell_mem_axi4_w_bits_data_44_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266166.4]
  wire  iocell_mem_axi4_w_bits_data_45_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266172.4]
  wire  iocell_mem_axi4_w_bits_data_45_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266172.4]
  wire  iocell_mem_axi4_w_bits_data_45_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266172.4]
  wire  iocell_mem_axi4_w_bits_data_46_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266178.4]
  wire  iocell_mem_axi4_w_bits_data_46_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266178.4]
  wire  iocell_mem_axi4_w_bits_data_46_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266178.4]
  wire  iocell_mem_axi4_w_bits_data_47_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266184.4]
  wire  iocell_mem_axi4_w_bits_data_47_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266184.4]
  wire  iocell_mem_axi4_w_bits_data_47_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266184.4]
  wire  iocell_mem_axi4_w_bits_data_48_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266190.4]
  wire  iocell_mem_axi4_w_bits_data_48_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266190.4]
  wire  iocell_mem_axi4_w_bits_data_48_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266190.4]
  wire  iocell_mem_axi4_w_bits_data_49_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266196.4]
  wire  iocell_mem_axi4_w_bits_data_49_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266196.4]
  wire  iocell_mem_axi4_w_bits_data_49_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266196.4]
  wire  iocell_mem_axi4_w_bits_data_50_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266202.4]
  wire  iocell_mem_axi4_w_bits_data_50_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266202.4]
  wire  iocell_mem_axi4_w_bits_data_50_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266202.4]
  wire  iocell_mem_axi4_w_bits_data_51_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266208.4]
  wire  iocell_mem_axi4_w_bits_data_51_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266208.4]
  wire  iocell_mem_axi4_w_bits_data_51_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266208.4]
  wire  iocell_mem_axi4_w_bits_data_52_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266214.4]
  wire  iocell_mem_axi4_w_bits_data_52_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266214.4]
  wire  iocell_mem_axi4_w_bits_data_52_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266214.4]
  wire  iocell_mem_axi4_w_bits_data_53_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266220.4]
  wire  iocell_mem_axi4_w_bits_data_53_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266220.4]
  wire  iocell_mem_axi4_w_bits_data_53_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266220.4]
  wire  iocell_mem_axi4_w_bits_data_54_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266226.4]
  wire  iocell_mem_axi4_w_bits_data_54_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266226.4]
  wire  iocell_mem_axi4_w_bits_data_54_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266226.4]
  wire  iocell_mem_axi4_w_bits_data_55_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266232.4]
  wire  iocell_mem_axi4_w_bits_data_55_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266232.4]
  wire  iocell_mem_axi4_w_bits_data_55_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266232.4]
  wire  iocell_mem_axi4_w_bits_data_56_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266238.4]
  wire  iocell_mem_axi4_w_bits_data_56_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266238.4]
  wire  iocell_mem_axi4_w_bits_data_56_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266238.4]
  wire  iocell_mem_axi4_w_bits_data_57_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266244.4]
  wire  iocell_mem_axi4_w_bits_data_57_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266244.4]
  wire  iocell_mem_axi4_w_bits_data_57_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266244.4]
  wire  iocell_mem_axi4_w_bits_data_58_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266250.4]
  wire  iocell_mem_axi4_w_bits_data_58_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266250.4]
  wire  iocell_mem_axi4_w_bits_data_58_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266250.4]
  wire  iocell_mem_axi4_w_bits_data_59_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266256.4]
  wire  iocell_mem_axi4_w_bits_data_59_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266256.4]
  wire  iocell_mem_axi4_w_bits_data_59_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266256.4]
  wire  iocell_mem_axi4_w_bits_data_60_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266262.4]
  wire  iocell_mem_axi4_w_bits_data_60_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266262.4]
  wire  iocell_mem_axi4_w_bits_data_60_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266262.4]
  wire  iocell_mem_axi4_w_bits_data_61_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266268.4]
  wire  iocell_mem_axi4_w_bits_data_61_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266268.4]
  wire  iocell_mem_axi4_w_bits_data_61_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266268.4]
  wire  iocell_mem_axi4_w_bits_data_62_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266274.4]
  wire  iocell_mem_axi4_w_bits_data_62_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266274.4]
  wire  iocell_mem_axi4_w_bits_data_62_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266274.4]
  wire  iocell_mem_axi4_w_bits_data_63_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266280.4]
  wire  iocell_mem_axi4_w_bits_data_63_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266280.4]
  wire  iocell_mem_axi4_w_bits_data_63_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266280.4]
  wire  iocell_mem_axi4_w_valid_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266350.4]
  wire  iocell_mem_axi4_w_valid_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266350.4]
  wire  iocell_mem_axi4_w_valid_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266350.4]
  wire  iocell_mem_axi4_w_ready_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266359.4]
  wire  iocell_mem_axi4_w_ready_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266359.4]
  wire  iocell_mem_axi4_w_ready_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266359.4]
  wire  iocell_mem_axi4_aw_bits_qos_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266372.4]
  wire  iocell_mem_axi4_aw_bits_qos_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266372.4]
  wire  iocell_mem_axi4_aw_bits_qos_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266372.4]
  wire  iocell_mem_axi4_aw_bits_qos_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266378.4]
  wire  iocell_mem_axi4_aw_bits_qos_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266378.4]
  wire  iocell_mem_axi4_aw_bits_qos_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266378.4]
  wire  iocell_mem_axi4_aw_bits_qos_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266384.4]
  wire  iocell_mem_axi4_aw_bits_qos_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266384.4]
  wire  iocell_mem_axi4_aw_bits_qos_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266384.4]
  wire  iocell_mem_axi4_aw_bits_qos_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266390.4]
  wire  iocell_mem_axi4_aw_bits_qos_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266390.4]
  wire  iocell_mem_axi4_aw_bits_qos_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266390.4]
  wire  iocell_mem_axi4_aw_bits_prot_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266403.4]
  wire  iocell_mem_axi4_aw_bits_prot_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266403.4]
  wire  iocell_mem_axi4_aw_bits_prot_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266403.4]
  wire  iocell_mem_axi4_aw_bits_prot_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266409.4]
  wire  iocell_mem_axi4_aw_bits_prot_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266409.4]
  wire  iocell_mem_axi4_aw_bits_prot_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266409.4]
  wire  iocell_mem_axi4_aw_bits_prot_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266415.4]
  wire  iocell_mem_axi4_aw_bits_prot_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266415.4]
  wire  iocell_mem_axi4_aw_bits_prot_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266415.4]
  wire  iocell_mem_axi4_aw_bits_cache_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266428.4]
  wire  iocell_mem_axi4_aw_bits_cache_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266428.4]
  wire  iocell_mem_axi4_aw_bits_cache_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266428.4]
  wire  iocell_mem_axi4_aw_bits_cache_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266434.4]
  wire  iocell_mem_axi4_aw_bits_cache_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266434.4]
  wire  iocell_mem_axi4_aw_bits_cache_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266434.4]
  wire  iocell_mem_axi4_aw_bits_cache_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266440.4]
  wire  iocell_mem_axi4_aw_bits_cache_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266440.4]
  wire  iocell_mem_axi4_aw_bits_cache_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266440.4]
  wire  iocell_mem_axi4_aw_bits_cache_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266446.4]
  wire  iocell_mem_axi4_aw_bits_cache_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266446.4]
  wire  iocell_mem_axi4_aw_bits_cache_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266446.4]
  wire  iocell_mem_axi4_aw_bits_lock_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266457.4]
  wire  iocell_mem_axi4_aw_bits_lock_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266457.4]
  wire  iocell_mem_axi4_aw_bits_lock_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266457.4]
  wire  iocell_mem_axi4_aw_bits_burst_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266466.4]
  wire  iocell_mem_axi4_aw_bits_burst_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266466.4]
  wire  iocell_mem_axi4_aw_bits_burst_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266466.4]
  wire  iocell_mem_axi4_aw_bits_burst_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266472.4]
  wire  iocell_mem_axi4_aw_bits_burst_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266472.4]
  wire  iocell_mem_axi4_aw_bits_burst_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266472.4]
  wire  iocell_mem_axi4_aw_bits_size_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266483.4]
  wire  iocell_mem_axi4_aw_bits_size_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266483.4]
  wire  iocell_mem_axi4_aw_bits_size_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266483.4]
  wire  iocell_mem_axi4_aw_bits_size_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266489.4]
  wire  iocell_mem_axi4_aw_bits_size_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266489.4]
  wire  iocell_mem_axi4_aw_bits_size_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266489.4]
  wire  iocell_mem_axi4_aw_bits_size_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266495.4]
  wire  iocell_mem_axi4_aw_bits_size_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266495.4]
  wire  iocell_mem_axi4_aw_bits_size_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266495.4]
  wire  iocell_mem_axi4_aw_bits_len_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266512.4]
  wire  iocell_mem_axi4_aw_bits_len_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266512.4]
  wire  iocell_mem_axi4_aw_bits_len_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266512.4]
  wire  iocell_mem_axi4_aw_bits_len_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266518.4]
  wire  iocell_mem_axi4_aw_bits_len_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266518.4]
  wire  iocell_mem_axi4_aw_bits_len_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266518.4]
  wire  iocell_mem_axi4_aw_bits_len_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266524.4]
  wire  iocell_mem_axi4_aw_bits_len_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266524.4]
  wire  iocell_mem_axi4_aw_bits_len_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266524.4]
  wire  iocell_mem_axi4_aw_bits_len_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266530.4]
  wire  iocell_mem_axi4_aw_bits_len_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266530.4]
  wire  iocell_mem_axi4_aw_bits_len_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266530.4]
  wire  iocell_mem_axi4_aw_bits_len_4_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266536.4]
  wire  iocell_mem_axi4_aw_bits_len_4_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266536.4]
  wire  iocell_mem_axi4_aw_bits_len_4_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266536.4]
  wire  iocell_mem_axi4_aw_bits_len_5_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266542.4]
  wire  iocell_mem_axi4_aw_bits_len_5_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266542.4]
  wire  iocell_mem_axi4_aw_bits_len_5_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266542.4]
  wire  iocell_mem_axi4_aw_bits_len_6_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266548.4]
  wire  iocell_mem_axi4_aw_bits_len_6_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266548.4]
  wire  iocell_mem_axi4_aw_bits_len_6_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266548.4]
  wire  iocell_mem_axi4_aw_bits_len_7_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266554.4]
  wire  iocell_mem_axi4_aw_bits_len_7_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266554.4]
  wire  iocell_mem_axi4_aw_bits_len_7_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266554.4]
  wire  iocell_mem_axi4_aw_bits_addr_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266600.4]
  wire  iocell_mem_axi4_aw_bits_addr_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266600.4]
  wire  iocell_mem_axi4_aw_bits_addr_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266600.4]
  wire  iocell_mem_axi4_aw_bits_addr_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266606.4]
  wire  iocell_mem_axi4_aw_bits_addr_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266606.4]
  wire  iocell_mem_axi4_aw_bits_addr_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266606.4]
  wire  iocell_mem_axi4_aw_bits_addr_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266612.4]
  wire  iocell_mem_axi4_aw_bits_addr_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266612.4]
  wire  iocell_mem_axi4_aw_bits_addr_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266612.4]
  wire  iocell_mem_axi4_aw_bits_addr_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266618.4]
  wire  iocell_mem_axi4_aw_bits_addr_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266618.4]
  wire  iocell_mem_axi4_aw_bits_addr_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266618.4]
  wire  iocell_mem_axi4_aw_bits_addr_4_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266624.4]
  wire  iocell_mem_axi4_aw_bits_addr_4_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266624.4]
  wire  iocell_mem_axi4_aw_bits_addr_4_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266624.4]
  wire  iocell_mem_axi4_aw_bits_addr_5_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266630.4]
  wire  iocell_mem_axi4_aw_bits_addr_5_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266630.4]
  wire  iocell_mem_axi4_aw_bits_addr_5_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266630.4]
  wire  iocell_mem_axi4_aw_bits_addr_6_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266636.4]
  wire  iocell_mem_axi4_aw_bits_addr_6_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266636.4]
  wire  iocell_mem_axi4_aw_bits_addr_6_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266636.4]
  wire  iocell_mem_axi4_aw_bits_addr_7_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266642.4]
  wire  iocell_mem_axi4_aw_bits_addr_7_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266642.4]
  wire  iocell_mem_axi4_aw_bits_addr_7_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266642.4]
  wire  iocell_mem_axi4_aw_bits_addr_8_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266648.4]
  wire  iocell_mem_axi4_aw_bits_addr_8_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266648.4]
  wire  iocell_mem_axi4_aw_bits_addr_8_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266648.4]
  wire  iocell_mem_axi4_aw_bits_addr_9_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266654.4]
  wire  iocell_mem_axi4_aw_bits_addr_9_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266654.4]
  wire  iocell_mem_axi4_aw_bits_addr_9_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266654.4]
  wire  iocell_mem_axi4_aw_bits_addr_10_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266660.4]
  wire  iocell_mem_axi4_aw_bits_addr_10_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266660.4]
  wire  iocell_mem_axi4_aw_bits_addr_10_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266660.4]
  wire  iocell_mem_axi4_aw_bits_addr_11_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266666.4]
  wire  iocell_mem_axi4_aw_bits_addr_11_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266666.4]
  wire  iocell_mem_axi4_aw_bits_addr_11_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266666.4]
  wire  iocell_mem_axi4_aw_bits_addr_12_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266672.4]
  wire  iocell_mem_axi4_aw_bits_addr_12_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266672.4]
  wire  iocell_mem_axi4_aw_bits_addr_12_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266672.4]
  wire  iocell_mem_axi4_aw_bits_addr_13_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266678.4]
  wire  iocell_mem_axi4_aw_bits_addr_13_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266678.4]
  wire  iocell_mem_axi4_aw_bits_addr_13_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266678.4]
  wire  iocell_mem_axi4_aw_bits_addr_14_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266684.4]
  wire  iocell_mem_axi4_aw_bits_addr_14_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266684.4]
  wire  iocell_mem_axi4_aw_bits_addr_14_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266684.4]
  wire  iocell_mem_axi4_aw_bits_addr_15_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266690.4]
  wire  iocell_mem_axi4_aw_bits_addr_15_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266690.4]
  wire  iocell_mem_axi4_aw_bits_addr_15_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266690.4]
  wire  iocell_mem_axi4_aw_bits_addr_16_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266696.4]
  wire  iocell_mem_axi4_aw_bits_addr_16_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266696.4]
  wire  iocell_mem_axi4_aw_bits_addr_16_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266696.4]
  wire  iocell_mem_axi4_aw_bits_addr_17_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266702.4]
  wire  iocell_mem_axi4_aw_bits_addr_17_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266702.4]
  wire  iocell_mem_axi4_aw_bits_addr_17_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266702.4]
  wire  iocell_mem_axi4_aw_bits_addr_18_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266708.4]
  wire  iocell_mem_axi4_aw_bits_addr_18_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266708.4]
  wire  iocell_mem_axi4_aw_bits_addr_18_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266708.4]
  wire  iocell_mem_axi4_aw_bits_addr_19_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266714.4]
  wire  iocell_mem_axi4_aw_bits_addr_19_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266714.4]
  wire  iocell_mem_axi4_aw_bits_addr_19_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266714.4]
  wire  iocell_mem_axi4_aw_bits_addr_20_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266720.4]
  wire  iocell_mem_axi4_aw_bits_addr_20_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266720.4]
  wire  iocell_mem_axi4_aw_bits_addr_20_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266720.4]
  wire  iocell_mem_axi4_aw_bits_addr_21_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266726.4]
  wire  iocell_mem_axi4_aw_bits_addr_21_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266726.4]
  wire  iocell_mem_axi4_aw_bits_addr_21_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266726.4]
  wire  iocell_mem_axi4_aw_bits_addr_22_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266732.4]
  wire  iocell_mem_axi4_aw_bits_addr_22_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266732.4]
  wire  iocell_mem_axi4_aw_bits_addr_22_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266732.4]
  wire  iocell_mem_axi4_aw_bits_addr_23_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266738.4]
  wire  iocell_mem_axi4_aw_bits_addr_23_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266738.4]
  wire  iocell_mem_axi4_aw_bits_addr_23_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266738.4]
  wire  iocell_mem_axi4_aw_bits_addr_24_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266744.4]
  wire  iocell_mem_axi4_aw_bits_addr_24_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266744.4]
  wire  iocell_mem_axi4_aw_bits_addr_24_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266744.4]
  wire  iocell_mem_axi4_aw_bits_addr_25_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266750.4]
  wire  iocell_mem_axi4_aw_bits_addr_25_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266750.4]
  wire  iocell_mem_axi4_aw_bits_addr_25_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266750.4]
  wire  iocell_mem_axi4_aw_bits_addr_26_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266756.4]
  wire  iocell_mem_axi4_aw_bits_addr_26_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266756.4]
  wire  iocell_mem_axi4_aw_bits_addr_26_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266756.4]
  wire  iocell_mem_axi4_aw_bits_addr_27_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266762.4]
  wire  iocell_mem_axi4_aw_bits_addr_27_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266762.4]
  wire  iocell_mem_axi4_aw_bits_addr_27_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266762.4]
  wire  iocell_mem_axi4_aw_bits_addr_28_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266768.4]
  wire  iocell_mem_axi4_aw_bits_addr_28_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266768.4]
  wire  iocell_mem_axi4_aw_bits_addr_28_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266768.4]
  wire  iocell_mem_axi4_aw_bits_addr_29_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266774.4]
  wire  iocell_mem_axi4_aw_bits_addr_29_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266774.4]
  wire  iocell_mem_axi4_aw_bits_addr_29_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266774.4]
  wire  iocell_mem_axi4_aw_bits_addr_30_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266780.4]
  wire  iocell_mem_axi4_aw_bits_addr_30_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266780.4]
  wire  iocell_mem_axi4_aw_bits_addr_30_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266780.4]
  wire  iocell_mem_axi4_aw_bits_addr_31_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266786.4]
  wire  iocell_mem_axi4_aw_bits_addr_31_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266786.4]
  wire  iocell_mem_axi4_aw_bits_addr_31_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266786.4]
  wire  iocell_mem_axi4_aw_bits_id_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266828.4]
  wire  iocell_mem_axi4_aw_bits_id_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266828.4]
  wire  iocell_mem_axi4_aw_bits_id_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266828.4]
  wire  iocell_mem_axi4_aw_bits_id_1_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266834.4]
  wire  iocell_mem_axi4_aw_bits_id_1_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266834.4]
  wire  iocell_mem_axi4_aw_bits_id_1_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266834.4]
  wire  iocell_mem_axi4_aw_bits_id_2_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266840.4]
  wire  iocell_mem_axi4_aw_bits_id_2_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266840.4]
  wire  iocell_mem_axi4_aw_bits_id_2_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266840.4]
  wire  iocell_mem_axi4_aw_bits_id_3_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266846.4]
  wire  iocell_mem_axi4_aw_bits_id_3_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266846.4]
  wire  iocell_mem_axi4_aw_bits_id_3_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266846.4]
  wire  iocell_mem_axi4_aw_valid_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266856.4]
  wire  iocell_mem_axi4_aw_valid_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266856.4]
  wire  iocell_mem_axi4_aw_valid_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266856.4]
  wire  iocell_mem_axi4_aw_ready_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266865.4]
  wire  iocell_mem_axi4_aw_ready_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266865.4]
  wire  iocell_mem_axi4_aw_ready_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266865.4]
  wire  iocell_uart_0_rxd_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266874.4]
  wire  iocell_uart_0_rxd_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266874.4]
  wire  iocell_uart_0_rxd_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266874.4]
  wire  iocell_uart_0_txd_pad; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266883.4]
  wire  iocell_uart_0_txd_o; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266883.4]
  wire  iocell_uart_0_txd_oe; // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266883.4]
  wire  iocell_clock_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266892.4]
  wire  iocell_clock_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266892.4]
  wire  iocell_clock_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266892.4]
  wire  iocell_reset_pad; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266902.4]
  wire  iocell_reset_i; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266902.4]
  wire  iocell_reset_ie; // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266902.4]
  wire [7:0] _T_52; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263639.4]
  wire [15:0] _T_60; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263647.4]
  wire [7:0] _T_67; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263654.4]
  wire [15:0] _T_75; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263662.4]
  wire [7:0] _T_122; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263929.4]
  wire [15:0] _T_130; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263937.4]
  wire [7:0] _T_137; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263944.4]
  wire [15:0] _T_145; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263952.4]
  wire [2:0] _T_155; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264005.4]
  wire [3:0] _T_158; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264008.4]
  wire [7:0] _T_209; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264288.4]
  wire [15:0] _T_217; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264296.4]
  wire [7:0] _T_224; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264303.4]
  wire [15:0] _T_232; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264311.4]
  wire [7:0] _T_276; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264562.4]
  wire [15:0] _T_284; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264570.4]
  wire [7:0] _T_291; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264577.4]
  wire [15:0] _T_299; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264585.4]
  wire [7:0] _T_380; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265085.4]
  wire [15:0] _T_388; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265093.4]
  wire [7:0] _T_395; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265100.4]
  wire [31:0] _T_404; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265109.4]
  wire [7:0] _T_411; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265116.4]
  wire [15:0] _T_419; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265124.4]
  wire [7:0] _T_426; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265131.4]
  wire [31:0] _T_435; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265140.4]
  wire [1:0] _T_441; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265171.4]
  wire [1:0] _T_442; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265172.4]
  wire [1:0] _T_452; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265221.4]
  wire [1:0] _T_453; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265222.4]
  wire [1:0] _T_458; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265246.4]
  wire [1:0] _T_464; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265277.4]
  wire [1:0] _T_465; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265278.4]
  wire [1:0] _T_474; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265326.4]
  wire [3:0] _T_486; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265387.4]
  wire [3:0] _T_489; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265390.4]
  wire [7:0] _T_529; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265623.4]
  wire [15:0] _T_537; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265631.4]
  wire [7:0] _T_544; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265638.4]
  wire [15:0] _T_552; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265646.4]
  wire [1:0] _T_558; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265677.4]
  wire [1:0] _T_559; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265678.4]
  wire [1:0] _T_572; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265743.4]
  wire [1:0] _T_573; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265744.4]
  wire [3:0] _T_591; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265832.4]
  wire [3:0] _T_594; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265835.4]
  wire [7:0] _T_666; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266292.4]
  wire [15:0] _T_674; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266300.4]
  wire [7:0] _T_681; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266307.4]
  wire [31:0] _T_690; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266316.4]
  wire [7:0] _T_697; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266323.4]
  wire [15:0] _T_705; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266331.4]
  wire [7:0] _T_712; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266338.4]
  wire [31:0] _T_721; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266347.4]
  wire [1:0] _T_731; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266396.4]
  wire [1:0] _T_732; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266397.4]
  wire [1:0] _T_737; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266421.4]
  wire [1:0] _T_743; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266452.4]
  wire [1:0] _T_744; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266453.4]
  wire [1:0] _T_753; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266501.4]
  wire [3:0] _T_765; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266562.4]
  wire [3:0] _T_768; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266565.4]
  wire [7:0] _T_808; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266798.4]
  wire [15:0] _T_816; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266806.4]
  wire [7:0] _T_823; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266813.4]
  wire [15:0] _T_831; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266821.4]
  wire [1:0] _T_837; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266852.4]
  wire [1:0] _T_838; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266853.4]
  DigitalTop system ( // @[ChipTop.scala 71:68:chipyard.TestHarness.RocketConfig.fir@263344.4]
    .clock(system_clock),
    .reset(system_reset),
    .mem_axi4_0_aw_ready(system_mem_axi4_0_aw_ready),
    .mem_axi4_0_aw_valid(system_mem_axi4_0_aw_valid),
    .mem_axi4_0_aw_bits_id(system_mem_axi4_0_aw_bits_id),
    .mem_axi4_0_aw_bits_addr(system_mem_axi4_0_aw_bits_addr),
    .mem_axi4_0_aw_bits_len(system_mem_axi4_0_aw_bits_len),
    .mem_axi4_0_aw_bits_size(system_mem_axi4_0_aw_bits_size),
    .mem_axi4_0_aw_bits_burst(system_mem_axi4_0_aw_bits_burst),
    .mem_axi4_0_aw_bits_lock(system_mem_axi4_0_aw_bits_lock),
    .mem_axi4_0_aw_bits_cache(system_mem_axi4_0_aw_bits_cache),
    .mem_axi4_0_aw_bits_prot(system_mem_axi4_0_aw_bits_prot),
    .mem_axi4_0_aw_bits_qos(system_mem_axi4_0_aw_bits_qos),
    .mem_axi4_0_w_ready(system_mem_axi4_0_w_ready),
    .mem_axi4_0_w_valid(system_mem_axi4_0_w_valid),
    .mem_axi4_0_w_bits_data(system_mem_axi4_0_w_bits_data),
    .mem_axi4_0_w_bits_strb(system_mem_axi4_0_w_bits_strb),
    .mem_axi4_0_w_bits_last(system_mem_axi4_0_w_bits_last),
    .mem_axi4_0_b_ready(system_mem_axi4_0_b_ready),
    .mem_axi4_0_b_valid(system_mem_axi4_0_b_valid),
    .mem_axi4_0_b_bits_id(system_mem_axi4_0_b_bits_id),
    .mem_axi4_0_b_bits_resp(system_mem_axi4_0_b_bits_resp),
    .mem_axi4_0_ar_ready(system_mem_axi4_0_ar_ready),
    .mem_axi4_0_ar_valid(system_mem_axi4_0_ar_valid),
    .mem_axi4_0_ar_bits_id(system_mem_axi4_0_ar_bits_id),
    .mem_axi4_0_ar_bits_addr(system_mem_axi4_0_ar_bits_addr),
    .mem_axi4_0_ar_bits_len(system_mem_axi4_0_ar_bits_len),
    .mem_axi4_0_ar_bits_size(system_mem_axi4_0_ar_bits_size),
    .mem_axi4_0_ar_bits_burst(system_mem_axi4_0_ar_bits_burst),
    .mem_axi4_0_ar_bits_lock(system_mem_axi4_0_ar_bits_lock),
    .mem_axi4_0_ar_bits_cache(system_mem_axi4_0_ar_bits_cache),
    .mem_axi4_0_ar_bits_prot(system_mem_axi4_0_ar_bits_prot),
    .mem_axi4_0_ar_bits_qos(system_mem_axi4_0_ar_bits_qos),
    .mem_axi4_0_r_ready(system_mem_axi4_0_r_ready),
    .mem_axi4_0_r_valid(system_mem_axi4_0_r_valid),
    .mem_axi4_0_r_bits_id(system_mem_axi4_0_r_bits_id),
    .mem_axi4_0_r_bits_data(system_mem_axi4_0_r_bits_data),
    .mem_axi4_0_r_bits_resp(system_mem_axi4_0_r_bits_resp),
    .mem_axi4_0_r_bits_last(system_mem_axi4_0_r_bits_last),
    .resetctrl_hartIsInReset_0(system_resetctrl_hartIsInReset_0),
    .debug_clock(system_debug_clock),
    .debug_reset(system_debug_reset),
    .debug_clockeddmi_dmi_req_ready(system_debug_clockeddmi_dmi_req_ready),
    .debug_clockeddmi_dmi_req_valid(system_debug_clockeddmi_dmi_req_valid),
    .debug_clockeddmi_dmi_req_bits_addr(system_debug_clockeddmi_dmi_req_bits_addr),
    .debug_clockeddmi_dmi_req_bits_data(system_debug_clockeddmi_dmi_req_bits_data),
    .debug_clockeddmi_dmi_req_bits_op(system_debug_clockeddmi_dmi_req_bits_op),
    .debug_clockeddmi_dmi_resp_ready(system_debug_clockeddmi_dmi_resp_ready),
    .debug_clockeddmi_dmi_resp_valid(system_debug_clockeddmi_dmi_resp_valid),
    .debug_clockeddmi_dmi_resp_bits_data(system_debug_clockeddmi_dmi_resp_bits_data),
    .debug_clockeddmi_dmi_resp_bits_resp(system_debug_clockeddmi_dmi_resp_bits_resp),
    .debug_clockeddmi_dmiClock(system_debug_clockeddmi_dmiClock),
    .debug_clockeddmi_dmiReset(system_debug_clockeddmi_dmiReset),
    .debug_ndreset(system_debug_ndreset),
    .debug_dmactive(system_debug_dmactive),
    .debug_dmactiveAck(system_debug_dmactiveAck),
    .serial_in_ready(system_serial_in_ready),
    .serial_in_valid(system_serial_in_valid),
    .serial_in_bits(system_serial_in_bits),
    .serial_out_ready(system_serial_out_ready),
    .serial_out_valid(system_serial_out_valid),
    .serial_out_bits(system_serial_out_bits),
    .uart_0_0_txd(system_uart_0_0_txd),
    .uart_0_0_rxd(system_uart_0_0_rxd)
  );
  GenericDigitalInIOCell iocell_debug_dmactiveAck ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263347.4]
    .pad(iocell_debug_dmactiveAck_pad),
    .i(iocell_debug_dmactiveAck_i),
    .ie(iocell_debug_dmactiveAck_ie)
  );
  GenericDigitalOutIOCell iocell_debug_dmactive ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263356.4]
    .pad(iocell_debug_dmactive_pad),
    .o(iocell_debug_dmactive_o),
    .oe(iocell_debug_dmactive_oe)
  );
  GenericDigitalOutIOCell iocell_debug_ndreset ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263365.4]
    .pad(iocell_debug_ndreset_pad),
    .o(iocell_debug_ndreset_o),
    .oe(iocell_debug_ndreset_oe)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmiReset ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263374.4]
    .pad(iocell_debug_clockeddmi_dmiReset_pad),
    .i(iocell_debug_clockeddmi_dmiReset_i),
    .ie(iocell_debug_clockeddmi_dmiReset_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmiClock ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263383.4]
    .pad(iocell_debug_clockeddmi_dmiClock_pad),
    .i(iocell_debug_clockeddmi_dmiClock_i),
    .ie(iocell_debug_clockeddmi_dmiClock_ie)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_resp ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263395.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_resp_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_resp_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_resp_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_resp_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263401.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_resp_1_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_resp_1_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_resp_1_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263441.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263447.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_1_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_1_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_1_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263453.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_2_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_2_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_2_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263459.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_3_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_3_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_3_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_4 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263465.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_4_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_4_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_4_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_5 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263471.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_5_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_5_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_5_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_6 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263477.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_6_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_6_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_6_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_7 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263483.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_7_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_7_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_7_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_8 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263489.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_8_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_8_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_8_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_9 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263495.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_9_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_9_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_9_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_10 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263501.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_10_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_10_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_10_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_11 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263507.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_11_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_11_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_11_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_12 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263513.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_12_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_12_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_12_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_13 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263519.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_13_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_13_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_13_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_14 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263525.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_14_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_14_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_14_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_15 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263531.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_15_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_15_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_15_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_16 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263537.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_16_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_16_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_16_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_17 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263543.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_17_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_17_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_17_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_18 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263549.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_18_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_18_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_18_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_19 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263555.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_19_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_19_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_19_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_20 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263561.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_20_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_20_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_20_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_21 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263567.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_21_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_21_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_21_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_22 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263573.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_22_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_22_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_22_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_23 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263579.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_23_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_23_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_23_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_24 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263585.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_24_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_24_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_24_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_25 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263591.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_25_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_25_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_25_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_26 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263597.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_26_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_26_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_26_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_27 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263603.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_27_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_27_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_27_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_28 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263609.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_28_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_28_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_28_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_29 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263615.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_29_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_29_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_29_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_30 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263621.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_30_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_30_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_30_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_bits_data_31 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263627.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_bits_data_31_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_bits_data_31_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_bits_data_31_oe)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_resp_valid ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@263665.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_valid_pad),
    .o(iocell_debug_clockeddmi_dmi_resp_valid_o),
    .oe(iocell_debug_clockeddmi_dmi_resp_valid_oe)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_resp_ready ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263674.4]
    .pad(iocell_debug_clockeddmi_dmi_resp_ready_pad),
    .i(iocell_debug_clockeddmi_dmi_resp_ready_i),
    .ie(iocell_debug_clockeddmi_dmi_resp_ready_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_op ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263685.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_op_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_op_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_op_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_op_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263691.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_op_1_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_op_1_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_op_1_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263731.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263737.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_1_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_1_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_1_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_2 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263743.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_2_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_2_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_2_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_3 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263749.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_3_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_3_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_3_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_4 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263755.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_4_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_4_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_4_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_5 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263761.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_5_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_5_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_5_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_6 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263767.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_6_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_6_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_6_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_7 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263773.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_7_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_7_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_7_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_8 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263779.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_8_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_8_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_8_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_9 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263785.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_9_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_9_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_9_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_10 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263791.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_10_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_10_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_10_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_11 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263797.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_11_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_11_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_11_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_12 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263803.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_12_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_12_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_12_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_13 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263809.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_13_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_13_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_13_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_14 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263815.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_14_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_14_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_14_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_15 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263821.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_15_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_15_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_15_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_16 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263827.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_16_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_16_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_16_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_17 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263833.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_17_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_17_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_17_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_18 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263839.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_18_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_18_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_18_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_19 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263845.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_19_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_19_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_19_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_20 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263851.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_20_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_20_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_20_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_21 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263857.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_21_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_21_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_21_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_22 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263863.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_22_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_22_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_22_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_23 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263869.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_23_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_23_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_23_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_24 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263875.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_24_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_24_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_24_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_25 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263881.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_25_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_25_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_25_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_26 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263887.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_26_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_26_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_26_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_27 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263893.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_27_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_27_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_27_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_28 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263899.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_28_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_28_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_28_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_29 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263905.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_29_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_29_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_29_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_30 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263911.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_30_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_30_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_30_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_data_31 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263917.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_data_31_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_data_31_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_data_31_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_addr ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263962.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_addr_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_addr_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_addr_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_addr_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263968.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_addr_1_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_addr_1_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_addr_1_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_addr_2 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263974.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_addr_2_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_addr_2_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_addr_2_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_addr_3 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263980.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_addr_3_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_addr_3_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_addr_3_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_addr_4 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263986.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_addr_4_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_addr_4_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_addr_4_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_addr_5 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263992.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_addr_5_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_addr_5_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_addr_5_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_bits_addr_6 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@263998.4]
    .pad(iocell_debug_clockeddmi_dmi_req_bits_addr_6_pad),
    .i(iocell_debug_clockeddmi_dmi_req_bits_addr_6_i),
    .ie(iocell_debug_clockeddmi_dmi_req_bits_addr_6_ie)
  );
  GenericDigitalInIOCell iocell_debug_clockeddmi_dmi_req_valid ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264011.4]
    .pad(iocell_debug_clockeddmi_dmi_req_valid_pad),
    .i(iocell_debug_clockeddmi_dmi_req_valid_i),
    .ie(iocell_debug_clockeddmi_dmi_req_valid_ie)
  );
  GenericDigitalOutIOCell iocell_debug_clockeddmi_dmi_req_ready ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264020.4]
    .pad(iocell_debug_clockeddmi_dmi_req_ready_pad),
    .o(iocell_debug_clockeddmi_dmi_req_ready_o),
    .oe(iocell_debug_clockeddmi_dmi_req_ready_oe)
  );
  GenericDigitalInIOCell iocell_debug_reset ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264029.4]
    .pad(iocell_debug_reset_pad),
    .i(iocell_debug_reset_i),
    .ie(iocell_debug_reset_ie)
  );
  GenericDigitalInIOCell iocell_debug_clock ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264038.4]
    .pad(iocell_debug_clock_pad),
    .i(iocell_debug_clock_i),
    .ie(iocell_debug_clock_ie)
  );
  GenericDigitalInIOCell iocell_resetctrl_hartIsInReset_0 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264048.4]
    .pad(iocell_resetctrl_hartIsInReset_0_pad),
    .i(iocell_resetctrl_hartIsInReset_0_i),
    .ie(iocell_resetctrl_hartIsInReset_0_ie)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264090.4]
    .pad(iocell_serial_out_bits_pad),
    .o(iocell_serial_out_bits_o),
    .oe(iocell_serial_out_bits_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264096.4]
    .pad(iocell_serial_out_bits_1_pad),
    .o(iocell_serial_out_bits_1_o),
    .oe(iocell_serial_out_bits_1_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264102.4]
    .pad(iocell_serial_out_bits_2_pad),
    .o(iocell_serial_out_bits_2_o),
    .oe(iocell_serial_out_bits_2_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264108.4]
    .pad(iocell_serial_out_bits_3_pad),
    .o(iocell_serial_out_bits_3_o),
    .oe(iocell_serial_out_bits_3_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_4 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264114.4]
    .pad(iocell_serial_out_bits_4_pad),
    .o(iocell_serial_out_bits_4_o),
    .oe(iocell_serial_out_bits_4_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_5 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264120.4]
    .pad(iocell_serial_out_bits_5_pad),
    .o(iocell_serial_out_bits_5_o),
    .oe(iocell_serial_out_bits_5_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_6 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264126.4]
    .pad(iocell_serial_out_bits_6_pad),
    .o(iocell_serial_out_bits_6_o),
    .oe(iocell_serial_out_bits_6_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_7 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264132.4]
    .pad(iocell_serial_out_bits_7_pad),
    .o(iocell_serial_out_bits_7_o),
    .oe(iocell_serial_out_bits_7_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_8 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264138.4]
    .pad(iocell_serial_out_bits_8_pad),
    .o(iocell_serial_out_bits_8_o),
    .oe(iocell_serial_out_bits_8_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_9 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264144.4]
    .pad(iocell_serial_out_bits_9_pad),
    .o(iocell_serial_out_bits_9_o),
    .oe(iocell_serial_out_bits_9_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_10 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264150.4]
    .pad(iocell_serial_out_bits_10_pad),
    .o(iocell_serial_out_bits_10_o),
    .oe(iocell_serial_out_bits_10_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_11 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264156.4]
    .pad(iocell_serial_out_bits_11_pad),
    .o(iocell_serial_out_bits_11_o),
    .oe(iocell_serial_out_bits_11_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_12 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264162.4]
    .pad(iocell_serial_out_bits_12_pad),
    .o(iocell_serial_out_bits_12_o),
    .oe(iocell_serial_out_bits_12_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_13 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264168.4]
    .pad(iocell_serial_out_bits_13_pad),
    .o(iocell_serial_out_bits_13_o),
    .oe(iocell_serial_out_bits_13_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_14 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264174.4]
    .pad(iocell_serial_out_bits_14_pad),
    .o(iocell_serial_out_bits_14_o),
    .oe(iocell_serial_out_bits_14_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_15 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264180.4]
    .pad(iocell_serial_out_bits_15_pad),
    .o(iocell_serial_out_bits_15_o),
    .oe(iocell_serial_out_bits_15_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_16 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264186.4]
    .pad(iocell_serial_out_bits_16_pad),
    .o(iocell_serial_out_bits_16_o),
    .oe(iocell_serial_out_bits_16_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_17 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264192.4]
    .pad(iocell_serial_out_bits_17_pad),
    .o(iocell_serial_out_bits_17_o),
    .oe(iocell_serial_out_bits_17_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_18 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264198.4]
    .pad(iocell_serial_out_bits_18_pad),
    .o(iocell_serial_out_bits_18_o),
    .oe(iocell_serial_out_bits_18_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_19 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264204.4]
    .pad(iocell_serial_out_bits_19_pad),
    .o(iocell_serial_out_bits_19_o),
    .oe(iocell_serial_out_bits_19_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_20 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264210.4]
    .pad(iocell_serial_out_bits_20_pad),
    .o(iocell_serial_out_bits_20_o),
    .oe(iocell_serial_out_bits_20_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_21 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264216.4]
    .pad(iocell_serial_out_bits_21_pad),
    .o(iocell_serial_out_bits_21_o),
    .oe(iocell_serial_out_bits_21_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_22 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264222.4]
    .pad(iocell_serial_out_bits_22_pad),
    .o(iocell_serial_out_bits_22_o),
    .oe(iocell_serial_out_bits_22_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_23 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264228.4]
    .pad(iocell_serial_out_bits_23_pad),
    .o(iocell_serial_out_bits_23_o),
    .oe(iocell_serial_out_bits_23_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_24 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264234.4]
    .pad(iocell_serial_out_bits_24_pad),
    .o(iocell_serial_out_bits_24_o),
    .oe(iocell_serial_out_bits_24_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_25 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264240.4]
    .pad(iocell_serial_out_bits_25_pad),
    .o(iocell_serial_out_bits_25_o),
    .oe(iocell_serial_out_bits_25_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_26 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264246.4]
    .pad(iocell_serial_out_bits_26_pad),
    .o(iocell_serial_out_bits_26_o),
    .oe(iocell_serial_out_bits_26_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_27 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264252.4]
    .pad(iocell_serial_out_bits_27_pad),
    .o(iocell_serial_out_bits_27_o),
    .oe(iocell_serial_out_bits_27_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_28 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264258.4]
    .pad(iocell_serial_out_bits_28_pad),
    .o(iocell_serial_out_bits_28_o),
    .oe(iocell_serial_out_bits_28_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_29 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264264.4]
    .pad(iocell_serial_out_bits_29_pad),
    .o(iocell_serial_out_bits_29_o),
    .oe(iocell_serial_out_bits_29_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_30 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264270.4]
    .pad(iocell_serial_out_bits_30_pad),
    .o(iocell_serial_out_bits_30_o),
    .oe(iocell_serial_out_bits_30_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_bits_31 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264276.4]
    .pad(iocell_serial_out_bits_31_pad),
    .o(iocell_serial_out_bits_31_o),
    .oe(iocell_serial_out_bits_31_oe)
  );
  GenericDigitalOutIOCell iocell_serial_out_valid ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264314.4]
    .pad(iocell_serial_out_valid_pad),
    .o(iocell_serial_out_valid_o),
    .oe(iocell_serial_out_valid_oe)
  );
  GenericDigitalInIOCell iocell_serial_out_ready ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264323.4]
    .pad(iocell_serial_out_ready_pad),
    .i(iocell_serial_out_ready_i),
    .ie(iocell_serial_out_ready_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264364.4]
    .pad(iocell_serial_in_bits_pad),
    .i(iocell_serial_in_bits_i),
    .ie(iocell_serial_in_bits_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264370.4]
    .pad(iocell_serial_in_bits_1_pad),
    .i(iocell_serial_in_bits_1_i),
    .ie(iocell_serial_in_bits_1_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_2 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264376.4]
    .pad(iocell_serial_in_bits_2_pad),
    .i(iocell_serial_in_bits_2_i),
    .ie(iocell_serial_in_bits_2_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_3 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264382.4]
    .pad(iocell_serial_in_bits_3_pad),
    .i(iocell_serial_in_bits_3_i),
    .ie(iocell_serial_in_bits_3_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_4 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264388.4]
    .pad(iocell_serial_in_bits_4_pad),
    .i(iocell_serial_in_bits_4_i),
    .ie(iocell_serial_in_bits_4_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_5 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264394.4]
    .pad(iocell_serial_in_bits_5_pad),
    .i(iocell_serial_in_bits_5_i),
    .ie(iocell_serial_in_bits_5_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_6 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264400.4]
    .pad(iocell_serial_in_bits_6_pad),
    .i(iocell_serial_in_bits_6_i),
    .ie(iocell_serial_in_bits_6_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_7 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264406.4]
    .pad(iocell_serial_in_bits_7_pad),
    .i(iocell_serial_in_bits_7_i),
    .ie(iocell_serial_in_bits_7_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_8 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264412.4]
    .pad(iocell_serial_in_bits_8_pad),
    .i(iocell_serial_in_bits_8_i),
    .ie(iocell_serial_in_bits_8_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_9 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264418.4]
    .pad(iocell_serial_in_bits_9_pad),
    .i(iocell_serial_in_bits_9_i),
    .ie(iocell_serial_in_bits_9_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_10 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264424.4]
    .pad(iocell_serial_in_bits_10_pad),
    .i(iocell_serial_in_bits_10_i),
    .ie(iocell_serial_in_bits_10_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_11 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264430.4]
    .pad(iocell_serial_in_bits_11_pad),
    .i(iocell_serial_in_bits_11_i),
    .ie(iocell_serial_in_bits_11_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_12 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264436.4]
    .pad(iocell_serial_in_bits_12_pad),
    .i(iocell_serial_in_bits_12_i),
    .ie(iocell_serial_in_bits_12_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_13 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264442.4]
    .pad(iocell_serial_in_bits_13_pad),
    .i(iocell_serial_in_bits_13_i),
    .ie(iocell_serial_in_bits_13_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_14 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264448.4]
    .pad(iocell_serial_in_bits_14_pad),
    .i(iocell_serial_in_bits_14_i),
    .ie(iocell_serial_in_bits_14_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_15 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264454.4]
    .pad(iocell_serial_in_bits_15_pad),
    .i(iocell_serial_in_bits_15_i),
    .ie(iocell_serial_in_bits_15_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_16 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264460.4]
    .pad(iocell_serial_in_bits_16_pad),
    .i(iocell_serial_in_bits_16_i),
    .ie(iocell_serial_in_bits_16_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_17 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264466.4]
    .pad(iocell_serial_in_bits_17_pad),
    .i(iocell_serial_in_bits_17_i),
    .ie(iocell_serial_in_bits_17_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_18 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264472.4]
    .pad(iocell_serial_in_bits_18_pad),
    .i(iocell_serial_in_bits_18_i),
    .ie(iocell_serial_in_bits_18_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_19 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264478.4]
    .pad(iocell_serial_in_bits_19_pad),
    .i(iocell_serial_in_bits_19_i),
    .ie(iocell_serial_in_bits_19_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_20 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264484.4]
    .pad(iocell_serial_in_bits_20_pad),
    .i(iocell_serial_in_bits_20_i),
    .ie(iocell_serial_in_bits_20_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_21 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264490.4]
    .pad(iocell_serial_in_bits_21_pad),
    .i(iocell_serial_in_bits_21_i),
    .ie(iocell_serial_in_bits_21_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_22 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264496.4]
    .pad(iocell_serial_in_bits_22_pad),
    .i(iocell_serial_in_bits_22_i),
    .ie(iocell_serial_in_bits_22_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_23 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264502.4]
    .pad(iocell_serial_in_bits_23_pad),
    .i(iocell_serial_in_bits_23_i),
    .ie(iocell_serial_in_bits_23_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_24 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264508.4]
    .pad(iocell_serial_in_bits_24_pad),
    .i(iocell_serial_in_bits_24_i),
    .ie(iocell_serial_in_bits_24_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_25 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264514.4]
    .pad(iocell_serial_in_bits_25_pad),
    .i(iocell_serial_in_bits_25_i),
    .ie(iocell_serial_in_bits_25_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_26 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264520.4]
    .pad(iocell_serial_in_bits_26_pad),
    .i(iocell_serial_in_bits_26_i),
    .ie(iocell_serial_in_bits_26_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_27 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264526.4]
    .pad(iocell_serial_in_bits_27_pad),
    .i(iocell_serial_in_bits_27_i),
    .ie(iocell_serial_in_bits_27_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_28 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264532.4]
    .pad(iocell_serial_in_bits_28_pad),
    .i(iocell_serial_in_bits_28_i),
    .ie(iocell_serial_in_bits_28_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_29 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264538.4]
    .pad(iocell_serial_in_bits_29_pad),
    .i(iocell_serial_in_bits_29_i),
    .ie(iocell_serial_in_bits_29_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_30 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264544.4]
    .pad(iocell_serial_in_bits_30_pad),
    .i(iocell_serial_in_bits_30_i),
    .ie(iocell_serial_in_bits_30_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_bits_31 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264550.4]
    .pad(iocell_serial_in_bits_31_pad),
    .i(iocell_serial_in_bits_31_i),
    .ie(iocell_serial_in_bits_31_ie)
  );
  GenericDigitalInIOCell iocell_serial_in_valid ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264588.4]
    .pad(iocell_serial_in_valid_pad),
    .i(iocell_serial_in_valid_i),
    .ie(iocell_serial_in_valid_ie)
  );
  GenericDigitalOutIOCell iocell_serial_in_ready ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@264597.4]
    .pad(iocell_serial_in_ready_pad),
    .o(iocell_serial_in_ready_o),
    .oe(iocell_serial_in_ready_oe)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_last ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264606.4]
    .pad(iocell_mem_axi4_r_bits_last_pad),
    .i(iocell_mem_axi4_r_bits_last_i),
    .ie(iocell_mem_axi4_r_bits_last_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_resp ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264617.4]
    .pad(iocell_mem_axi4_r_bits_resp_pad),
    .i(iocell_mem_axi4_r_bits_resp_i),
    .ie(iocell_mem_axi4_r_bits_resp_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_resp_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264623.4]
    .pad(iocell_mem_axi4_r_bits_resp_1_pad),
    .i(iocell_mem_axi4_r_bits_resp_1_i),
    .ie(iocell_mem_axi4_r_bits_resp_1_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264695.4]
    .pad(iocell_mem_axi4_r_bits_data_pad),
    .i(iocell_mem_axi4_r_bits_data_i),
    .ie(iocell_mem_axi4_r_bits_data_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264701.4]
    .pad(iocell_mem_axi4_r_bits_data_1_pad),
    .i(iocell_mem_axi4_r_bits_data_1_i),
    .ie(iocell_mem_axi4_r_bits_data_1_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_2 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264707.4]
    .pad(iocell_mem_axi4_r_bits_data_2_pad),
    .i(iocell_mem_axi4_r_bits_data_2_i),
    .ie(iocell_mem_axi4_r_bits_data_2_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_3 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264713.4]
    .pad(iocell_mem_axi4_r_bits_data_3_pad),
    .i(iocell_mem_axi4_r_bits_data_3_i),
    .ie(iocell_mem_axi4_r_bits_data_3_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_4 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264719.4]
    .pad(iocell_mem_axi4_r_bits_data_4_pad),
    .i(iocell_mem_axi4_r_bits_data_4_i),
    .ie(iocell_mem_axi4_r_bits_data_4_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_5 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264725.4]
    .pad(iocell_mem_axi4_r_bits_data_5_pad),
    .i(iocell_mem_axi4_r_bits_data_5_i),
    .ie(iocell_mem_axi4_r_bits_data_5_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_6 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264731.4]
    .pad(iocell_mem_axi4_r_bits_data_6_pad),
    .i(iocell_mem_axi4_r_bits_data_6_i),
    .ie(iocell_mem_axi4_r_bits_data_6_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_7 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264737.4]
    .pad(iocell_mem_axi4_r_bits_data_7_pad),
    .i(iocell_mem_axi4_r_bits_data_7_i),
    .ie(iocell_mem_axi4_r_bits_data_7_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_8 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264743.4]
    .pad(iocell_mem_axi4_r_bits_data_8_pad),
    .i(iocell_mem_axi4_r_bits_data_8_i),
    .ie(iocell_mem_axi4_r_bits_data_8_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_9 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264749.4]
    .pad(iocell_mem_axi4_r_bits_data_9_pad),
    .i(iocell_mem_axi4_r_bits_data_9_i),
    .ie(iocell_mem_axi4_r_bits_data_9_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_10 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264755.4]
    .pad(iocell_mem_axi4_r_bits_data_10_pad),
    .i(iocell_mem_axi4_r_bits_data_10_i),
    .ie(iocell_mem_axi4_r_bits_data_10_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_11 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264761.4]
    .pad(iocell_mem_axi4_r_bits_data_11_pad),
    .i(iocell_mem_axi4_r_bits_data_11_i),
    .ie(iocell_mem_axi4_r_bits_data_11_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_12 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264767.4]
    .pad(iocell_mem_axi4_r_bits_data_12_pad),
    .i(iocell_mem_axi4_r_bits_data_12_i),
    .ie(iocell_mem_axi4_r_bits_data_12_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_13 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264773.4]
    .pad(iocell_mem_axi4_r_bits_data_13_pad),
    .i(iocell_mem_axi4_r_bits_data_13_i),
    .ie(iocell_mem_axi4_r_bits_data_13_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_14 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264779.4]
    .pad(iocell_mem_axi4_r_bits_data_14_pad),
    .i(iocell_mem_axi4_r_bits_data_14_i),
    .ie(iocell_mem_axi4_r_bits_data_14_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_15 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264785.4]
    .pad(iocell_mem_axi4_r_bits_data_15_pad),
    .i(iocell_mem_axi4_r_bits_data_15_i),
    .ie(iocell_mem_axi4_r_bits_data_15_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_16 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264791.4]
    .pad(iocell_mem_axi4_r_bits_data_16_pad),
    .i(iocell_mem_axi4_r_bits_data_16_i),
    .ie(iocell_mem_axi4_r_bits_data_16_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_17 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264797.4]
    .pad(iocell_mem_axi4_r_bits_data_17_pad),
    .i(iocell_mem_axi4_r_bits_data_17_i),
    .ie(iocell_mem_axi4_r_bits_data_17_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_18 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264803.4]
    .pad(iocell_mem_axi4_r_bits_data_18_pad),
    .i(iocell_mem_axi4_r_bits_data_18_i),
    .ie(iocell_mem_axi4_r_bits_data_18_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_19 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264809.4]
    .pad(iocell_mem_axi4_r_bits_data_19_pad),
    .i(iocell_mem_axi4_r_bits_data_19_i),
    .ie(iocell_mem_axi4_r_bits_data_19_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_20 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264815.4]
    .pad(iocell_mem_axi4_r_bits_data_20_pad),
    .i(iocell_mem_axi4_r_bits_data_20_i),
    .ie(iocell_mem_axi4_r_bits_data_20_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_21 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264821.4]
    .pad(iocell_mem_axi4_r_bits_data_21_pad),
    .i(iocell_mem_axi4_r_bits_data_21_i),
    .ie(iocell_mem_axi4_r_bits_data_21_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_22 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264827.4]
    .pad(iocell_mem_axi4_r_bits_data_22_pad),
    .i(iocell_mem_axi4_r_bits_data_22_i),
    .ie(iocell_mem_axi4_r_bits_data_22_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_23 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264833.4]
    .pad(iocell_mem_axi4_r_bits_data_23_pad),
    .i(iocell_mem_axi4_r_bits_data_23_i),
    .ie(iocell_mem_axi4_r_bits_data_23_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_24 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264839.4]
    .pad(iocell_mem_axi4_r_bits_data_24_pad),
    .i(iocell_mem_axi4_r_bits_data_24_i),
    .ie(iocell_mem_axi4_r_bits_data_24_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_25 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264845.4]
    .pad(iocell_mem_axi4_r_bits_data_25_pad),
    .i(iocell_mem_axi4_r_bits_data_25_i),
    .ie(iocell_mem_axi4_r_bits_data_25_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_26 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264851.4]
    .pad(iocell_mem_axi4_r_bits_data_26_pad),
    .i(iocell_mem_axi4_r_bits_data_26_i),
    .ie(iocell_mem_axi4_r_bits_data_26_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_27 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264857.4]
    .pad(iocell_mem_axi4_r_bits_data_27_pad),
    .i(iocell_mem_axi4_r_bits_data_27_i),
    .ie(iocell_mem_axi4_r_bits_data_27_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_28 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264863.4]
    .pad(iocell_mem_axi4_r_bits_data_28_pad),
    .i(iocell_mem_axi4_r_bits_data_28_i),
    .ie(iocell_mem_axi4_r_bits_data_28_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_29 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264869.4]
    .pad(iocell_mem_axi4_r_bits_data_29_pad),
    .i(iocell_mem_axi4_r_bits_data_29_i),
    .ie(iocell_mem_axi4_r_bits_data_29_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_30 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264875.4]
    .pad(iocell_mem_axi4_r_bits_data_30_pad),
    .i(iocell_mem_axi4_r_bits_data_30_i),
    .ie(iocell_mem_axi4_r_bits_data_30_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_31 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264881.4]
    .pad(iocell_mem_axi4_r_bits_data_31_pad),
    .i(iocell_mem_axi4_r_bits_data_31_i),
    .ie(iocell_mem_axi4_r_bits_data_31_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_32 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264887.4]
    .pad(iocell_mem_axi4_r_bits_data_32_pad),
    .i(iocell_mem_axi4_r_bits_data_32_i),
    .ie(iocell_mem_axi4_r_bits_data_32_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_33 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264893.4]
    .pad(iocell_mem_axi4_r_bits_data_33_pad),
    .i(iocell_mem_axi4_r_bits_data_33_i),
    .ie(iocell_mem_axi4_r_bits_data_33_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_34 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264899.4]
    .pad(iocell_mem_axi4_r_bits_data_34_pad),
    .i(iocell_mem_axi4_r_bits_data_34_i),
    .ie(iocell_mem_axi4_r_bits_data_34_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_35 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264905.4]
    .pad(iocell_mem_axi4_r_bits_data_35_pad),
    .i(iocell_mem_axi4_r_bits_data_35_i),
    .ie(iocell_mem_axi4_r_bits_data_35_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_36 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264911.4]
    .pad(iocell_mem_axi4_r_bits_data_36_pad),
    .i(iocell_mem_axi4_r_bits_data_36_i),
    .ie(iocell_mem_axi4_r_bits_data_36_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_37 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264917.4]
    .pad(iocell_mem_axi4_r_bits_data_37_pad),
    .i(iocell_mem_axi4_r_bits_data_37_i),
    .ie(iocell_mem_axi4_r_bits_data_37_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_38 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264923.4]
    .pad(iocell_mem_axi4_r_bits_data_38_pad),
    .i(iocell_mem_axi4_r_bits_data_38_i),
    .ie(iocell_mem_axi4_r_bits_data_38_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_39 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264929.4]
    .pad(iocell_mem_axi4_r_bits_data_39_pad),
    .i(iocell_mem_axi4_r_bits_data_39_i),
    .ie(iocell_mem_axi4_r_bits_data_39_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_40 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264935.4]
    .pad(iocell_mem_axi4_r_bits_data_40_pad),
    .i(iocell_mem_axi4_r_bits_data_40_i),
    .ie(iocell_mem_axi4_r_bits_data_40_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_41 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264941.4]
    .pad(iocell_mem_axi4_r_bits_data_41_pad),
    .i(iocell_mem_axi4_r_bits_data_41_i),
    .ie(iocell_mem_axi4_r_bits_data_41_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_42 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264947.4]
    .pad(iocell_mem_axi4_r_bits_data_42_pad),
    .i(iocell_mem_axi4_r_bits_data_42_i),
    .ie(iocell_mem_axi4_r_bits_data_42_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_43 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264953.4]
    .pad(iocell_mem_axi4_r_bits_data_43_pad),
    .i(iocell_mem_axi4_r_bits_data_43_i),
    .ie(iocell_mem_axi4_r_bits_data_43_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_44 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264959.4]
    .pad(iocell_mem_axi4_r_bits_data_44_pad),
    .i(iocell_mem_axi4_r_bits_data_44_i),
    .ie(iocell_mem_axi4_r_bits_data_44_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_45 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264965.4]
    .pad(iocell_mem_axi4_r_bits_data_45_pad),
    .i(iocell_mem_axi4_r_bits_data_45_i),
    .ie(iocell_mem_axi4_r_bits_data_45_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_46 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264971.4]
    .pad(iocell_mem_axi4_r_bits_data_46_pad),
    .i(iocell_mem_axi4_r_bits_data_46_i),
    .ie(iocell_mem_axi4_r_bits_data_46_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_47 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264977.4]
    .pad(iocell_mem_axi4_r_bits_data_47_pad),
    .i(iocell_mem_axi4_r_bits_data_47_i),
    .ie(iocell_mem_axi4_r_bits_data_47_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_48 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264983.4]
    .pad(iocell_mem_axi4_r_bits_data_48_pad),
    .i(iocell_mem_axi4_r_bits_data_48_i),
    .ie(iocell_mem_axi4_r_bits_data_48_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_49 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264989.4]
    .pad(iocell_mem_axi4_r_bits_data_49_pad),
    .i(iocell_mem_axi4_r_bits_data_49_i),
    .ie(iocell_mem_axi4_r_bits_data_49_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_50 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@264995.4]
    .pad(iocell_mem_axi4_r_bits_data_50_pad),
    .i(iocell_mem_axi4_r_bits_data_50_i),
    .ie(iocell_mem_axi4_r_bits_data_50_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_51 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265001.4]
    .pad(iocell_mem_axi4_r_bits_data_51_pad),
    .i(iocell_mem_axi4_r_bits_data_51_i),
    .ie(iocell_mem_axi4_r_bits_data_51_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_52 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265007.4]
    .pad(iocell_mem_axi4_r_bits_data_52_pad),
    .i(iocell_mem_axi4_r_bits_data_52_i),
    .ie(iocell_mem_axi4_r_bits_data_52_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_53 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265013.4]
    .pad(iocell_mem_axi4_r_bits_data_53_pad),
    .i(iocell_mem_axi4_r_bits_data_53_i),
    .ie(iocell_mem_axi4_r_bits_data_53_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_54 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265019.4]
    .pad(iocell_mem_axi4_r_bits_data_54_pad),
    .i(iocell_mem_axi4_r_bits_data_54_i),
    .ie(iocell_mem_axi4_r_bits_data_54_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_55 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265025.4]
    .pad(iocell_mem_axi4_r_bits_data_55_pad),
    .i(iocell_mem_axi4_r_bits_data_55_i),
    .ie(iocell_mem_axi4_r_bits_data_55_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_56 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265031.4]
    .pad(iocell_mem_axi4_r_bits_data_56_pad),
    .i(iocell_mem_axi4_r_bits_data_56_i),
    .ie(iocell_mem_axi4_r_bits_data_56_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_57 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265037.4]
    .pad(iocell_mem_axi4_r_bits_data_57_pad),
    .i(iocell_mem_axi4_r_bits_data_57_i),
    .ie(iocell_mem_axi4_r_bits_data_57_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_58 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265043.4]
    .pad(iocell_mem_axi4_r_bits_data_58_pad),
    .i(iocell_mem_axi4_r_bits_data_58_i),
    .ie(iocell_mem_axi4_r_bits_data_58_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_59 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265049.4]
    .pad(iocell_mem_axi4_r_bits_data_59_pad),
    .i(iocell_mem_axi4_r_bits_data_59_i),
    .ie(iocell_mem_axi4_r_bits_data_59_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_60 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265055.4]
    .pad(iocell_mem_axi4_r_bits_data_60_pad),
    .i(iocell_mem_axi4_r_bits_data_60_i),
    .ie(iocell_mem_axi4_r_bits_data_60_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_61 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265061.4]
    .pad(iocell_mem_axi4_r_bits_data_61_pad),
    .i(iocell_mem_axi4_r_bits_data_61_i),
    .ie(iocell_mem_axi4_r_bits_data_61_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_62 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265067.4]
    .pad(iocell_mem_axi4_r_bits_data_62_pad),
    .i(iocell_mem_axi4_r_bits_data_62_i),
    .ie(iocell_mem_axi4_r_bits_data_62_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_data_63 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265073.4]
    .pad(iocell_mem_axi4_r_bits_data_63_pad),
    .i(iocell_mem_axi4_r_bits_data_63_i),
    .ie(iocell_mem_axi4_r_bits_data_63_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_id ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265147.4]
    .pad(iocell_mem_axi4_r_bits_id_pad),
    .i(iocell_mem_axi4_r_bits_id_i),
    .ie(iocell_mem_axi4_r_bits_id_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_id_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265153.4]
    .pad(iocell_mem_axi4_r_bits_id_1_pad),
    .i(iocell_mem_axi4_r_bits_id_1_i),
    .ie(iocell_mem_axi4_r_bits_id_1_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_id_2 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265159.4]
    .pad(iocell_mem_axi4_r_bits_id_2_pad),
    .i(iocell_mem_axi4_r_bits_id_2_i),
    .ie(iocell_mem_axi4_r_bits_id_2_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_bits_id_3 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265165.4]
    .pad(iocell_mem_axi4_r_bits_id_3_pad),
    .i(iocell_mem_axi4_r_bits_id_3_i),
    .ie(iocell_mem_axi4_r_bits_id_3_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_r_valid ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265175.4]
    .pad(iocell_mem_axi4_r_valid_pad),
    .i(iocell_mem_axi4_r_valid_i),
    .ie(iocell_mem_axi4_r_valid_ie)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_r_ready ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265184.4]
    .pad(iocell_mem_axi4_r_ready_pad),
    .o(iocell_mem_axi4_r_ready_o),
    .oe(iocell_mem_axi4_r_ready_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_qos ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265197.4]
    .pad(iocell_mem_axi4_ar_bits_qos_pad),
    .o(iocell_mem_axi4_ar_bits_qos_o),
    .oe(iocell_mem_axi4_ar_bits_qos_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_qos_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265203.4]
    .pad(iocell_mem_axi4_ar_bits_qos_1_pad),
    .o(iocell_mem_axi4_ar_bits_qos_1_o),
    .oe(iocell_mem_axi4_ar_bits_qos_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_qos_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265209.4]
    .pad(iocell_mem_axi4_ar_bits_qos_2_pad),
    .o(iocell_mem_axi4_ar_bits_qos_2_o),
    .oe(iocell_mem_axi4_ar_bits_qos_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_qos_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265215.4]
    .pad(iocell_mem_axi4_ar_bits_qos_3_pad),
    .o(iocell_mem_axi4_ar_bits_qos_3_o),
    .oe(iocell_mem_axi4_ar_bits_qos_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_prot ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265228.4]
    .pad(iocell_mem_axi4_ar_bits_prot_pad),
    .o(iocell_mem_axi4_ar_bits_prot_o),
    .oe(iocell_mem_axi4_ar_bits_prot_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_prot_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265234.4]
    .pad(iocell_mem_axi4_ar_bits_prot_1_pad),
    .o(iocell_mem_axi4_ar_bits_prot_1_o),
    .oe(iocell_mem_axi4_ar_bits_prot_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_prot_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265240.4]
    .pad(iocell_mem_axi4_ar_bits_prot_2_pad),
    .o(iocell_mem_axi4_ar_bits_prot_2_o),
    .oe(iocell_mem_axi4_ar_bits_prot_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_cache ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265253.4]
    .pad(iocell_mem_axi4_ar_bits_cache_pad),
    .o(iocell_mem_axi4_ar_bits_cache_o),
    .oe(iocell_mem_axi4_ar_bits_cache_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_cache_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265259.4]
    .pad(iocell_mem_axi4_ar_bits_cache_1_pad),
    .o(iocell_mem_axi4_ar_bits_cache_1_o),
    .oe(iocell_mem_axi4_ar_bits_cache_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_cache_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265265.4]
    .pad(iocell_mem_axi4_ar_bits_cache_2_pad),
    .o(iocell_mem_axi4_ar_bits_cache_2_o),
    .oe(iocell_mem_axi4_ar_bits_cache_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_cache_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265271.4]
    .pad(iocell_mem_axi4_ar_bits_cache_3_pad),
    .o(iocell_mem_axi4_ar_bits_cache_3_o),
    .oe(iocell_mem_axi4_ar_bits_cache_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_lock ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265282.4]
    .pad(iocell_mem_axi4_ar_bits_lock_pad),
    .o(iocell_mem_axi4_ar_bits_lock_o),
    .oe(iocell_mem_axi4_ar_bits_lock_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_burst ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265291.4]
    .pad(iocell_mem_axi4_ar_bits_burst_pad),
    .o(iocell_mem_axi4_ar_bits_burst_o),
    .oe(iocell_mem_axi4_ar_bits_burst_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_burst_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265297.4]
    .pad(iocell_mem_axi4_ar_bits_burst_1_pad),
    .o(iocell_mem_axi4_ar_bits_burst_1_o),
    .oe(iocell_mem_axi4_ar_bits_burst_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_size ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265308.4]
    .pad(iocell_mem_axi4_ar_bits_size_pad),
    .o(iocell_mem_axi4_ar_bits_size_o),
    .oe(iocell_mem_axi4_ar_bits_size_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_size_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265314.4]
    .pad(iocell_mem_axi4_ar_bits_size_1_pad),
    .o(iocell_mem_axi4_ar_bits_size_1_o),
    .oe(iocell_mem_axi4_ar_bits_size_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_size_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265320.4]
    .pad(iocell_mem_axi4_ar_bits_size_2_pad),
    .o(iocell_mem_axi4_ar_bits_size_2_o),
    .oe(iocell_mem_axi4_ar_bits_size_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_len ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265337.4]
    .pad(iocell_mem_axi4_ar_bits_len_pad),
    .o(iocell_mem_axi4_ar_bits_len_o),
    .oe(iocell_mem_axi4_ar_bits_len_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_len_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265343.4]
    .pad(iocell_mem_axi4_ar_bits_len_1_pad),
    .o(iocell_mem_axi4_ar_bits_len_1_o),
    .oe(iocell_mem_axi4_ar_bits_len_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_len_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265349.4]
    .pad(iocell_mem_axi4_ar_bits_len_2_pad),
    .o(iocell_mem_axi4_ar_bits_len_2_o),
    .oe(iocell_mem_axi4_ar_bits_len_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_len_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265355.4]
    .pad(iocell_mem_axi4_ar_bits_len_3_pad),
    .o(iocell_mem_axi4_ar_bits_len_3_o),
    .oe(iocell_mem_axi4_ar_bits_len_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_len_4 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265361.4]
    .pad(iocell_mem_axi4_ar_bits_len_4_pad),
    .o(iocell_mem_axi4_ar_bits_len_4_o),
    .oe(iocell_mem_axi4_ar_bits_len_4_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_len_5 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265367.4]
    .pad(iocell_mem_axi4_ar_bits_len_5_pad),
    .o(iocell_mem_axi4_ar_bits_len_5_o),
    .oe(iocell_mem_axi4_ar_bits_len_5_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_len_6 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265373.4]
    .pad(iocell_mem_axi4_ar_bits_len_6_pad),
    .o(iocell_mem_axi4_ar_bits_len_6_o),
    .oe(iocell_mem_axi4_ar_bits_len_6_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_len_7 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265379.4]
    .pad(iocell_mem_axi4_ar_bits_len_7_pad),
    .o(iocell_mem_axi4_ar_bits_len_7_o),
    .oe(iocell_mem_axi4_ar_bits_len_7_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265425.4]
    .pad(iocell_mem_axi4_ar_bits_addr_pad),
    .o(iocell_mem_axi4_ar_bits_addr_o),
    .oe(iocell_mem_axi4_ar_bits_addr_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265431.4]
    .pad(iocell_mem_axi4_ar_bits_addr_1_pad),
    .o(iocell_mem_axi4_ar_bits_addr_1_o),
    .oe(iocell_mem_axi4_ar_bits_addr_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265437.4]
    .pad(iocell_mem_axi4_ar_bits_addr_2_pad),
    .o(iocell_mem_axi4_ar_bits_addr_2_o),
    .oe(iocell_mem_axi4_ar_bits_addr_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265443.4]
    .pad(iocell_mem_axi4_ar_bits_addr_3_pad),
    .o(iocell_mem_axi4_ar_bits_addr_3_o),
    .oe(iocell_mem_axi4_ar_bits_addr_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_4 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265449.4]
    .pad(iocell_mem_axi4_ar_bits_addr_4_pad),
    .o(iocell_mem_axi4_ar_bits_addr_4_o),
    .oe(iocell_mem_axi4_ar_bits_addr_4_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_5 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265455.4]
    .pad(iocell_mem_axi4_ar_bits_addr_5_pad),
    .o(iocell_mem_axi4_ar_bits_addr_5_o),
    .oe(iocell_mem_axi4_ar_bits_addr_5_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_6 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265461.4]
    .pad(iocell_mem_axi4_ar_bits_addr_6_pad),
    .o(iocell_mem_axi4_ar_bits_addr_6_o),
    .oe(iocell_mem_axi4_ar_bits_addr_6_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_7 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265467.4]
    .pad(iocell_mem_axi4_ar_bits_addr_7_pad),
    .o(iocell_mem_axi4_ar_bits_addr_7_o),
    .oe(iocell_mem_axi4_ar_bits_addr_7_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_8 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265473.4]
    .pad(iocell_mem_axi4_ar_bits_addr_8_pad),
    .o(iocell_mem_axi4_ar_bits_addr_8_o),
    .oe(iocell_mem_axi4_ar_bits_addr_8_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_9 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265479.4]
    .pad(iocell_mem_axi4_ar_bits_addr_9_pad),
    .o(iocell_mem_axi4_ar_bits_addr_9_o),
    .oe(iocell_mem_axi4_ar_bits_addr_9_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_10 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265485.4]
    .pad(iocell_mem_axi4_ar_bits_addr_10_pad),
    .o(iocell_mem_axi4_ar_bits_addr_10_o),
    .oe(iocell_mem_axi4_ar_bits_addr_10_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_11 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265491.4]
    .pad(iocell_mem_axi4_ar_bits_addr_11_pad),
    .o(iocell_mem_axi4_ar_bits_addr_11_o),
    .oe(iocell_mem_axi4_ar_bits_addr_11_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_12 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265497.4]
    .pad(iocell_mem_axi4_ar_bits_addr_12_pad),
    .o(iocell_mem_axi4_ar_bits_addr_12_o),
    .oe(iocell_mem_axi4_ar_bits_addr_12_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_13 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265503.4]
    .pad(iocell_mem_axi4_ar_bits_addr_13_pad),
    .o(iocell_mem_axi4_ar_bits_addr_13_o),
    .oe(iocell_mem_axi4_ar_bits_addr_13_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_14 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265509.4]
    .pad(iocell_mem_axi4_ar_bits_addr_14_pad),
    .o(iocell_mem_axi4_ar_bits_addr_14_o),
    .oe(iocell_mem_axi4_ar_bits_addr_14_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_15 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265515.4]
    .pad(iocell_mem_axi4_ar_bits_addr_15_pad),
    .o(iocell_mem_axi4_ar_bits_addr_15_o),
    .oe(iocell_mem_axi4_ar_bits_addr_15_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_16 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265521.4]
    .pad(iocell_mem_axi4_ar_bits_addr_16_pad),
    .o(iocell_mem_axi4_ar_bits_addr_16_o),
    .oe(iocell_mem_axi4_ar_bits_addr_16_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_17 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265527.4]
    .pad(iocell_mem_axi4_ar_bits_addr_17_pad),
    .o(iocell_mem_axi4_ar_bits_addr_17_o),
    .oe(iocell_mem_axi4_ar_bits_addr_17_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_18 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265533.4]
    .pad(iocell_mem_axi4_ar_bits_addr_18_pad),
    .o(iocell_mem_axi4_ar_bits_addr_18_o),
    .oe(iocell_mem_axi4_ar_bits_addr_18_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_19 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265539.4]
    .pad(iocell_mem_axi4_ar_bits_addr_19_pad),
    .o(iocell_mem_axi4_ar_bits_addr_19_o),
    .oe(iocell_mem_axi4_ar_bits_addr_19_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_20 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265545.4]
    .pad(iocell_mem_axi4_ar_bits_addr_20_pad),
    .o(iocell_mem_axi4_ar_bits_addr_20_o),
    .oe(iocell_mem_axi4_ar_bits_addr_20_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_21 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265551.4]
    .pad(iocell_mem_axi4_ar_bits_addr_21_pad),
    .o(iocell_mem_axi4_ar_bits_addr_21_o),
    .oe(iocell_mem_axi4_ar_bits_addr_21_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_22 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265557.4]
    .pad(iocell_mem_axi4_ar_bits_addr_22_pad),
    .o(iocell_mem_axi4_ar_bits_addr_22_o),
    .oe(iocell_mem_axi4_ar_bits_addr_22_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_23 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265563.4]
    .pad(iocell_mem_axi4_ar_bits_addr_23_pad),
    .o(iocell_mem_axi4_ar_bits_addr_23_o),
    .oe(iocell_mem_axi4_ar_bits_addr_23_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_24 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265569.4]
    .pad(iocell_mem_axi4_ar_bits_addr_24_pad),
    .o(iocell_mem_axi4_ar_bits_addr_24_o),
    .oe(iocell_mem_axi4_ar_bits_addr_24_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_25 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265575.4]
    .pad(iocell_mem_axi4_ar_bits_addr_25_pad),
    .o(iocell_mem_axi4_ar_bits_addr_25_o),
    .oe(iocell_mem_axi4_ar_bits_addr_25_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_26 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265581.4]
    .pad(iocell_mem_axi4_ar_bits_addr_26_pad),
    .o(iocell_mem_axi4_ar_bits_addr_26_o),
    .oe(iocell_mem_axi4_ar_bits_addr_26_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_27 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265587.4]
    .pad(iocell_mem_axi4_ar_bits_addr_27_pad),
    .o(iocell_mem_axi4_ar_bits_addr_27_o),
    .oe(iocell_mem_axi4_ar_bits_addr_27_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_28 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265593.4]
    .pad(iocell_mem_axi4_ar_bits_addr_28_pad),
    .o(iocell_mem_axi4_ar_bits_addr_28_o),
    .oe(iocell_mem_axi4_ar_bits_addr_28_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_29 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265599.4]
    .pad(iocell_mem_axi4_ar_bits_addr_29_pad),
    .o(iocell_mem_axi4_ar_bits_addr_29_o),
    .oe(iocell_mem_axi4_ar_bits_addr_29_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_30 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265605.4]
    .pad(iocell_mem_axi4_ar_bits_addr_30_pad),
    .o(iocell_mem_axi4_ar_bits_addr_30_o),
    .oe(iocell_mem_axi4_ar_bits_addr_30_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_addr_31 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265611.4]
    .pad(iocell_mem_axi4_ar_bits_addr_31_pad),
    .o(iocell_mem_axi4_ar_bits_addr_31_o),
    .oe(iocell_mem_axi4_ar_bits_addr_31_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_id ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265653.4]
    .pad(iocell_mem_axi4_ar_bits_id_pad),
    .o(iocell_mem_axi4_ar_bits_id_o),
    .oe(iocell_mem_axi4_ar_bits_id_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_id_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265659.4]
    .pad(iocell_mem_axi4_ar_bits_id_1_pad),
    .o(iocell_mem_axi4_ar_bits_id_1_o),
    .oe(iocell_mem_axi4_ar_bits_id_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_id_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265665.4]
    .pad(iocell_mem_axi4_ar_bits_id_2_pad),
    .o(iocell_mem_axi4_ar_bits_id_2_o),
    .oe(iocell_mem_axi4_ar_bits_id_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_bits_id_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265671.4]
    .pad(iocell_mem_axi4_ar_bits_id_3_pad),
    .o(iocell_mem_axi4_ar_bits_id_3_o),
    .oe(iocell_mem_axi4_ar_bits_id_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_ar_valid ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265681.4]
    .pad(iocell_mem_axi4_ar_valid_pad),
    .o(iocell_mem_axi4_ar_valid_o),
    .oe(iocell_mem_axi4_ar_valid_oe)
  );
  GenericDigitalInIOCell iocell_mem_axi4_ar_ready ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265690.4]
    .pad(iocell_mem_axi4_ar_ready_pad),
    .i(iocell_mem_axi4_ar_ready_i),
    .ie(iocell_mem_axi4_ar_ready_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_b_bits_resp ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265701.4]
    .pad(iocell_mem_axi4_b_bits_resp_pad),
    .i(iocell_mem_axi4_b_bits_resp_i),
    .ie(iocell_mem_axi4_b_bits_resp_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_b_bits_resp_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265707.4]
    .pad(iocell_mem_axi4_b_bits_resp_1_pad),
    .i(iocell_mem_axi4_b_bits_resp_1_i),
    .ie(iocell_mem_axi4_b_bits_resp_1_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_b_bits_id ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265719.4]
    .pad(iocell_mem_axi4_b_bits_id_pad),
    .i(iocell_mem_axi4_b_bits_id_i),
    .ie(iocell_mem_axi4_b_bits_id_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_b_bits_id_1 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265725.4]
    .pad(iocell_mem_axi4_b_bits_id_1_pad),
    .i(iocell_mem_axi4_b_bits_id_1_i),
    .ie(iocell_mem_axi4_b_bits_id_1_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_b_bits_id_2 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265731.4]
    .pad(iocell_mem_axi4_b_bits_id_2_pad),
    .i(iocell_mem_axi4_b_bits_id_2_i),
    .ie(iocell_mem_axi4_b_bits_id_2_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_b_bits_id_3 ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265737.4]
    .pad(iocell_mem_axi4_b_bits_id_3_pad),
    .i(iocell_mem_axi4_b_bits_id_3_i),
    .ie(iocell_mem_axi4_b_bits_id_3_ie)
  );
  GenericDigitalInIOCell iocell_mem_axi4_b_valid ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@265747.4]
    .pad(iocell_mem_axi4_b_valid_pad),
    .i(iocell_mem_axi4_b_valid_i),
    .ie(iocell_mem_axi4_b_valid_ie)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_b_ready ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265756.4]
    .pad(iocell_mem_axi4_b_ready_pad),
    .o(iocell_mem_axi4_b_ready_o),
    .oe(iocell_mem_axi4_b_ready_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_last ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265765.4]
    .pad(iocell_mem_axi4_w_bits_last_pad),
    .o(iocell_mem_axi4_w_bits_last_o),
    .oe(iocell_mem_axi4_w_bits_last_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_strb ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265782.4]
    .pad(iocell_mem_axi4_w_bits_strb_pad),
    .o(iocell_mem_axi4_w_bits_strb_o),
    .oe(iocell_mem_axi4_w_bits_strb_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_strb_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265788.4]
    .pad(iocell_mem_axi4_w_bits_strb_1_pad),
    .o(iocell_mem_axi4_w_bits_strb_1_o),
    .oe(iocell_mem_axi4_w_bits_strb_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_strb_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265794.4]
    .pad(iocell_mem_axi4_w_bits_strb_2_pad),
    .o(iocell_mem_axi4_w_bits_strb_2_o),
    .oe(iocell_mem_axi4_w_bits_strb_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_strb_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265800.4]
    .pad(iocell_mem_axi4_w_bits_strb_3_pad),
    .o(iocell_mem_axi4_w_bits_strb_3_o),
    .oe(iocell_mem_axi4_w_bits_strb_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_strb_4 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265806.4]
    .pad(iocell_mem_axi4_w_bits_strb_4_pad),
    .o(iocell_mem_axi4_w_bits_strb_4_o),
    .oe(iocell_mem_axi4_w_bits_strb_4_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_strb_5 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265812.4]
    .pad(iocell_mem_axi4_w_bits_strb_5_pad),
    .o(iocell_mem_axi4_w_bits_strb_5_o),
    .oe(iocell_mem_axi4_w_bits_strb_5_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_strb_6 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265818.4]
    .pad(iocell_mem_axi4_w_bits_strb_6_pad),
    .o(iocell_mem_axi4_w_bits_strb_6_o),
    .oe(iocell_mem_axi4_w_bits_strb_6_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_strb_7 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265824.4]
    .pad(iocell_mem_axi4_w_bits_strb_7_pad),
    .o(iocell_mem_axi4_w_bits_strb_7_o),
    .oe(iocell_mem_axi4_w_bits_strb_7_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265902.4]
    .pad(iocell_mem_axi4_w_bits_data_pad),
    .o(iocell_mem_axi4_w_bits_data_o),
    .oe(iocell_mem_axi4_w_bits_data_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265908.4]
    .pad(iocell_mem_axi4_w_bits_data_1_pad),
    .o(iocell_mem_axi4_w_bits_data_1_o),
    .oe(iocell_mem_axi4_w_bits_data_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265914.4]
    .pad(iocell_mem_axi4_w_bits_data_2_pad),
    .o(iocell_mem_axi4_w_bits_data_2_o),
    .oe(iocell_mem_axi4_w_bits_data_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265920.4]
    .pad(iocell_mem_axi4_w_bits_data_3_pad),
    .o(iocell_mem_axi4_w_bits_data_3_o),
    .oe(iocell_mem_axi4_w_bits_data_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_4 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265926.4]
    .pad(iocell_mem_axi4_w_bits_data_4_pad),
    .o(iocell_mem_axi4_w_bits_data_4_o),
    .oe(iocell_mem_axi4_w_bits_data_4_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_5 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265932.4]
    .pad(iocell_mem_axi4_w_bits_data_5_pad),
    .o(iocell_mem_axi4_w_bits_data_5_o),
    .oe(iocell_mem_axi4_w_bits_data_5_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_6 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265938.4]
    .pad(iocell_mem_axi4_w_bits_data_6_pad),
    .o(iocell_mem_axi4_w_bits_data_6_o),
    .oe(iocell_mem_axi4_w_bits_data_6_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_7 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265944.4]
    .pad(iocell_mem_axi4_w_bits_data_7_pad),
    .o(iocell_mem_axi4_w_bits_data_7_o),
    .oe(iocell_mem_axi4_w_bits_data_7_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_8 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265950.4]
    .pad(iocell_mem_axi4_w_bits_data_8_pad),
    .o(iocell_mem_axi4_w_bits_data_8_o),
    .oe(iocell_mem_axi4_w_bits_data_8_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_9 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265956.4]
    .pad(iocell_mem_axi4_w_bits_data_9_pad),
    .o(iocell_mem_axi4_w_bits_data_9_o),
    .oe(iocell_mem_axi4_w_bits_data_9_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_10 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265962.4]
    .pad(iocell_mem_axi4_w_bits_data_10_pad),
    .o(iocell_mem_axi4_w_bits_data_10_o),
    .oe(iocell_mem_axi4_w_bits_data_10_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_11 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265968.4]
    .pad(iocell_mem_axi4_w_bits_data_11_pad),
    .o(iocell_mem_axi4_w_bits_data_11_o),
    .oe(iocell_mem_axi4_w_bits_data_11_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_12 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265974.4]
    .pad(iocell_mem_axi4_w_bits_data_12_pad),
    .o(iocell_mem_axi4_w_bits_data_12_o),
    .oe(iocell_mem_axi4_w_bits_data_12_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_13 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265980.4]
    .pad(iocell_mem_axi4_w_bits_data_13_pad),
    .o(iocell_mem_axi4_w_bits_data_13_o),
    .oe(iocell_mem_axi4_w_bits_data_13_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_14 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265986.4]
    .pad(iocell_mem_axi4_w_bits_data_14_pad),
    .o(iocell_mem_axi4_w_bits_data_14_o),
    .oe(iocell_mem_axi4_w_bits_data_14_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_15 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265992.4]
    .pad(iocell_mem_axi4_w_bits_data_15_pad),
    .o(iocell_mem_axi4_w_bits_data_15_o),
    .oe(iocell_mem_axi4_w_bits_data_15_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_16 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@265998.4]
    .pad(iocell_mem_axi4_w_bits_data_16_pad),
    .o(iocell_mem_axi4_w_bits_data_16_o),
    .oe(iocell_mem_axi4_w_bits_data_16_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_17 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266004.4]
    .pad(iocell_mem_axi4_w_bits_data_17_pad),
    .o(iocell_mem_axi4_w_bits_data_17_o),
    .oe(iocell_mem_axi4_w_bits_data_17_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_18 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266010.4]
    .pad(iocell_mem_axi4_w_bits_data_18_pad),
    .o(iocell_mem_axi4_w_bits_data_18_o),
    .oe(iocell_mem_axi4_w_bits_data_18_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_19 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266016.4]
    .pad(iocell_mem_axi4_w_bits_data_19_pad),
    .o(iocell_mem_axi4_w_bits_data_19_o),
    .oe(iocell_mem_axi4_w_bits_data_19_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_20 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266022.4]
    .pad(iocell_mem_axi4_w_bits_data_20_pad),
    .o(iocell_mem_axi4_w_bits_data_20_o),
    .oe(iocell_mem_axi4_w_bits_data_20_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_21 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266028.4]
    .pad(iocell_mem_axi4_w_bits_data_21_pad),
    .o(iocell_mem_axi4_w_bits_data_21_o),
    .oe(iocell_mem_axi4_w_bits_data_21_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_22 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266034.4]
    .pad(iocell_mem_axi4_w_bits_data_22_pad),
    .o(iocell_mem_axi4_w_bits_data_22_o),
    .oe(iocell_mem_axi4_w_bits_data_22_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_23 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266040.4]
    .pad(iocell_mem_axi4_w_bits_data_23_pad),
    .o(iocell_mem_axi4_w_bits_data_23_o),
    .oe(iocell_mem_axi4_w_bits_data_23_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_24 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266046.4]
    .pad(iocell_mem_axi4_w_bits_data_24_pad),
    .o(iocell_mem_axi4_w_bits_data_24_o),
    .oe(iocell_mem_axi4_w_bits_data_24_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_25 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266052.4]
    .pad(iocell_mem_axi4_w_bits_data_25_pad),
    .o(iocell_mem_axi4_w_bits_data_25_o),
    .oe(iocell_mem_axi4_w_bits_data_25_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_26 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266058.4]
    .pad(iocell_mem_axi4_w_bits_data_26_pad),
    .o(iocell_mem_axi4_w_bits_data_26_o),
    .oe(iocell_mem_axi4_w_bits_data_26_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_27 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266064.4]
    .pad(iocell_mem_axi4_w_bits_data_27_pad),
    .o(iocell_mem_axi4_w_bits_data_27_o),
    .oe(iocell_mem_axi4_w_bits_data_27_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_28 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266070.4]
    .pad(iocell_mem_axi4_w_bits_data_28_pad),
    .o(iocell_mem_axi4_w_bits_data_28_o),
    .oe(iocell_mem_axi4_w_bits_data_28_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_29 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266076.4]
    .pad(iocell_mem_axi4_w_bits_data_29_pad),
    .o(iocell_mem_axi4_w_bits_data_29_o),
    .oe(iocell_mem_axi4_w_bits_data_29_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_30 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266082.4]
    .pad(iocell_mem_axi4_w_bits_data_30_pad),
    .o(iocell_mem_axi4_w_bits_data_30_o),
    .oe(iocell_mem_axi4_w_bits_data_30_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_31 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266088.4]
    .pad(iocell_mem_axi4_w_bits_data_31_pad),
    .o(iocell_mem_axi4_w_bits_data_31_o),
    .oe(iocell_mem_axi4_w_bits_data_31_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_32 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266094.4]
    .pad(iocell_mem_axi4_w_bits_data_32_pad),
    .o(iocell_mem_axi4_w_bits_data_32_o),
    .oe(iocell_mem_axi4_w_bits_data_32_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_33 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266100.4]
    .pad(iocell_mem_axi4_w_bits_data_33_pad),
    .o(iocell_mem_axi4_w_bits_data_33_o),
    .oe(iocell_mem_axi4_w_bits_data_33_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_34 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266106.4]
    .pad(iocell_mem_axi4_w_bits_data_34_pad),
    .o(iocell_mem_axi4_w_bits_data_34_o),
    .oe(iocell_mem_axi4_w_bits_data_34_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_35 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266112.4]
    .pad(iocell_mem_axi4_w_bits_data_35_pad),
    .o(iocell_mem_axi4_w_bits_data_35_o),
    .oe(iocell_mem_axi4_w_bits_data_35_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_36 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266118.4]
    .pad(iocell_mem_axi4_w_bits_data_36_pad),
    .o(iocell_mem_axi4_w_bits_data_36_o),
    .oe(iocell_mem_axi4_w_bits_data_36_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_37 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266124.4]
    .pad(iocell_mem_axi4_w_bits_data_37_pad),
    .o(iocell_mem_axi4_w_bits_data_37_o),
    .oe(iocell_mem_axi4_w_bits_data_37_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_38 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266130.4]
    .pad(iocell_mem_axi4_w_bits_data_38_pad),
    .o(iocell_mem_axi4_w_bits_data_38_o),
    .oe(iocell_mem_axi4_w_bits_data_38_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_39 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266136.4]
    .pad(iocell_mem_axi4_w_bits_data_39_pad),
    .o(iocell_mem_axi4_w_bits_data_39_o),
    .oe(iocell_mem_axi4_w_bits_data_39_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_40 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266142.4]
    .pad(iocell_mem_axi4_w_bits_data_40_pad),
    .o(iocell_mem_axi4_w_bits_data_40_o),
    .oe(iocell_mem_axi4_w_bits_data_40_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_41 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266148.4]
    .pad(iocell_mem_axi4_w_bits_data_41_pad),
    .o(iocell_mem_axi4_w_bits_data_41_o),
    .oe(iocell_mem_axi4_w_bits_data_41_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_42 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266154.4]
    .pad(iocell_mem_axi4_w_bits_data_42_pad),
    .o(iocell_mem_axi4_w_bits_data_42_o),
    .oe(iocell_mem_axi4_w_bits_data_42_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_43 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266160.4]
    .pad(iocell_mem_axi4_w_bits_data_43_pad),
    .o(iocell_mem_axi4_w_bits_data_43_o),
    .oe(iocell_mem_axi4_w_bits_data_43_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_44 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266166.4]
    .pad(iocell_mem_axi4_w_bits_data_44_pad),
    .o(iocell_mem_axi4_w_bits_data_44_o),
    .oe(iocell_mem_axi4_w_bits_data_44_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_45 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266172.4]
    .pad(iocell_mem_axi4_w_bits_data_45_pad),
    .o(iocell_mem_axi4_w_bits_data_45_o),
    .oe(iocell_mem_axi4_w_bits_data_45_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_46 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266178.4]
    .pad(iocell_mem_axi4_w_bits_data_46_pad),
    .o(iocell_mem_axi4_w_bits_data_46_o),
    .oe(iocell_mem_axi4_w_bits_data_46_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_47 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266184.4]
    .pad(iocell_mem_axi4_w_bits_data_47_pad),
    .o(iocell_mem_axi4_w_bits_data_47_o),
    .oe(iocell_mem_axi4_w_bits_data_47_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_48 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266190.4]
    .pad(iocell_mem_axi4_w_bits_data_48_pad),
    .o(iocell_mem_axi4_w_bits_data_48_o),
    .oe(iocell_mem_axi4_w_bits_data_48_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_49 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266196.4]
    .pad(iocell_mem_axi4_w_bits_data_49_pad),
    .o(iocell_mem_axi4_w_bits_data_49_o),
    .oe(iocell_mem_axi4_w_bits_data_49_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_50 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266202.4]
    .pad(iocell_mem_axi4_w_bits_data_50_pad),
    .o(iocell_mem_axi4_w_bits_data_50_o),
    .oe(iocell_mem_axi4_w_bits_data_50_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_51 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266208.4]
    .pad(iocell_mem_axi4_w_bits_data_51_pad),
    .o(iocell_mem_axi4_w_bits_data_51_o),
    .oe(iocell_mem_axi4_w_bits_data_51_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_52 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266214.4]
    .pad(iocell_mem_axi4_w_bits_data_52_pad),
    .o(iocell_mem_axi4_w_bits_data_52_o),
    .oe(iocell_mem_axi4_w_bits_data_52_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_53 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266220.4]
    .pad(iocell_mem_axi4_w_bits_data_53_pad),
    .o(iocell_mem_axi4_w_bits_data_53_o),
    .oe(iocell_mem_axi4_w_bits_data_53_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_54 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266226.4]
    .pad(iocell_mem_axi4_w_bits_data_54_pad),
    .o(iocell_mem_axi4_w_bits_data_54_o),
    .oe(iocell_mem_axi4_w_bits_data_54_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_55 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266232.4]
    .pad(iocell_mem_axi4_w_bits_data_55_pad),
    .o(iocell_mem_axi4_w_bits_data_55_o),
    .oe(iocell_mem_axi4_w_bits_data_55_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_56 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266238.4]
    .pad(iocell_mem_axi4_w_bits_data_56_pad),
    .o(iocell_mem_axi4_w_bits_data_56_o),
    .oe(iocell_mem_axi4_w_bits_data_56_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_57 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266244.4]
    .pad(iocell_mem_axi4_w_bits_data_57_pad),
    .o(iocell_mem_axi4_w_bits_data_57_o),
    .oe(iocell_mem_axi4_w_bits_data_57_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_58 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266250.4]
    .pad(iocell_mem_axi4_w_bits_data_58_pad),
    .o(iocell_mem_axi4_w_bits_data_58_o),
    .oe(iocell_mem_axi4_w_bits_data_58_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_59 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266256.4]
    .pad(iocell_mem_axi4_w_bits_data_59_pad),
    .o(iocell_mem_axi4_w_bits_data_59_o),
    .oe(iocell_mem_axi4_w_bits_data_59_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_60 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266262.4]
    .pad(iocell_mem_axi4_w_bits_data_60_pad),
    .o(iocell_mem_axi4_w_bits_data_60_o),
    .oe(iocell_mem_axi4_w_bits_data_60_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_61 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266268.4]
    .pad(iocell_mem_axi4_w_bits_data_61_pad),
    .o(iocell_mem_axi4_w_bits_data_61_o),
    .oe(iocell_mem_axi4_w_bits_data_61_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_62 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266274.4]
    .pad(iocell_mem_axi4_w_bits_data_62_pad),
    .o(iocell_mem_axi4_w_bits_data_62_o),
    .oe(iocell_mem_axi4_w_bits_data_62_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_bits_data_63 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266280.4]
    .pad(iocell_mem_axi4_w_bits_data_63_pad),
    .o(iocell_mem_axi4_w_bits_data_63_o),
    .oe(iocell_mem_axi4_w_bits_data_63_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_w_valid ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266350.4]
    .pad(iocell_mem_axi4_w_valid_pad),
    .o(iocell_mem_axi4_w_valid_o),
    .oe(iocell_mem_axi4_w_valid_oe)
  );
  GenericDigitalInIOCell iocell_mem_axi4_w_ready ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266359.4]
    .pad(iocell_mem_axi4_w_ready_pad),
    .i(iocell_mem_axi4_w_ready_i),
    .ie(iocell_mem_axi4_w_ready_ie)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_qos ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266372.4]
    .pad(iocell_mem_axi4_aw_bits_qos_pad),
    .o(iocell_mem_axi4_aw_bits_qos_o),
    .oe(iocell_mem_axi4_aw_bits_qos_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_qos_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266378.4]
    .pad(iocell_mem_axi4_aw_bits_qos_1_pad),
    .o(iocell_mem_axi4_aw_bits_qos_1_o),
    .oe(iocell_mem_axi4_aw_bits_qos_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_qos_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266384.4]
    .pad(iocell_mem_axi4_aw_bits_qos_2_pad),
    .o(iocell_mem_axi4_aw_bits_qos_2_o),
    .oe(iocell_mem_axi4_aw_bits_qos_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_qos_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266390.4]
    .pad(iocell_mem_axi4_aw_bits_qos_3_pad),
    .o(iocell_mem_axi4_aw_bits_qos_3_o),
    .oe(iocell_mem_axi4_aw_bits_qos_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_prot ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266403.4]
    .pad(iocell_mem_axi4_aw_bits_prot_pad),
    .o(iocell_mem_axi4_aw_bits_prot_o),
    .oe(iocell_mem_axi4_aw_bits_prot_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_prot_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266409.4]
    .pad(iocell_mem_axi4_aw_bits_prot_1_pad),
    .o(iocell_mem_axi4_aw_bits_prot_1_o),
    .oe(iocell_mem_axi4_aw_bits_prot_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_prot_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266415.4]
    .pad(iocell_mem_axi4_aw_bits_prot_2_pad),
    .o(iocell_mem_axi4_aw_bits_prot_2_o),
    .oe(iocell_mem_axi4_aw_bits_prot_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_cache ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266428.4]
    .pad(iocell_mem_axi4_aw_bits_cache_pad),
    .o(iocell_mem_axi4_aw_bits_cache_o),
    .oe(iocell_mem_axi4_aw_bits_cache_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_cache_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266434.4]
    .pad(iocell_mem_axi4_aw_bits_cache_1_pad),
    .o(iocell_mem_axi4_aw_bits_cache_1_o),
    .oe(iocell_mem_axi4_aw_bits_cache_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_cache_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266440.4]
    .pad(iocell_mem_axi4_aw_bits_cache_2_pad),
    .o(iocell_mem_axi4_aw_bits_cache_2_o),
    .oe(iocell_mem_axi4_aw_bits_cache_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_cache_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266446.4]
    .pad(iocell_mem_axi4_aw_bits_cache_3_pad),
    .o(iocell_mem_axi4_aw_bits_cache_3_o),
    .oe(iocell_mem_axi4_aw_bits_cache_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_lock ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266457.4]
    .pad(iocell_mem_axi4_aw_bits_lock_pad),
    .o(iocell_mem_axi4_aw_bits_lock_o),
    .oe(iocell_mem_axi4_aw_bits_lock_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_burst ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266466.4]
    .pad(iocell_mem_axi4_aw_bits_burst_pad),
    .o(iocell_mem_axi4_aw_bits_burst_o),
    .oe(iocell_mem_axi4_aw_bits_burst_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_burst_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266472.4]
    .pad(iocell_mem_axi4_aw_bits_burst_1_pad),
    .o(iocell_mem_axi4_aw_bits_burst_1_o),
    .oe(iocell_mem_axi4_aw_bits_burst_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_size ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266483.4]
    .pad(iocell_mem_axi4_aw_bits_size_pad),
    .o(iocell_mem_axi4_aw_bits_size_o),
    .oe(iocell_mem_axi4_aw_bits_size_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_size_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266489.4]
    .pad(iocell_mem_axi4_aw_bits_size_1_pad),
    .o(iocell_mem_axi4_aw_bits_size_1_o),
    .oe(iocell_mem_axi4_aw_bits_size_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_size_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266495.4]
    .pad(iocell_mem_axi4_aw_bits_size_2_pad),
    .o(iocell_mem_axi4_aw_bits_size_2_o),
    .oe(iocell_mem_axi4_aw_bits_size_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_len ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266512.4]
    .pad(iocell_mem_axi4_aw_bits_len_pad),
    .o(iocell_mem_axi4_aw_bits_len_o),
    .oe(iocell_mem_axi4_aw_bits_len_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_len_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266518.4]
    .pad(iocell_mem_axi4_aw_bits_len_1_pad),
    .o(iocell_mem_axi4_aw_bits_len_1_o),
    .oe(iocell_mem_axi4_aw_bits_len_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_len_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266524.4]
    .pad(iocell_mem_axi4_aw_bits_len_2_pad),
    .o(iocell_mem_axi4_aw_bits_len_2_o),
    .oe(iocell_mem_axi4_aw_bits_len_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_len_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266530.4]
    .pad(iocell_mem_axi4_aw_bits_len_3_pad),
    .o(iocell_mem_axi4_aw_bits_len_3_o),
    .oe(iocell_mem_axi4_aw_bits_len_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_len_4 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266536.4]
    .pad(iocell_mem_axi4_aw_bits_len_4_pad),
    .o(iocell_mem_axi4_aw_bits_len_4_o),
    .oe(iocell_mem_axi4_aw_bits_len_4_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_len_5 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266542.4]
    .pad(iocell_mem_axi4_aw_bits_len_5_pad),
    .o(iocell_mem_axi4_aw_bits_len_5_o),
    .oe(iocell_mem_axi4_aw_bits_len_5_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_len_6 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266548.4]
    .pad(iocell_mem_axi4_aw_bits_len_6_pad),
    .o(iocell_mem_axi4_aw_bits_len_6_o),
    .oe(iocell_mem_axi4_aw_bits_len_6_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_len_7 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266554.4]
    .pad(iocell_mem_axi4_aw_bits_len_7_pad),
    .o(iocell_mem_axi4_aw_bits_len_7_o),
    .oe(iocell_mem_axi4_aw_bits_len_7_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266600.4]
    .pad(iocell_mem_axi4_aw_bits_addr_pad),
    .o(iocell_mem_axi4_aw_bits_addr_o),
    .oe(iocell_mem_axi4_aw_bits_addr_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266606.4]
    .pad(iocell_mem_axi4_aw_bits_addr_1_pad),
    .o(iocell_mem_axi4_aw_bits_addr_1_o),
    .oe(iocell_mem_axi4_aw_bits_addr_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266612.4]
    .pad(iocell_mem_axi4_aw_bits_addr_2_pad),
    .o(iocell_mem_axi4_aw_bits_addr_2_o),
    .oe(iocell_mem_axi4_aw_bits_addr_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266618.4]
    .pad(iocell_mem_axi4_aw_bits_addr_3_pad),
    .o(iocell_mem_axi4_aw_bits_addr_3_o),
    .oe(iocell_mem_axi4_aw_bits_addr_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_4 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266624.4]
    .pad(iocell_mem_axi4_aw_bits_addr_4_pad),
    .o(iocell_mem_axi4_aw_bits_addr_4_o),
    .oe(iocell_mem_axi4_aw_bits_addr_4_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_5 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266630.4]
    .pad(iocell_mem_axi4_aw_bits_addr_5_pad),
    .o(iocell_mem_axi4_aw_bits_addr_5_o),
    .oe(iocell_mem_axi4_aw_bits_addr_5_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_6 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266636.4]
    .pad(iocell_mem_axi4_aw_bits_addr_6_pad),
    .o(iocell_mem_axi4_aw_bits_addr_6_o),
    .oe(iocell_mem_axi4_aw_bits_addr_6_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_7 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266642.4]
    .pad(iocell_mem_axi4_aw_bits_addr_7_pad),
    .o(iocell_mem_axi4_aw_bits_addr_7_o),
    .oe(iocell_mem_axi4_aw_bits_addr_7_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_8 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266648.4]
    .pad(iocell_mem_axi4_aw_bits_addr_8_pad),
    .o(iocell_mem_axi4_aw_bits_addr_8_o),
    .oe(iocell_mem_axi4_aw_bits_addr_8_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_9 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266654.4]
    .pad(iocell_mem_axi4_aw_bits_addr_9_pad),
    .o(iocell_mem_axi4_aw_bits_addr_9_o),
    .oe(iocell_mem_axi4_aw_bits_addr_9_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_10 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266660.4]
    .pad(iocell_mem_axi4_aw_bits_addr_10_pad),
    .o(iocell_mem_axi4_aw_bits_addr_10_o),
    .oe(iocell_mem_axi4_aw_bits_addr_10_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_11 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266666.4]
    .pad(iocell_mem_axi4_aw_bits_addr_11_pad),
    .o(iocell_mem_axi4_aw_bits_addr_11_o),
    .oe(iocell_mem_axi4_aw_bits_addr_11_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_12 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266672.4]
    .pad(iocell_mem_axi4_aw_bits_addr_12_pad),
    .o(iocell_mem_axi4_aw_bits_addr_12_o),
    .oe(iocell_mem_axi4_aw_bits_addr_12_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_13 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266678.4]
    .pad(iocell_mem_axi4_aw_bits_addr_13_pad),
    .o(iocell_mem_axi4_aw_bits_addr_13_o),
    .oe(iocell_mem_axi4_aw_bits_addr_13_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_14 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266684.4]
    .pad(iocell_mem_axi4_aw_bits_addr_14_pad),
    .o(iocell_mem_axi4_aw_bits_addr_14_o),
    .oe(iocell_mem_axi4_aw_bits_addr_14_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_15 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266690.4]
    .pad(iocell_mem_axi4_aw_bits_addr_15_pad),
    .o(iocell_mem_axi4_aw_bits_addr_15_o),
    .oe(iocell_mem_axi4_aw_bits_addr_15_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_16 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266696.4]
    .pad(iocell_mem_axi4_aw_bits_addr_16_pad),
    .o(iocell_mem_axi4_aw_bits_addr_16_o),
    .oe(iocell_mem_axi4_aw_bits_addr_16_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_17 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266702.4]
    .pad(iocell_mem_axi4_aw_bits_addr_17_pad),
    .o(iocell_mem_axi4_aw_bits_addr_17_o),
    .oe(iocell_mem_axi4_aw_bits_addr_17_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_18 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266708.4]
    .pad(iocell_mem_axi4_aw_bits_addr_18_pad),
    .o(iocell_mem_axi4_aw_bits_addr_18_o),
    .oe(iocell_mem_axi4_aw_bits_addr_18_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_19 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266714.4]
    .pad(iocell_mem_axi4_aw_bits_addr_19_pad),
    .o(iocell_mem_axi4_aw_bits_addr_19_o),
    .oe(iocell_mem_axi4_aw_bits_addr_19_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_20 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266720.4]
    .pad(iocell_mem_axi4_aw_bits_addr_20_pad),
    .o(iocell_mem_axi4_aw_bits_addr_20_o),
    .oe(iocell_mem_axi4_aw_bits_addr_20_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_21 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266726.4]
    .pad(iocell_mem_axi4_aw_bits_addr_21_pad),
    .o(iocell_mem_axi4_aw_bits_addr_21_o),
    .oe(iocell_mem_axi4_aw_bits_addr_21_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_22 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266732.4]
    .pad(iocell_mem_axi4_aw_bits_addr_22_pad),
    .o(iocell_mem_axi4_aw_bits_addr_22_o),
    .oe(iocell_mem_axi4_aw_bits_addr_22_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_23 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266738.4]
    .pad(iocell_mem_axi4_aw_bits_addr_23_pad),
    .o(iocell_mem_axi4_aw_bits_addr_23_o),
    .oe(iocell_mem_axi4_aw_bits_addr_23_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_24 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266744.4]
    .pad(iocell_mem_axi4_aw_bits_addr_24_pad),
    .o(iocell_mem_axi4_aw_bits_addr_24_o),
    .oe(iocell_mem_axi4_aw_bits_addr_24_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_25 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266750.4]
    .pad(iocell_mem_axi4_aw_bits_addr_25_pad),
    .o(iocell_mem_axi4_aw_bits_addr_25_o),
    .oe(iocell_mem_axi4_aw_bits_addr_25_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_26 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266756.4]
    .pad(iocell_mem_axi4_aw_bits_addr_26_pad),
    .o(iocell_mem_axi4_aw_bits_addr_26_o),
    .oe(iocell_mem_axi4_aw_bits_addr_26_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_27 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266762.4]
    .pad(iocell_mem_axi4_aw_bits_addr_27_pad),
    .o(iocell_mem_axi4_aw_bits_addr_27_o),
    .oe(iocell_mem_axi4_aw_bits_addr_27_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_28 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266768.4]
    .pad(iocell_mem_axi4_aw_bits_addr_28_pad),
    .o(iocell_mem_axi4_aw_bits_addr_28_o),
    .oe(iocell_mem_axi4_aw_bits_addr_28_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_29 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266774.4]
    .pad(iocell_mem_axi4_aw_bits_addr_29_pad),
    .o(iocell_mem_axi4_aw_bits_addr_29_o),
    .oe(iocell_mem_axi4_aw_bits_addr_29_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_30 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266780.4]
    .pad(iocell_mem_axi4_aw_bits_addr_30_pad),
    .o(iocell_mem_axi4_aw_bits_addr_30_o),
    .oe(iocell_mem_axi4_aw_bits_addr_30_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_addr_31 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266786.4]
    .pad(iocell_mem_axi4_aw_bits_addr_31_pad),
    .o(iocell_mem_axi4_aw_bits_addr_31_o),
    .oe(iocell_mem_axi4_aw_bits_addr_31_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_id ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266828.4]
    .pad(iocell_mem_axi4_aw_bits_id_pad),
    .o(iocell_mem_axi4_aw_bits_id_o),
    .oe(iocell_mem_axi4_aw_bits_id_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_id_1 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266834.4]
    .pad(iocell_mem_axi4_aw_bits_id_1_pad),
    .o(iocell_mem_axi4_aw_bits_id_1_o),
    .oe(iocell_mem_axi4_aw_bits_id_1_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_id_2 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266840.4]
    .pad(iocell_mem_axi4_aw_bits_id_2_pad),
    .o(iocell_mem_axi4_aw_bits_id_2_o),
    .oe(iocell_mem_axi4_aw_bits_id_2_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_bits_id_3 ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266846.4]
    .pad(iocell_mem_axi4_aw_bits_id_3_pad),
    .o(iocell_mem_axi4_aw_bits_id_3_o),
    .oe(iocell_mem_axi4_aw_bits_id_3_oe)
  );
  GenericDigitalOutIOCell iocell_mem_axi4_aw_valid ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266856.4]
    .pad(iocell_mem_axi4_aw_valid_pad),
    .o(iocell_mem_axi4_aw_valid_o),
    .oe(iocell_mem_axi4_aw_valid_oe)
  );
  GenericDigitalInIOCell iocell_mem_axi4_aw_ready ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266865.4]
    .pad(iocell_mem_axi4_aw_ready_pad),
    .i(iocell_mem_axi4_aw_ready_i),
    .ie(iocell_mem_axi4_aw_ready_ie)
  );
  GenericDigitalInIOCell iocell_uart_0_rxd ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266874.4]
    .pad(iocell_uart_0_rxd_pad),
    .i(iocell_uart_0_rxd_i),
    .ie(iocell_uart_0_rxd_ie)
  );
  GenericDigitalOutIOCell iocell_uart_0_txd ( // @[IOCell.scala 113:31:chipyard.TestHarness.RocketConfig.fir@266883.4]
    .pad(iocell_uart_0_txd_pad),
    .o(iocell_uart_0_txd_o),
    .oe(iocell_uart_0_txd_oe)
  );
  GenericDigitalInIOCell iocell_clock ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266892.4]
    .pad(iocell_clock_pad),
    .i(iocell_clock_i),
    .ie(iocell_clock_ie)
  );
  GenericDigitalInIOCell iocell_reset ( // @[IOCell.scala 112:30:chipyard.TestHarness.RocketConfig.fir@266902.4]
    .pad(iocell_reset_pad),
    .i(iocell_reset_i),
    .ie(iocell_reset_ie)
  );
  assign _T_52 = {iocell_debug_clockeddmi_dmi_resp_bits_data_7_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_6_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_5_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_4_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_3_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_2_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_1_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263639.4]
  assign _T_60 = {iocell_debug_clockeddmi_dmi_resp_bits_data_15_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_14_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_13_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_12_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_11_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_10_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_9_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_8_pad,_T_52}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263647.4]
  assign _T_67 = {iocell_debug_clockeddmi_dmi_resp_bits_data_23_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_22_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_21_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_20_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_19_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_18_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_17_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_16_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263654.4]
  assign _T_75 = {iocell_debug_clockeddmi_dmi_resp_bits_data_31_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_30_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_29_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_28_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_27_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_26_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_25_pad,iocell_debug_clockeddmi_dmi_resp_bits_data_24_pad,_T_67}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263662.4]
  assign _T_122 = {iocell_debug_clockeddmi_dmi_req_bits_data_7_i,iocell_debug_clockeddmi_dmi_req_bits_data_6_i,iocell_debug_clockeddmi_dmi_req_bits_data_5_i,iocell_debug_clockeddmi_dmi_req_bits_data_4_i,iocell_debug_clockeddmi_dmi_req_bits_data_3_i,iocell_debug_clockeddmi_dmi_req_bits_data_2_i,iocell_debug_clockeddmi_dmi_req_bits_data_1_i,iocell_debug_clockeddmi_dmi_req_bits_data_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263929.4]
  assign _T_130 = {iocell_debug_clockeddmi_dmi_req_bits_data_15_i,iocell_debug_clockeddmi_dmi_req_bits_data_14_i,iocell_debug_clockeddmi_dmi_req_bits_data_13_i,iocell_debug_clockeddmi_dmi_req_bits_data_12_i,iocell_debug_clockeddmi_dmi_req_bits_data_11_i,iocell_debug_clockeddmi_dmi_req_bits_data_10_i,iocell_debug_clockeddmi_dmi_req_bits_data_9_i,iocell_debug_clockeddmi_dmi_req_bits_data_8_i,_T_122}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263937.4]
  assign _T_137 = {iocell_debug_clockeddmi_dmi_req_bits_data_23_i,iocell_debug_clockeddmi_dmi_req_bits_data_22_i,iocell_debug_clockeddmi_dmi_req_bits_data_21_i,iocell_debug_clockeddmi_dmi_req_bits_data_20_i,iocell_debug_clockeddmi_dmi_req_bits_data_19_i,iocell_debug_clockeddmi_dmi_req_bits_data_18_i,iocell_debug_clockeddmi_dmi_req_bits_data_17_i,iocell_debug_clockeddmi_dmi_req_bits_data_16_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263944.4]
  assign _T_145 = {iocell_debug_clockeddmi_dmi_req_bits_data_31_i,iocell_debug_clockeddmi_dmi_req_bits_data_30_i,iocell_debug_clockeddmi_dmi_req_bits_data_29_i,iocell_debug_clockeddmi_dmi_req_bits_data_28_i,iocell_debug_clockeddmi_dmi_req_bits_data_27_i,iocell_debug_clockeddmi_dmi_req_bits_data_26_i,iocell_debug_clockeddmi_dmi_req_bits_data_25_i,iocell_debug_clockeddmi_dmi_req_bits_data_24_i,_T_137}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@263952.4]
  assign _T_155 = {iocell_debug_clockeddmi_dmi_req_bits_addr_2_i,iocell_debug_clockeddmi_dmi_req_bits_addr_1_i,iocell_debug_clockeddmi_dmi_req_bits_addr_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264005.4]
  assign _T_158 = {iocell_debug_clockeddmi_dmi_req_bits_addr_6_i,iocell_debug_clockeddmi_dmi_req_bits_addr_5_i,iocell_debug_clockeddmi_dmi_req_bits_addr_4_i,iocell_debug_clockeddmi_dmi_req_bits_addr_3_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264008.4]
  assign _T_209 = {iocell_serial_out_bits_7_pad,iocell_serial_out_bits_6_pad,iocell_serial_out_bits_5_pad,iocell_serial_out_bits_4_pad,iocell_serial_out_bits_3_pad,iocell_serial_out_bits_2_pad,iocell_serial_out_bits_1_pad,iocell_serial_out_bits_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264288.4]
  assign _T_217 = {iocell_serial_out_bits_15_pad,iocell_serial_out_bits_14_pad,iocell_serial_out_bits_13_pad,iocell_serial_out_bits_12_pad,iocell_serial_out_bits_11_pad,iocell_serial_out_bits_10_pad,iocell_serial_out_bits_9_pad,iocell_serial_out_bits_8_pad,_T_209}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264296.4]
  assign _T_224 = {iocell_serial_out_bits_23_pad,iocell_serial_out_bits_22_pad,iocell_serial_out_bits_21_pad,iocell_serial_out_bits_20_pad,iocell_serial_out_bits_19_pad,iocell_serial_out_bits_18_pad,iocell_serial_out_bits_17_pad,iocell_serial_out_bits_16_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264303.4]
  assign _T_232 = {iocell_serial_out_bits_31_pad,iocell_serial_out_bits_30_pad,iocell_serial_out_bits_29_pad,iocell_serial_out_bits_28_pad,iocell_serial_out_bits_27_pad,iocell_serial_out_bits_26_pad,iocell_serial_out_bits_25_pad,iocell_serial_out_bits_24_pad,_T_224}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264311.4]
  assign _T_276 = {iocell_serial_in_bits_7_i,iocell_serial_in_bits_6_i,iocell_serial_in_bits_5_i,iocell_serial_in_bits_4_i,iocell_serial_in_bits_3_i,iocell_serial_in_bits_2_i,iocell_serial_in_bits_1_i,iocell_serial_in_bits_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264562.4]
  assign _T_284 = {iocell_serial_in_bits_15_i,iocell_serial_in_bits_14_i,iocell_serial_in_bits_13_i,iocell_serial_in_bits_12_i,iocell_serial_in_bits_11_i,iocell_serial_in_bits_10_i,iocell_serial_in_bits_9_i,iocell_serial_in_bits_8_i,_T_276}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264570.4]
  assign _T_291 = {iocell_serial_in_bits_23_i,iocell_serial_in_bits_22_i,iocell_serial_in_bits_21_i,iocell_serial_in_bits_20_i,iocell_serial_in_bits_19_i,iocell_serial_in_bits_18_i,iocell_serial_in_bits_17_i,iocell_serial_in_bits_16_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264577.4]
  assign _T_299 = {iocell_serial_in_bits_31_i,iocell_serial_in_bits_30_i,iocell_serial_in_bits_29_i,iocell_serial_in_bits_28_i,iocell_serial_in_bits_27_i,iocell_serial_in_bits_26_i,iocell_serial_in_bits_25_i,iocell_serial_in_bits_24_i,_T_291}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@264585.4]
  assign _T_380 = {iocell_mem_axi4_r_bits_data_7_i,iocell_mem_axi4_r_bits_data_6_i,iocell_mem_axi4_r_bits_data_5_i,iocell_mem_axi4_r_bits_data_4_i,iocell_mem_axi4_r_bits_data_3_i,iocell_mem_axi4_r_bits_data_2_i,iocell_mem_axi4_r_bits_data_1_i,iocell_mem_axi4_r_bits_data_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265085.4]
  assign _T_388 = {iocell_mem_axi4_r_bits_data_15_i,iocell_mem_axi4_r_bits_data_14_i,iocell_mem_axi4_r_bits_data_13_i,iocell_mem_axi4_r_bits_data_12_i,iocell_mem_axi4_r_bits_data_11_i,iocell_mem_axi4_r_bits_data_10_i,iocell_mem_axi4_r_bits_data_9_i,iocell_mem_axi4_r_bits_data_8_i,_T_380}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265093.4]
  assign _T_395 = {iocell_mem_axi4_r_bits_data_23_i,iocell_mem_axi4_r_bits_data_22_i,iocell_mem_axi4_r_bits_data_21_i,iocell_mem_axi4_r_bits_data_20_i,iocell_mem_axi4_r_bits_data_19_i,iocell_mem_axi4_r_bits_data_18_i,iocell_mem_axi4_r_bits_data_17_i,iocell_mem_axi4_r_bits_data_16_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265100.4]
  assign _T_404 = {iocell_mem_axi4_r_bits_data_31_i,iocell_mem_axi4_r_bits_data_30_i,iocell_mem_axi4_r_bits_data_29_i,iocell_mem_axi4_r_bits_data_28_i,iocell_mem_axi4_r_bits_data_27_i,iocell_mem_axi4_r_bits_data_26_i,iocell_mem_axi4_r_bits_data_25_i,iocell_mem_axi4_r_bits_data_24_i,_T_395,_T_388}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265109.4]
  assign _T_411 = {iocell_mem_axi4_r_bits_data_39_i,iocell_mem_axi4_r_bits_data_38_i,iocell_mem_axi4_r_bits_data_37_i,iocell_mem_axi4_r_bits_data_36_i,iocell_mem_axi4_r_bits_data_35_i,iocell_mem_axi4_r_bits_data_34_i,iocell_mem_axi4_r_bits_data_33_i,iocell_mem_axi4_r_bits_data_32_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265116.4]
  assign _T_419 = {iocell_mem_axi4_r_bits_data_47_i,iocell_mem_axi4_r_bits_data_46_i,iocell_mem_axi4_r_bits_data_45_i,iocell_mem_axi4_r_bits_data_44_i,iocell_mem_axi4_r_bits_data_43_i,iocell_mem_axi4_r_bits_data_42_i,iocell_mem_axi4_r_bits_data_41_i,iocell_mem_axi4_r_bits_data_40_i,_T_411}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265124.4]
  assign _T_426 = {iocell_mem_axi4_r_bits_data_55_i,iocell_mem_axi4_r_bits_data_54_i,iocell_mem_axi4_r_bits_data_53_i,iocell_mem_axi4_r_bits_data_52_i,iocell_mem_axi4_r_bits_data_51_i,iocell_mem_axi4_r_bits_data_50_i,iocell_mem_axi4_r_bits_data_49_i,iocell_mem_axi4_r_bits_data_48_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265131.4]
  assign _T_435 = {iocell_mem_axi4_r_bits_data_63_i,iocell_mem_axi4_r_bits_data_62_i,iocell_mem_axi4_r_bits_data_61_i,iocell_mem_axi4_r_bits_data_60_i,iocell_mem_axi4_r_bits_data_59_i,iocell_mem_axi4_r_bits_data_58_i,iocell_mem_axi4_r_bits_data_57_i,iocell_mem_axi4_r_bits_data_56_i,_T_426,_T_419}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265140.4]
  assign _T_441 = {iocell_mem_axi4_r_bits_id_1_i,iocell_mem_axi4_r_bits_id_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265171.4]
  assign _T_442 = {iocell_mem_axi4_r_bits_id_3_i,iocell_mem_axi4_r_bits_id_2_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265172.4]
  assign _T_452 = {iocell_mem_axi4_ar_bits_qos_1_pad,iocell_mem_axi4_ar_bits_qos_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265221.4]
  assign _T_453 = {iocell_mem_axi4_ar_bits_qos_3_pad,iocell_mem_axi4_ar_bits_qos_2_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265222.4]
  assign _T_458 = {iocell_mem_axi4_ar_bits_prot_2_pad,iocell_mem_axi4_ar_bits_prot_1_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265246.4]
  assign _T_464 = {iocell_mem_axi4_ar_bits_cache_1_pad,iocell_mem_axi4_ar_bits_cache_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265277.4]
  assign _T_465 = {iocell_mem_axi4_ar_bits_cache_3_pad,iocell_mem_axi4_ar_bits_cache_2_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265278.4]
  assign _T_474 = {iocell_mem_axi4_ar_bits_size_2_pad,iocell_mem_axi4_ar_bits_size_1_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265326.4]
  assign _T_486 = {iocell_mem_axi4_ar_bits_len_3_pad,iocell_mem_axi4_ar_bits_len_2_pad,iocell_mem_axi4_ar_bits_len_1_pad,iocell_mem_axi4_ar_bits_len_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265387.4]
  assign _T_489 = {iocell_mem_axi4_ar_bits_len_7_pad,iocell_mem_axi4_ar_bits_len_6_pad,iocell_mem_axi4_ar_bits_len_5_pad,iocell_mem_axi4_ar_bits_len_4_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265390.4]
  assign _T_529 = {iocell_mem_axi4_ar_bits_addr_7_pad,iocell_mem_axi4_ar_bits_addr_6_pad,iocell_mem_axi4_ar_bits_addr_5_pad,iocell_mem_axi4_ar_bits_addr_4_pad,iocell_mem_axi4_ar_bits_addr_3_pad,iocell_mem_axi4_ar_bits_addr_2_pad,iocell_mem_axi4_ar_bits_addr_1_pad,iocell_mem_axi4_ar_bits_addr_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265623.4]
  assign _T_537 = {iocell_mem_axi4_ar_bits_addr_15_pad,iocell_mem_axi4_ar_bits_addr_14_pad,iocell_mem_axi4_ar_bits_addr_13_pad,iocell_mem_axi4_ar_bits_addr_12_pad,iocell_mem_axi4_ar_bits_addr_11_pad,iocell_mem_axi4_ar_bits_addr_10_pad,iocell_mem_axi4_ar_bits_addr_9_pad,iocell_mem_axi4_ar_bits_addr_8_pad,_T_529}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265631.4]
  assign _T_544 = {iocell_mem_axi4_ar_bits_addr_23_pad,iocell_mem_axi4_ar_bits_addr_22_pad,iocell_mem_axi4_ar_bits_addr_21_pad,iocell_mem_axi4_ar_bits_addr_20_pad,iocell_mem_axi4_ar_bits_addr_19_pad,iocell_mem_axi4_ar_bits_addr_18_pad,iocell_mem_axi4_ar_bits_addr_17_pad,iocell_mem_axi4_ar_bits_addr_16_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265638.4]
  assign _T_552 = {iocell_mem_axi4_ar_bits_addr_31_pad,iocell_mem_axi4_ar_bits_addr_30_pad,iocell_mem_axi4_ar_bits_addr_29_pad,iocell_mem_axi4_ar_bits_addr_28_pad,iocell_mem_axi4_ar_bits_addr_27_pad,iocell_mem_axi4_ar_bits_addr_26_pad,iocell_mem_axi4_ar_bits_addr_25_pad,iocell_mem_axi4_ar_bits_addr_24_pad,_T_544}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265646.4]
  assign _T_558 = {iocell_mem_axi4_ar_bits_id_1_pad,iocell_mem_axi4_ar_bits_id_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265677.4]
  assign _T_559 = {iocell_mem_axi4_ar_bits_id_3_pad,iocell_mem_axi4_ar_bits_id_2_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265678.4]
  assign _T_572 = {iocell_mem_axi4_b_bits_id_1_i,iocell_mem_axi4_b_bits_id_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265743.4]
  assign _T_573 = {iocell_mem_axi4_b_bits_id_3_i,iocell_mem_axi4_b_bits_id_2_i}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265744.4]
  assign _T_591 = {iocell_mem_axi4_w_bits_strb_3_pad,iocell_mem_axi4_w_bits_strb_2_pad,iocell_mem_axi4_w_bits_strb_1_pad,iocell_mem_axi4_w_bits_strb_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265832.4]
  assign _T_594 = {iocell_mem_axi4_w_bits_strb_7_pad,iocell_mem_axi4_w_bits_strb_6_pad,iocell_mem_axi4_w_bits_strb_5_pad,iocell_mem_axi4_w_bits_strb_4_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@265835.4]
  assign _T_666 = {iocell_mem_axi4_w_bits_data_7_pad,iocell_mem_axi4_w_bits_data_6_pad,iocell_mem_axi4_w_bits_data_5_pad,iocell_mem_axi4_w_bits_data_4_pad,iocell_mem_axi4_w_bits_data_3_pad,iocell_mem_axi4_w_bits_data_2_pad,iocell_mem_axi4_w_bits_data_1_pad,iocell_mem_axi4_w_bits_data_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266292.4]
  assign _T_674 = {iocell_mem_axi4_w_bits_data_15_pad,iocell_mem_axi4_w_bits_data_14_pad,iocell_mem_axi4_w_bits_data_13_pad,iocell_mem_axi4_w_bits_data_12_pad,iocell_mem_axi4_w_bits_data_11_pad,iocell_mem_axi4_w_bits_data_10_pad,iocell_mem_axi4_w_bits_data_9_pad,iocell_mem_axi4_w_bits_data_8_pad,_T_666}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266300.4]
  assign _T_681 = {iocell_mem_axi4_w_bits_data_23_pad,iocell_mem_axi4_w_bits_data_22_pad,iocell_mem_axi4_w_bits_data_21_pad,iocell_mem_axi4_w_bits_data_20_pad,iocell_mem_axi4_w_bits_data_19_pad,iocell_mem_axi4_w_bits_data_18_pad,iocell_mem_axi4_w_bits_data_17_pad,iocell_mem_axi4_w_bits_data_16_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266307.4]
  assign _T_690 = {iocell_mem_axi4_w_bits_data_31_pad,iocell_mem_axi4_w_bits_data_30_pad,iocell_mem_axi4_w_bits_data_29_pad,iocell_mem_axi4_w_bits_data_28_pad,iocell_mem_axi4_w_bits_data_27_pad,iocell_mem_axi4_w_bits_data_26_pad,iocell_mem_axi4_w_bits_data_25_pad,iocell_mem_axi4_w_bits_data_24_pad,_T_681,_T_674}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266316.4]
  assign _T_697 = {iocell_mem_axi4_w_bits_data_39_pad,iocell_mem_axi4_w_bits_data_38_pad,iocell_mem_axi4_w_bits_data_37_pad,iocell_mem_axi4_w_bits_data_36_pad,iocell_mem_axi4_w_bits_data_35_pad,iocell_mem_axi4_w_bits_data_34_pad,iocell_mem_axi4_w_bits_data_33_pad,iocell_mem_axi4_w_bits_data_32_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266323.4]
  assign _T_705 = {iocell_mem_axi4_w_bits_data_47_pad,iocell_mem_axi4_w_bits_data_46_pad,iocell_mem_axi4_w_bits_data_45_pad,iocell_mem_axi4_w_bits_data_44_pad,iocell_mem_axi4_w_bits_data_43_pad,iocell_mem_axi4_w_bits_data_42_pad,iocell_mem_axi4_w_bits_data_41_pad,iocell_mem_axi4_w_bits_data_40_pad,_T_697}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266331.4]
  assign _T_712 = {iocell_mem_axi4_w_bits_data_55_pad,iocell_mem_axi4_w_bits_data_54_pad,iocell_mem_axi4_w_bits_data_53_pad,iocell_mem_axi4_w_bits_data_52_pad,iocell_mem_axi4_w_bits_data_51_pad,iocell_mem_axi4_w_bits_data_50_pad,iocell_mem_axi4_w_bits_data_49_pad,iocell_mem_axi4_w_bits_data_48_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266338.4]
  assign _T_721 = {iocell_mem_axi4_w_bits_data_63_pad,iocell_mem_axi4_w_bits_data_62_pad,iocell_mem_axi4_w_bits_data_61_pad,iocell_mem_axi4_w_bits_data_60_pad,iocell_mem_axi4_w_bits_data_59_pad,iocell_mem_axi4_w_bits_data_58_pad,iocell_mem_axi4_w_bits_data_57_pad,iocell_mem_axi4_w_bits_data_56_pad,_T_712,_T_705}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266347.4]
  assign _T_731 = {iocell_mem_axi4_aw_bits_qos_1_pad,iocell_mem_axi4_aw_bits_qos_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266396.4]
  assign _T_732 = {iocell_mem_axi4_aw_bits_qos_3_pad,iocell_mem_axi4_aw_bits_qos_2_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266397.4]
  assign _T_737 = {iocell_mem_axi4_aw_bits_prot_2_pad,iocell_mem_axi4_aw_bits_prot_1_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266421.4]
  assign _T_743 = {iocell_mem_axi4_aw_bits_cache_1_pad,iocell_mem_axi4_aw_bits_cache_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266452.4]
  assign _T_744 = {iocell_mem_axi4_aw_bits_cache_3_pad,iocell_mem_axi4_aw_bits_cache_2_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266453.4]
  assign _T_753 = {iocell_mem_axi4_aw_bits_size_2_pad,iocell_mem_axi4_aw_bits_size_1_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266501.4]
  assign _T_765 = {iocell_mem_axi4_aw_bits_len_3_pad,iocell_mem_axi4_aw_bits_len_2_pad,iocell_mem_axi4_aw_bits_len_1_pad,iocell_mem_axi4_aw_bits_len_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266562.4]
  assign _T_768 = {iocell_mem_axi4_aw_bits_len_7_pad,iocell_mem_axi4_aw_bits_len_6_pad,iocell_mem_axi4_aw_bits_len_5_pad,iocell_mem_axi4_aw_bits_len_4_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266565.4]
  assign _T_808 = {iocell_mem_axi4_aw_bits_addr_7_pad,iocell_mem_axi4_aw_bits_addr_6_pad,iocell_mem_axi4_aw_bits_addr_5_pad,iocell_mem_axi4_aw_bits_addr_4_pad,iocell_mem_axi4_aw_bits_addr_3_pad,iocell_mem_axi4_aw_bits_addr_2_pad,iocell_mem_axi4_aw_bits_addr_1_pad,iocell_mem_axi4_aw_bits_addr_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266798.4]
  assign _T_816 = {iocell_mem_axi4_aw_bits_addr_15_pad,iocell_mem_axi4_aw_bits_addr_14_pad,iocell_mem_axi4_aw_bits_addr_13_pad,iocell_mem_axi4_aw_bits_addr_12_pad,iocell_mem_axi4_aw_bits_addr_11_pad,iocell_mem_axi4_aw_bits_addr_10_pad,iocell_mem_axi4_aw_bits_addr_9_pad,iocell_mem_axi4_aw_bits_addr_8_pad,_T_808}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266806.4]
  assign _T_823 = {iocell_mem_axi4_aw_bits_addr_23_pad,iocell_mem_axi4_aw_bits_addr_22_pad,iocell_mem_axi4_aw_bits_addr_21_pad,iocell_mem_axi4_aw_bits_addr_20_pad,iocell_mem_axi4_aw_bits_addr_19_pad,iocell_mem_axi4_aw_bits_addr_18_pad,iocell_mem_axi4_aw_bits_addr_17_pad,iocell_mem_axi4_aw_bits_addr_16_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266813.4]
  assign _T_831 = {iocell_mem_axi4_aw_bits_addr_31_pad,iocell_mem_axi4_aw_bits_addr_30_pad,iocell_mem_axi4_aw_bits_addr_29_pad,iocell_mem_axi4_aw_bits_addr_28_pad,iocell_mem_axi4_aw_bits_addr_27_pad,iocell_mem_axi4_aw_bits_addr_26_pad,iocell_mem_axi4_aw_bits_addr_25_pad,iocell_mem_axi4_aw_bits_addr_24_pad,_T_823}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266821.4]
  assign _T_837 = {iocell_mem_axi4_aw_bits_id_1_pad,iocell_mem_axi4_aw_bits_id_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266852.4]
  assign _T_838 = {iocell_mem_axi4_aw_bits_id_3_pad,iocell_mem_axi4_aw_bits_id_2_pad}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@266853.4]
  assign debug_clockeddmi_dmi_req_ready = iocell_debug_clockeddmi_dmi_req_ready_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@264028.4]
  assign debug_clockeddmi_dmi_resp_valid = iocell_debug_clockeddmi_dmi_resp_valid_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@263673.4]
  assign debug_clockeddmi_dmi_resp_bits_data = {_T_75,_T_60}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@263664.4]
  assign debug_clockeddmi_dmi_resp_bits_resp = {iocell_debug_clockeddmi_dmi_resp_bits_resp_1_pad,iocell_debug_clockeddmi_dmi_resp_bits_resp_pad}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@263408.4]
  assign debug_ndreset = iocell_debug_ndreset_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@263373.4]
  assign debug_dmactive = iocell_debug_dmactive_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@263364.4]
  assign serial_in_ready = iocell_serial_in_ready_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@264605.4]
  assign serial_out_valid = iocell_serial_out_valid_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@264322.4]
  assign serial_out_bits = {_T_232,_T_217}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@264313.4]
  assign mem_axi4_aw_valid = iocell_mem_axi4_aw_valid_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@266864.4]
  assign mem_axi4_aw_bits_id = {_T_838,_T_837}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266855.4]
  assign mem_axi4_aw_bits_addr = {_T_831,_T_816}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266823.4]
  assign mem_axi4_aw_bits_len = {_T_768,_T_765}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266567.4]
  assign mem_axi4_aw_bits_size = {_T_753,iocell_mem_axi4_aw_bits_size_pad}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266503.4]
  assign mem_axi4_aw_bits_burst = {iocell_mem_axi4_aw_bits_burst_1_pad,iocell_mem_axi4_aw_bits_burst_pad}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266479.4]
  assign mem_axi4_aw_bits_lock = iocell_mem_axi4_aw_bits_lock_pad; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266463.4]
  assign mem_axi4_aw_bits_cache = {_T_744,_T_743}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266455.4]
  assign mem_axi4_aw_bits_prot = {_T_737,iocell_mem_axi4_aw_bits_prot_pad}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266423.4]
  assign mem_axi4_aw_bits_qos = {_T_732,_T_731}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266399.4]
  assign mem_axi4_w_valid = iocell_mem_axi4_w_valid_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@266358.4]
  assign mem_axi4_w_bits_data = {_T_721,_T_690}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@266349.4]
  assign mem_axi4_w_bits_strb = {_T_594,_T_591}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265837.4]
  assign mem_axi4_w_bits_last = iocell_mem_axi4_w_bits_last_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@265773.4]
  assign mem_axi4_b_ready = iocell_mem_axi4_b_ready_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@265764.4]
  assign mem_axi4_ar_valid = iocell_mem_axi4_ar_valid_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@265689.4]
  assign mem_axi4_ar_bits_id = {_T_559,_T_558}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265680.4]
  assign mem_axi4_ar_bits_addr = {_T_552,_T_537}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265648.4]
  assign mem_axi4_ar_bits_len = {_T_489,_T_486}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265392.4]
  assign mem_axi4_ar_bits_size = {_T_474,iocell_mem_axi4_ar_bits_size_pad}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265328.4]
  assign mem_axi4_ar_bits_burst = {iocell_mem_axi4_ar_bits_burst_1_pad,iocell_mem_axi4_ar_bits_burst_pad}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265304.4]
  assign mem_axi4_ar_bits_lock = iocell_mem_axi4_ar_bits_lock_pad; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265288.4]
  assign mem_axi4_ar_bits_cache = {_T_465,_T_464}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265280.4]
  assign mem_axi4_ar_bits_prot = {_T_458,iocell_mem_axi4_ar_bits_prot_pad}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265248.4]
  assign mem_axi4_ar_bits_qos = {_T_453,_T_452}; // @[IOCell.scala 244:25:chipyard.TestHarness.RocketConfig.fir@265224.4]
  assign mem_axi4_r_ready = iocell_mem_axi4_r_ready_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@265192.4]
  assign uart_0_txd = iocell_uart_0_txd_pad; // @[IOCell.scala 180:21:chipyard.TestHarness.RocketConfig.fir@266891.4]
  assign system_clock = iocell_clock_i; // @[:chipyard.TestHarness.RocketConfig.fir@263345.4]
  assign system_reset = iocell_reset_i; // @[:chipyard.TestHarness.RocketConfig.fir@263346.4]
  assign system_mem_axi4_0_aw_ready = iocell_mem_axi4_aw_ready_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@266870.4]
  assign system_mem_axi4_0_w_ready = iocell_mem_axi4_w_ready_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@266364.4]
  assign system_mem_axi4_0_b_valid = iocell_mem_axi4_b_valid_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@265752.4]
  assign system_mem_axi4_0_b_bits_id = {_T_573,_T_572}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@265746.4]
  assign system_mem_axi4_0_b_bits_resp = {iocell_mem_axi4_b_bits_resp_1_i,iocell_mem_axi4_b_bits_resp_i}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@265714.4]
  assign system_mem_axi4_0_ar_ready = iocell_mem_axi4_ar_ready_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@265695.4]
  assign system_mem_axi4_0_r_valid = iocell_mem_axi4_r_valid_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@265180.4]
  assign system_mem_axi4_0_r_bits_id = {_T_442,_T_441}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@265174.4]
  assign system_mem_axi4_0_r_bits_data = {_T_435,_T_404}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@265142.4]
  assign system_mem_axi4_0_r_bits_resp = {iocell_mem_axi4_r_bits_resp_1_i,iocell_mem_axi4_r_bits_resp_i}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@264630.4]
  assign system_mem_axi4_0_r_bits_last = iocell_mem_axi4_r_bits_last_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@264611.4]
  assign system_resetctrl_hartIsInReset_0 = iocell_resetctrl_hartIsInReset_0_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@264053.4]
  assign system_debug_clock = iocell_debug_clock_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@264043.4]
  assign system_debug_reset = iocell_debug_reset_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@264034.4]
  assign system_debug_clockeddmi_dmi_req_valid = iocell_debug_clockeddmi_dmi_req_valid_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@264016.4]
  assign system_debug_clockeddmi_dmi_req_bits_addr = {_T_158,_T_155}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@264010.4]
  assign system_debug_clockeddmi_dmi_req_bits_data = {_T_145,_T_130}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@263954.4]
  assign system_debug_clockeddmi_dmi_req_bits_op = {iocell_debug_clockeddmi_dmi_req_bits_op_1_i,iocell_debug_clockeddmi_dmi_req_bits_op_i}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@263698.4]
  assign system_debug_clockeddmi_dmi_resp_ready = iocell_debug_clockeddmi_dmi_resp_ready_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@263679.4]
  assign system_debug_clockeddmi_dmiClock = iocell_debug_clockeddmi_dmiClock_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@263388.4]
  assign system_debug_clockeddmi_dmiReset = iocell_debug_clockeddmi_dmiReset_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@263379.4]
  assign system_debug_dmactiveAck = iocell_debug_dmactiveAck_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@263352.4]
  assign system_serial_in_valid = iocell_serial_in_valid_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@264593.4]
  assign system_serial_in_bits = {_T_299,_T_284}; // @[IOCell.scala 229:26:chipyard.TestHarness.RocketConfig.fir@264587.4]
  assign system_serial_out_ready = iocell_serial_out_ready_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@264328.4]
  assign system_uart_0_0_rxd = iocell_uart_0_rxd_i; // @[IOCell.scala 170:22:chipyard.TestHarness.RocketConfig.fir@266879.4]
  assign iocell_debug_dmactiveAck_pad = debug_dmactiveAck; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@263355.4]
  assign iocell_debug_dmactiveAck_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@263353.4]
  assign iocell_debug_dmactive_o = system_debug_dmactive; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@263361.4]
  assign iocell_debug_dmactive_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@263362.4]
  assign iocell_debug_ndreset_o = system_debug_ndreset; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@263370.4]
  assign iocell_debug_ndreset_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@263371.4]
  assign iocell_debug_clockeddmi_dmiReset_pad = debug_clockeddmi_dmiReset; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@263382.4]
  assign iocell_debug_clockeddmi_dmiReset_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@263380.4]
  assign iocell_debug_clockeddmi_dmiClock_pad = debug_clockeddmi_dmiClock; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@263392.4]
  assign iocell_debug_clockeddmi_dmiClock_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@263389.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_resp_o = system_debug_clockeddmi_dmi_resp_bits_resp[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263399.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_resp_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263400.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_resp_1_o = system_debug_clockeddmi_dmi_resp_bits_resp[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263405.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_resp_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263406.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_o = system_debug_clockeddmi_dmi_resp_bits_data[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263445.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263446.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_1_o = system_debug_clockeddmi_dmi_resp_bits_data[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263451.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263452.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_2_o = system_debug_clockeddmi_dmi_resp_bits_data[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263457.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263458.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_3_o = system_debug_clockeddmi_dmi_resp_bits_data[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263463.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263464.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_4_o = system_debug_clockeddmi_dmi_resp_bits_data[4]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263469.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_4_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263470.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_5_o = system_debug_clockeddmi_dmi_resp_bits_data[5]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263475.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_5_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263476.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_6_o = system_debug_clockeddmi_dmi_resp_bits_data[6]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263481.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_6_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263482.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_7_o = system_debug_clockeddmi_dmi_resp_bits_data[7]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263487.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_7_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263488.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_8_o = system_debug_clockeddmi_dmi_resp_bits_data[8]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263493.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_8_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263494.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_9_o = system_debug_clockeddmi_dmi_resp_bits_data[9]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263499.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_9_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263500.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_10_o = system_debug_clockeddmi_dmi_resp_bits_data[10]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263505.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_10_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263506.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_11_o = system_debug_clockeddmi_dmi_resp_bits_data[11]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263511.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_11_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263512.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_12_o = system_debug_clockeddmi_dmi_resp_bits_data[12]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263517.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_12_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263518.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_13_o = system_debug_clockeddmi_dmi_resp_bits_data[13]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263523.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_13_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263524.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_14_o = system_debug_clockeddmi_dmi_resp_bits_data[14]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263529.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_14_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263530.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_15_o = system_debug_clockeddmi_dmi_resp_bits_data[15]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263535.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_15_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263536.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_16_o = system_debug_clockeddmi_dmi_resp_bits_data[16]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263541.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_16_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263542.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_17_o = system_debug_clockeddmi_dmi_resp_bits_data[17]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263547.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_17_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263548.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_18_o = system_debug_clockeddmi_dmi_resp_bits_data[18]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263553.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_18_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263554.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_19_o = system_debug_clockeddmi_dmi_resp_bits_data[19]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263559.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_19_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263560.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_20_o = system_debug_clockeddmi_dmi_resp_bits_data[20]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263565.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_20_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263566.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_21_o = system_debug_clockeddmi_dmi_resp_bits_data[21]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263571.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_21_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263572.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_22_o = system_debug_clockeddmi_dmi_resp_bits_data[22]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263577.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_22_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263578.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_23_o = system_debug_clockeddmi_dmi_resp_bits_data[23]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263583.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_23_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263584.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_24_o = system_debug_clockeddmi_dmi_resp_bits_data[24]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263589.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_24_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263590.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_25_o = system_debug_clockeddmi_dmi_resp_bits_data[25]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263595.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_25_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263596.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_26_o = system_debug_clockeddmi_dmi_resp_bits_data[26]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263601.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_26_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263602.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_27_o = system_debug_clockeddmi_dmi_resp_bits_data[27]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263607.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_27_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263608.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_28_o = system_debug_clockeddmi_dmi_resp_bits_data[28]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263613.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_28_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263614.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_29_o = system_debug_clockeddmi_dmi_resp_bits_data[29]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263619.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_29_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263620.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_30_o = system_debug_clockeddmi_dmi_resp_bits_data[30]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263625.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_30_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263626.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_31_o = system_debug_clockeddmi_dmi_resp_bits_data[31]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@263631.4]
  assign iocell_debug_clockeddmi_dmi_resp_bits_data_31_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@263632.4]
  assign iocell_debug_clockeddmi_dmi_resp_valid_o = system_debug_clockeddmi_dmi_resp_valid; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@263670.4]
  assign iocell_debug_clockeddmi_dmi_resp_valid_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@263671.4]
  assign iocell_debug_clockeddmi_dmi_resp_ready_pad = debug_clockeddmi_dmi_resp_ready; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@263682.4]
  assign iocell_debug_clockeddmi_dmi_resp_ready_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@263680.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_op_pad = debug_clockeddmi_dmi_req_bits_op[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263689.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_op_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263690.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_op_1_pad = debug_clockeddmi_dmi_req_bits_op[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263695.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_op_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263696.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_pad = debug_clockeddmi_dmi_req_bits_data[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263735.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263736.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_1_pad = debug_clockeddmi_dmi_req_bits_data[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263741.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263742.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_2_pad = debug_clockeddmi_dmi_req_bits_data[2]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263747.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_2_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263748.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_3_pad = debug_clockeddmi_dmi_req_bits_data[3]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263753.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_3_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263754.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_4_pad = debug_clockeddmi_dmi_req_bits_data[4]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263759.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_4_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263760.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_5_pad = debug_clockeddmi_dmi_req_bits_data[5]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263765.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_5_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263766.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_6_pad = debug_clockeddmi_dmi_req_bits_data[6]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263771.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_6_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263772.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_7_pad = debug_clockeddmi_dmi_req_bits_data[7]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263777.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_7_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263778.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_8_pad = debug_clockeddmi_dmi_req_bits_data[8]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263783.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_8_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263784.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_9_pad = debug_clockeddmi_dmi_req_bits_data[9]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263789.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_9_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263790.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_10_pad = debug_clockeddmi_dmi_req_bits_data[10]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263795.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_10_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263796.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_11_pad = debug_clockeddmi_dmi_req_bits_data[11]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263801.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_11_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263802.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_12_pad = debug_clockeddmi_dmi_req_bits_data[12]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263807.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_12_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263808.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_13_pad = debug_clockeddmi_dmi_req_bits_data[13]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263813.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_13_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263814.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_14_pad = debug_clockeddmi_dmi_req_bits_data[14]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263819.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_14_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263820.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_15_pad = debug_clockeddmi_dmi_req_bits_data[15]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263825.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_15_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263826.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_16_pad = debug_clockeddmi_dmi_req_bits_data[16]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263831.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_16_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263832.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_17_pad = debug_clockeddmi_dmi_req_bits_data[17]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263837.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_17_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263838.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_18_pad = debug_clockeddmi_dmi_req_bits_data[18]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263843.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_18_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263844.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_19_pad = debug_clockeddmi_dmi_req_bits_data[19]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263849.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_19_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263850.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_20_pad = debug_clockeddmi_dmi_req_bits_data[20]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263855.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_20_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263856.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_21_pad = debug_clockeddmi_dmi_req_bits_data[21]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263861.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_21_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263862.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_22_pad = debug_clockeddmi_dmi_req_bits_data[22]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263867.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_22_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263868.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_23_pad = debug_clockeddmi_dmi_req_bits_data[23]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263873.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_23_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263874.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_24_pad = debug_clockeddmi_dmi_req_bits_data[24]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263879.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_24_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263880.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_25_pad = debug_clockeddmi_dmi_req_bits_data[25]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263885.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_25_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263886.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_26_pad = debug_clockeddmi_dmi_req_bits_data[26]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263891.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_26_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263892.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_27_pad = debug_clockeddmi_dmi_req_bits_data[27]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263897.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_27_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263898.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_28_pad = debug_clockeddmi_dmi_req_bits_data[28]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263903.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_28_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263904.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_29_pad = debug_clockeddmi_dmi_req_bits_data[29]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263909.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_29_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263910.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_30_pad = debug_clockeddmi_dmi_req_bits_data[30]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263915.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_30_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263916.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_31_pad = debug_clockeddmi_dmi_req_bits_data[31]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263921.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_data_31_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263922.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_pad = debug_clockeddmi_dmi_req_bits_addr[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263966.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263967.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_1_pad = debug_clockeddmi_dmi_req_bits_addr[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263972.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263973.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_2_pad = debug_clockeddmi_dmi_req_bits_addr[2]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263978.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_2_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263979.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_3_pad = debug_clockeddmi_dmi_req_bits_addr[3]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263984.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_3_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263985.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_4_pad = debug_clockeddmi_dmi_req_bits_addr[4]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263990.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_4_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263991.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_5_pad = debug_clockeddmi_dmi_req_bits_addr[5]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@263996.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_5_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@263997.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_6_pad = debug_clockeddmi_dmi_req_bits_addr[6]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264002.4]
  assign iocell_debug_clockeddmi_dmi_req_bits_addr_6_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264003.4]
  assign iocell_debug_clockeddmi_dmi_req_valid_pad = debug_clockeddmi_dmi_req_valid; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@264019.4]
  assign iocell_debug_clockeddmi_dmi_req_valid_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@264017.4]
  assign iocell_debug_clockeddmi_dmi_req_ready_o = system_debug_clockeddmi_dmi_req_ready; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@264025.4]
  assign iocell_debug_clockeddmi_dmi_req_ready_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@264026.4]
  assign iocell_debug_reset_pad = debug_reset; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@264037.4]
  assign iocell_debug_reset_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@264035.4]
  assign iocell_debug_clock_pad = debug_clock; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@264047.4]
  assign iocell_debug_clock_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@264044.4]
  assign iocell_resetctrl_hartIsInReset_0_pad = resetctrl_hartIsInReset_0; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@264056.4]
  assign iocell_resetctrl_hartIsInReset_0_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@264054.4]
  assign iocell_serial_out_bits_o = system_serial_out_bits[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264094.4]
  assign iocell_serial_out_bits_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264095.4]
  assign iocell_serial_out_bits_1_o = system_serial_out_bits[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264100.4]
  assign iocell_serial_out_bits_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264101.4]
  assign iocell_serial_out_bits_2_o = system_serial_out_bits[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264106.4]
  assign iocell_serial_out_bits_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264107.4]
  assign iocell_serial_out_bits_3_o = system_serial_out_bits[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264112.4]
  assign iocell_serial_out_bits_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264113.4]
  assign iocell_serial_out_bits_4_o = system_serial_out_bits[4]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264118.4]
  assign iocell_serial_out_bits_4_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264119.4]
  assign iocell_serial_out_bits_5_o = system_serial_out_bits[5]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264124.4]
  assign iocell_serial_out_bits_5_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264125.4]
  assign iocell_serial_out_bits_6_o = system_serial_out_bits[6]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264130.4]
  assign iocell_serial_out_bits_6_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264131.4]
  assign iocell_serial_out_bits_7_o = system_serial_out_bits[7]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264136.4]
  assign iocell_serial_out_bits_7_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264137.4]
  assign iocell_serial_out_bits_8_o = system_serial_out_bits[8]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264142.4]
  assign iocell_serial_out_bits_8_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264143.4]
  assign iocell_serial_out_bits_9_o = system_serial_out_bits[9]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264148.4]
  assign iocell_serial_out_bits_9_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264149.4]
  assign iocell_serial_out_bits_10_o = system_serial_out_bits[10]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264154.4]
  assign iocell_serial_out_bits_10_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264155.4]
  assign iocell_serial_out_bits_11_o = system_serial_out_bits[11]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264160.4]
  assign iocell_serial_out_bits_11_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264161.4]
  assign iocell_serial_out_bits_12_o = system_serial_out_bits[12]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264166.4]
  assign iocell_serial_out_bits_12_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264167.4]
  assign iocell_serial_out_bits_13_o = system_serial_out_bits[13]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264172.4]
  assign iocell_serial_out_bits_13_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264173.4]
  assign iocell_serial_out_bits_14_o = system_serial_out_bits[14]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264178.4]
  assign iocell_serial_out_bits_14_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264179.4]
  assign iocell_serial_out_bits_15_o = system_serial_out_bits[15]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264184.4]
  assign iocell_serial_out_bits_15_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264185.4]
  assign iocell_serial_out_bits_16_o = system_serial_out_bits[16]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264190.4]
  assign iocell_serial_out_bits_16_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264191.4]
  assign iocell_serial_out_bits_17_o = system_serial_out_bits[17]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264196.4]
  assign iocell_serial_out_bits_17_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264197.4]
  assign iocell_serial_out_bits_18_o = system_serial_out_bits[18]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264202.4]
  assign iocell_serial_out_bits_18_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264203.4]
  assign iocell_serial_out_bits_19_o = system_serial_out_bits[19]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264208.4]
  assign iocell_serial_out_bits_19_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264209.4]
  assign iocell_serial_out_bits_20_o = system_serial_out_bits[20]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264214.4]
  assign iocell_serial_out_bits_20_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264215.4]
  assign iocell_serial_out_bits_21_o = system_serial_out_bits[21]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264220.4]
  assign iocell_serial_out_bits_21_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264221.4]
  assign iocell_serial_out_bits_22_o = system_serial_out_bits[22]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264226.4]
  assign iocell_serial_out_bits_22_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264227.4]
  assign iocell_serial_out_bits_23_o = system_serial_out_bits[23]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264232.4]
  assign iocell_serial_out_bits_23_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264233.4]
  assign iocell_serial_out_bits_24_o = system_serial_out_bits[24]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264238.4]
  assign iocell_serial_out_bits_24_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264239.4]
  assign iocell_serial_out_bits_25_o = system_serial_out_bits[25]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264244.4]
  assign iocell_serial_out_bits_25_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264245.4]
  assign iocell_serial_out_bits_26_o = system_serial_out_bits[26]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264250.4]
  assign iocell_serial_out_bits_26_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264251.4]
  assign iocell_serial_out_bits_27_o = system_serial_out_bits[27]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264256.4]
  assign iocell_serial_out_bits_27_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264257.4]
  assign iocell_serial_out_bits_28_o = system_serial_out_bits[28]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264262.4]
  assign iocell_serial_out_bits_28_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264263.4]
  assign iocell_serial_out_bits_29_o = system_serial_out_bits[29]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264268.4]
  assign iocell_serial_out_bits_29_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264269.4]
  assign iocell_serial_out_bits_30_o = system_serial_out_bits[30]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264274.4]
  assign iocell_serial_out_bits_30_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264275.4]
  assign iocell_serial_out_bits_31_o = system_serial_out_bits[31]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@264280.4]
  assign iocell_serial_out_bits_31_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@264281.4]
  assign iocell_serial_out_valid_o = system_serial_out_valid; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@264319.4]
  assign iocell_serial_out_valid_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@264320.4]
  assign iocell_serial_out_ready_pad = serial_out_ready; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@264331.4]
  assign iocell_serial_out_ready_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@264329.4]
  assign iocell_serial_in_bits_pad = serial_in_bits[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264368.4]
  assign iocell_serial_in_bits_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264369.4]
  assign iocell_serial_in_bits_1_pad = serial_in_bits[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264374.4]
  assign iocell_serial_in_bits_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264375.4]
  assign iocell_serial_in_bits_2_pad = serial_in_bits[2]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264380.4]
  assign iocell_serial_in_bits_2_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264381.4]
  assign iocell_serial_in_bits_3_pad = serial_in_bits[3]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264386.4]
  assign iocell_serial_in_bits_3_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264387.4]
  assign iocell_serial_in_bits_4_pad = serial_in_bits[4]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264392.4]
  assign iocell_serial_in_bits_4_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264393.4]
  assign iocell_serial_in_bits_5_pad = serial_in_bits[5]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264398.4]
  assign iocell_serial_in_bits_5_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264399.4]
  assign iocell_serial_in_bits_6_pad = serial_in_bits[6]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264404.4]
  assign iocell_serial_in_bits_6_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264405.4]
  assign iocell_serial_in_bits_7_pad = serial_in_bits[7]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264410.4]
  assign iocell_serial_in_bits_7_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264411.4]
  assign iocell_serial_in_bits_8_pad = serial_in_bits[8]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264416.4]
  assign iocell_serial_in_bits_8_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264417.4]
  assign iocell_serial_in_bits_9_pad = serial_in_bits[9]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264422.4]
  assign iocell_serial_in_bits_9_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264423.4]
  assign iocell_serial_in_bits_10_pad = serial_in_bits[10]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264428.4]
  assign iocell_serial_in_bits_10_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264429.4]
  assign iocell_serial_in_bits_11_pad = serial_in_bits[11]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264434.4]
  assign iocell_serial_in_bits_11_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264435.4]
  assign iocell_serial_in_bits_12_pad = serial_in_bits[12]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264440.4]
  assign iocell_serial_in_bits_12_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264441.4]
  assign iocell_serial_in_bits_13_pad = serial_in_bits[13]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264446.4]
  assign iocell_serial_in_bits_13_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264447.4]
  assign iocell_serial_in_bits_14_pad = serial_in_bits[14]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264452.4]
  assign iocell_serial_in_bits_14_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264453.4]
  assign iocell_serial_in_bits_15_pad = serial_in_bits[15]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264458.4]
  assign iocell_serial_in_bits_15_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264459.4]
  assign iocell_serial_in_bits_16_pad = serial_in_bits[16]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264464.4]
  assign iocell_serial_in_bits_16_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264465.4]
  assign iocell_serial_in_bits_17_pad = serial_in_bits[17]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264470.4]
  assign iocell_serial_in_bits_17_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264471.4]
  assign iocell_serial_in_bits_18_pad = serial_in_bits[18]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264476.4]
  assign iocell_serial_in_bits_18_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264477.4]
  assign iocell_serial_in_bits_19_pad = serial_in_bits[19]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264482.4]
  assign iocell_serial_in_bits_19_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264483.4]
  assign iocell_serial_in_bits_20_pad = serial_in_bits[20]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264488.4]
  assign iocell_serial_in_bits_20_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264489.4]
  assign iocell_serial_in_bits_21_pad = serial_in_bits[21]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264494.4]
  assign iocell_serial_in_bits_21_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264495.4]
  assign iocell_serial_in_bits_22_pad = serial_in_bits[22]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264500.4]
  assign iocell_serial_in_bits_22_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264501.4]
  assign iocell_serial_in_bits_23_pad = serial_in_bits[23]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264506.4]
  assign iocell_serial_in_bits_23_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264507.4]
  assign iocell_serial_in_bits_24_pad = serial_in_bits[24]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264512.4]
  assign iocell_serial_in_bits_24_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264513.4]
  assign iocell_serial_in_bits_25_pad = serial_in_bits[25]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264518.4]
  assign iocell_serial_in_bits_25_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264519.4]
  assign iocell_serial_in_bits_26_pad = serial_in_bits[26]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264524.4]
  assign iocell_serial_in_bits_26_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264525.4]
  assign iocell_serial_in_bits_27_pad = serial_in_bits[27]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264530.4]
  assign iocell_serial_in_bits_27_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264531.4]
  assign iocell_serial_in_bits_28_pad = serial_in_bits[28]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264536.4]
  assign iocell_serial_in_bits_28_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264537.4]
  assign iocell_serial_in_bits_29_pad = serial_in_bits[29]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264542.4]
  assign iocell_serial_in_bits_29_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264543.4]
  assign iocell_serial_in_bits_30_pad = serial_in_bits[30]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264548.4]
  assign iocell_serial_in_bits_30_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264549.4]
  assign iocell_serial_in_bits_31_pad = serial_in_bits[31]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264554.4]
  assign iocell_serial_in_bits_31_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264555.4]
  assign iocell_serial_in_valid_pad = serial_in_valid; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@264596.4]
  assign iocell_serial_in_valid_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@264594.4]
  assign iocell_serial_in_ready_o = system_serial_in_ready; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@264602.4]
  assign iocell_serial_in_ready_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@264603.4]
  assign iocell_mem_axi4_r_bits_last_pad = mem_axi4_r_bits_last; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@264614.4]
  assign iocell_mem_axi4_r_bits_last_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@264612.4]
  assign iocell_mem_axi4_r_bits_resp_pad = mem_axi4_r_bits_resp[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264621.4]
  assign iocell_mem_axi4_r_bits_resp_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264622.4]
  assign iocell_mem_axi4_r_bits_resp_1_pad = mem_axi4_r_bits_resp[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264627.4]
  assign iocell_mem_axi4_r_bits_resp_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264628.4]
  assign iocell_mem_axi4_r_bits_data_pad = mem_axi4_r_bits_data[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264699.4]
  assign iocell_mem_axi4_r_bits_data_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264700.4]
  assign iocell_mem_axi4_r_bits_data_1_pad = mem_axi4_r_bits_data[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264705.4]
  assign iocell_mem_axi4_r_bits_data_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264706.4]
  assign iocell_mem_axi4_r_bits_data_2_pad = mem_axi4_r_bits_data[2]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264711.4]
  assign iocell_mem_axi4_r_bits_data_2_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264712.4]
  assign iocell_mem_axi4_r_bits_data_3_pad = mem_axi4_r_bits_data[3]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264717.4]
  assign iocell_mem_axi4_r_bits_data_3_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264718.4]
  assign iocell_mem_axi4_r_bits_data_4_pad = mem_axi4_r_bits_data[4]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264723.4]
  assign iocell_mem_axi4_r_bits_data_4_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264724.4]
  assign iocell_mem_axi4_r_bits_data_5_pad = mem_axi4_r_bits_data[5]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264729.4]
  assign iocell_mem_axi4_r_bits_data_5_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264730.4]
  assign iocell_mem_axi4_r_bits_data_6_pad = mem_axi4_r_bits_data[6]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264735.4]
  assign iocell_mem_axi4_r_bits_data_6_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264736.4]
  assign iocell_mem_axi4_r_bits_data_7_pad = mem_axi4_r_bits_data[7]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264741.4]
  assign iocell_mem_axi4_r_bits_data_7_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264742.4]
  assign iocell_mem_axi4_r_bits_data_8_pad = mem_axi4_r_bits_data[8]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264747.4]
  assign iocell_mem_axi4_r_bits_data_8_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264748.4]
  assign iocell_mem_axi4_r_bits_data_9_pad = mem_axi4_r_bits_data[9]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264753.4]
  assign iocell_mem_axi4_r_bits_data_9_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264754.4]
  assign iocell_mem_axi4_r_bits_data_10_pad = mem_axi4_r_bits_data[10]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264759.4]
  assign iocell_mem_axi4_r_bits_data_10_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264760.4]
  assign iocell_mem_axi4_r_bits_data_11_pad = mem_axi4_r_bits_data[11]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264765.4]
  assign iocell_mem_axi4_r_bits_data_11_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264766.4]
  assign iocell_mem_axi4_r_bits_data_12_pad = mem_axi4_r_bits_data[12]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264771.4]
  assign iocell_mem_axi4_r_bits_data_12_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264772.4]
  assign iocell_mem_axi4_r_bits_data_13_pad = mem_axi4_r_bits_data[13]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264777.4]
  assign iocell_mem_axi4_r_bits_data_13_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264778.4]
  assign iocell_mem_axi4_r_bits_data_14_pad = mem_axi4_r_bits_data[14]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264783.4]
  assign iocell_mem_axi4_r_bits_data_14_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264784.4]
  assign iocell_mem_axi4_r_bits_data_15_pad = mem_axi4_r_bits_data[15]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264789.4]
  assign iocell_mem_axi4_r_bits_data_15_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264790.4]
  assign iocell_mem_axi4_r_bits_data_16_pad = mem_axi4_r_bits_data[16]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264795.4]
  assign iocell_mem_axi4_r_bits_data_16_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264796.4]
  assign iocell_mem_axi4_r_bits_data_17_pad = mem_axi4_r_bits_data[17]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264801.4]
  assign iocell_mem_axi4_r_bits_data_17_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264802.4]
  assign iocell_mem_axi4_r_bits_data_18_pad = mem_axi4_r_bits_data[18]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264807.4]
  assign iocell_mem_axi4_r_bits_data_18_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264808.4]
  assign iocell_mem_axi4_r_bits_data_19_pad = mem_axi4_r_bits_data[19]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264813.4]
  assign iocell_mem_axi4_r_bits_data_19_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264814.4]
  assign iocell_mem_axi4_r_bits_data_20_pad = mem_axi4_r_bits_data[20]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264819.4]
  assign iocell_mem_axi4_r_bits_data_20_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264820.4]
  assign iocell_mem_axi4_r_bits_data_21_pad = mem_axi4_r_bits_data[21]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264825.4]
  assign iocell_mem_axi4_r_bits_data_21_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264826.4]
  assign iocell_mem_axi4_r_bits_data_22_pad = mem_axi4_r_bits_data[22]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264831.4]
  assign iocell_mem_axi4_r_bits_data_22_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264832.4]
  assign iocell_mem_axi4_r_bits_data_23_pad = mem_axi4_r_bits_data[23]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264837.4]
  assign iocell_mem_axi4_r_bits_data_23_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264838.4]
  assign iocell_mem_axi4_r_bits_data_24_pad = mem_axi4_r_bits_data[24]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264843.4]
  assign iocell_mem_axi4_r_bits_data_24_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264844.4]
  assign iocell_mem_axi4_r_bits_data_25_pad = mem_axi4_r_bits_data[25]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264849.4]
  assign iocell_mem_axi4_r_bits_data_25_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264850.4]
  assign iocell_mem_axi4_r_bits_data_26_pad = mem_axi4_r_bits_data[26]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264855.4]
  assign iocell_mem_axi4_r_bits_data_26_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264856.4]
  assign iocell_mem_axi4_r_bits_data_27_pad = mem_axi4_r_bits_data[27]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264861.4]
  assign iocell_mem_axi4_r_bits_data_27_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264862.4]
  assign iocell_mem_axi4_r_bits_data_28_pad = mem_axi4_r_bits_data[28]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264867.4]
  assign iocell_mem_axi4_r_bits_data_28_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264868.4]
  assign iocell_mem_axi4_r_bits_data_29_pad = mem_axi4_r_bits_data[29]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264873.4]
  assign iocell_mem_axi4_r_bits_data_29_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264874.4]
  assign iocell_mem_axi4_r_bits_data_30_pad = mem_axi4_r_bits_data[30]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264879.4]
  assign iocell_mem_axi4_r_bits_data_30_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264880.4]
  assign iocell_mem_axi4_r_bits_data_31_pad = mem_axi4_r_bits_data[31]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264885.4]
  assign iocell_mem_axi4_r_bits_data_31_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264886.4]
  assign iocell_mem_axi4_r_bits_data_32_pad = mem_axi4_r_bits_data[32]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264891.4]
  assign iocell_mem_axi4_r_bits_data_32_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264892.4]
  assign iocell_mem_axi4_r_bits_data_33_pad = mem_axi4_r_bits_data[33]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264897.4]
  assign iocell_mem_axi4_r_bits_data_33_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264898.4]
  assign iocell_mem_axi4_r_bits_data_34_pad = mem_axi4_r_bits_data[34]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264903.4]
  assign iocell_mem_axi4_r_bits_data_34_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264904.4]
  assign iocell_mem_axi4_r_bits_data_35_pad = mem_axi4_r_bits_data[35]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264909.4]
  assign iocell_mem_axi4_r_bits_data_35_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264910.4]
  assign iocell_mem_axi4_r_bits_data_36_pad = mem_axi4_r_bits_data[36]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264915.4]
  assign iocell_mem_axi4_r_bits_data_36_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264916.4]
  assign iocell_mem_axi4_r_bits_data_37_pad = mem_axi4_r_bits_data[37]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264921.4]
  assign iocell_mem_axi4_r_bits_data_37_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264922.4]
  assign iocell_mem_axi4_r_bits_data_38_pad = mem_axi4_r_bits_data[38]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264927.4]
  assign iocell_mem_axi4_r_bits_data_38_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264928.4]
  assign iocell_mem_axi4_r_bits_data_39_pad = mem_axi4_r_bits_data[39]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264933.4]
  assign iocell_mem_axi4_r_bits_data_39_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264934.4]
  assign iocell_mem_axi4_r_bits_data_40_pad = mem_axi4_r_bits_data[40]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264939.4]
  assign iocell_mem_axi4_r_bits_data_40_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264940.4]
  assign iocell_mem_axi4_r_bits_data_41_pad = mem_axi4_r_bits_data[41]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264945.4]
  assign iocell_mem_axi4_r_bits_data_41_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264946.4]
  assign iocell_mem_axi4_r_bits_data_42_pad = mem_axi4_r_bits_data[42]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264951.4]
  assign iocell_mem_axi4_r_bits_data_42_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264952.4]
  assign iocell_mem_axi4_r_bits_data_43_pad = mem_axi4_r_bits_data[43]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264957.4]
  assign iocell_mem_axi4_r_bits_data_43_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264958.4]
  assign iocell_mem_axi4_r_bits_data_44_pad = mem_axi4_r_bits_data[44]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264963.4]
  assign iocell_mem_axi4_r_bits_data_44_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264964.4]
  assign iocell_mem_axi4_r_bits_data_45_pad = mem_axi4_r_bits_data[45]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264969.4]
  assign iocell_mem_axi4_r_bits_data_45_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264970.4]
  assign iocell_mem_axi4_r_bits_data_46_pad = mem_axi4_r_bits_data[46]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264975.4]
  assign iocell_mem_axi4_r_bits_data_46_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264976.4]
  assign iocell_mem_axi4_r_bits_data_47_pad = mem_axi4_r_bits_data[47]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264981.4]
  assign iocell_mem_axi4_r_bits_data_47_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264982.4]
  assign iocell_mem_axi4_r_bits_data_48_pad = mem_axi4_r_bits_data[48]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264987.4]
  assign iocell_mem_axi4_r_bits_data_48_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264988.4]
  assign iocell_mem_axi4_r_bits_data_49_pad = mem_axi4_r_bits_data[49]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264993.4]
  assign iocell_mem_axi4_r_bits_data_49_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@264994.4]
  assign iocell_mem_axi4_r_bits_data_50_pad = mem_axi4_r_bits_data[50]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@264999.4]
  assign iocell_mem_axi4_r_bits_data_50_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265000.4]
  assign iocell_mem_axi4_r_bits_data_51_pad = mem_axi4_r_bits_data[51]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265005.4]
  assign iocell_mem_axi4_r_bits_data_51_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265006.4]
  assign iocell_mem_axi4_r_bits_data_52_pad = mem_axi4_r_bits_data[52]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265011.4]
  assign iocell_mem_axi4_r_bits_data_52_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265012.4]
  assign iocell_mem_axi4_r_bits_data_53_pad = mem_axi4_r_bits_data[53]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265017.4]
  assign iocell_mem_axi4_r_bits_data_53_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265018.4]
  assign iocell_mem_axi4_r_bits_data_54_pad = mem_axi4_r_bits_data[54]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265023.4]
  assign iocell_mem_axi4_r_bits_data_54_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265024.4]
  assign iocell_mem_axi4_r_bits_data_55_pad = mem_axi4_r_bits_data[55]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265029.4]
  assign iocell_mem_axi4_r_bits_data_55_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265030.4]
  assign iocell_mem_axi4_r_bits_data_56_pad = mem_axi4_r_bits_data[56]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265035.4]
  assign iocell_mem_axi4_r_bits_data_56_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265036.4]
  assign iocell_mem_axi4_r_bits_data_57_pad = mem_axi4_r_bits_data[57]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265041.4]
  assign iocell_mem_axi4_r_bits_data_57_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265042.4]
  assign iocell_mem_axi4_r_bits_data_58_pad = mem_axi4_r_bits_data[58]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265047.4]
  assign iocell_mem_axi4_r_bits_data_58_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265048.4]
  assign iocell_mem_axi4_r_bits_data_59_pad = mem_axi4_r_bits_data[59]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265053.4]
  assign iocell_mem_axi4_r_bits_data_59_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265054.4]
  assign iocell_mem_axi4_r_bits_data_60_pad = mem_axi4_r_bits_data[60]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265059.4]
  assign iocell_mem_axi4_r_bits_data_60_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265060.4]
  assign iocell_mem_axi4_r_bits_data_61_pad = mem_axi4_r_bits_data[61]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265065.4]
  assign iocell_mem_axi4_r_bits_data_61_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265066.4]
  assign iocell_mem_axi4_r_bits_data_62_pad = mem_axi4_r_bits_data[62]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265071.4]
  assign iocell_mem_axi4_r_bits_data_62_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265072.4]
  assign iocell_mem_axi4_r_bits_data_63_pad = mem_axi4_r_bits_data[63]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265077.4]
  assign iocell_mem_axi4_r_bits_data_63_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265078.4]
  assign iocell_mem_axi4_r_bits_id_pad = mem_axi4_r_bits_id[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265151.4]
  assign iocell_mem_axi4_r_bits_id_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265152.4]
  assign iocell_mem_axi4_r_bits_id_1_pad = mem_axi4_r_bits_id[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265157.4]
  assign iocell_mem_axi4_r_bits_id_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265158.4]
  assign iocell_mem_axi4_r_bits_id_2_pad = mem_axi4_r_bits_id[2]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265163.4]
  assign iocell_mem_axi4_r_bits_id_2_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265164.4]
  assign iocell_mem_axi4_r_bits_id_3_pad = mem_axi4_r_bits_id[3]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265169.4]
  assign iocell_mem_axi4_r_bits_id_3_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265170.4]
  assign iocell_mem_axi4_r_valid_pad = mem_axi4_r_valid; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@265183.4]
  assign iocell_mem_axi4_r_valid_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@265181.4]
  assign iocell_mem_axi4_r_ready_o = system_mem_axi4_0_r_ready; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@265189.4]
  assign iocell_mem_axi4_r_ready_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@265190.4]
  assign iocell_mem_axi4_ar_bits_qos_o = system_mem_axi4_0_ar_bits_qos[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265201.4]
  assign iocell_mem_axi4_ar_bits_qos_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265202.4]
  assign iocell_mem_axi4_ar_bits_qos_1_o = system_mem_axi4_0_ar_bits_qos[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265207.4]
  assign iocell_mem_axi4_ar_bits_qos_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265208.4]
  assign iocell_mem_axi4_ar_bits_qos_2_o = system_mem_axi4_0_ar_bits_qos[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265213.4]
  assign iocell_mem_axi4_ar_bits_qos_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265214.4]
  assign iocell_mem_axi4_ar_bits_qos_3_o = system_mem_axi4_0_ar_bits_qos[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265219.4]
  assign iocell_mem_axi4_ar_bits_qos_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265220.4]
  assign iocell_mem_axi4_ar_bits_prot_o = system_mem_axi4_0_ar_bits_prot[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265232.4]
  assign iocell_mem_axi4_ar_bits_prot_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265233.4]
  assign iocell_mem_axi4_ar_bits_prot_1_o = system_mem_axi4_0_ar_bits_prot[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265238.4]
  assign iocell_mem_axi4_ar_bits_prot_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265239.4]
  assign iocell_mem_axi4_ar_bits_prot_2_o = system_mem_axi4_0_ar_bits_prot[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265244.4]
  assign iocell_mem_axi4_ar_bits_prot_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265245.4]
  assign iocell_mem_axi4_ar_bits_cache_o = system_mem_axi4_0_ar_bits_cache[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265257.4]
  assign iocell_mem_axi4_ar_bits_cache_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265258.4]
  assign iocell_mem_axi4_ar_bits_cache_1_o = system_mem_axi4_0_ar_bits_cache[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265263.4]
  assign iocell_mem_axi4_ar_bits_cache_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265264.4]
  assign iocell_mem_axi4_ar_bits_cache_2_o = system_mem_axi4_0_ar_bits_cache[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265269.4]
  assign iocell_mem_axi4_ar_bits_cache_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265270.4]
  assign iocell_mem_axi4_ar_bits_cache_3_o = system_mem_axi4_0_ar_bits_cache[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265275.4]
  assign iocell_mem_axi4_ar_bits_cache_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265276.4]
  assign iocell_mem_axi4_ar_bits_lock_o = system_mem_axi4_0_ar_bits_lock; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265286.4]
  assign iocell_mem_axi4_ar_bits_lock_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265287.4]
  assign iocell_mem_axi4_ar_bits_burst_o = system_mem_axi4_0_ar_bits_burst[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265295.4]
  assign iocell_mem_axi4_ar_bits_burst_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265296.4]
  assign iocell_mem_axi4_ar_bits_burst_1_o = system_mem_axi4_0_ar_bits_burst[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265301.4]
  assign iocell_mem_axi4_ar_bits_burst_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265302.4]
  assign iocell_mem_axi4_ar_bits_size_o = system_mem_axi4_0_ar_bits_size[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265312.4]
  assign iocell_mem_axi4_ar_bits_size_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265313.4]
  assign iocell_mem_axi4_ar_bits_size_1_o = system_mem_axi4_0_ar_bits_size[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265318.4]
  assign iocell_mem_axi4_ar_bits_size_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265319.4]
  assign iocell_mem_axi4_ar_bits_size_2_o = system_mem_axi4_0_ar_bits_size[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265324.4]
  assign iocell_mem_axi4_ar_bits_size_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265325.4]
  assign iocell_mem_axi4_ar_bits_len_o = system_mem_axi4_0_ar_bits_len[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265341.4]
  assign iocell_mem_axi4_ar_bits_len_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265342.4]
  assign iocell_mem_axi4_ar_bits_len_1_o = system_mem_axi4_0_ar_bits_len[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265347.4]
  assign iocell_mem_axi4_ar_bits_len_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265348.4]
  assign iocell_mem_axi4_ar_bits_len_2_o = system_mem_axi4_0_ar_bits_len[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265353.4]
  assign iocell_mem_axi4_ar_bits_len_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265354.4]
  assign iocell_mem_axi4_ar_bits_len_3_o = system_mem_axi4_0_ar_bits_len[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265359.4]
  assign iocell_mem_axi4_ar_bits_len_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265360.4]
  assign iocell_mem_axi4_ar_bits_len_4_o = system_mem_axi4_0_ar_bits_len[4]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265365.4]
  assign iocell_mem_axi4_ar_bits_len_4_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265366.4]
  assign iocell_mem_axi4_ar_bits_len_5_o = system_mem_axi4_0_ar_bits_len[5]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265371.4]
  assign iocell_mem_axi4_ar_bits_len_5_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265372.4]
  assign iocell_mem_axi4_ar_bits_len_6_o = system_mem_axi4_0_ar_bits_len[6]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265377.4]
  assign iocell_mem_axi4_ar_bits_len_6_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265378.4]
  assign iocell_mem_axi4_ar_bits_len_7_o = system_mem_axi4_0_ar_bits_len[7]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265383.4]
  assign iocell_mem_axi4_ar_bits_len_7_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265384.4]
  assign iocell_mem_axi4_ar_bits_addr_o = system_mem_axi4_0_ar_bits_addr[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265429.4]
  assign iocell_mem_axi4_ar_bits_addr_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265430.4]
  assign iocell_mem_axi4_ar_bits_addr_1_o = system_mem_axi4_0_ar_bits_addr[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265435.4]
  assign iocell_mem_axi4_ar_bits_addr_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265436.4]
  assign iocell_mem_axi4_ar_bits_addr_2_o = system_mem_axi4_0_ar_bits_addr[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265441.4]
  assign iocell_mem_axi4_ar_bits_addr_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265442.4]
  assign iocell_mem_axi4_ar_bits_addr_3_o = system_mem_axi4_0_ar_bits_addr[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265447.4]
  assign iocell_mem_axi4_ar_bits_addr_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265448.4]
  assign iocell_mem_axi4_ar_bits_addr_4_o = system_mem_axi4_0_ar_bits_addr[4]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265453.4]
  assign iocell_mem_axi4_ar_bits_addr_4_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265454.4]
  assign iocell_mem_axi4_ar_bits_addr_5_o = system_mem_axi4_0_ar_bits_addr[5]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265459.4]
  assign iocell_mem_axi4_ar_bits_addr_5_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265460.4]
  assign iocell_mem_axi4_ar_bits_addr_6_o = system_mem_axi4_0_ar_bits_addr[6]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265465.4]
  assign iocell_mem_axi4_ar_bits_addr_6_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265466.4]
  assign iocell_mem_axi4_ar_bits_addr_7_o = system_mem_axi4_0_ar_bits_addr[7]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265471.4]
  assign iocell_mem_axi4_ar_bits_addr_7_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265472.4]
  assign iocell_mem_axi4_ar_bits_addr_8_o = system_mem_axi4_0_ar_bits_addr[8]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265477.4]
  assign iocell_mem_axi4_ar_bits_addr_8_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265478.4]
  assign iocell_mem_axi4_ar_bits_addr_9_o = system_mem_axi4_0_ar_bits_addr[9]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265483.4]
  assign iocell_mem_axi4_ar_bits_addr_9_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265484.4]
  assign iocell_mem_axi4_ar_bits_addr_10_o = system_mem_axi4_0_ar_bits_addr[10]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265489.4]
  assign iocell_mem_axi4_ar_bits_addr_10_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265490.4]
  assign iocell_mem_axi4_ar_bits_addr_11_o = system_mem_axi4_0_ar_bits_addr[11]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265495.4]
  assign iocell_mem_axi4_ar_bits_addr_11_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265496.4]
  assign iocell_mem_axi4_ar_bits_addr_12_o = system_mem_axi4_0_ar_bits_addr[12]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265501.4]
  assign iocell_mem_axi4_ar_bits_addr_12_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265502.4]
  assign iocell_mem_axi4_ar_bits_addr_13_o = system_mem_axi4_0_ar_bits_addr[13]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265507.4]
  assign iocell_mem_axi4_ar_bits_addr_13_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265508.4]
  assign iocell_mem_axi4_ar_bits_addr_14_o = system_mem_axi4_0_ar_bits_addr[14]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265513.4]
  assign iocell_mem_axi4_ar_bits_addr_14_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265514.4]
  assign iocell_mem_axi4_ar_bits_addr_15_o = system_mem_axi4_0_ar_bits_addr[15]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265519.4]
  assign iocell_mem_axi4_ar_bits_addr_15_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265520.4]
  assign iocell_mem_axi4_ar_bits_addr_16_o = system_mem_axi4_0_ar_bits_addr[16]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265525.4]
  assign iocell_mem_axi4_ar_bits_addr_16_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265526.4]
  assign iocell_mem_axi4_ar_bits_addr_17_o = system_mem_axi4_0_ar_bits_addr[17]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265531.4]
  assign iocell_mem_axi4_ar_bits_addr_17_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265532.4]
  assign iocell_mem_axi4_ar_bits_addr_18_o = system_mem_axi4_0_ar_bits_addr[18]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265537.4]
  assign iocell_mem_axi4_ar_bits_addr_18_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265538.4]
  assign iocell_mem_axi4_ar_bits_addr_19_o = system_mem_axi4_0_ar_bits_addr[19]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265543.4]
  assign iocell_mem_axi4_ar_bits_addr_19_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265544.4]
  assign iocell_mem_axi4_ar_bits_addr_20_o = system_mem_axi4_0_ar_bits_addr[20]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265549.4]
  assign iocell_mem_axi4_ar_bits_addr_20_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265550.4]
  assign iocell_mem_axi4_ar_bits_addr_21_o = system_mem_axi4_0_ar_bits_addr[21]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265555.4]
  assign iocell_mem_axi4_ar_bits_addr_21_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265556.4]
  assign iocell_mem_axi4_ar_bits_addr_22_o = system_mem_axi4_0_ar_bits_addr[22]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265561.4]
  assign iocell_mem_axi4_ar_bits_addr_22_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265562.4]
  assign iocell_mem_axi4_ar_bits_addr_23_o = system_mem_axi4_0_ar_bits_addr[23]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265567.4]
  assign iocell_mem_axi4_ar_bits_addr_23_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265568.4]
  assign iocell_mem_axi4_ar_bits_addr_24_o = system_mem_axi4_0_ar_bits_addr[24]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265573.4]
  assign iocell_mem_axi4_ar_bits_addr_24_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265574.4]
  assign iocell_mem_axi4_ar_bits_addr_25_o = system_mem_axi4_0_ar_bits_addr[25]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265579.4]
  assign iocell_mem_axi4_ar_bits_addr_25_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265580.4]
  assign iocell_mem_axi4_ar_bits_addr_26_o = system_mem_axi4_0_ar_bits_addr[26]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265585.4]
  assign iocell_mem_axi4_ar_bits_addr_26_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265586.4]
  assign iocell_mem_axi4_ar_bits_addr_27_o = system_mem_axi4_0_ar_bits_addr[27]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265591.4]
  assign iocell_mem_axi4_ar_bits_addr_27_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265592.4]
  assign iocell_mem_axi4_ar_bits_addr_28_o = system_mem_axi4_0_ar_bits_addr[28]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265597.4]
  assign iocell_mem_axi4_ar_bits_addr_28_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265598.4]
  assign iocell_mem_axi4_ar_bits_addr_29_o = system_mem_axi4_0_ar_bits_addr[29]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265603.4]
  assign iocell_mem_axi4_ar_bits_addr_29_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265604.4]
  assign iocell_mem_axi4_ar_bits_addr_30_o = system_mem_axi4_0_ar_bits_addr[30]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265609.4]
  assign iocell_mem_axi4_ar_bits_addr_30_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265610.4]
  assign iocell_mem_axi4_ar_bits_addr_31_o = system_mem_axi4_0_ar_bits_addr[31]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265615.4]
  assign iocell_mem_axi4_ar_bits_addr_31_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265616.4]
  assign iocell_mem_axi4_ar_bits_id_o = system_mem_axi4_0_ar_bits_id[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265657.4]
  assign iocell_mem_axi4_ar_bits_id_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265658.4]
  assign iocell_mem_axi4_ar_bits_id_1_o = system_mem_axi4_0_ar_bits_id[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265663.4]
  assign iocell_mem_axi4_ar_bits_id_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265664.4]
  assign iocell_mem_axi4_ar_bits_id_2_o = system_mem_axi4_0_ar_bits_id[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265669.4]
  assign iocell_mem_axi4_ar_bits_id_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265670.4]
  assign iocell_mem_axi4_ar_bits_id_3_o = system_mem_axi4_0_ar_bits_id[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265675.4]
  assign iocell_mem_axi4_ar_bits_id_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265676.4]
  assign iocell_mem_axi4_ar_valid_o = system_mem_axi4_0_ar_valid; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@265686.4]
  assign iocell_mem_axi4_ar_valid_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@265687.4]
  assign iocell_mem_axi4_ar_ready_pad = mem_axi4_ar_ready; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@265698.4]
  assign iocell_mem_axi4_ar_ready_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@265696.4]
  assign iocell_mem_axi4_b_bits_resp_pad = mem_axi4_b_bits_resp[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265705.4]
  assign iocell_mem_axi4_b_bits_resp_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265706.4]
  assign iocell_mem_axi4_b_bits_resp_1_pad = mem_axi4_b_bits_resp[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265711.4]
  assign iocell_mem_axi4_b_bits_resp_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265712.4]
  assign iocell_mem_axi4_b_bits_id_pad = mem_axi4_b_bits_id[0]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265723.4]
  assign iocell_mem_axi4_b_bits_id_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265724.4]
  assign iocell_mem_axi4_b_bits_id_1_pad = mem_axi4_b_bits_id[1]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265729.4]
  assign iocell_mem_axi4_b_bits_id_1_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265730.4]
  assign iocell_mem_axi4_b_bits_id_2_pad = mem_axi4_b_bits_id[2]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265735.4]
  assign iocell_mem_axi4_b_bits_id_2_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265736.4]
  assign iocell_mem_axi4_b_bits_id_3_pad = mem_axi4_b_bits_id[3]; // @[IOCell.scala 224:31:chipyard.TestHarness.RocketConfig.fir@265741.4]
  assign iocell_mem_axi4_b_bits_id_3_ie = 1'h1; // @[IOCell.scala 225:30:chipyard.TestHarness.RocketConfig.fir@265742.4]
  assign iocell_mem_axi4_b_valid_pad = mem_axi4_b_valid; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@265755.4]
  assign iocell_mem_axi4_b_valid_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@265753.4]
  assign iocell_mem_axi4_b_ready_o = system_mem_axi4_0_b_ready; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@265761.4]
  assign iocell_mem_axi4_b_ready_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@265762.4]
  assign iocell_mem_axi4_w_bits_last_o = system_mem_axi4_0_w_bits_last; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@265770.4]
  assign iocell_mem_axi4_w_bits_last_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@265771.4]
  assign iocell_mem_axi4_w_bits_strb_o = system_mem_axi4_0_w_bits_strb[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265786.4]
  assign iocell_mem_axi4_w_bits_strb_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265787.4]
  assign iocell_mem_axi4_w_bits_strb_1_o = system_mem_axi4_0_w_bits_strb[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265792.4]
  assign iocell_mem_axi4_w_bits_strb_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265793.4]
  assign iocell_mem_axi4_w_bits_strb_2_o = system_mem_axi4_0_w_bits_strb[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265798.4]
  assign iocell_mem_axi4_w_bits_strb_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265799.4]
  assign iocell_mem_axi4_w_bits_strb_3_o = system_mem_axi4_0_w_bits_strb[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265804.4]
  assign iocell_mem_axi4_w_bits_strb_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265805.4]
  assign iocell_mem_axi4_w_bits_strb_4_o = system_mem_axi4_0_w_bits_strb[4]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265810.4]
  assign iocell_mem_axi4_w_bits_strb_4_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265811.4]
  assign iocell_mem_axi4_w_bits_strb_5_o = system_mem_axi4_0_w_bits_strb[5]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265816.4]
  assign iocell_mem_axi4_w_bits_strb_5_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265817.4]
  assign iocell_mem_axi4_w_bits_strb_6_o = system_mem_axi4_0_w_bits_strb[6]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265822.4]
  assign iocell_mem_axi4_w_bits_strb_6_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265823.4]
  assign iocell_mem_axi4_w_bits_strb_7_o = system_mem_axi4_0_w_bits_strb[7]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265828.4]
  assign iocell_mem_axi4_w_bits_strb_7_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265829.4]
  assign iocell_mem_axi4_w_bits_data_o = system_mem_axi4_0_w_bits_data[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265906.4]
  assign iocell_mem_axi4_w_bits_data_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265907.4]
  assign iocell_mem_axi4_w_bits_data_1_o = system_mem_axi4_0_w_bits_data[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265912.4]
  assign iocell_mem_axi4_w_bits_data_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265913.4]
  assign iocell_mem_axi4_w_bits_data_2_o = system_mem_axi4_0_w_bits_data[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265918.4]
  assign iocell_mem_axi4_w_bits_data_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265919.4]
  assign iocell_mem_axi4_w_bits_data_3_o = system_mem_axi4_0_w_bits_data[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265924.4]
  assign iocell_mem_axi4_w_bits_data_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265925.4]
  assign iocell_mem_axi4_w_bits_data_4_o = system_mem_axi4_0_w_bits_data[4]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265930.4]
  assign iocell_mem_axi4_w_bits_data_4_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265931.4]
  assign iocell_mem_axi4_w_bits_data_5_o = system_mem_axi4_0_w_bits_data[5]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265936.4]
  assign iocell_mem_axi4_w_bits_data_5_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265937.4]
  assign iocell_mem_axi4_w_bits_data_6_o = system_mem_axi4_0_w_bits_data[6]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265942.4]
  assign iocell_mem_axi4_w_bits_data_6_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265943.4]
  assign iocell_mem_axi4_w_bits_data_7_o = system_mem_axi4_0_w_bits_data[7]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265948.4]
  assign iocell_mem_axi4_w_bits_data_7_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265949.4]
  assign iocell_mem_axi4_w_bits_data_8_o = system_mem_axi4_0_w_bits_data[8]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265954.4]
  assign iocell_mem_axi4_w_bits_data_8_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265955.4]
  assign iocell_mem_axi4_w_bits_data_9_o = system_mem_axi4_0_w_bits_data[9]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265960.4]
  assign iocell_mem_axi4_w_bits_data_9_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265961.4]
  assign iocell_mem_axi4_w_bits_data_10_o = system_mem_axi4_0_w_bits_data[10]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265966.4]
  assign iocell_mem_axi4_w_bits_data_10_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265967.4]
  assign iocell_mem_axi4_w_bits_data_11_o = system_mem_axi4_0_w_bits_data[11]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265972.4]
  assign iocell_mem_axi4_w_bits_data_11_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265973.4]
  assign iocell_mem_axi4_w_bits_data_12_o = system_mem_axi4_0_w_bits_data[12]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265978.4]
  assign iocell_mem_axi4_w_bits_data_12_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265979.4]
  assign iocell_mem_axi4_w_bits_data_13_o = system_mem_axi4_0_w_bits_data[13]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265984.4]
  assign iocell_mem_axi4_w_bits_data_13_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265985.4]
  assign iocell_mem_axi4_w_bits_data_14_o = system_mem_axi4_0_w_bits_data[14]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265990.4]
  assign iocell_mem_axi4_w_bits_data_14_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265991.4]
  assign iocell_mem_axi4_w_bits_data_15_o = system_mem_axi4_0_w_bits_data[15]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@265996.4]
  assign iocell_mem_axi4_w_bits_data_15_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@265997.4]
  assign iocell_mem_axi4_w_bits_data_16_o = system_mem_axi4_0_w_bits_data[16]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266002.4]
  assign iocell_mem_axi4_w_bits_data_16_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266003.4]
  assign iocell_mem_axi4_w_bits_data_17_o = system_mem_axi4_0_w_bits_data[17]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266008.4]
  assign iocell_mem_axi4_w_bits_data_17_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266009.4]
  assign iocell_mem_axi4_w_bits_data_18_o = system_mem_axi4_0_w_bits_data[18]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266014.4]
  assign iocell_mem_axi4_w_bits_data_18_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266015.4]
  assign iocell_mem_axi4_w_bits_data_19_o = system_mem_axi4_0_w_bits_data[19]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266020.4]
  assign iocell_mem_axi4_w_bits_data_19_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266021.4]
  assign iocell_mem_axi4_w_bits_data_20_o = system_mem_axi4_0_w_bits_data[20]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266026.4]
  assign iocell_mem_axi4_w_bits_data_20_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266027.4]
  assign iocell_mem_axi4_w_bits_data_21_o = system_mem_axi4_0_w_bits_data[21]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266032.4]
  assign iocell_mem_axi4_w_bits_data_21_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266033.4]
  assign iocell_mem_axi4_w_bits_data_22_o = system_mem_axi4_0_w_bits_data[22]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266038.4]
  assign iocell_mem_axi4_w_bits_data_22_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266039.4]
  assign iocell_mem_axi4_w_bits_data_23_o = system_mem_axi4_0_w_bits_data[23]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266044.4]
  assign iocell_mem_axi4_w_bits_data_23_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266045.4]
  assign iocell_mem_axi4_w_bits_data_24_o = system_mem_axi4_0_w_bits_data[24]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266050.4]
  assign iocell_mem_axi4_w_bits_data_24_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266051.4]
  assign iocell_mem_axi4_w_bits_data_25_o = system_mem_axi4_0_w_bits_data[25]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266056.4]
  assign iocell_mem_axi4_w_bits_data_25_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266057.4]
  assign iocell_mem_axi4_w_bits_data_26_o = system_mem_axi4_0_w_bits_data[26]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266062.4]
  assign iocell_mem_axi4_w_bits_data_26_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266063.4]
  assign iocell_mem_axi4_w_bits_data_27_o = system_mem_axi4_0_w_bits_data[27]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266068.4]
  assign iocell_mem_axi4_w_bits_data_27_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266069.4]
  assign iocell_mem_axi4_w_bits_data_28_o = system_mem_axi4_0_w_bits_data[28]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266074.4]
  assign iocell_mem_axi4_w_bits_data_28_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266075.4]
  assign iocell_mem_axi4_w_bits_data_29_o = system_mem_axi4_0_w_bits_data[29]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266080.4]
  assign iocell_mem_axi4_w_bits_data_29_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266081.4]
  assign iocell_mem_axi4_w_bits_data_30_o = system_mem_axi4_0_w_bits_data[30]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266086.4]
  assign iocell_mem_axi4_w_bits_data_30_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266087.4]
  assign iocell_mem_axi4_w_bits_data_31_o = system_mem_axi4_0_w_bits_data[31]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266092.4]
  assign iocell_mem_axi4_w_bits_data_31_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266093.4]
  assign iocell_mem_axi4_w_bits_data_32_o = system_mem_axi4_0_w_bits_data[32]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266098.4]
  assign iocell_mem_axi4_w_bits_data_32_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266099.4]
  assign iocell_mem_axi4_w_bits_data_33_o = system_mem_axi4_0_w_bits_data[33]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266104.4]
  assign iocell_mem_axi4_w_bits_data_33_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266105.4]
  assign iocell_mem_axi4_w_bits_data_34_o = system_mem_axi4_0_w_bits_data[34]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266110.4]
  assign iocell_mem_axi4_w_bits_data_34_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266111.4]
  assign iocell_mem_axi4_w_bits_data_35_o = system_mem_axi4_0_w_bits_data[35]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266116.4]
  assign iocell_mem_axi4_w_bits_data_35_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266117.4]
  assign iocell_mem_axi4_w_bits_data_36_o = system_mem_axi4_0_w_bits_data[36]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266122.4]
  assign iocell_mem_axi4_w_bits_data_36_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266123.4]
  assign iocell_mem_axi4_w_bits_data_37_o = system_mem_axi4_0_w_bits_data[37]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266128.4]
  assign iocell_mem_axi4_w_bits_data_37_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266129.4]
  assign iocell_mem_axi4_w_bits_data_38_o = system_mem_axi4_0_w_bits_data[38]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266134.4]
  assign iocell_mem_axi4_w_bits_data_38_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266135.4]
  assign iocell_mem_axi4_w_bits_data_39_o = system_mem_axi4_0_w_bits_data[39]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266140.4]
  assign iocell_mem_axi4_w_bits_data_39_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266141.4]
  assign iocell_mem_axi4_w_bits_data_40_o = system_mem_axi4_0_w_bits_data[40]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266146.4]
  assign iocell_mem_axi4_w_bits_data_40_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266147.4]
  assign iocell_mem_axi4_w_bits_data_41_o = system_mem_axi4_0_w_bits_data[41]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266152.4]
  assign iocell_mem_axi4_w_bits_data_41_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266153.4]
  assign iocell_mem_axi4_w_bits_data_42_o = system_mem_axi4_0_w_bits_data[42]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266158.4]
  assign iocell_mem_axi4_w_bits_data_42_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266159.4]
  assign iocell_mem_axi4_w_bits_data_43_o = system_mem_axi4_0_w_bits_data[43]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266164.4]
  assign iocell_mem_axi4_w_bits_data_43_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266165.4]
  assign iocell_mem_axi4_w_bits_data_44_o = system_mem_axi4_0_w_bits_data[44]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266170.4]
  assign iocell_mem_axi4_w_bits_data_44_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266171.4]
  assign iocell_mem_axi4_w_bits_data_45_o = system_mem_axi4_0_w_bits_data[45]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266176.4]
  assign iocell_mem_axi4_w_bits_data_45_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266177.4]
  assign iocell_mem_axi4_w_bits_data_46_o = system_mem_axi4_0_w_bits_data[46]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266182.4]
  assign iocell_mem_axi4_w_bits_data_46_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266183.4]
  assign iocell_mem_axi4_w_bits_data_47_o = system_mem_axi4_0_w_bits_data[47]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266188.4]
  assign iocell_mem_axi4_w_bits_data_47_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266189.4]
  assign iocell_mem_axi4_w_bits_data_48_o = system_mem_axi4_0_w_bits_data[48]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266194.4]
  assign iocell_mem_axi4_w_bits_data_48_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266195.4]
  assign iocell_mem_axi4_w_bits_data_49_o = system_mem_axi4_0_w_bits_data[49]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266200.4]
  assign iocell_mem_axi4_w_bits_data_49_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266201.4]
  assign iocell_mem_axi4_w_bits_data_50_o = system_mem_axi4_0_w_bits_data[50]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266206.4]
  assign iocell_mem_axi4_w_bits_data_50_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266207.4]
  assign iocell_mem_axi4_w_bits_data_51_o = system_mem_axi4_0_w_bits_data[51]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266212.4]
  assign iocell_mem_axi4_w_bits_data_51_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266213.4]
  assign iocell_mem_axi4_w_bits_data_52_o = system_mem_axi4_0_w_bits_data[52]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266218.4]
  assign iocell_mem_axi4_w_bits_data_52_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266219.4]
  assign iocell_mem_axi4_w_bits_data_53_o = system_mem_axi4_0_w_bits_data[53]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266224.4]
  assign iocell_mem_axi4_w_bits_data_53_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266225.4]
  assign iocell_mem_axi4_w_bits_data_54_o = system_mem_axi4_0_w_bits_data[54]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266230.4]
  assign iocell_mem_axi4_w_bits_data_54_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266231.4]
  assign iocell_mem_axi4_w_bits_data_55_o = system_mem_axi4_0_w_bits_data[55]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266236.4]
  assign iocell_mem_axi4_w_bits_data_55_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266237.4]
  assign iocell_mem_axi4_w_bits_data_56_o = system_mem_axi4_0_w_bits_data[56]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266242.4]
  assign iocell_mem_axi4_w_bits_data_56_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266243.4]
  assign iocell_mem_axi4_w_bits_data_57_o = system_mem_axi4_0_w_bits_data[57]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266248.4]
  assign iocell_mem_axi4_w_bits_data_57_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266249.4]
  assign iocell_mem_axi4_w_bits_data_58_o = system_mem_axi4_0_w_bits_data[58]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266254.4]
  assign iocell_mem_axi4_w_bits_data_58_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266255.4]
  assign iocell_mem_axi4_w_bits_data_59_o = system_mem_axi4_0_w_bits_data[59]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266260.4]
  assign iocell_mem_axi4_w_bits_data_59_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266261.4]
  assign iocell_mem_axi4_w_bits_data_60_o = system_mem_axi4_0_w_bits_data[60]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266266.4]
  assign iocell_mem_axi4_w_bits_data_60_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266267.4]
  assign iocell_mem_axi4_w_bits_data_61_o = system_mem_axi4_0_w_bits_data[61]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266272.4]
  assign iocell_mem_axi4_w_bits_data_61_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266273.4]
  assign iocell_mem_axi4_w_bits_data_62_o = system_mem_axi4_0_w_bits_data[62]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266278.4]
  assign iocell_mem_axi4_w_bits_data_62_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266279.4]
  assign iocell_mem_axi4_w_bits_data_63_o = system_mem_axi4_0_w_bits_data[63]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266284.4]
  assign iocell_mem_axi4_w_bits_data_63_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266285.4]
  assign iocell_mem_axi4_w_valid_o = system_mem_axi4_0_w_valid; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@266355.4]
  assign iocell_mem_axi4_w_valid_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@266356.4]
  assign iocell_mem_axi4_w_ready_pad = mem_axi4_w_ready; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@266367.4]
  assign iocell_mem_axi4_w_ready_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@266365.4]
  assign iocell_mem_axi4_aw_bits_qos_o = system_mem_axi4_0_aw_bits_qos[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266376.4]
  assign iocell_mem_axi4_aw_bits_qos_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266377.4]
  assign iocell_mem_axi4_aw_bits_qos_1_o = system_mem_axi4_0_aw_bits_qos[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266382.4]
  assign iocell_mem_axi4_aw_bits_qos_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266383.4]
  assign iocell_mem_axi4_aw_bits_qos_2_o = system_mem_axi4_0_aw_bits_qos[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266388.4]
  assign iocell_mem_axi4_aw_bits_qos_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266389.4]
  assign iocell_mem_axi4_aw_bits_qos_3_o = system_mem_axi4_0_aw_bits_qos[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266394.4]
  assign iocell_mem_axi4_aw_bits_qos_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266395.4]
  assign iocell_mem_axi4_aw_bits_prot_o = system_mem_axi4_0_aw_bits_prot[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266407.4]
  assign iocell_mem_axi4_aw_bits_prot_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266408.4]
  assign iocell_mem_axi4_aw_bits_prot_1_o = system_mem_axi4_0_aw_bits_prot[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266413.4]
  assign iocell_mem_axi4_aw_bits_prot_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266414.4]
  assign iocell_mem_axi4_aw_bits_prot_2_o = system_mem_axi4_0_aw_bits_prot[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266419.4]
  assign iocell_mem_axi4_aw_bits_prot_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266420.4]
  assign iocell_mem_axi4_aw_bits_cache_o = system_mem_axi4_0_aw_bits_cache[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266432.4]
  assign iocell_mem_axi4_aw_bits_cache_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266433.4]
  assign iocell_mem_axi4_aw_bits_cache_1_o = system_mem_axi4_0_aw_bits_cache[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266438.4]
  assign iocell_mem_axi4_aw_bits_cache_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266439.4]
  assign iocell_mem_axi4_aw_bits_cache_2_o = system_mem_axi4_0_aw_bits_cache[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266444.4]
  assign iocell_mem_axi4_aw_bits_cache_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266445.4]
  assign iocell_mem_axi4_aw_bits_cache_3_o = system_mem_axi4_0_aw_bits_cache[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266450.4]
  assign iocell_mem_axi4_aw_bits_cache_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266451.4]
  assign iocell_mem_axi4_aw_bits_lock_o = system_mem_axi4_0_aw_bits_lock; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266461.4]
  assign iocell_mem_axi4_aw_bits_lock_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266462.4]
  assign iocell_mem_axi4_aw_bits_burst_o = system_mem_axi4_0_aw_bits_burst[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266470.4]
  assign iocell_mem_axi4_aw_bits_burst_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266471.4]
  assign iocell_mem_axi4_aw_bits_burst_1_o = system_mem_axi4_0_aw_bits_burst[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266476.4]
  assign iocell_mem_axi4_aw_bits_burst_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266477.4]
  assign iocell_mem_axi4_aw_bits_size_o = system_mem_axi4_0_aw_bits_size[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266487.4]
  assign iocell_mem_axi4_aw_bits_size_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266488.4]
  assign iocell_mem_axi4_aw_bits_size_1_o = system_mem_axi4_0_aw_bits_size[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266493.4]
  assign iocell_mem_axi4_aw_bits_size_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266494.4]
  assign iocell_mem_axi4_aw_bits_size_2_o = system_mem_axi4_0_aw_bits_size[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266499.4]
  assign iocell_mem_axi4_aw_bits_size_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266500.4]
  assign iocell_mem_axi4_aw_bits_len_o = system_mem_axi4_0_aw_bits_len[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266516.4]
  assign iocell_mem_axi4_aw_bits_len_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266517.4]
  assign iocell_mem_axi4_aw_bits_len_1_o = system_mem_axi4_0_aw_bits_len[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266522.4]
  assign iocell_mem_axi4_aw_bits_len_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266523.4]
  assign iocell_mem_axi4_aw_bits_len_2_o = system_mem_axi4_0_aw_bits_len[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266528.4]
  assign iocell_mem_axi4_aw_bits_len_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266529.4]
  assign iocell_mem_axi4_aw_bits_len_3_o = system_mem_axi4_0_aw_bits_len[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266534.4]
  assign iocell_mem_axi4_aw_bits_len_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266535.4]
  assign iocell_mem_axi4_aw_bits_len_4_o = system_mem_axi4_0_aw_bits_len[4]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266540.4]
  assign iocell_mem_axi4_aw_bits_len_4_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266541.4]
  assign iocell_mem_axi4_aw_bits_len_5_o = system_mem_axi4_0_aw_bits_len[5]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266546.4]
  assign iocell_mem_axi4_aw_bits_len_5_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266547.4]
  assign iocell_mem_axi4_aw_bits_len_6_o = system_mem_axi4_0_aw_bits_len[6]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266552.4]
  assign iocell_mem_axi4_aw_bits_len_6_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266553.4]
  assign iocell_mem_axi4_aw_bits_len_7_o = system_mem_axi4_0_aw_bits_len[7]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266558.4]
  assign iocell_mem_axi4_aw_bits_len_7_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266559.4]
  assign iocell_mem_axi4_aw_bits_addr_o = system_mem_axi4_0_aw_bits_addr[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266604.4]
  assign iocell_mem_axi4_aw_bits_addr_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266605.4]
  assign iocell_mem_axi4_aw_bits_addr_1_o = system_mem_axi4_0_aw_bits_addr[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266610.4]
  assign iocell_mem_axi4_aw_bits_addr_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266611.4]
  assign iocell_mem_axi4_aw_bits_addr_2_o = system_mem_axi4_0_aw_bits_addr[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266616.4]
  assign iocell_mem_axi4_aw_bits_addr_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266617.4]
  assign iocell_mem_axi4_aw_bits_addr_3_o = system_mem_axi4_0_aw_bits_addr[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266622.4]
  assign iocell_mem_axi4_aw_bits_addr_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266623.4]
  assign iocell_mem_axi4_aw_bits_addr_4_o = system_mem_axi4_0_aw_bits_addr[4]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266628.4]
  assign iocell_mem_axi4_aw_bits_addr_4_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266629.4]
  assign iocell_mem_axi4_aw_bits_addr_5_o = system_mem_axi4_0_aw_bits_addr[5]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266634.4]
  assign iocell_mem_axi4_aw_bits_addr_5_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266635.4]
  assign iocell_mem_axi4_aw_bits_addr_6_o = system_mem_axi4_0_aw_bits_addr[6]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266640.4]
  assign iocell_mem_axi4_aw_bits_addr_6_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266641.4]
  assign iocell_mem_axi4_aw_bits_addr_7_o = system_mem_axi4_0_aw_bits_addr[7]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266646.4]
  assign iocell_mem_axi4_aw_bits_addr_7_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266647.4]
  assign iocell_mem_axi4_aw_bits_addr_8_o = system_mem_axi4_0_aw_bits_addr[8]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266652.4]
  assign iocell_mem_axi4_aw_bits_addr_8_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266653.4]
  assign iocell_mem_axi4_aw_bits_addr_9_o = system_mem_axi4_0_aw_bits_addr[9]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266658.4]
  assign iocell_mem_axi4_aw_bits_addr_9_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266659.4]
  assign iocell_mem_axi4_aw_bits_addr_10_o = system_mem_axi4_0_aw_bits_addr[10]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266664.4]
  assign iocell_mem_axi4_aw_bits_addr_10_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266665.4]
  assign iocell_mem_axi4_aw_bits_addr_11_o = system_mem_axi4_0_aw_bits_addr[11]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266670.4]
  assign iocell_mem_axi4_aw_bits_addr_11_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266671.4]
  assign iocell_mem_axi4_aw_bits_addr_12_o = system_mem_axi4_0_aw_bits_addr[12]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266676.4]
  assign iocell_mem_axi4_aw_bits_addr_12_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266677.4]
  assign iocell_mem_axi4_aw_bits_addr_13_o = system_mem_axi4_0_aw_bits_addr[13]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266682.4]
  assign iocell_mem_axi4_aw_bits_addr_13_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266683.4]
  assign iocell_mem_axi4_aw_bits_addr_14_o = system_mem_axi4_0_aw_bits_addr[14]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266688.4]
  assign iocell_mem_axi4_aw_bits_addr_14_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266689.4]
  assign iocell_mem_axi4_aw_bits_addr_15_o = system_mem_axi4_0_aw_bits_addr[15]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266694.4]
  assign iocell_mem_axi4_aw_bits_addr_15_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266695.4]
  assign iocell_mem_axi4_aw_bits_addr_16_o = system_mem_axi4_0_aw_bits_addr[16]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266700.4]
  assign iocell_mem_axi4_aw_bits_addr_16_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266701.4]
  assign iocell_mem_axi4_aw_bits_addr_17_o = system_mem_axi4_0_aw_bits_addr[17]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266706.4]
  assign iocell_mem_axi4_aw_bits_addr_17_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266707.4]
  assign iocell_mem_axi4_aw_bits_addr_18_o = system_mem_axi4_0_aw_bits_addr[18]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266712.4]
  assign iocell_mem_axi4_aw_bits_addr_18_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266713.4]
  assign iocell_mem_axi4_aw_bits_addr_19_o = system_mem_axi4_0_aw_bits_addr[19]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266718.4]
  assign iocell_mem_axi4_aw_bits_addr_19_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266719.4]
  assign iocell_mem_axi4_aw_bits_addr_20_o = system_mem_axi4_0_aw_bits_addr[20]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266724.4]
  assign iocell_mem_axi4_aw_bits_addr_20_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266725.4]
  assign iocell_mem_axi4_aw_bits_addr_21_o = system_mem_axi4_0_aw_bits_addr[21]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266730.4]
  assign iocell_mem_axi4_aw_bits_addr_21_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266731.4]
  assign iocell_mem_axi4_aw_bits_addr_22_o = system_mem_axi4_0_aw_bits_addr[22]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266736.4]
  assign iocell_mem_axi4_aw_bits_addr_22_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266737.4]
  assign iocell_mem_axi4_aw_bits_addr_23_o = system_mem_axi4_0_aw_bits_addr[23]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266742.4]
  assign iocell_mem_axi4_aw_bits_addr_23_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266743.4]
  assign iocell_mem_axi4_aw_bits_addr_24_o = system_mem_axi4_0_aw_bits_addr[24]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266748.4]
  assign iocell_mem_axi4_aw_bits_addr_24_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266749.4]
  assign iocell_mem_axi4_aw_bits_addr_25_o = system_mem_axi4_0_aw_bits_addr[25]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266754.4]
  assign iocell_mem_axi4_aw_bits_addr_25_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266755.4]
  assign iocell_mem_axi4_aw_bits_addr_26_o = system_mem_axi4_0_aw_bits_addr[26]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266760.4]
  assign iocell_mem_axi4_aw_bits_addr_26_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266761.4]
  assign iocell_mem_axi4_aw_bits_addr_27_o = system_mem_axi4_0_aw_bits_addr[27]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266766.4]
  assign iocell_mem_axi4_aw_bits_addr_27_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266767.4]
  assign iocell_mem_axi4_aw_bits_addr_28_o = system_mem_axi4_0_aw_bits_addr[28]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266772.4]
  assign iocell_mem_axi4_aw_bits_addr_28_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266773.4]
  assign iocell_mem_axi4_aw_bits_addr_29_o = system_mem_axi4_0_aw_bits_addr[29]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266778.4]
  assign iocell_mem_axi4_aw_bits_addr_29_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266779.4]
  assign iocell_mem_axi4_aw_bits_addr_30_o = system_mem_axi4_0_aw_bits_addr[30]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266784.4]
  assign iocell_mem_axi4_aw_bits_addr_30_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266785.4]
  assign iocell_mem_axi4_aw_bits_addr_31_o = system_mem_axi4_0_aw_bits_addr[31]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266790.4]
  assign iocell_mem_axi4_aw_bits_addr_31_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266791.4]
  assign iocell_mem_axi4_aw_bits_id_o = system_mem_axi4_0_aw_bits_id[0]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266832.4]
  assign iocell_mem_axi4_aw_bits_id_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266833.4]
  assign iocell_mem_axi4_aw_bits_id_1_o = system_mem_axi4_0_aw_bits_id[1]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266838.4]
  assign iocell_mem_axi4_aw_bits_id_1_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266839.4]
  assign iocell_mem_axi4_aw_bits_id_2_o = system_mem_axi4_0_aw_bits_id[2]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266844.4]
  assign iocell_mem_axi4_aw_bits_id_2_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266845.4]
  assign iocell_mem_axi4_aw_bits_id_3_o = system_mem_axi4_0_aw_bits_id[3]; // @[IOCell.scala 239:29:chipyard.TestHarness.RocketConfig.fir@266850.4]
  assign iocell_mem_axi4_aw_bits_id_3_oe = 1'h1; // @[IOCell.scala 240:30:chipyard.TestHarness.RocketConfig.fir@266851.4]
  assign iocell_mem_axi4_aw_valid_o = system_mem_axi4_0_aw_valid; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@266861.4]
  assign iocell_mem_axi4_aw_valid_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@266862.4]
  assign iocell_mem_axi4_aw_ready_pad = mem_axi4_aw_ready; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@266873.4]
  assign iocell_mem_axi4_aw_ready_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@266871.4]
  assign iocell_uart_0_rxd_pad = uart_0_rxd; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@266882.4]
  assign iocell_uart_0_rxd_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@266880.4]
  assign iocell_uart_0_txd_o = system_uart_0_0_txd; // @[IOCell.scala 178:23:chipyard.TestHarness.RocketConfig.fir@266888.4]
  assign iocell_uart_0_txd_oe = 1'h1; // @[IOCell.scala 179:24:chipyard.TestHarness.RocketConfig.fir@266889.4]
  assign iocell_clock_pad = clock; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@266901.4]
  assign iocell_clock_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@266898.4]
  assign iocell_reset_pad = reset; // @[IOCell.scala 172:25:chipyard.TestHarness.RocketConfig.fir@266910.4]
  assign iocell_reset_ie = 1'h1; // @[IOCell.scala 171:24:chipyard.TestHarness.RocketConfig.fir@266908.4]
endmodule
