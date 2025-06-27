module SimpleLazyModule_7( // @[:chipyard.TestHarness.RocketConfig.fir@59593.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@59594.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@59595.4]
  output        auto_fragmenter_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input         auto_fragmenter_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [2:0]  auto_fragmenter_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [2:0]  auto_fragmenter_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [2:0]  auto_fragmenter_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [2:0]  auto_fragmenter_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [25:0] auto_fragmenter_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [7:0]  auto_fragmenter_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [63:0] auto_fragmenter_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input         auto_fragmenter_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input         auto_fragmenter_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output        auto_fragmenter_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [2:0]  auto_fragmenter_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [1:0]  auto_fragmenter_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [2:0]  auto_fragmenter_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [2:0]  auto_fragmenter_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output        auto_fragmenter_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output        auto_fragmenter_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [63:0] auto_fragmenter_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output        auto_fragmenter_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input         auto_buffer_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output        auto_buffer_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [2:0]  auto_buffer_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [2:0]  auto_buffer_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [1:0]  auto_buffer_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [6:0]  auto_buffer_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [25:0] auto_buffer_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [7:0]  auto_buffer_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output [63:0] auto_buffer_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output        auto_buffer_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  output        auto_buffer_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input         auto_buffer_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [2:0]  auto_buffer_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [1:0]  auto_buffer_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [6:0]  auto_buffer_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
  input  [63:0] auto_buffer_out_d_bits_data // @[:chipyard.TestHarness.RocketConfig.fir@59596.4]
);
  wire  buffer_clock; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [1:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [6:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [25:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [1:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [6:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [1:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [6:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [25:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [1:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [6:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
  wire  fragmenter_clock; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_reset; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_in_a_ready; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_in_a_valid; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_in_a_bits_opcode; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_in_a_bits_param; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_in_a_bits_size; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_in_a_bits_source; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [25:0] fragmenter_auto_in_a_bits_address; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [7:0] fragmenter_auto_in_a_bits_mask; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [63:0] fragmenter_auto_in_a_bits_data; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_in_a_bits_corrupt; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_in_d_ready; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_in_d_valid; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_in_d_bits_opcode; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [1:0] fragmenter_auto_in_d_bits_param; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_in_d_bits_size; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_in_d_bits_source; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_in_d_bits_sink; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_in_d_bits_denied; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [63:0] fragmenter_auto_in_d_bits_data; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_in_d_bits_corrupt; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_out_a_ready; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_out_a_valid; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_out_a_bits_opcode; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_out_a_bits_param; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [1:0] fragmenter_auto_out_a_bits_size; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [6:0] fragmenter_auto_out_a_bits_source; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [25:0] fragmenter_auto_out_a_bits_address; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [7:0] fragmenter_auto_out_a_bits_mask; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [63:0] fragmenter_auto_out_a_bits_data; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_out_a_bits_corrupt; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_out_d_ready; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_out_d_valid; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [2:0] fragmenter_auto_out_d_bits_opcode; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [1:0] fragmenter_auto_out_d_bits_param; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [1:0] fragmenter_auto_out_d_bits_size; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [6:0] fragmenter_auto_out_d_bits_source; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_out_d_bits_sink; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_out_d_bits_denied; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire [63:0] fragmenter_auto_out_d_bits_data; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  wire  fragmenter_auto_out_d_bits_corrupt; // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
  TLBuffer_7 buffer ( // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@59601.4]
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
  TLFragmenter_1 fragmenter ( // @[Fragmenter.scala 324:34:chipyard.TestHarness.RocketConfig.fir@59607.4]
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
    .auto_in_d_bits_param(fragmenter_auto_in_d_bits_param),
    .auto_in_d_bits_size(fragmenter_auto_in_d_bits_size),
    .auto_in_d_bits_source(fragmenter_auto_in_d_bits_source),
    .auto_in_d_bits_sink(fragmenter_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(fragmenter_auto_in_d_bits_denied),
    .auto_in_d_bits_data(fragmenter_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(fragmenter_auto_in_d_bits_corrupt),
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
    .auto_out_d_bits_param(fragmenter_auto_out_d_bits_param),
    .auto_out_d_bits_size(fragmenter_auto_out_d_bits_size),
    .auto_out_d_bits_source(fragmenter_auto_out_d_bits_source),
    .auto_out_d_bits_sink(fragmenter_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(fragmenter_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fragmenter_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fragmenter_auto_out_d_bits_corrupt)
  );
  assign auto_fragmenter_in_a_ready = fragmenter_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_valid = fragmenter_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_bits_opcode = fragmenter_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_bits_param = fragmenter_auto_in_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_bits_size = fragmenter_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_bits_source = fragmenter_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_bits_sink = fragmenter_auto_in_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_bits_denied = fragmenter_auto_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_bits_data = fragmenter_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_fragmenter_in_d_bits_corrupt = fragmenter_auto_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign auto_buffer_out_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign auto_buffer_out_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign buffer_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@59605.4]
  assign buffer_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@59606.4]
  assign buffer_auto_in_a_valid = fragmenter_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_a_bits_opcode = fragmenter_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_a_bits_param = fragmenter_auto_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_a_bits_size = fragmenter_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_a_bits_source = fragmenter_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_a_bits_address = fragmenter_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_a_bits_mask = fragmenter_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_a_bits_data = fragmenter_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_a_bits_corrupt = fragmenter_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_in_d_ready = fragmenter_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign buffer_auto_out_a_ready = auto_buffer_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign buffer_auto_out_d_valid = auto_buffer_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign buffer_auto_out_d_bits_opcode = auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign buffer_auto_out_d_bits_size = auto_buffer_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign buffer_auto_out_d_bits_source = auto_buffer_out_d_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign buffer_auto_out_d_bits_data = auto_buffer_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@59614.4]
  assign fragmenter_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@59611.4]
  assign fragmenter_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@59612.4]
  assign fragmenter_auto_in_a_valid = auto_fragmenter_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_a_bits_opcode = auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_a_bits_param = auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_a_bits_size = auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_a_bits_source = auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_a_bits_address = auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_a_bits_mask = auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_a_bits_data = auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_a_bits_corrupt = auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_in_d_ready = auto_fragmenter_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@59615.4]
  assign fragmenter_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
  assign fragmenter_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@59613.4]
endmodule
