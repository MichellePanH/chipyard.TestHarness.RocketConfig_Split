module TLBuffer_6( // @[:chipyard.TestHarness.RocketConfig.fir@56244.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@56245.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@56246.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [3:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [2:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [13:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [1:0]  auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [3:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [2:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output        auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [3:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [2:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [13:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [3:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input  [2:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
  input         auto_out_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@56247.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [2:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [13:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire [2:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [2:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [3:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [2:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [13:0] Queue_io_enq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [7:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire  Queue_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [2:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [3:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [2:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [13:0] Queue_io_deq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire [7:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [2:0] Queue_1_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [1:0] Queue_1_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [3:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [2:0] Queue_1_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_enq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_enq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [63:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [2:0] Queue_1_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [1:0] Queue_1_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [3:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [2:0] Queue_1_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_deq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_deq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire [63:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  wire  Queue_1_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
  TLMonitor_25 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@56254.4]
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
  Queue_9 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56281.4]
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
    .io_enq_bits_corrupt(Queue_io_enq_bits_corrupt),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_address(Queue_io_deq_bits_address),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_corrupt(Queue_io_deq_bits_corrupt)
  );
  Queue_7 Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@56295.4]
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
  assign auto_in_a_ready = Queue_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_bits_param = Queue_1_io_deq_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_bits_source = Queue_1_io_deq_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@56280.4]
  assign auto_out_a_valid = Queue_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign auto_out_a_bits_opcode = Queue_io_deq_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign auto_out_a_bits_param = Queue_io_deq_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign auto_out_a_bits_size = Queue_io_deq_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign auto_out_a_bits_source = Queue_io_deq_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign auto_out_a_bits_address = Queue_io_deq_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign auto_out_a_bits_mask = Queue_io_deq_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign auto_out_a_bits_corrupt = Queue_io_deq_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign auto_out_d_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@56279.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@56255.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@56256.4]
  assign TLMonitor_io_in_a_ready = Queue_io_enq_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56276.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56275.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56274.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56273.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56272.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56271.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56270.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56269.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56267.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56266.4]
  assign TLMonitor_io_in_d_valid = Queue_1_io_deq_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56265.4]
  assign TLMonitor_io_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56264.4]
  assign TLMonitor_io_in_d_bits_param = Queue_1_io_deq_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56263.4]
  assign TLMonitor_io_in_d_bits_size = Queue_1_io_deq_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56262.4]
  assign TLMonitor_io_in_d_bits_source = Queue_1_io_deq_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56261.4]
  assign TLMonitor_io_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56260.4]
  assign TLMonitor_io_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56259.4]
  assign TLMonitor_io_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@56257.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@56282.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@56283.4]
  assign Queue_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@56284.4]
  assign Queue_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56292.4]
  assign Queue_io_enq_bits_param = auto_in_a_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56291.4]
  assign Queue_io_enq_bits_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56290.4]
  assign Queue_io_enq_bits_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56289.4]
  assign Queue_io_enq_bits_address = auto_in_a_bits_address; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56288.4]
  assign Queue_io_enq_bits_mask = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56287.4]
  assign Queue_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56285.4]
  assign Queue_io_deq_ready = auto_out_a_ready; // @[Buffer.scala 38:13:chipyard.TestHarness.RocketConfig.fir@56294.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@56296.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@56297.4]
  assign Queue_1_io_enq_valid = auto_out_d_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@56298.4]
  assign Queue_1_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56306.4]
  assign Queue_1_io_enq_bits_param = 2'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56305.4]
  assign Queue_1_io_enq_bits_size = auto_out_d_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56304.4]
  assign Queue_1_io_enq_bits_source = auto_out_d_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56303.4]
  assign Queue_1_io_enq_bits_sink = 1'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56302.4]
  assign Queue_1_io_enq_bits_denied = 1'h1; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56301.4]
  assign Queue_1_io_enq_bits_data = 64'h0; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56300.4]
  assign Queue_1_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@56299.4]
  assign Queue_1_io_deq_ready = auto_in_d_ready; // @[Buffer.scala 39:13:chipyard.TestHarness.RocketConfig.fir@56308.4]
endmodule
