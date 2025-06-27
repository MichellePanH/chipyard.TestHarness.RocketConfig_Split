module SimpleLazyModule_15( // @[:chipyard.TestHarness.RocketConfig.fir@119375.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@119376.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@119377.4]
  output        auto_widget_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input         auto_widget_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [2:0]  auto_widget_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [2:0]  auto_widget_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [2:0]  auto_widget_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [3:0]  auto_widget_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [31:0] auto_widget_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [7:0]  auto_widget_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [63:0] auto_widget_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input         auto_widget_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input         auto_widget_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output        auto_widget_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [2:0]  auto_widget_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [2:0]  auto_widget_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [3:0]  auto_widget_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output        auto_widget_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [63:0] auto_widget_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output        auto_widget_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input         auto_widget_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output        auto_widget_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [2:0]  auto_widget_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [2:0]  auto_widget_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [2:0]  auto_widget_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [3:0]  auto_widget_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [31:0] auto_widget_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [7:0]  auto_widget_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output [63:0] auto_widget_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output        auto_widget_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  output        auto_widget_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input         auto_widget_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [2:0]  auto_widget_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [2:0]  auto_widget_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [3:0]  auto_widget_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input         auto_widget_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input  [63:0] auto_widget_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
  input         auto_widget_out_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@119378.4]
);
  wire  widget_clock; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_reset; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_in_a_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_in_a_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_in_a_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_in_a_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_in_a_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [3:0] widget_auto_in_a_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [31:0] widget_auto_in_a_bits_address; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [7:0] widget_auto_in_a_bits_mask; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [63:0] widget_auto_in_a_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_in_a_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_in_d_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_in_d_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_in_d_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_in_d_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [3:0] widget_auto_in_d_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_in_d_bits_denied; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [63:0] widget_auto_in_d_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_in_d_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_out_a_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_out_a_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_out_a_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_out_a_bits_param; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_out_a_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [3:0] widget_auto_out_a_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [31:0] widget_auto_out_a_bits_address; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [7:0] widget_auto_out_a_bits_mask; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [63:0] widget_auto_out_a_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_out_a_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_out_d_ready; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_out_d_valid; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_out_d_bits_opcode; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [2:0] widget_auto_out_d_bits_size; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [3:0] widget_auto_out_d_bits_source; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_out_d_bits_denied; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire [63:0] widget_auto_out_d_bits_data; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  wire  widget_auto_out_d_bits_corrupt; // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
  TLWidthWidget_5 widget ( // @[WidthWidget.scala 210:28:chipyard.TestHarness.RocketConfig.fir@119383.4]
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
    .auto_in_d_ready(widget_auto_in_d_ready),
    .auto_in_d_valid(widget_auto_in_d_valid),
    .auto_in_d_bits_opcode(widget_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(widget_auto_in_d_bits_size),
    .auto_in_d_bits_source(widget_auto_in_d_bits_source),
    .auto_in_d_bits_denied(widget_auto_in_d_bits_denied),
    .auto_in_d_bits_data(widget_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(widget_auto_in_d_bits_corrupt),
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
    .auto_out_d_ready(widget_auto_out_d_ready),
    .auto_out_d_valid(widget_auto_out_d_valid),
    .auto_out_d_bits_opcode(widget_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(widget_auto_out_d_bits_size),
    .auto_out_d_bits_source(widget_auto_out_d_bits_source),
    .auto_out_d_bits_denied(widget_auto_out_d_bits_denied),
    .auto_out_d_bits_data(widget_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(widget_auto_out_d_bits_corrupt)
  );
  assign auto_widget_in_a_ready = widget_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign auto_widget_in_d_valid = widget_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign auto_widget_in_d_bits_opcode = widget_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign auto_widget_in_d_bits_size = widget_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign auto_widget_in_d_bits_source = widget_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign auto_widget_in_d_bits_denied = widget_auto_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign auto_widget_in_d_bits_data = widget_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign auto_widget_in_d_bits_corrupt = widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign auto_widget_out_a_valid = widget_auto_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_a_bits_opcode = widget_auto_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_a_bits_param = widget_auto_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_a_bits_size = widget_auto_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_a_bits_source = widget_auto_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_a_bits_address = widget_auto_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_a_bits_mask = widget_auto_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_a_bits_data = widget_auto_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_a_bits_corrupt = widget_auto_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign auto_widget_out_d_ready = widget_auto_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign widget_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@119387.4]
  assign widget_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@119388.4]
  assign widget_auto_in_a_valid = auto_widget_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_a_bits_opcode = auto_widget_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_a_bits_param = auto_widget_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_a_bits_size = auto_widget_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_a_bits_source = auto_widget_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_a_bits_address = auto_widget_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_a_bits_mask = auto_widget_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_a_bits_data = auto_widget_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_a_bits_corrupt = auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_in_d_ready = auto_widget_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@119390.4]
  assign widget_auto_out_a_ready = auto_widget_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign widget_auto_out_d_valid = auto_widget_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign widget_auto_out_d_bits_opcode = auto_widget_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign widget_auto_out_d_bits_size = auto_widget_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign widget_auto_out_d_bits_source = auto_widget_out_d_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign widget_auto_out_d_bits_denied = auto_widget_out_d_bits_denied; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign widget_auto_out_d_bits_data = auto_widget_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
  assign widget_auto_out_d_bits_corrupt = auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@119389.4]
endmodule
