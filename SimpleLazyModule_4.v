module SimpleLazyModule_4( // @[:chipyard.TestHarness.RocketConfig.fir@33283.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@33284.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@33285.4]
  output        auto_fragmenter_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input         auto_fragmenter_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [2:0]  auto_fragmenter_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [2:0]  auto_fragmenter_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [2:0]  auto_fragmenter_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [2:0]  auto_fragmenter_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [30:0] auto_fragmenter_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [7:0]  auto_fragmenter_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [63:0] auto_fragmenter_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input         auto_fragmenter_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input         auto_fragmenter_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output        auto_fragmenter_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [2:0]  auto_fragmenter_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [2:0]  auto_fragmenter_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [2:0]  auto_fragmenter_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [63:0] auto_fragmenter_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input         auto_control_xing_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output        auto_control_xing_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [2:0]  auto_control_xing_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [2:0]  auto_control_xing_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [1:0]  auto_control_xing_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [6:0]  auto_control_xing_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [30:0] auto_control_xing_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [7:0]  auto_control_xing_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output [63:0] auto_control_xing_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output        auto_control_xing_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  output        auto_control_xing_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input         auto_control_xing_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [2:0]  auto_control_xing_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [1:0]  auto_control_xing_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [6:0]  auto_control_xing_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
  input  [63:0] auto_control_xing_out_d_bits_data // @[:chipyard.TestHarness.RocketConfig.fir@33286.4]
);
  wire  fragmenter_clock; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_reset; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_in_a_ready; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_in_a_valid; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_in_a_bits_opcode; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_in_a_bits_param; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_in_a_bits_size; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_in_a_bits_source; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [30:0] fragmenter_auto_in_a_bits_address; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [7:0] fragmenter_auto_in_a_bits_mask; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [63:0] fragmenter_auto_in_a_bits_data; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_in_a_bits_corrupt; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_in_d_ready; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_in_d_valid; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_in_d_bits_opcode; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_in_d_bits_size; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_in_d_bits_source; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [63:0] fragmenter_auto_in_d_bits_data; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_out_a_ready; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_out_a_valid; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_out_a_bits_opcode; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_out_a_bits_param; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [1:0] fragmenter_auto_out_a_bits_size; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [6:0] fragmenter_auto_out_a_bits_source; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [30:0] fragmenter_auto_out_a_bits_address; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [7:0] fragmenter_auto_out_a_bits_mask; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [63:0] fragmenter_auto_out_a_bits_data; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_out_a_bits_corrupt; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_out_d_ready; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire  fragmenter_auto_out_d_valid; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [2:0] fragmenter_auto_out_d_bits_opcode; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [1:0] fragmenter_auto_out_d_bits_size; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [6:0] fragmenter_auto_out_d_bits_source; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  wire [63:0] fragmenter_auto_out_d_bits_data; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
  TLFragmenter fragmenter ( // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@33291.4]
    .clock(fragmenter_clock),
    .reset(fragmenter_reset),
    .auto_in_a_ready(fragmenter_auto_in_a_ready),
    .auto_in_a_valid(fragmenter_auto_in_a_valid),
    .auto_in_a_bits_opcode(fragmenter_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(fragmenter_auto_in_a_bits_param),
    .auto_in_a_bits_size(fragmenter_auto_in_a_bits_size),
    .auto_in_a_bits_source(fragmenter_auto_in_a_bits_source),
    .auto_in_a_bits_address(fragmenter_auto_in_a_bits_address),
    .auto_in_a_bits_mask(fragmenter_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fragmenter_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(fragmenter_auto_in_a_bits_corrupt),
    .auto_in_d_ready(fragmenter_auto_in_d_ready),
    .auto_in_d_valid(fragmenter_auto_in_d_valid),
    .auto_in_d_bits_opcode(fragmenter_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(fragmenter_auto_in_d_bits_size),
    .auto_in_d_bits_source(fragmenter_auto_in_d_bits_source),
    .auto_in_d_bits_data(fragmenter_auto_in_d_bits_data),
    .auto_out_a_ready(fragmenter_auto_out_a_ready),
    .auto_out_a_valid(fragmenter_auto_out_a_valid),
    .auto_out_a_bits_opcode(fragmenter_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(fragmenter_auto_out_a_bits_param),
    .auto_out_a_bits_size(fragmenter_auto_out_a_bits_size),
    .auto_out_a_bits_source(fragmenter_auto_out_a_bits_source),
    .auto_out_a_bits_address(fragmenter_auto_out_a_bits_address),
    .auto_out_a_bits_mask(fragmenter_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fragmenter_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(fragmenter_auto_out_a_bits_corrupt),
    .auto_out_d_ready(fragmenter_auto_out_d_ready),
    .auto_out_d_valid(fragmenter_auto_out_d_valid),
    .auto_out_d_bits_opcode(fragmenter_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(fragmenter_auto_out_d_bits_size),
    .auto_out_d_bits_source(fragmenter_auto_out_d_bits_source),
    .auto_out_d_bits_data(fragmenter_auto_out_d_bits_data)
  );
  assign auto_fragmenter_in_a_ready = fragmenter_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign auto_fragmenter_in_d_valid = fragmenter_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign auto_fragmenter_in_d_bits_opcode = fragmenter_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign auto_fragmenter_in_d_bits_size = fragmenter_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign auto_fragmenter_in_d_bits_source = fragmenter_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign auto_fragmenter_in_d_bits_data = fragmenter_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign auto_control_xing_out_a_valid = fragmenter_auto_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_a_bits_opcode = fragmenter_auto_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_a_bits_param = fragmenter_auto_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_a_bits_size = fragmenter_auto_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_a_bits_source = fragmenter_auto_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_a_bits_address = fragmenter_auto_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_a_bits_mask = fragmenter_auto_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_a_bits_data = fragmenter_auto_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_a_bits_corrupt = fragmenter_auto_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign auto_control_xing_out_d_ready = fragmenter_auto_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@33303.4]
  assign fragmenter_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@33295.4]
  assign fragmenter_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@33296.4]
  assign fragmenter_auto_in_a_valid = auto_fragmenter_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_a_bits_opcode = auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_a_bits_param = auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_a_bits_size = auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_a_bits_source = auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_a_bits_address = auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_a_bits_mask = auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_a_bits_data = auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_a_bits_corrupt = auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_in_d_ready = auto_fragmenter_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@33304.4]
  assign fragmenter_auto_out_a_ready = auto_control_xing_out_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33302.4]
  assign fragmenter_auto_out_d_valid = auto_control_xing_out_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33302.4]
  assign fragmenter_auto_out_d_bits_opcode = auto_control_xing_out_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33302.4]
  assign fragmenter_auto_out_d_bits_size = auto_control_xing_out_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33302.4]
  assign fragmenter_auto_out_d_bits_source = auto_control_xing_out_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33302.4]
  assign fragmenter_auto_out_d_bits_data = auto_control_xing_out_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@33302.4]
endmodule
