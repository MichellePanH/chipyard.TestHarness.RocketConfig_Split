module SimpleLazyModule_3( // @[:chipyard.TestHarness.RocketConfig.fir@20810.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@20811.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@20812.4]
  input         auto_buffer_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_buffer_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [2:0]  auto_buffer_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [2:0]  auto_buffer_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [3:0]  auto_buffer_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [1:0]  auto_buffer_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [31:0] auto_buffer_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [7:0]  auto_buffer_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [63:0] auto_buffer_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_buffer_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_buffer_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_buffer_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [1:0]  auto_buffer_out_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [31:0] auto_buffer_out_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_buffer_out_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_buffer_out_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [2:0]  auto_buffer_out_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [2:0]  auto_buffer_out_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [3:0]  auto_buffer_out_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [1:0]  auto_buffer_out_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [31:0] auto_buffer_out_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [63:0] auto_buffer_out_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_buffer_out_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_buffer_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_buffer_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [2:0]  auto_buffer_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [1:0]  auto_buffer_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [3:0]  auto_buffer_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [1:0]  auto_buffer_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [2:0]  auto_buffer_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_buffer_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [63:0] auto_buffer_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_buffer_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_buffer_out_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [2:0]  auto_buffer_out_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_tl_master_xing_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_tl_master_xing_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [2:0]  auto_tl_master_xing_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [2:0]  auto_tl_master_xing_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [3:0]  auto_tl_master_xing_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [1:0]  auto_tl_master_xing_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [31:0] auto_tl_master_xing_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [7:0]  auto_tl_master_xing_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [63:0] auto_tl_master_xing_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_tl_master_xing_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_tl_master_xing_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_tl_master_xing_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [1:0]  auto_tl_master_xing_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [31:0] auto_tl_master_xing_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_tl_master_xing_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_tl_master_xing_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [2:0]  auto_tl_master_xing_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [2:0]  auto_tl_master_xing_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [3:0]  auto_tl_master_xing_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [1:0]  auto_tl_master_xing_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [31:0] auto_tl_master_xing_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [63:0] auto_tl_master_xing_in_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_tl_master_xing_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_tl_master_xing_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_tl_master_xing_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [2:0]  auto_tl_master_xing_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [1:0]  auto_tl_master_xing_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [3:0]  auto_tl_master_xing_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [1:0]  auto_tl_master_xing_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [2:0]  auto_tl_master_xing_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_tl_master_xing_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output [63:0] auto_tl_master_xing_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  output        auto_tl_master_xing_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input         auto_tl_master_xing_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
  input  [2:0]  auto_tl_master_xing_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@20813.4]
);
  wire  buffer_clock; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [31:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_b_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_b_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_in_b_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [31:0] buffer_auto_in_b_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_c_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_c_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_in_c_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_in_c_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [3:0] buffer_auto_in_c_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_in_c_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [31:0] buffer_auto_in_c_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [63:0] buffer_auto_in_c_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_c_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_in_e_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_in_e_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [31:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_b_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_b_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_out_b_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [31:0] buffer_auto_out_b_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_c_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_c_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_out_c_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_out_c_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [3:0] buffer_auto_out_c_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_out_c_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [31:0] buffer_auto_out_c_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [63:0] buffer_auto_out_c_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_c_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [1:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire  buffer_auto_out_e_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  wire [2:0] buffer_auto_out_e_bits_sink; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
  TLBuffer buffer ( // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@20818.4]
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
    .auto_in_b_ready(buffer_auto_in_b_ready),
    .auto_in_b_valid(buffer_auto_in_b_valid),
    .auto_in_b_bits_param(buffer_auto_in_b_bits_param),
    .auto_in_b_bits_address(buffer_auto_in_b_bits_address),
    .auto_in_c_ready(buffer_auto_in_c_ready),
    .auto_in_c_valid(buffer_auto_in_c_valid),
    .auto_in_c_bits_opcode(buffer_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(buffer_auto_in_c_bits_param),
    .auto_in_c_bits_size(buffer_auto_in_c_bits_size),
    .auto_in_c_bits_source(buffer_auto_in_c_bits_source),
    .auto_in_c_bits_address(buffer_auto_in_c_bits_address),
    .auto_in_c_bits_data(buffer_auto_in_c_bits_data),
    .auto_in_c_bits_corrupt(buffer_auto_in_c_bits_corrupt),
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
    .auto_in_e_valid(buffer_auto_in_e_valid),
    .auto_in_e_bits_sink(buffer_auto_in_e_bits_sink),
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
    .auto_out_b_ready(buffer_auto_out_b_ready),
    .auto_out_b_valid(buffer_auto_out_b_valid),
    .auto_out_b_bits_param(buffer_auto_out_b_bits_param),
    .auto_out_b_bits_address(buffer_auto_out_b_bits_address),
    .auto_out_c_ready(buffer_auto_out_c_ready),
    .auto_out_c_valid(buffer_auto_out_c_valid),
    .auto_out_c_bits_opcode(buffer_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(buffer_auto_out_c_bits_param),
    .auto_out_c_bits_size(buffer_auto_out_c_bits_size),
    .auto_out_c_bits_source(buffer_auto_out_c_bits_source),
    .auto_out_c_bits_address(buffer_auto_out_c_bits_address),
    .auto_out_c_bits_data(buffer_auto_out_c_bits_data),
    .auto_out_c_bits_corrupt(buffer_auto_out_c_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt),
    .auto_out_e_valid(buffer_auto_out_e_valid),
    .auto_out_e_bits_sink(buffer_auto_out_e_bits_sink)
  );
  assign auto_buffer_out_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_b_ready = buffer_auto_out_b_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_c_valid = buffer_auto_out_c_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_c_bits_opcode = buffer_auto_out_c_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_c_bits_param = buffer_auto_out_c_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_c_bits_size = buffer_auto_out_c_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_c_bits_source = buffer_auto_out_c_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_c_bits_address = buffer_auto_out_c_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_c_bits_data = buffer_auto_out_c_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_c_bits_corrupt = buffer_auto_out_c_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_e_valid = buffer_auto_out_e_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_buffer_out_e_bits_sink = buffer_auto_out_e_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign auto_tl_master_xing_in_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_b_valid = buffer_auto_in_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_b_bits_param = buffer_auto_in_b_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_b_bits_address = buffer_auto_in_b_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_c_ready = buffer_auto_in_c_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign auto_tl_master_xing_in_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@20830.4]
  assign buffer_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@20822.4]
  assign buffer_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@20823.4]
  assign buffer_auto_in_a_valid = auto_tl_master_xing_in_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_a_bits_opcode = auto_tl_master_xing_in_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_a_bits_param = auto_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_a_bits_size = auto_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_a_bits_source = auto_tl_master_xing_in_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_a_bits_address = auto_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_a_bits_mask = auto_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_a_bits_data = auto_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_a_bits_corrupt = auto_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_b_ready = auto_tl_master_xing_in_b_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_c_valid = auto_tl_master_xing_in_c_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_c_bits_opcode = auto_tl_master_xing_in_c_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_c_bits_param = auto_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_c_bits_size = auto_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_c_bits_source = auto_tl_master_xing_in_c_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_c_bits_address = auto_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_c_bits_data = auto_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_c_bits_corrupt = auto_tl_master_xing_in_c_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_d_ready = auto_tl_master_xing_in_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_e_valid = auto_tl_master_xing_in_e_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_in_e_bits_sink = auto_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@20829.4]
  assign buffer_auto_out_a_ready = auto_buffer_out_a_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_b_valid = auto_buffer_out_b_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_b_bits_param = auto_buffer_out_b_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_b_bits_address = auto_buffer_out_b_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_c_ready = auto_buffer_out_c_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_valid = auto_buffer_out_d_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_bits_opcode = auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_bits_param = auto_buffer_out_d_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_bits_size = auto_buffer_out_d_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_bits_source = auto_buffer_out_d_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_bits_sink = auto_buffer_out_d_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_bits_denied = auto_buffer_out_d_bits_denied; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_bits_data = auto_buffer_out_d_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
  assign buffer_auto_out_d_bits_corrupt = auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20831.4]
endmodule
