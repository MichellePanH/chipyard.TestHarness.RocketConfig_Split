module TLBuffer_11( // @[:chipyard.TestHarness.RocketConfig.fir@233104.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@233105.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@233106.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [3:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [1:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [31:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [2:0]  auto_in_b_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [1:0]  auto_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [3:0]  auto_in_b_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [1:0]  auto_in_b_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [31:0] auto_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [7:0]  auto_in_b_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_in_b_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [2:0]  auto_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [2:0]  auto_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [3:0]  auto_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [1:0]  auto_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [31:0] auto_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [63:0] auto_in_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [1:0]  auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [3:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [1:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [2:0]  auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_in_e_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [2:0]  auto_in_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [3:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [1:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [31:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [1:0]  auto_out_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [31:0] auto_out_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_out_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_out_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [2:0]  auto_out_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [3:0]  auto_out_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [1:0]  auto_out_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [31:0] auto_out_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [63:0] auto_out_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_out_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [1:0]  auto_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [3:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [1:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [2:0]  auto_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input  [63:0] auto_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  input         auto_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output        auto_out_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
  output [2:0]  auto_out_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@233107.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [1:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_b_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_b_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [2:0] TLMonitor_io_in_b_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [1:0] TLMonitor_io_in_b_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [3:0] TLMonitor_io_in_b_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [1:0] TLMonitor_io_in_b_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [31:0] TLMonitor_io_in_b_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [7:0] TLMonitor_io_in_b_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_b_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [3:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [1:0] TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [1:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [2:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_e_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire [2:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [2:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [3:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [1:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [31:0] Queue_io_enq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [7:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [63:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire  Queue_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [2:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [3:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [1:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [31:0] Queue_io_deq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [7:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire [63:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [2:0] Queue_1_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [1:0] Queue_1_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [3:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [1:0] Queue_1_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [2:0] Queue_1_io_enq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_io_enq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [63:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [2:0] Queue_1_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [1:0] Queue_1_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [3:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [1:0] Queue_1_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [2:0] Queue_1_io_deq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_io_deq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire [63:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_1_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire [1:0] Queue_2_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire [31:0] Queue_2_io_enq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire [2:0] Queue_2_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire [1:0] Queue_2_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire [3:0] Queue_2_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire [1:0] Queue_2_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire [31:0] Queue_2_io_deq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire [7:0] Queue_2_io_deq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire  Queue_2_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [2:0] Queue_3_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [2:0] Queue_3_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [3:0] Queue_3_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [1:0] Queue_3_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [31:0] Queue_3_io_enq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [63:0] Queue_3_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [2:0] Queue_3_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [2:0] Queue_3_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [3:0] Queue_3_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [1:0] Queue_3_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [31:0] Queue_3_io_deq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire [63:0] Queue_3_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire  Queue_3_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233218.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233218.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233218.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233218.4]
  wire [2:0] Queue_4_io_enq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233218.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233218.4]
  wire [2:0] Queue_4_io_deq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233218.4]
  TLMonitor_59 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@233114.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_io_in_a_bits_corrupt),
    .io_in_b_ready(TLMonitor_io_in_b_ready),
    .io_in_b_valid(TLMonitor_io_in_b_valid),
    .io_in_b_bits_opcode(TLMonitor_io_in_b_bits_opcode),
    .io_in_b_bits_param(TLMonitor_io_in_b_bits_param),
    .io_in_b_bits_size(TLMonitor_io_in_b_bits_size),
    .io_in_b_bits_source(TLMonitor_io_in_b_bits_source),
    .io_in_b_bits_address(TLMonitor_io_in_b_bits_address),
    .io_in_b_bits_mask(TLMonitor_io_in_b_bits_mask),
    .io_in_b_bits_corrupt(TLMonitor_io_in_b_bits_corrupt),
    .io_in_c_ready(TLMonitor_io_in_c_ready),
    .io_in_c_valid(TLMonitor_io_in_c_valid),
    .io_in_c_bits_opcode(TLMonitor_io_in_c_bits_opcode),
    .io_in_c_bits_param(TLMonitor_io_in_c_bits_param),
    .io_in_c_bits_size(TLMonitor_io_in_c_bits_size),
    .io_in_c_bits_source(TLMonitor_io_in_c_bits_source),
    .io_in_c_bits_address(TLMonitor_io_in_c_bits_address),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt),
    .io_in_e_ready(TLMonitor_io_in_e_ready),
    .io_in_e_valid(TLMonitor_io_in_e_valid),
    .io_in_e_bits_sink(TLMonitor_io_in_e_bits_sink)
  );
  Queue_29 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233163.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_address(Queue_io_enq_bits_address),
    .io_enq_bits_mask(Queue_io_enq_bits_mask),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_io_enq_bits_corrupt),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_address(Queue_io_deq_bits_address),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_io_deq_bits_corrupt)
  );
  Queue_30 Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233177.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_opcode(Queue_1_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_1_io_enq_bits_param),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_source(Queue_1_io_enq_bits_source),
    .io_enq_bits_sink(Queue_1_io_enq_bits_sink),
    .io_enq_bits_denied(Queue_1_io_enq_bits_denied),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_1_io_enq_bits_corrupt),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_opcode(Queue_1_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_1_io_deq_bits_param),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_source(Queue_1_io_deq_bits_source),
    .io_deq_bits_sink(Queue_1_io_deq_bits_sink),
    .io_deq_bits_denied(Queue_1_io_deq_bits_denied),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_1_io_deq_bits_corrupt)
  );
  Queue_31 Queue_2 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233191.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_param(Queue_2_io_enq_bits_param),
    .io_enq_bits_address(Queue_2_io_enq_bits_address),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_opcode(Queue_2_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_2_io_deq_bits_param),
    .io_deq_bits_size(Queue_2_io_deq_bits_size),
    .io_deq_bits_source(Queue_2_io_deq_bits_source),
    .io_deq_bits_address(Queue_2_io_deq_bits_address),
    .io_deq_bits_mask(Queue_2_io_deq_bits_mask),
    .io_deq_bits_corrupt(Queue_2_io_deq_bits_corrupt)
  );
  Queue_32 Queue_3 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233205.4]
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_opcode(Queue_3_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_3_io_enq_bits_param),
    .io_enq_bits_size(Queue_3_io_enq_bits_size),
    .io_enq_bits_source(Queue_3_io_enq_bits_source),
    .io_enq_bits_address(Queue_3_io_enq_bits_address),
    .io_enq_bits_data(Queue_3_io_enq_bits_data),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_opcode(Queue_3_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_3_io_deq_bits_param),
    .io_deq_bits_size(Queue_3_io_deq_bits_size),
    .io_deq_bits_source(Queue_3_io_deq_bits_source),
    .io_deq_bits_address(Queue_3_io_deq_bits_address),
    .io_deq_bits_data(Queue_3_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_3_io_deq_bits_corrupt)
  );
  Queue_17 Queue_4 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@233218.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_sink(Queue_4_io_enq_bits_sink),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_sink(Queue_4_io_deq_bits_sink)
  );
  assign auto_in_a_ready = Queue_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_b_bits_opcode = Queue_2_io_deq_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_b_bits_param = Queue_2_io_deq_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_b_bits_size = Queue_2_io_deq_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_b_bits_source = Queue_2_io_deq_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_b_bits_address = Queue_2_io_deq_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_b_bits_mask = Queue_2_io_deq_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_b_bits_corrupt = Queue_2_io_deq_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_c_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_bits_param = Queue_1_io_deq_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_bits_source = Queue_1_io_deq_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_in_e_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@233162.4]
  assign auto_out_a_valid = Queue_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_a_bits_opcode = Queue_io_deq_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_a_bits_param = Queue_io_deq_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_a_bits_size = Queue_io_deq_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_a_bits_source = Queue_io_deq_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_a_bits_address = Queue_io_deq_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_a_bits_mask = Queue_io_deq_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_a_bits_data = Queue_io_deq_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_a_bits_corrupt = Queue_io_deq_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_c_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_c_bits_opcode = Queue_3_io_deq_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_c_bits_param = Queue_3_io_deq_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_c_bits_size = Queue_3_io_deq_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_c_bits_source = Queue_3_io_deq_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_c_bits_address = Queue_3_io_deq_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_c_bits_data = Queue_3_io_deq_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_c_bits_corrupt = Queue_3_io_deq_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_d_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_e_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign auto_out_e_bits_sink = Queue_4_io_deq_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233161.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@233115.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@233116.4]
  assign TLMonitor_io_in_a_ready = Queue_io_enq_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233158.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233157.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233156.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233155.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233154.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233153.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233152.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233151.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233149.4]
  assign TLMonitor_io_in_b_ready = auto_in_b_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233148.4]
  assign TLMonitor_io_in_b_valid = Queue_2_io_deq_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233147.4]
  assign TLMonitor_io_in_b_bits_opcode = Queue_2_io_deq_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233146.4]
  assign TLMonitor_io_in_b_bits_param = Queue_2_io_deq_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233145.4]
  assign TLMonitor_io_in_b_bits_size = Queue_2_io_deq_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233144.4]
  assign TLMonitor_io_in_b_bits_source = Queue_2_io_deq_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233143.4]
  assign TLMonitor_io_in_b_bits_address = Queue_2_io_deq_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233142.4]
  assign TLMonitor_io_in_b_bits_mask = Queue_2_io_deq_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233141.4]
  assign TLMonitor_io_in_b_bits_corrupt = Queue_2_io_deq_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233139.4]
  assign TLMonitor_io_in_c_ready = Queue_3_io_enq_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233138.4]
  assign TLMonitor_io_in_c_valid = auto_in_c_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233137.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233136.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233135.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233134.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233133.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233132.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233129.4]
  assign TLMonitor_io_in_d_valid = Queue_1_io_deq_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233128.4]
  assign TLMonitor_io_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233127.4]
  assign TLMonitor_io_in_d_bits_param = Queue_1_io_deq_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233126.4]
  assign TLMonitor_io_in_d_bits_size = Queue_1_io_deq_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233125.4]
  assign TLMonitor_io_in_d_bits_source = Queue_1_io_deq_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233124.4]
  assign TLMonitor_io_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233123.4]
  assign TLMonitor_io_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233122.4]
  assign TLMonitor_io_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233120.4]
  assign TLMonitor_io_in_e_ready = Queue_4_io_enq_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233119.4]
  assign TLMonitor_io_in_e_valid = auto_in_e_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233118.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@233117.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@233164.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@233165.4]
  assign Queue_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@233166.4]
  assign Queue_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233174.4]
  assign Queue_io_enq_bits_param = auto_in_a_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233173.4]
  assign Queue_io_enq_bits_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233172.4]
  assign Queue_io_enq_bits_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233171.4]
  assign Queue_io_enq_bits_address = auto_in_a_bits_address; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233170.4]
  assign Queue_io_enq_bits_mask = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233169.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233168.4]
  assign Queue_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233167.4]
  assign Queue_io_deq_ready = auto_out_a_ready; // @[Buffer.scala 38:13:chipyard.TestHarness.RocketConfig.fir@233176.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@233178.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@233179.4]
  assign Queue_1_io_enq_valid = auto_out_d_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@233180.4]
  assign Queue_1_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233188.4]
  assign Queue_1_io_enq_bits_param = auto_out_d_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233187.4]
  assign Queue_1_io_enq_bits_size = auto_out_d_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233186.4]
  assign Queue_1_io_enq_bits_source = auto_out_d_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233185.4]
  assign Queue_1_io_enq_bits_sink = auto_out_d_bits_sink; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233184.4]
  assign Queue_1_io_enq_bits_denied = auto_out_d_bits_denied; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233183.4]
  assign Queue_1_io_enq_bits_data = auto_out_d_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233182.4]
  assign Queue_1_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233181.4]
  assign Queue_1_io_deq_ready = auto_in_d_ready; // @[Buffer.scala 39:13:chipyard.TestHarness.RocketConfig.fir@233190.4]
  assign Queue_2_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@233192.4]
  assign Queue_2_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@233193.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@233194.4]
  assign Queue_2_io_enq_bits_param = auto_out_b_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233201.4]
  assign Queue_2_io_enq_bits_address = auto_out_b_bits_address; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233198.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Buffer.scala 42:15:chipyard.TestHarness.RocketConfig.fir@233204.4]
  assign Queue_3_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@233206.4]
  assign Queue_3_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@233207.4]
  assign Queue_3_io_enq_valid = auto_in_c_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@233208.4]
  assign Queue_3_io_enq_bits_opcode = auto_in_c_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233215.4]
  assign Queue_3_io_enq_bits_param = auto_in_c_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233214.4]
  assign Queue_3_io_enq_bits_size = auto_in_c_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233213.4]
  assign Queue_3_io_enq_bits_source = auto_in_c_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233212.4]
  assign Queue_3_io_enq_bits_address = auto_in_c_bits_address; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233211.4]
  assign Queue_3_io_enq_bits_data = auto_in_c_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233210.4]
  assign Queue_3_io_deq_ready = auto_out_c_ready; // @[Buffer.scala 43:15:chipyard.TestHarness.RocketConfig.fir@233217.4]
  assign Queue_4_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@233219.4]
  assign Queue_4_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@233220.4]
  assign Queue_4_io_enq_valid = auto_in_e_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@233221.4]
  assign Queue_4_io_enq_bits_sink = auto_in_e_bits_sink; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@233222.4]
endmodule
