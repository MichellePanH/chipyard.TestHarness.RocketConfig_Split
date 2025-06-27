module TLAsyncCrossingSink( // @[:chipyard.TestHarness.RocketConfig.fir@189878.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@189879.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@189880.4]
  input  [2:0]  auto_in_a_mem_0_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input  [8:0]  auto_in_a_mem_0_address, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input  [3:0]  auto_in_a_mem_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input  [31:0] auto_in_a_mem_0_data, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_in_a_ridx, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_in_a_widx, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_in_a_safe_ridx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_in_a_safe_widx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_in_a_safe_source_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_in_a_safe_sink_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [2:0]  auto_in_d_mem_0_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [1:0]  auto_in_d_mem_0_size, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_in_d_mem_0_source, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [31:0] auto_in_d_mem_0_data, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_in_d_ridx, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_in_d_widx, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_in_d_safe_ridx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_in_d_safe_widx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_in_d_safe_source_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_in_d_safe_sink_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [1:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [8:0]  auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [3:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output [31:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input  [1:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input         auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
  input  [31:0] auto_out_d_bits_data // @[:chipyard.TestHarness.RocketConfig.fir@189881.4]
);
  wire  AsyncQueueSink_clock; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_reset; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_deq_ready; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_deq_valid; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [2:0] AsyncQueueSink_io_deq_bits_opcode; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [2:0] AsyncQueueSink_io_deq_bits_param; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [1:0] AsyncQueueSink_io_deq_bits_size; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_deq_bits_source; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [8:0] AsyncQueueSink_io_deq_bits_address; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [3:0] AsyncQueueSink_io_deq_bits_mask; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [31:0] AsyncQueueSink_io_deq_bits_data; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_deq_bits_corrupt; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [2:0] AsyncQueueSink_io_async_mem_0_opcode; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [8:0] AsyncQueueSink_io_async_mem_0_address; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [3:0] AsyncQueueSink_io_async_mem_0_mask; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire [31:0] AsyncQueueSink_io_async_mem_0_data; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_async_ridx; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_async_widx; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
  wire  AsyncQueueSource_clock; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_reset; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_enq_ready; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_enq_valid; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire [2:0] AsyncQueueSource_io_enq_bits_opcode; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire [1:0] AsyncQueueSource_io_enq_bits_size; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_enq_bits_source; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire [31:0] AsyncQueueSource_io_enq_bits_data; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire [2:0] AsyncQueueSource_io_async_mem_0_opcode; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire [1:0] AsyncQueueSource_io_async_mem_0_size; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_async_mem_0_source; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire [31:0] AsyncQueueSource_io_async_mem_0_data; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_async_ridx; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_async_widx; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  wire  AsyncQueueSource_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
  AsyncQueueSink_1 AsyncQueueSink ( // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@189892.4]
    .clock(AsyncQueueSink_clock),
    .reset(AsyncQueueSink_reset),
    .io_deq_ready(AsyncQueueSink_io_deq_ready),
    .io_deq_valid(AsyncQueueSink_io_deq_valid),
    .io_deq_bits_opcode(AsyncQueueSink_io_deq_bits_opcode),
    .io_deq_bits_param(AsyncQueueSink_io_deq_bits_param),
    .io_deq_bits_size(AsyncQueueSink_io_deq_bits_size),
    .io_deq_bits_source(AsyncQueueSink_io_deq_bits_source),
    .io_deq_bits_address(AsyncQueueSink_io_deq_bits_address),
    .io_deq_bits_mask(AsyncQueueSink_io_deq_bits_mask),
    .io_deq_bits_data(AsyncQueueSink_io_deq_bits_data),
    .io_deq_bits_corrupt(AsyncQueueSink_io_deq_bits_corrupt),
    .io_async_mem_0_opcode(AsyncQueueSink_io_async_mem_0_opcode),
    .io_async_mem_0_address(AsyncQueueSink_io_async_mem_0_address),
    .io_async_mem_0_mask(AsyncQueueSink_io_async_mem_0_mask),
    .io_async_mem_0_data(AsyncQueueSink_io_async_mem_0_data),
    .io_async_ridx(AsyncQueueSink_io_async_ridx),
    .io_async_widx(AsyncQueueSink_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSink_io_async_safe_sink_reset_n)
  );
  AsyncQueueSource_2 AsyncQueueSource ( // @[AsyncQueue.scala 216:24:chipyard.TestHarness.RocketConfig.fir@189903.4]
    .clock(AsyncQueueSource_clock),
    .reset(AsyncQueueSource_reset),
    .io_enq_ready(AsyncQueueSource_io_enq_ready),
    .io_enq_valid(AsyncQueueSource_io_enq_valid),
    .io_enq_bits_opcode(AsyncQueueSource_io_enq_bits_opcode),
    .io_enq_bits_size(AsyncQueueSource_io_enq_bits_size),
    .io_enq_bits_source(AsyncQueueSource_io_enq_bits_source),
    .io_enq_bits_data(AsyncQueueSource_io_enq_bits_data),
    .io_async_mem_0_opcode(AsyncQueueSource_io_async_mem_0_opcode),
    .io_async_mem_0_size(AsyncQueueSource_io_async_mem_0_size),
    .io_async_mem_0_source(AsyncQueueSource_io_async_mem_0_source),
    .io_async_mem_0_data(AsyncQueueSource_io_async_mem_0_data),
    .io_async_ridx(AsyncQueueSource_io_async_ridx),
    .io_async_widx(AsyncQueueSource_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSource_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSource_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSource_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSource_io_async_safe_sink_reset_n)
  );
  assign auto_in_a_ridx = AsyncQueueSink_io_async_ridx; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_a_safe_ridx_valid = AsyncQueueSink_io_async_safe_ridx_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_a_safe_sink_reset_n = AsyncQueueSink_io_async_safe_sink_reset_n; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_d_mem_0_opcode = AsyncQueueSource_io_async_mem_0_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_d_mem_0_size = AsyncQueueSource_io_async_mem_0_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_d_mem_0_source = AsyncQueueSource_io_async_mem_0_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_d_mem_0_data = AsyncQueueSource_io_async_mem_0_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_d_widx = AsyncQueueSource_io_async_widx; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_d_safe_widx_valid = AsyncQueueSource_io_async_safe_widx_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_in_d_safe_source_reset_n = AsyncQueueSource_io_async_safe_source_reset_n; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@189891.4]
  assign auto_out_a_valid = AsyncQueueSink_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_a_bits_opcode = AsyncQueueSink_io_deq_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_a_bits_param = AsyncQueueSink_io_deq_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_a_bits_size = AsyncQueueSink_io_deq_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_a_bits_source = AsyncQueueSink_io_deq_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_a_bits_address = AsyncQueueSink_io_deq_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_a_bits_mask = AsyncQueueSink_io_deq_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_a_bits_data = AsyncQueueSink_io_deq_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_a_bits_corrupt = AsyncQueueSink_io_deq_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign auto_out_d_ready = AsyncQueueSource_io_enq_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@189890.4]
  assign AsyncQueueSink_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@189893.4]
  assign AsyncQueueSink_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@189894.4]
  assign AsyncQueueSink_io_deq_ready = auto_out_a_ready; // @[AsyncCrossing.scala 57:13:chipyard.TestHarness.RocketConfig.fir@189902.4]
  assign AsyncQueueSink_io_async_mem_0_opcode = auto_in_a_mem_0_opcode; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@189901.4]
  assign AsyncQueueSink_io_async_mem_0_address = auto_in_a_mem_0_address; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@189901.4]
  assign AsyncQueueSink_io_async_mem_0_mask = auto_in_a_mem_0_mask; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@189901.4]
  assign AsyncQueueSink_io_async_mem_0_data = auto_in_a_mem_0_data; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@189901.4]
  assign AsyncQueueSink_io_async_widx = auto_in_a_widx; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@189899.4]
  assign AsyncQueueSink_io_async_safe_widx_valid = auto_in_a_safe_widx_valid; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@189897.4]
  assign AsyncQueueSink_io_async_safe_source_reset_n = auto_in_a_safe_source_reset_n; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@189896.4]
  assign AsyncQueueSource_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@189904.4]
  assign AsyncQueueSource_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@189905.4]
  assign AsyncQueueSource_io_enq_valid = auto_out_d_valid; // @[AsyncQueue.scala 217:19:chipyard.TestHarness.RocketConfig.fir@189907.4]
  assign AsyncQueueSource_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[AsyncQueue.scala 217:19:chipyard.TestHarness.RocketConfig.fir@189906.4]
  assign AsyncQueueSource_io_enq_bits_size = auto_out_d_bits_size; // @[AsyncQueue.scala 217:19:chipyard.TestHarness.RocketConfig.fir@189906.4]
  assign AsyncQueueSource_io_enq_bits_source = auto_out_d_bits_source; // @[AsyncQueue.scala 217:19:chipyard.TestHarness.RocketConfig.fir@189906.4]
  assign AsyncQueueSource_io_enq_bits_data = auto_out_d_bits_data; // @[AsyncQueue.scala 217:19:chipyard.TestHarness.RocketConfig.fir@189906.4]
  assign AsyncQueueSource_io_async_ridx = auto_in_d_ridx; // @[AsyncCrossing.scala 58:12:chipyard.TestHarness.RocketConfig.fir@189909.4]
  assign AsyncQueueSource_io_async_safe_ridx_valid = auto_in_d_safe_ridx_valid; // @[AsyncCrossing.scala 58:12:chipyard.TestHarness.RocketConfig.fir@189909.4]
  assign AsyncQueueSource_io_async_safe_sink_reset_n = auto_in_d_safe_sink_reset_n; // @[AsyncCrossing.scala 58:12:chipyard.TestHarness.RocketConfig.fir@189909.4]
endmodule
