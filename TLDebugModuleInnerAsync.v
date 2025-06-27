module TLDebugModuleInnerAsync( // @[:chipyard.TestHarness.RocketConfig.fir@190278.2]
  input  [2:0]  auto_dmiXing_in_a_mem_0_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [8:0]  auto_dmiXing_in_a_mem_0_address, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [3:0]  auto_dmiXing_in_a_mem_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [31:0] auto_dmiXing_in_a_mem_0_data, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmiXing_in_a_ridx, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmiXing_in_a_widx, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmiXing_in_a_safe_ridx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmiXing_in_a_safe_widx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmiXing_in_a_safe_source_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmiXing_in_a_safe_sink_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output [2:0]  auto_dmiXing_in_d_mem_0_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output [1:0]  auto_dmiXing_in_d_mem_0_size, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmiXing_in_d_mem_0_source, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output [31:0] auto_dmiXing_in_d_mem_0_data, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmiXing_in_d_ridx, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmiXing_in_d_widx, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmiXing_in_d_safe_ridx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmiXing_in_d_safe_widx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmiXing_in_d_safe_source_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmiXing_in_d_safe_sink_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmInner_tl_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmInner_tl_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [2:0]  auto_dmInner_tl_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [2:0]  auto_dmInner_tl_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [1:0]  auto_dmInner_tl_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [6:0]  auto_dmInner_tl_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [11:0] auto_dmInner_tl_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [7:0]  auto_dmInner_tl_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input  [63:0] auto_dmInner_tl_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmInner_tl_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         auto_dmInner_tl_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output        auto_dmInner_tl_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output [2:0]  auto_dmInner_tl_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output [1:0]  auto_dmInner_tl_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output [6:0]  auto_dmInner_tl_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  output [63:0] auto_dmInner_tl_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@190279.4]
  input         io_debug_clock, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_debug_reset, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_dmactive, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_innerCtrl_mem_0_resumereq, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_innerCtrl_mem_0_ackhavereset, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_innerCtrl_mem_0_hrmask_0, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  output        io_innerCtrl_ridx, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_innerCtrl_widx, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  output        io_innerCtrl_safe_ridx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_innerCtrl_safe_widx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_innerCtrl_safe_source_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  output        io_innerCtrl_safe_sink_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  output        io_hgDebugInt_0, // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
  input         io_hartIsInReset_0 // @[:chipyard.TestHarness.RocketConfig.fir@190280.4]
);
  wire  dmInner_clock; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_reset; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_tl_in_a_ready; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_tl_in_a_valid; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [2:0] dmInner_auto_tl_in_a_bits_opcode; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [2:0] dmInner_auto_tl_in_a_bits_param; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [1:0] dmInner_auto_tl_in_a_bits_size; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [6:0] dmInner_auto_tl_in_a_bits_source; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [11:0] dmInner_auto_tl_in_a_bits_address; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [7:0] dmInner_auto_tl_in_a_bits_mask; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [63:0] dmInner_auto_tl_in_a_bits_data; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_tl_in_a_bits_corrupt; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_tl_in_d_ready; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_tl_in_d_valid; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [2:0] dmInner_auto_tl_in_d_bits_opcode; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [1:0] dmInner_auto_tl_in_d_bits_size; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [6:0] dmInner_auto_tl_in_d_bits_source; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [63:0] dmInner_auto_tl_in_d_bits_data; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_dmi_in_a_ready; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_dmi_in_a_valid; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [2:0] dmInner_auto_dmi_in_a_bits_opcode; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [2:0] dmInner_auto_dmi_in_a_bits_param; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [1:0] dmInner_auto_dmi_in_a_bits_size; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_dmi_in_a_bits_source; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [8:0] dmInner_auto_dmi_in_a_bits_address; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [3:0] dmInner_auto_dmi_in_a_bits_mask; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [31:0] dmInner_auto_dmi_in_a_bits_data; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_dmi_in_a_bits_corrupt; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_dmi_in_d_ready; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_dmi_in_d_valid; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [2:0] dmInner_auto_dmi_in_d_bits_opcode; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [1:0] dmInner_auto_dmi_in_d_bits_size; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_auto_dmi_in_d_bits_source; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [31:0] dmInner_auto_dmi_in_d_bits_data; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_io_dmactive; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_io_innerCtrl_ready; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_io_innerCtrl_valid; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_io_innerCtrl_bits_resumereq; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire [9:0] dmInner_io_innerCtrl_bits_hartsel; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_io_innerCtrl_bits_ackhavereset; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_io_innerCtrl_bits_hrmask_0; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_io_hgDebugInt_0; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmInner_io_hartIsInReset_0; // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
  wire  dmiXing_clock; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_reset; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [2:0] dmiXing_auto_in_a_mem_0_opcode; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [8:0] dmiXing_auto_in_a_mem_0_address; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [3:0] dmiXing_auto_in_a_mem_0_mask; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [31:0] dmiXing_auto_in_a_mem_0_data; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_a_ridx; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_a_widx; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_a_safe_ridx_valid; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_a_safe_widx_valid; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_a_safe_source_reset_n; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_a_safe_sink_reset_n; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [2:0] dmiXing_auto_in_d_mem_0_opcode; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [1:0] dmiXing_auto_in_d_mem_0_size; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_d_mem_0_source; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [31:0] dmiXing_auto_in_d_mem_0_data; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_d_ridx; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_d_widx; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_d_safe_ridx_valid; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_d_safe_widx_valid; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_d_safe_source_reset_n; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_in_d_safe_sink_reset_n; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_out_a_ready; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_out_a_valid; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [2:0] dmiXing_auto_out_a_bits_opcode; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [2:0] dmiXing_auto_out_a_bits_param; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [1:0] dmiXing_auto_out_a_bits_size; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_out_a_bits_source; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [8:0] dmiXing_auto_out_a_bits_address; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [3:0] dmiXing_auto_out_a_bits_mask; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [31:0] dmiXing_auto_out_a_bits_data; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_out_a_bits_corrupt; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_out_d_ready; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_out_d_valid; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [2:0] dmiXing_auto_out_d_bits_opcode; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [1:0] dmiXing_auto_out_d_bits_size; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmiXing_auto_out_d_bits_source; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire [31:0] dmiXing_auto_out_d_bits_data; // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
  wire  dmactiveSync_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190312.4]
  wire  dmactiveSync_reset; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190312.4]
  wire  dmactiveSync_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190312.4]
  wire  dmactiveSync_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190312.4]
  wire  AsyncQueueSink_clock; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_reset; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_deq_valid; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_deq_bits_resumereq; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire [9:0] AsyncQueueSink_io_deq_bits_hartsel; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_deq_bits_ackhavereset; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_deq_bits_hrmask_0; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_mem_0_resumereq; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_mem_0_ackhavereset; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_mem_0_hrmask_0; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_ridx; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_widx; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  wire  AsyncQueueSink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
  TLDebugModuleInner dmInner ( // @[Debug.scala 1683:27:chipyard.TestHarness.RocketConfig.fir@190293.4]
    .clock(dmInner_clock),
    .reset(dmInner_reset),
    .auto_tl_in_a_ready(dmInner_auto_tl_in_a_ready),
    .auto_tl_in_a_valid(dmInner_auto_tl_in_a_valid),
    .auto_tl_in_a_bits_opcode(dmInner_auto_tl_in_a_bits_opcode),
    .auto_tl_in_a_bits_param(dmInner_auto_tl_in_a_bits_param),
    .auto_tl_in_a_bits_size(dmInner_auto_tl_in_a_bits_size),
    .auto_tl_in_a_bits_source(dmInner_auto_tl_in_a_bits_source),
    .auto_tl_in_a_bits_address(dmInner_auto_tl_in_a_bits_address),
    .auto_tl_in_a_bits_mask(dmInner_auto_tl_in_a_bits_mask),
    .auto_tl_in_a_bits_data(dmInner_auto_tl_in_a_bits_data),
    .auto_tl_in_a_bits_corrupt(dmInner_auto_tl_in_a_bits_corrupt),
    .auto_tl_in_d_ready(dmInner_auto_tl_in_d_ready),
    .auto_tl_in_d_valid(dmInner_auto_tl_in_d_valid),
    .auto_tl_in_d_bits_opcode(dmInner_auto_tl_in_d_bits_opcode),
    .auto_tl_in_d_bits_size(dmInner_auto_tl_in_d_bits_size),
    .auto_tl_in_d_bits_source(dmInner_auto_tl_in_d_bits_source),
    .auto_tl_in_d_bits_data(dmInner_auto_tl_in_d_bits_data),
    .auto_dmi_in_a_ready(dmInner_auto_dmi_in_a_ready),
    .auto_dmi_in_a_valid(dmInner_auto_dmi_in_a_valid),
    .auto_dmi_in_a_bits_opcode(dmInner_auto_dmi_in_a_bits_opcode),
    .auto_dmi_in_a_bits_param(dmInner_auto_dmi_in_a_bits_param),
    .auto_dmi_in_a_bits_size(dmInner_auto_dmi_in_a_bits_size),
    .auto_dmi_in_a_bits_source(dmInner_auto_dmi_in_a_bits_source),
    .auto_dmi_in_a_bits_address(dmInner_auto_dmi_in_a_bits_address),
    .auto_dmi_in_a_bits_mask(dmInner_auto_dmi_in_a_bits_mask),
    .auto_dmi_in_a_bits_data(dmInner_auto_dmi_in_a_bits_data),
    .auto_dmi_in_a_bits_corrupt(dmInner_auto_dmi_in_a_bits_corrupt),
    .auto_dmi_in_d_ready(dmInner_auto_dmi_in_d_ready),
    .auto_dmi_in_d_valid(dmInner_auto_dmi_in_d_valid),
    .auto_dmi_in_d_bits_opcode(dmInner_auto_dmi_in_d_bits_opcode),
    .auto_dmi_in_d_bits_size(dmInner_auto_dmi_in_d_bits_size),
    .auto_dmi_in_d_bits_source(dmInner_auto_dmi_in_d_bits_source),
    .auto_dmi_in_d_bits_data(dmInner_auto_dmi_in_d_bits_data),
    .io_dmactive(dmInner_io_dmactive),
    .io_innerCtrl_ready(dmInner_io_innerCtrl_ready),
    .io_innerCtrl_valid(dmInner_io_innerCtrl_valid),
    .io_innerCtrl_bits_resumereq(dmInner_io_innerCtrl_bits_resumereq),
    .io_innerCtrl_bits_hartsel(dmInner_io_innerCtrl_bits_hartsel),
    .io_innerCtrl_bits_ackhavereset(dmInner_io_innerCtrl_bits_ackhavereset),
    .io_innerCtrl_bits_hrmask_0(dmInner_io_innerCtrl_bits_hrmask_0),
    .io_hgDebugInt_0(dmInner_io_hgDebugInt_0),
    .io_hartIsInReset_0(dmInner_io_hartIsInReset_0)
  );
  TLAsyncCrossingSink dmiXing ( // @[Debug.scala 1684:27:chipyard.TestHarness.RocketConfig.fir@190300.4]
    .clock(dmiXing_clock),
    .reset(dmiXing_reset),
    .auto_in_a_mem_0_opcode(dmiXing_auto_in_a_mem_0_opcode),
    .auto_in_a_mem_0_address(dmiXing_auto_in_a_mem_0_address),
    .auto_in_a_mem_0_mask(dmiXing_auto_in_a_mem_0_mask),
    .auto_in_a_mem_0_data(dmiXing_auto_in_a_mem_0_data),
    .auto_in_a_ridx(dmiXing_auto_in_a_ridx),
    .auto_in_a_widx(dmiXing_auto_in_a_widx),
    .auto_in_a_safe_ridx_valid(dmiXing_auto_in_a_safe_ridx_valid),
    .auto_in_a_safe_widx_valid(dmiXing_auto_in_a_safe_widx_valid),
    .auto_in_a_safe_source_reset_n(dmiXing_auto_in_a_safe_source_reset_n),
    .auto_in_a_safe_sink_reset_n(dmiXing_auto_in_a_safe_sink_reset_n),
    .auto_in_d_mem_0_opcode(dmiXing_auto_in_d_mem_0_opcode),
    .auto_in_d_mem_0_size(dmiXing_auto_in_d_mem_0_size),
    .auto_in_d_mem_0_source(dmiXing_auto_in_d_mem_0_source),
    .auto_in_d_mem_0_data(dmiXing_auto_in_d_mem_0_data),
    .auto_in_d_ridx(dmiXing_auto_in_d_ridx),
    .auto_in_d_widx(dmiXing_auto_in_d_widx),
    .auto_in_d_safe_ridx_valid(dmiXing_auto_in_d_safe_ridx_valid),
    .auto_in_d_safe_widx_valid(dmiXing_auto_in_d_safe_widx_valid),
    .auto_in_d_safe_source_reset_n(dmiXing_auto_in_d_safe_source_reset_n),
    .auto_in_d_safe_sink_reset_n(dmiXing_auto_in_d_safe_sink_reset_n),
    .auto_out_a_ready(dmiXing_auto_out_a_ready),
    .auto_out_a_valid(dmiXing_auto_out_a_valid),
    .auto_out_a_bits_opcode(dmiXing_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(dmiXing_auto_out_a_bits_param),
    .auto_out_a_bits_size(dmiXing_auto_out_a_bits_size),
    .auto_out_a_bits_source(dmiXing_auto_out_a_bits_source),
    .auto_out_a_bits_address(dmiXing_auto_out_a_bits_address),
    .auto_out_a_bits_mask(dmiXing_auto_out_a_bits_mask),
    .auto_out_a_bits_data(dmiXing_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(dmiXing_auto_out_a_bits_corrupt),
    .auto_out_d_ready(dmiXing_auto_out_d_ready),
    .auto_out_d_valid(dmiXing_auto_out_d_valid),
    .auto_out_d_bits_opcode(dmiXing_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(dmiXing_auto_out_d_bits_size),
    .auto_out_d_bits_source(dmiXing_auto_out_d_bits_source),
    .auto_out_d_bits_data(dmiXing_auto_out_d_bits_data)
  );
  AsyncResetSynchronizerShiftReg_w1_d3_i0 dmactiveSync ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190312.4]
    .clock(dmactiveSync_clock),
    .reset(dmactiveSync_reset),
    .io_d(dmactiveSync_io_d),
    .io_q(dmactiveSync_io_q)
  );
  AsyncQueueSink_2 AsyncQueueSink ( // @[AsyncQueue.scala 207:22:chipyard.TestHarness.RocketConfig.fir@190323.4]
    .clock(AsyncQueueSink_clock),
    .reset(AsyncQueueSink_reset),
    .io_deq_valid(AsyncQueueSink_io_deq_valid),
    .io_deq_bits_resumereq(AsyncQueueSink_io_deq_bits_resumereq),
    .io_deq_bits_hartsel(AsyncQueueSink_io_deq_bits_hartsel),
    .io_deq_bits_ackhavereset(AsyncQueueSink_io_deq_bits_ackhavereset),
    .io_deq_bits_hrmask_0(AsyncQueueSink_io_deq_bits_hrmask_0),
    .io_async_mem_0_resumereq(AsyncQueueSink_io_async_mem_0_resumereq),
    .io_async_mem_0_ackhavereset(AsyncQueueSink_io_async_mem_0_ackhavereset),
    .io_async_mem_0_hrmask_0(AsyncQueueSink_io_async_mem_0_hrmask_0),
    .io_async_ridx(AsyncQueueSink_io_async_ridx),
    .io_async_widx(AsyncQueueSink_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSink_io_async_safe_sink_reset_n)
  );
  assign auto_dmiXing_in_a_ridx = dmiXing_auto_in_a_ridx; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_a_safe_ridx_valid = dmiXing_auto_in_a_safe_ridx_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_a_safe_sink_reset_n = dmiXing_auto_in_a_safe_sink_reset_n; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_d_mem_0_opcode = dmiXing_auto_in_d_mem_0_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_d_mem_0_size = dmiXing_auto_in_d_mem_0_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_d_mem_0_source = dmiXing_auto_in_d_mem_0_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_d_mem_0_data = dmiXing_auto_in_d_mem_0_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_d_widx = dmiXing_auto_in_d_widx; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_d_safe_widx_valid = dmiXing_auto_in_d_safe_widx_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmiXing_in_d_safe_source_reset_n = dmiXing_auto_in_d_safe_source_reset_n; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign auto_dmInner_tl_in_a_ready = dmInner_auto_tl_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign auto_dmInner_tl_in_d_valid = dmInner_auto_tl_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign auto_dmInner_tl_in_d_bits_opcode = dmInner_auto_tl_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign auto_dmInner_tl_in_d_bits_size = dmInner_auto_tl_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign auto_dmInner_tl_in_d_bits_source = dmInner_auto_tl_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign auto_dmInner_tl_in_d_bits_data = dmInner_auto_tl_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign io_innerCtrl_ridx = AsyncQueueSink_io_async_ridx; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190331.4]
  assign io_innerCtrl_safe_ridx_valid = AsyncQueueSink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190329.4]
  assign io_innerCtrl_safe_sink_reset_n = AsyncQueueSink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190326.4]
  assign io_hgDebugInt_0 = dmInner_io_hgDebugInt_0; // @[Debug.scala 1731:21:chipyard.TestHarness.RocketConfig.fir@190337.4]
  assign dmInner_clock = io_debug_clock; // @[:chipyard.TestHarness.RocketConfig.fir@190298.4 Debug.scala 1724:28:chipyard.TestHarness.RocketConfig.fir@190318.4]
  assign dmInner_reset = io_debug_reset; // @[:chipyard.TestHarness.RocketConfig.fir@190299.4 Debug.scala 1725:28:chipyard.TestHarness.RocketConfig.fir@190319.4]
  assign dmInner_auto_tl_in_a_valid = auto_dmInner_tl_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_a_bits_opcode = auto_dmInner_tl_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_a_bits_param = auto_dmInner_tl_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_a_bits_size = auto_dmInner_tl_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_a_bits_source = auto_dmInner_tl_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_a_bits_address = auto_dmInner_tl_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_a_bits_mask = auto_dmInner_tl_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_a_bits_data = auto_dmInner_tl_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_a_bits_corrupt = auto_dmInner_tl_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_tl_in_d_ready = auto_dmInner_tl_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190307.4]
  assign dmInner_auto_dmi_in_a_valid = dmiXing_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_a_bits_opcode = dmiXing_auto_out_a_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_a_bits_param = dmiXing_auto_out_a_bits_param; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_a_bits_size = dmiXing_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_a_bits_source = dmiXing_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_a_bits_address = dmiXing_auto_out_a_bits_address; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_a_bits_mask = dmiXing_auto_out_a_bits_mask; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_a_bits_data = dmiXing_auto_out_a_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_a_bits_corrupt = dmiXing_auto_out_a_bits_corrupt; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_auto_dmi_in_d_ready = dmiXing_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmInner_io_dmactive = dmactiveSync_io_q; // @[Debug.scala 1728:34:chipyard.TestHarness.RocketConfig.fir@190322.4]
  assign dmInner_io_innerCtrl_valid = AsyncQueueSink_io_deq_valid; // @[Debug.scala 1729:35:chipyard.TestHarness.RocketConfig.fir@190334.4]
  assign dmInner_io_innerCtrl_bits_resumereq = AsyncQueueSink_io_deq_bits_resumereq; // @[Debug.scala 1729:35:chipyard.TestHarness.RocketConfig.fir@190333.4]
  assign dmInner_io_innerCtrl_bits_hartsel = AsyncQueueSink_io_deq_bits_hartsel; // @[Debug.scala 1729:35:chipyard.TestHarness.RocketConfig.fir@190333.4]
  assign dmInner_io_innerCtrl_bits_ackhavereset = AsyncQueueSink_io_deq_bits_ackhavereset; // @[Debug.scala 1729:35:chipyard.TestHarness.RocketConfig.fir@190333.4]
  assign dmInner_io_innerCtrl_bits_hrmask_0 = AsyncQueueSink_io_deq_bits_hrmask_0; // @[Debug.scala 1729:35:chipyard.TestHarness.RocketConfig.fir@190333.4]
  assign dmInner_io_hartIsInReset_0 = io_hartIsInReset_0; // @[Debug.scala 1733:39:chipyard.TestHarness.RocketConfig.fir@190338.4]
  assign dmiXing_clock = io_debug_clock; // @[:chipyard.TestHarness.RocketConfig.fir@190304.4]
  assign dmiXing_reset = io_debug_reset; // @[:chipyard.TestHarness.RocketConfig.fir@190305.4]
  assign dmiXing_auto_in_a_mem_0_opcode = auto_dmiXing_in_a_mem_0_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_a_mem_0_address = auto_dmiXing_in_a_mem_0_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_a_mem_0_mask = auto_dmiXing_in_a_mem_0_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_a_mem_0_data = auto_dmiXing_in_a_mem_0_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_a_widx = auto_dmiXing_in_a_widx; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_a_safe_widx_valid = auto_dmiXing_in_a_safe_widx_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_a_safe_source_reset_n = auto_dmiXing_in_a_safe_source_reset_n; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_d_ridx = auto_dmiXing_in_d_ridx; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_d_safe_ridx_valid = auto_dmiXing_in_d_safe_ridx_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_in_d_safe_sink_reset_n = auto_dmiXing_in_d_safe_sink_reset_n; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@190309.4]
  assign dmiXing_auto_out_a_ready = dmInner_auto_dmi_in_a_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmiXing_auto_out_d_valid = dmInner_auto_dmi_in_d_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmiXing_auto_out_d_bits_opcode = dmInner_auto_dmi_in_d_bits_opcode; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmiXing_auto_out_d_bits_size = dmInner_auto_dmi_in_d_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmiXing_auto_out_d_bits_source = dmInner_auto_dmi_in_d_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmiXing_auto_out_d_bits_data = dmInner_auto_dmi_in_d_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@190306.4]
  assign dmactiveSync_clock = io_debug_clock; // @[:chipyard.TestHarness.RocketConfig.fir@190313.4]
  assign dmactiveSync_reset = io_debug_reset; // @[:chipyard.TestHarness.RocketConfig.fir@190314.4]
  assign dmactiveSync_io_d = io_dmactive; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@190315.4]
  assign AsyncQueueSink_clock = io_debug_clock; // @[:chipyard.TestHarness.RocketConfig.fir@190324.4]
  assign AsyncQueueSink_reset = io_debug_reset; // @[:chipyard.TestHarness.RocketConfig.fir@190325.4]
  assign AsyncQueueSink_io_async_mem_0_resumereq = io_innerCtrl_mem_0_resumereq; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190332.4]
  assign AsyncQueueSink_io_async_mem_0_ackhavereset = io_innerCtrl_mem_0_ackhavereset; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190332.4]
  assign AsyncQueueSink_io_async_mem_0_hrmask_0 = io_innerCtrl_mem_0_hrmask_0; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190332.4]
  assign AsyncQueueSink_io_async_widx = io_innerCtrl_widx; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190330.4]
  assign AsyncQueueSink_io_async_safe_widx_valid = io_innerCtrl_safe_widx_valid; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190328.4]
  assign AsyncQueueSink_io_async_safe_source_reset_n = io_innerCtrl_safe_source_reset_n; // @[AsyncQueue.scala 208:19:chipyard.TestHarness.RocketConfig.fir@190327.4]
endmodule
