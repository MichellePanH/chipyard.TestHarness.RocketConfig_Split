module SimpleLazyModule_5( // @[:chipyard.TestHarness.RocketConfig.fir@41015.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@41016.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@41017.4]
  input         auto_buffer_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output        auto_buffer_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output [2:0]  auto_buffer_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output [3:0]  auto_buffer_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output [31:0] auto_buffer_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output [7:0]  auto_buffer_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output [63:0] auto_buffer_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output        auto_buffer_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input         auto_buffer_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [2:0]  auto_buffer_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [1:0]  auto_buffer_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [3:0]  auto_buffer_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [2:0]  auto_buffer_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input         auto_buffer_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [63:0] auto_buffer_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input         auto_buffer_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output        auto_serialadapter_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input         auto_serialadapter_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [2:0]  auto_serialadapter_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [3:0]  auto_serialadapter_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [31:0] auto_serialadapter_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [7:0]  auto_serialadapter_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input  [63:0] auto_serialadapter_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  input         auto_serialadapter_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output        auto_serialadapter_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
  output [63:0] auto_serialadapter_in_d_bits_data // @[:chipyard.TestHarness.RocketConfig.fir@41018.4]
);
  wire  buffer_clock; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [31:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [2:0] buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [31:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [2:0] buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
  wire  fixer_clock; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_reset; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_in_a_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_in_a_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [3:0] fixer_auto_in_a_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [31:0] fixer_auto_in_a_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [7:0] fixer_auto_in_a_bits_mask; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [63:0] fixer_auto_in_a_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_in_d_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_in_d_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [63:0] fixer_auto_in_d_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_out_a_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_out_a_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [3:0] fixer_auto_out_a_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [31:0] fixer_auto_out_a_bits_address; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [7:0] fixer_auto_out_a_bits_mask; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [63:0] fixer_auto_out_a_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_out_d_ready; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_out_d_valid; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [1:0] fixer_auto_out_d_bits_param; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [3:0] fixer_auto_out_d_bits_size; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [2:0] fixer_auto_out_d_bits_sink; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_out_d_bits_denied; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire [63:0] fixer_auto_out_d_bits_data; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  wire  fixer_auto_out_d_bits_corrupt; // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
  TLBuffer_4 buffer ( // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@41023.4]
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
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
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
  TLFIFOFixer_2 fixer ( // @[FIFOFixer.scala 146:27:chipyard.TestHarness.RocketConfig.fir@41029.4]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(fixer_auto_in_a_bits_size),
    .auto_in_a_bits_address(fixer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(fixer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fixer_auto_in_a_bits_data),
    .auto_in_d_ready(fixer_auto_in_d_ready),
    .auto_in_d_valid(fixer_auto_in_d_valid),
    .auto_in_d_bits_data(fixer_auto_in_d_bits_data),
    .auto_out_a_ready(fixer_auto_out_a_ready),
    .auto_out_a_valid(fixer_auto_out_a_valid),
    .auto_out_a_bits_opcode(fixer_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(fixer_auto_out_a_bits_size),
    .auto_out_a_bits_address(fixer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(fixer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fixer_auto_out_a_bits_data),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(fixer_auto_out_d_bits_param),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_sink(fixer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  assign auto_buffer_out_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign auto_buffer_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign auto_buffer_out_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign auto_buffer_out_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign auto_buffer_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign auto_buffer_out_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign auto_buffer_out_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign auto_serialadapter_in_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41042.4]
  assign auto_serialadapter_in_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41042.4]
  assign auto_serialadapter_in_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@41042.4]
  assign buffer_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@41027.4]
  assign buffer_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@41028.4]
  assign buffer_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign buffer_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign buffer_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign buffer_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign buffer_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign buffer_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign buffer_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign buffer_auto_out_a_ready = auto_buffer_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign buffer_auto_out_d_valid = auto_buffer_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign buffer_auto_out_d_bits_opcode = auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign buffer_auto_out_d_bits_param = auto_buffer_out_d_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign buffer_auto_out_d_bits_size = auto_buffer_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign buffer_auto_out_d_bits_sink = auto_buffer_out_d_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign buffer_auto_out_d_bits_denied = auto_buffer_out_d_bits_denied; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign buffer_auto_out_d_bits_data = auto_buffer_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign buffer_auto_out_d_bits_corrupt = auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@41043.4]
  assign fixer_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@41033.4]
  assign fixer_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@41034.4]
  assign fixer_auto_in_a_valid = auto_serialadapter_in_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41041.4]
  assign fixer_auto_in_a_bits_opcode = auto_serialadapter_in_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41041.4]
  assign fixer_auto_in_a_bits_size = auto_serialadapter_in_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41041.4]
  assign fixer_auto_in_a_bits_address = auto_serialadapter_in_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41041.4]
  assign fixer_auto_in_a_bits_mask = auto_serialadapter_in_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41041.4]
  assign fixer_auto_in_a_bits_data = auto_serialadapter_in_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41041.4]
  assign fixer_auto_in_d_ready = auto_serialadapter_in_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@41041.4]
  assign fixer_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign fixer_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign fixer_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign fixer_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign fixer_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign fixer_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign fixer_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign fixer_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
  assign fixer_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@41040.4]
endmodule
