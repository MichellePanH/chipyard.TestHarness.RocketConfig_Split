module SimpleLazyModule_2( // @[:chipyard.TestHarness.RocketConfig.fir@17637.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@17638.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@17639.4]
  output        auto_widget_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [31:0] auto_widget_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [7:0]  auto_widget_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [63:0] auto_widget_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [1:0]  auto_widget_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [31:0] auto_widget_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [31:0] auto_widget_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [63:0] auto_widget_in_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [1:0]  auto_widget_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [63:0] auto_widget_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_in_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [31:0] auto_widget_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [7:0]  auto_widget_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [63:0] auto_widget_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [1:0]  auto_widget_out_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [31:0] auto_widget_out_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_out_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_out_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [31:0] auto_widget_out_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [63:0] auto_widget_out_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_out_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [1:0]  auto_widget_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [2:0]  auto_widget_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input  [63:0] auto_widget_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  input         auto_widget_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output        auto_widget_out_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
  output [2:0]  auto_widget_out_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@17640.4]
);
  wire  widget_clock; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_reset; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_a_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_a_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_a_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_a_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_a_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_a_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [31:0] widget_auto_in_a_bits_address; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [7:0] widget_auto_in_a_bits_mask; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [63:0] widget_auto_in_a_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_a_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_b_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_b_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [1:0] widget_auto_in_b_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [31:0] widget_auto_in_b_bits_address; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_c_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_c_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_c_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_c_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_c_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_c_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [31:0] widget_auto_in_c_bits_address; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [63:0] widget_auto_in_c_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_c_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_d_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_d_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_d_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [1:0] widget_auto_in_d_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_d_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_d_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_d_bits_sink; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_d_bits_denied; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [63:0] widget_auto_in_d_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_d_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_in_e_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_in_e_bits_sink; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_a_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_a_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_a_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_a_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_a_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_a_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [31:0] widget_auto_out_a_bits_address; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [7:0] widget_auto_out_a_bits_mask; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [63:0] widget_auto_out_a_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_a_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_b_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_b_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [1:0] widget_auto_out_b_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [31:0] widget_auto_out_b_bits_address; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_c_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_c_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_c_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_c_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_c_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_c_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [31:0] widget_auto_out_c_bits_address; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [63:0] widget_auto_out_c_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_c_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_d_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_d_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_d_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [1:0] widget_auto_out_d_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_d_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_d_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_d_bits_sink; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_d_bits_denied; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [63:0] widget_auto_out_d_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_d_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire  widget_auto_out_e_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  wire [2:0] widget_auto_out_e_bits_sink; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
  TLWidthWidget_2 widget ( // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@17645.4]
    .clock(widget_clock),
    .reset(widget_reset),
    .auto_in_a_ready(widget_auto_in_a_ready),
    .auto_in_a_valid(widget_auto_in_a_valid),
    .auto_in_a_bits_opcode(widget_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(widget_auto_in_a_bits_param),
    .auto_in_a_bits_size(widget_auto_in_a_bits_size),
    .auto_in_a_bits_source(widget_auto_in_a_bits_source),
    .auto_in_a_bits_address(widget_auto_in_a_bits_address),
    .auto_in_a_bits_mask(widget_auto_in_a_bits_mask),
    .auto_in_a_bits_data(widget_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(widget_auto_in_a_bits_corrupt),
    .auto_in_b_ready(widget_auto_in_b_ready),
    .auto_in_b_valid(widget_auto_in_b_valid),
    .auto_in_b_bits_param(widget_auto_in_b_bits_param),
    .auto_in_b_bits_address(widget_auto_in_b_bits_address),
    .auto_in_c_ready(widget_auto_in_c_ready),
    .auto_in_c_valid(widget_auto_in_c_valid),
    .auto_in_c_bits_opcode(widget_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(widget_auto_in_c_bits_param),
    .auto_in_c_bits_size(widget_auto_in_c_bits_size),
    .auto_in_c_bits_source(widget_auto_in_c_bits_source),
    .auto_in_c_bits_address(widget_auto_in_c_bits_address),
    .auto_in_c_bits_data(widget_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(widget_auto_in_c_bits_corrupt),
    .auto_in_d_ready(widget_auto_in_d_ready),
    .auto_in_d_valid(widget_auto_in_d_valid),
    .auto_in_d_bits_opcode(widget_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(widget_auto_in_d_bits_param),
    .auto_in_d_bits_size(widget_auto_in_d_bits_size),
    .auto_in_d_bits_source(widget_auto_in_d_bits_source),
    .auto_in_d_bits_sink(widget_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(widget_auto_in_d_bits_denied),
    .auto_in_d_bits_data(widget_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(widget_auto_in_d_bits_corrupt),
    .auto_in_e_valid(widget_auto_in_e_valid),
    .auto_in_e_bits_sink(widget_auto_in_e_bits_sink),
    .auto_out_a_ready(widget_auto_out_a_ready),
    .auto_out_a_valid(widget_auto_out_a_valid),
    .auto_out_a_bits_opcode(widget_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(widget_auto_out_a_bits_param),
    .auto_out_a_bits_size(widget_auto_out_a_bits_size),
    .auto_out_a_bits_source(widget_auto_out_a_bits_source),
    .auto_out_a_bits_address(widget_auto_out_a_bits_address),
    .auto_out_a_bits_mask(widget_auto_out_a_bits_mask),
    .auto_out_a_bits_data(widget_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(widget_auto_out_a_bits_corrupt),
    .auto_out_b_ready(widget_auto_out_b_ready),
    .auto_out_b_valid(widget_auto_out_b_valid),
    .auto_out_b_bits_param(widget_auto_out_b_bits_param),
    .auto_out_b_bits_address(widget_auto_out_b_bits_address),
    .auto_out_c_ready(widget_auto_out_c_ready),
    .auto_out_c_valid(widget_auto_out_c_valid),
    .auto_out_c_bits_opcode(widget_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(widget_auto_out_c_bits_param),
    .auto_out_c_bits_size(widget_auto_out_c_bits_size),
    .auto_out_c_bits_source(widget_auto_out_c_bits_source),
    .auto_out_c_bits_address(widget_auto_out_c_bits_address),
    .auto_out_c_bits_data(widget_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(widget_auto_out_c_bits_corrupt),
    .auto_out_d_ready(widget_auto_out_d_ready),
    .auto_out_d_valid(widget_auto_out_d_valid),
    .auto_out_d_bits_opcode(widget_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(widget_auto_out_d_bits_param),
    .auto_out_d_bits_size(widget_auto_out_d_bits_size),
    .auto_out_d_bits_source(widget_auto_out_d_bits_source),
    .auto_out_d_bits_sink(widget_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(widget_auto_out_d_bits_denied),
    .auto_out_d_bits_data(widget_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(widget_auto_out_d_bits_corrupt),
    .auto_out_e_valid(widget_auto_out_e_valid),
    .auto_out_e_bits_sink(widget_auto_out_e_bits_sink)
  );
  assign auto_widget_in_a_ready = widget_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_b_valid = widget_auto_in_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_b_bits_param = widget_auto_in_b_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_b_bits_address = widget_auto_in_b_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_c_ready = widget_auto_in_c_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_valid = widget_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_bits_opcode = widget_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_bits_param = widget_auto_in_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_bits_size = widget_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_bits_source = widget_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_bits_sink = widget_auto_in_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_bits_denied = widget_auto_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_bits_data = widget_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_in_d_bits_corrupt = widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign auto_widget_out_a_valid = widget_auto_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_a_bits_opcode = widget_auto_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_a_bits_param = widget_auto_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_a_bits_size = widget_auto_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_a_bits_source = widget_auto_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_a_bits_address = widget_auto_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_a_bits_mask = widget_auto_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_a_bits_data = widget_auto_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_a_bits_corrupt = widget_auto_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_b_ready = widget_auto_out_b_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_c_valid = widget_auto_out_c_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_c_bits_opcode = widget_auto_out_c_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_c_bits_param = widget_auto_out_c_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_c_bits_size = widget_auto_out_c_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_c_bits_source = widget_auto_out_c_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_c_bits_address = widget_auto_out_c_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_c_bits_data = widget_auto_out_c_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_c_bits_corrupt = widget_auto_out_c_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_d_ready = widget_auto_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_e_valid = widget_auto_out_e_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign auto_widget_out_e_bits_sink = widget_auto_out_e_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@17649.4]
  assign widget_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@17650.4]
  assign widget_auto_in_a_valid = auto_widget_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_a_bits_opcode = auto_widget_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_a_bits_param = auto_widget_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_a_bits_size = auto_widget_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_a_bits_source = auto_widget_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_a_bits_address = auto_widget_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_a_bits_mask = auto_widget_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_a_bits_data = auto_widget_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_a_bits_corrupt = auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_b_ready = auto_widget_in_b_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_c_valid = auto_widget_in_c_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_c_bits_opcode = auto_widget_in_c_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_c_bits_param = auto_widget_in_c_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_c_bits_size = auto_widget_in_c_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_c_bits_source = auto_widget_in_c_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_c_bits_address = auto_widget_in_c_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_c_bits_data = auto_widget_in_c_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_c_bits_corrupt = auto_widget_in_c_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_d_ready = auto_widget_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_e_valid = auto_widget_in_e_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_in_e_bits_sink = auto_widget_in_e_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@17652.4]
  assign widget_auto_out_a_ready = auto_widget_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_b_valid = auto_widget_out_b_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_b_bits_param = auto_widget_out_b_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_b_bits_address = auto_widget_out_b_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_c_ready = auto_widget_out_c_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_valid = auto_widget_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_bits_opcode = auto_widget_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_bits_param = auto_widget_out_d_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_bits_size = auto_widget_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_bits_source = auto_widget_out_d_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_bits_sink = auto_widget_out_d_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_bits_denied = auto_widget_out_d_bits_denied; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_bits_data = auto_widget_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
  assign widget_auto_out_d_bits_corrupt = auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@17651.4]
endmodule
