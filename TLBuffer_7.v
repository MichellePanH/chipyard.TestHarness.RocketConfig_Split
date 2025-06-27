module TLBuffer_7( // @[:chipyard.TestHarness.RocketConfig.fir@57813.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@57814.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@57815.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [1:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [6:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [25:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [1:0]  auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [1:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [6:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output        auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [1:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [6:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [25:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [1:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [6:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
  input  [63:0] auto_out_d_bits_data // @[:chipyard.TestHarness.RocketConfig.fir@57816.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [6:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [25:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire [6:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [2:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [1:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [6:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [25:0] Queue_io_enq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [7:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [63:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire  Queue_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [2:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [1:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [6:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [25:0] Queue_io_deq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [7:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire [63:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [2:0] Queue_1_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [1:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [6:0] Queue_1_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [63:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [2:0] Queue_1_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [1:0] Queue_1_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [1:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [6:0] Queue_1_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire  Queue_1_io_deq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire  Queue_1_io_deq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire [63:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  wire  Queue_1_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
  TLMonitor_26 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@57823.4]
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
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  Queue_11 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57850.4]
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
  Queue_12 Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@57864.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_opcode(Queue_1_io_enq_bits_opcode),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_source(Queue_1_io_enq_bits_source),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
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
  assign auto_in_a_ready = Queue_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_bits_param = Queue_1_io_deq_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_bits_source = Queue_1_io_deq_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@57849.4]
  assign auto_out_a_valid = Queue_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_a_bits_opcode = Queue_io_deq_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_a_bits_param = Queue_io_deq_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_a_bits_size = Queue_io_deq_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_a_bits_source = Queue_io_deq_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_a_bits_address = Queue_io_deq_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_a_bits_mask = Queue_io_deq_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_a_bits_data = Queue_io_deq_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_a_bits_corrupt = Queue_io_deq_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign auto_out_d_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@57848.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@57824.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@57825.4]
  assign TLMonitor_io_in_a_ready = Queue_io_enq_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57845.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57844.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57843.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57842.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57841.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57840.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57839.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57838.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57836.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57835.4]
  assign TLMonitor_io_in_d_valid = Queue_1_io_deq_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57834.4]
  assign TLMonitor_io_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57833.4]
  assign TLMonitor_io_in_d_bits_param = Queue_1_io_deq_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57832.4]
  assign TLMonitor_io_in_d_bits_size = Queue_1_io_deq_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57831.4]
  assign TLMonitor_io_in_d_bits_source = Queue_1_io_deq_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57830.4]
  assign TLMonitor_io_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57829.4]
  assign TLMonitor_io_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57828.4]
  assign TLMonitor_io_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@57826.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@57851.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@57852.4]
  assign Queue_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@57853.4]
  assign Queue_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57861.4]
  assign Queue_io_enq_bits_param = auto_in_a_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57860.4]
  assign Queue_io_enq_bits_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57859.4]
  assign Queue_io_enq_bits_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57858.4]
  assign Queue_io_enq_bits_address = auto_in_a_bits_address; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57857.4]
  assign Queue_io_enq_bits_mask = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57856.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57855.4]
  assign Queue_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57854.4]
  assign Queue_io_deq_ready = auto_out_a_ready; // @[Buffer.scala 38:13:chipyard.TestHarness.RocketConfig.fir@57863.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@57865.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@57866.4]
  assign Queue_1_io_enq_valid = auto_out_d_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@57867.4]
  assign Queue_1_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57875.4]
  assign Queue_1_io_enq_bits_size = auto_out_d_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57873.4]
  assign Queue_1_io_enq_bits_source = auto_out_d_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57872.4]
  assign Queue_1_io_enq_bits_data = auto_out_d_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@57869.4]
  assign Queue_1_io_deq_ready = auto_in_d_ready; // @[Buffer.scala 39:13:chipyard.TestHarness.RocketConfig.fir@57877.4]
endmodule
