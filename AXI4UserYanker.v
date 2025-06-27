module AXI4UserYanker( // @[:chipyard.TestHarness.RocketConfig.fir@75413.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@75414.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@75415.4]
  output        auto_in_aw_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_in_aw_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [31:0] auto_in_aw_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_in_aw_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_aw_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [2:0]  auto_in_aw_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_aw_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_aw_bits_echo_tl_state_size, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_aw_bits_echo_tl_state_source, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_in_w_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_in_w_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [63:0] auto_in_w_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_in_w_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_in_b_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [1:0]  auto_in_b_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_in_b_bits_echo_tl_state_size, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_in_b_bits_echo_tl_state_source, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_in_ar_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_in_ar_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [31:0] auto_in_ar_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_in_ar_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_ar_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [2:0]  auto_in_ar_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_ar_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_ar_bits_echo_tl_state_size, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_in_ar_bits_echo_tl_state_source, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_in_r_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_in_r_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_in_r_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [63:0] auto_in_r_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [1:0]  auto_in_r_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_in_r_bits_echo_tl_state_size, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_in_r_bits_echo_tl_state_source, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_in_r_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_out_aw_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_out_aw_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_out_aw_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [31:0] auto_out_aw_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [7:0]  auto_out_aw_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [2:0]  auto_out_aw_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_out_aw_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_out_aw_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [2:0]  auto_out_aw_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_out_aw_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_out_w_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_out_w_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [63:0] auto_out_w_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [7:0]  auto_out_w_bits_strb, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_out_w_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_out_b_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_out_ar_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_out_ar_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_out_ar_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [31:0] auto_out_ar_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [7:0]  auto_out_ar_bits_len, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [2:0]  auto_out_ar_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_out_ar_bits_lock, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_out_ar_bits_cache, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [2:0]  auto_out_ar_bits_prot, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output [3:0]  auto_out_ar_bits_qos, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  output        auto_out_r_ready, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_out_r_valid, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [3:0]  auto_out_r_bits_id, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [63:0] auto_out_r_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
  input         auto_out_r_bits_last // @[:chipyard.TestHarness.RocketConfig.fir@75416.4]
);
  wire  QueueCompatibility_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire  QueueCompatibility_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire  QueueCompatibility_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire  QueueCompatibility_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire [3:0] QueueCompatibility_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire [3:0] QueueCompatibility_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire  QueueCompatibility_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire  QueueCompatibility_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire [3:0] QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire [3:0] QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
  wire  QueueCompatibility_1_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire  QueueCompatibility_1_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire  QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire  QueueCompatibility_1_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire [3:0] QueueCompatibility_1_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire [3:0] QueueCompatibility_1_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire  QueueCompatibility_1_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire  QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire [3:0] QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire [3:0] QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
  wire  QueueCompatibility_2_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire  QueueCompatibility_2_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire  QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire  QueueCompatibility_2_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire [3:0] QueueCompatibility_2_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire [3:0] QueueCompatibility_2_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire  QueueCompatibility_2_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire  QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire [3:0] QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire [3:0] QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
  wire  QueueCompatibility_3_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire  QueueCompatibility_3_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire  QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire  QueueCompatibility_3_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire [3:0] QueueCompatibility_3_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire [3:0] QueueCompatibility_3_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire  QueueCompatibility_3_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire  QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire [3:0] QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire [3:0] QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
  wire  QueueCompatibility_4_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire  QueueCompatibility_4_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire  QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire  QueueCompatibility_4_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire [3:0] QueueCompatibility_4_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire [3:0] QueueCompatibility_4_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire  QueueCompatibility_4_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire  QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire [3:0] QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire [3:0] QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
  wire  QueueCompatibility_5_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire  QueueCompatibility_5_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire  QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire  QueueCompatibility_5_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire [3:0] QueueCompatibility_5_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire [3:0] QueueCompatibility_5_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire  QueueCompatibility_5_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire  QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire [3:0] QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire [3:0] QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
  wire  QueueCompatibility_6_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire  QueueCompatibility_6_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire  QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire  QueueCompatibility_6_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire [3:0] QueueCompatibility_6_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire [3:0] QueueCompatibility_6_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire  QueueCompatibility_6_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire  QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire [3:0] QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire [3:0] QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
  wire  QueueCompatibility_7_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire  QueueCompatibility_7_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire  QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire  QueueCompatibility_7_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire [3:0] QueueCompatibility_7_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire [3:0] QueueCompatibility_7_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire  QueueCompatibility_7_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire  QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire [3:0] QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire [3:0] QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
  wire  QueueCompatibility_8_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire  QueueCompatibility_8_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire  QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire  QueueCompatibility_8_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire [3:0] QueueCompatibility_8_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire [3:0] QueueCompatibility_8_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire  QueueCompatibility_8_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire  QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire [3:0] QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire [3:0] QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
  wire  QueueCompatibility_9_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire  QueueCompatibility_9_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire  QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire  QueueCompatibility_9_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire [3:0] QueueCompatibility_9_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire [3:0] QueueCompatibility_9_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire  QueueCompatibility_9_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire  QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire [3:0] QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire [3:0] QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
  wire  QueueCompatibility_10_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire  QueueCompatibility_10_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire  QueueCompatibility_10_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire  QueueCompatibility_10_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire [3:0] QueueCompatibility_10_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire [3:0] QueueCompatibility_10_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire  QueueCompatibility_10_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire  QueueCompatibility_10_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire [3:0] QueueCompatibility_10_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire [3:0] QueueCompatibility_10_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
  wire  QueueCompatibility_11_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire  QueueCompatibility_11_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire  QueueCompatibility_11_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire  QueueCompatibility_11_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire [3:0] QueueCompatibility_11_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire [3:0] QueueCompatibility_11_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire  QueueCompatibility_11_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire  QueueCompatibility_11_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire [3:0] QueueCompatibility_11_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire [3:0] QueueCompatibility_11_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
  wire  QueueCompatibility_12_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire  QueueCompatibility_12_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire  QueueCompatibility_12_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire  QueueCompatibility_12_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire [3:0] QueueCompatibility_12_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire [3:0] QueueCompatibility_12_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire  QueueCompatibility_12_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire  QueueCompatibility_12_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire [3:0] QueueCompatibility_12_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire [3:0] QueueCompatibility_12_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
  wire  QueueCompatibility_13_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire  QueueCompatibility_13_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire  QueueCompatibility_13_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire  QueueCompatibility_13_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire [3:0] QueueCompatibility_13_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire [3:0] QueueCompatibility_13_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire  QueueCompatibility_13_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire  QueueCompatibility_13_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire [3:0] QueueCompatibility_13_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire [3:0] QueueCompatibility_13_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
  wire  QueueCompatibility_14_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire  QueueCompatibility_14_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire  QueueCompatibility_14_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire  QueueCompatibility_14_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire [3:0] QueueCompatibility_14_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire [3:0] QueueCompatibility_14_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire  QueueCompatibility_14_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire  QueueCompatibility_14_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire [3:0] QueueCompatibility_14_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire [3:0] QueueCompatibility_14_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
  wire  QueueCompatibility_15_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire  QueueCompatibility_15_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire  QueueCompatibility_15_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire  QueueCompatibility_15_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire [3:0] QueueCompatibility_15_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire [3:0] QueueCompatibility_15_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire  QueueCompatibility_15_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire  QueueCompatibility_15_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire [3:0] QueueCompatibility_15_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire [3:0] QueueCompatibility_15_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
  wire  QueueCompatibility_16_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire  QueueCompatibility_16_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire  QueueCompatibility_16_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire  QueueCompatibility_16_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire [3:0] QueueCompatibility_16_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire [3:0] QueueCompatibility_16_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire  QueueCompatibility_16_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire  QueueCompatibility_16_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire [3:0] QueueCompatibility_16_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire [3:0] QueueCompatibility_16_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
  wire  QueueCompatibility_17_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire  QueueCompatibility_17_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire  QueueCompatibility_17_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire  QueueCompatibility_17_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire [3:0] QueueCompatibility_17_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire [3:0] QueueCompatibility_17_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire  QueueCompatibility_17_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire  QueueCompatibility_17_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire [3:0] QueueCompatibility_17_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire [3:0] QueueCompatibility_17_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
  wire  QueueCompatibility_18_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire  QueueCompatibility_18_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire  QueueCompatibility_18_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire  QueueCompatibility_18_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire [3:0] QueueCompatibility_18_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire [3:0] QueueCompatibility_18_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire  QueueCompatibility_18_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire  QueueCompatibility_18_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire [3:0] QueueCompatibility_18_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire [3:0] QueueCompatibility_18_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
  wire  QueueCompatibility_19_clock; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire  QueueCompatibility_19_reset; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire  QueueCompatibility_19_io_enq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire  QueueCompatibility_19_io_enq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire [3:0] QueueCompatibility_19_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire [3:0] QueueCompatibility_19_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire  QueueCompatibility_19_io_deq_ready; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire  QueueCompatibility_19_io_deq_valid; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire [3:0] QueueCompatibility_19_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire [3:0] QueueCompatibility_19_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
  wire  _T_14_0; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75533.4]
  wire  _T_14_1; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75534.4]
  wire  _GEN_1; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_14_2; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75535.4]
  wire  _GEN_2; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_14_3; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75536.4]
  wire  _GEN_3; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_14_4; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75537.4]
  wire  _GEN_4; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_14_5; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75538.4]
  wire  _GEN_5; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_14_6; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75539.4]
  wire  _GEN_6; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_14_7; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75540.4]
  wire  _GEN_7; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_14_8; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75541.4]
  wire  _GEN_8; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_14_9; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75542.4]
  wire  _GEN_9; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _GEN_10; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _GEN_11; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _GEN_12; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _GEN_13; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _GEN_14; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _GEN_15; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  wire  _T_19; // @[UserYanker.scala 55:15:chipyard.TestHarness.RocketConfig.fir@75598.4]
  wire  _T_17_0; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75564.4]
  wire  _T_17_1; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75565.4]
  wire  _GEN_17; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_17_2; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75566.4]
  wire  _GEN_18; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_17_3; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75567.4]
  wire  _GEN_19; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_17_4; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75568.4]
  wire  _GEN_20; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_17_5; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75569.4]
  wire  _GEN_21; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_17_6; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75570.4]
  wire  _GEN_22; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_17_7; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75571.4]
  wire  _GEN_23; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_17_8; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75572.4]
  wire  _GEN_24; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_17_9; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75573.4]
  wire  _GEN_25; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _GEN_26; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _GEN_27; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _GEN_28; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _GEN_29; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _GEN_30; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _GEN_31; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_20; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  wire  _T_22; // @[UserYanker.scala 55:14:chipyard.TestHarness.RocketConfig.fir@75601.4]
  wire  _T_23; // @[UserYanker.scala 55:14:chipyard.TestHarness.RocketConfig.fir@75602.4]
  wire [3:0] _T_18_0_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75582.4]
  wire [3:0] _T_18_0_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75582.4]
  wire [3:0] _T_18_1_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75583.4]
  wire [3:0] _GEN_34; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_1_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75583.4]
  wire [3:0] _GEN_35; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_2_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75584.4]
  wire [3:0] _GEN_36; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_2_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75584.4]
  wire [3:0] _GEN_37; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_3_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75585.4]
  wire [3:0] _GEN_38; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_3_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75585.4]
  wire [3:0] _GEN_39; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_4_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75586.4]
  wire [3:0] _GEN_40; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_4_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75586.4]
  wire [3:0] _GEN_41; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_5_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75587.4]
  wire [3:0] _GEN_42; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_5_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75587.4]
  wire [3:0] _GEN_43; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_6_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75588.4]
  wire [3:0] _GEN_44; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_6_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75588.4]
  wire [3:0] _GEN_45; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_7_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75589.4]
  wire [3:0] _GEN_46; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_7_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75589.4]
  wire [3:0] _GEN_47; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_8_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75590.4]
  wire [3:0] _GEN_48; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_8_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75590.4]
  wire [3:0] _GEN_49; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_9_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75591.4]
  wire [3:0] _GEN_50; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _T_18_9_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75591.4]
  wire [3:0] _GEN_51; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_52; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_53; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_54; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_55; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_56; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_57; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_58; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_59; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_60; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [3:0] _GEN_61; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  wire [15:0] _T_25; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@75618.4]
  wire [15:0] _T_44; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@75637.4]
  wire  _T_62; // @[UserYanker.scala 62:37:chipyard.TestHarness.RocketConfig.fir@75655.4]
  wire  _T_63; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75656.4]
  wire  _T_65; // @[UserYanker.scala 63:37:chipyard.TestHarness.RocketConfig.fir@75659.4]
  wire  _T_68; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75665.4]
  wire  _T_73; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75674.4]
  wire  _T_78; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75683.4]
  wire  _T_83; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75692.4]
  wire  _T_88; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75701.4]
  wire  _T_93; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75710.4]
  wire  _T_98; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75719.4]
  wire  _T_103; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75728.4]
  wire  _T_108; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75737.4]
  wire  _T_142_0; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75801.4]
  wire  _T_142_1; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75802.4]
  wire  _GEN_65; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_142_2; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75803.4]
  wire  _GEN_66; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_142_3; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75804.4]
  wire  _GEN_67; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_142_4; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75805.4]
  wire  _GEN_68; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_142_5; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75806.4]
  wire  _GEN_69; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_142_6; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75807.4]
  wire  _GEN_70; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_142_7; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75808.4]
  wire  _GEN_71; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_142_8; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75809.4]
  wire  _GEN_72; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_142_9; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75810.4]
  wire  _GEN_73; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _GEN_74; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _GEN_75; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _GEN_76; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _GEN_77; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _GEN_78; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _GEN_79; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  wire  _T_147; // @[UserYanker.scala 76:15:chipyard.TestHarness.RocketConfig.fir@75866.4]
  wire  _T_145_0; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75832.4]
  wire  _T_145_1; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75833.4]
  wire  _GEN_81; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_145_2; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75834.4]
  wire  _GEN_82; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_145_3; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75835.4]
  wire  _GEN_83; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_145_4; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75836.4]
  wire  _GEN_84; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_145_5; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75837.4]
  wire  _GEN_85; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_145_6; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75838.4]
  wire  _GEN_86; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_145_7; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75839.4]
  wire  _GEN_87; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_145_8; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75840.4]
  wire  _GEN_88; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_145_9; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75841.4]
  wire  _GEN_89; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _GEN_90; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _GEN_91; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _GEN_92; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _GEN_93; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _GEN_94; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _GEN_95; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_148; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  wire  _T_150; // @[UserYanker.scala 76:14:chipyard.TestHarness.RocketConfig.fir@75869.4]
  wire  _T_151; // @[UserYanker.scala 76:14:chipyard.TestHarness.RocketConfig.fir@75870.4]
  wire [3:0] _T_146_0_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75850.4]
  wire [3:0] _T_146_0_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75850.4]
  wire [3:0] _T_146_1_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75851.4]
  wire [3:0] _GEN_98; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_1_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75851.4]
  wire [3:0] _GEN_99; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_2_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75852.4]
  wire [3:0] _GEN_100; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_2_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75852.4]
  wire [3:0] _GEN_101; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_3_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75853.4]
  wire [3:0] _GEN_102; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_3_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75853.4]
  wire [3:0] _GEN_103; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_4_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75854.4]
  wire [3:0] _GEN_104; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_4_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75854.4]
  wire [3:0] _GEN_105; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_5_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75855.4]
  wire [3:0] _GEN_106; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_5_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75855.4]
  wire [3:0] _GEN_107; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_6_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75856.4]
  wire [3:0] _GEN_108; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_6_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75856.4]
  wire [3:0] _GEN_109; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_7_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75857.4]
  wire [3:0] _GEN_110; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_7_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75857.4]
  wire [3:0] _GEN_111; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_8_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75858.4]
  wire [3:0] _GEN_112; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_8_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75858.4]
  wire [3:0] _GEN_113; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_9_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75859.4]
  wire [3:0] _GEN_114; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _T_146_9_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75859.4]
  wire [3:0] _GEN_115; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_116; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_117; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_118; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_119; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_120; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_121; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_122; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_123; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_124; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [3:0] _GEN_125; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  wire [15:0] _T_153; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@75884.4]
  wire [15:0] _T_172; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@75903.4]
  wire  _T_190; // @[UserYanker.scala 83:37:chipyard.TestHarness.RocketConfig.fir@75921.4]
  wire  _T_192; // @[UserYanker.scala 84:37:chipyard.TestHarness.RocketConfig.fir@75924.4]
  QueueCompatibility QueueCompatibility ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75427.4]
    .clock(QueueCompatibility_clock),
    .reset(QueueCompatibility_reset),
    .io_enq_ready(QueueCompatibility_io_enq_ready),
    .io_enq_valid(QueueCompatibility_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_io_deq_ready),
    .io_deq_valid(QueueCompatibility_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_1 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75431.4]
    .clock(QueueCompatibility_1_clock),
    .reset(QueueCompatibility_1_reset),
    .io_enq_ready(QueueCompatibility_1_io_enq_ready),
    .io_enq_valid(QueueCompatibility_1_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_1_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_1_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_1_io_deq_ready),
    .io_deq_valid(QueueCompatibility_1_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_1_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_1_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_2 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75435.4]
    .clock(QueueCompatibility_2_clock),
    .reset(QueueCompatibility_2_reset),
    .io_enq_ready(QueueCompatibility_2_io_enq_ready),
    .io_enq_valid(QueueCompatibility_2_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_2_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_2_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_2_io_deq_ready),
    .io_deq_valid(QueueCompatibility_2_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_2_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_2_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_3 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75439.4]
    .clock(QueueCompatibility_3_clock),
    .reset(QueueCompatibility_3_reset),
    .io_enq_ready(QueueCompatibility_3_io_enq_ready),
    .io_enq_valid(QueueCompatibility_3_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_3_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_3_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_3_io_deq_ready),
    .io_deq_valid(QueueCompatibility_3_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_3_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_3_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_4 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75443.4]
    .clock(QueueCompatibility_4_clock),
    .reset(QueueCompatibility_4_reset),
    .io_enq_ready(QueueCompatibility_4_io_enq_ready),
    .io_enq_valid(QueueCompatibility_4_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_4_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_4_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_4_io_deq_ready),
    .io_deq_valid(QueueCompatibility_4_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_4_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_4_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_5 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75447.4]
    .clock(QueueCompatibility_5_clock),
    .reset(QueueCompatibility_5_reset),
    .io_enq_ready(QueueCompatibility_5_io_enq_ready),
    .io_enq_valid(QueueCompatibility_5_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_5_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_5_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_5_io_deq_ready),
    .io_deq_valid(QueueCompatibility_5_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_5_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_5_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_6 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75451.4]
    .clock(QueueCompatibility_6_clock),
    .reset(QueueCompatibility_6_reset),
    .io_enq_ready(QueueCompatibility_6_io_enq_ready),
    .io_enq_valid(QueueCompatibility_6_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_6_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_6_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_6_io_deq_ready),
    .io_deq_valid(QueueCompatibility_6_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_6_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_6_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_7 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75455.4]
    .clock(QueueCompatibility_7_clock),
    .reset(QueueCompatibility_7_reset),
    .io_enq_ready(QueueCompatibility_7_io_enq_ready),
    .io_enq_valid(QueueCompatibility_7_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_7_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_7_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_7_io_deq_ready),
    .io_deq_valid(QueueCompatibility_7_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_7_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_7_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_8 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75459.4]
    .clock(QueueCompatibility_8_clock),
    .reset(QueueCompatibility_8_reset),
    .io_enq_ready(QueueCompatibility_8_io_enq_ready),
    .io_enq_valid(QueueCompatibility_8_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_8_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_8_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_8_io_deq_ready),
    .io_deq_valid(QueueCompatibility_8_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_8_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_8_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_9 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75463.4]
    .clock(QueueCompatibility_9_clock),
    .reset(QueueCompatibility_9_reset),
    .io_enq_ready(QueueCompatibility_9_io_enq_ready),
    .io_enq_valid(QueueCompatibility_9_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_9_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_9_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_9_io_deq_ready),
    .io_deq_valid(QueueCompatibility_9_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_9_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_9_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_10 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75479.4]
    .clock(QueueCompatibility_10_clock),
    .reset(QueueCompatibility_10_reset),
    .io_enq_ready(QueueCompatibility_10_io_enq_ready),
    .io_enq_valid(QueueCompatibility_10_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_10_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_10_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_10_io_deq_ready),
    .io_deq_valid(QueueCompatibility_10_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_10_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_10_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_11 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75483.4]
    .clock(QueueCompatibility_11_clock),
    .reset(QueueCompatibility_11_reset),
    .io_enq_ready(QueueCompatibility_11_io_enq_ready),
    .io_enq_valid(QueueCompatibility_11_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_11_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_11_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_11_io_deq_ready),
    .io_deq_valid(QueueCompatibility_11_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_11_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_11_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_12 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75487.4]
    .clock(QueueCompatibility_12_clock),
    .reset(QueueCompatibility_12_reset),
    .io_enq_ready(QueueCompatibility_12_io_enq_ready),
    .io_enq_valid(QueueCompatibility_12_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_12_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_12_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_12_io_deq_ready),
    .io_deq_valid(QueueCompatibility_12_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_12_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_12_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_13 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75491.4]
    .clock(QueueCompatibility_13_clock),
    .reset(QueueCompatibility_13_reset),
    .io_enq_ready(QueueCompatibility_13_io_enq_ready),
    .io_enq_valid(QueueCompatibility_13_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_13_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_13_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_13_io_deq_ready),
    .io_deq_valid(QueueCompatibility_13_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_13_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_13_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_14 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75495.4]
    .clock(QueueCompatibility_14_clock),
    .reset(QueueCompatibility_14_reset),
    .io_enq_ready(QueueCompatibility_14_io_enq_ready),
    .io_enq_valid(QueueCompatibility_14_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_14_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_14_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_14_io_deq_ready),
    .io_deq_valid(QueueCompatibility_14_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_14_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_14_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_15 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75499.4]
    .clock(QueueCompatibility_15_clock),
    .reset(QueueCompatibility_15_reset),
    .io_enq_ready(QueueCompatibility_15_io_enq_ready),
    .io_enq_valid(QueueCompatibility_15_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_15_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_15_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_15_io_deq_ready),
    .io_deq_valid(QueueCompatibility_15_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_15_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_15_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_16 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75503.4]
    .clock(QueueCompatibility_16_clock),
    .reset(QueueCompatibility_16_reset),
    .io_enq_ready(QueueCompatibility_16_io_enq_ready),
    .io_enq_valid(QueueCompatibility_16_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_16_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_16_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_16_io_deq_ready),
    .io_deq_valid(QueueCompatibility_16_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_16_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_16_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_17 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75507.4]
    .clock(QueueCompatibility_17_clock),
    .reset(QueueCompatibility_17_reset),
    .io_enq_ready(QueueCompatibility_17_io_enq_ready),
    .io_enq_valid(QueueCompatibility_17_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_17_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_17_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_17_io_deq_ready),
    .io_deq_valid(QueueCompatibility_17_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_17_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_17_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_18 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75511.4]
    .clock(QueueCompatibility_18_clock),
    .reset(QueueCompatibility_18_reset),
    .io_enq_ready(QueueCompatibility_18_io_enq_ready),
    .io_enq_valid(QueueCompatibility_18_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_18_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_18_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_18_io_deq_ready),
    .io_deq_valid(QueueCompatibility_18_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_18_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_18_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_19 ( // @[UserYanker.scala 39:17:chipyard.TestHarness.RocketConfig.fir@75515.4]
    .clock(QueueCompatibility_19_clock),
    .reset(QueueCompatibility_19_reset),
    .io_enq_ready(QueueCompatibility_19_io_enq_ready),
    .io_enq_valid(QueueCompatibility_19_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_19_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_19_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_19_io_deq_ready),
    .io_deq_valid(QueueCompatibility_19_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_19_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_19_io_deq_bits_tl_state_source)
  );
  assign _T_14_0 = QueueCompatibility_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75533.4]
  assign _T_14_1 = QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75534.4]
  assign _GEN_1 = 4'h1 == auto_in_ar_bits_id ? _T_14_1 : _T_14_0; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_14_2 = QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75535.4]
  assign _GEN_2 = 4'h2 == auto_in_ar_bits_id ? _T_14_2 : _GEN_1; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_14_3 = QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75536.4]
  assign _GEN_3 = 4'h3 == auto_in_ar_bits_id ? _T_14_3 : _GEN_2; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_14_4 = QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75537.4]
  assign _GEN_4 = 4'h4 == auto_in_ar_bits_id ? _T_14_4 : _GEN_3; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_14_5 = QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75538.4]
  assign _GEN_5 = 4'h5 == auto_in_ar_bits_id ? _T_14_5 : _GEN_4; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_14_6 = QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75539.4]
  assign _GEN_6 = 4'h6 == auto_in_ar_bits_id ? _T_14_6 : _GEN_5; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_14_7 = QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75540.4]
  assign _GEN_7 = 4'h7 == auto_in_ar_bits_id ? _T_14_7 : _GEN_6; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_14_8 = QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75541.4]
  assign _GEN_8 = 4'h8 == auto_in_ar_bits_id ? _T_14_8 : _GEN_7; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_14_9 = QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75531.4 UserYanker.scala 47:25:chipyard.TestHarness.RocketConfig.fir@75542.4]
  assign _GEN_9 = 4'h9 == auto_in_ar_bits_id ? _T_14_9 : _GEN_8; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _GEN_10 = 4'ha == auto_in_ar_bits_id ? 1'h0 : _GEN_9; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _GEN_11 = 4'hb == auto_in_ar_bits_id ? 1'h0 : _GEN_10; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _GEN_12 = 4'hc == auto_in_ar_bits_id ? 1'h0 : _GEN_11; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _GEN_13 = 4'hd == auto_in_ar_bits_id ? 1'h0 : _GEN_12; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _GEN_14 = 4'he == auto_in_ar_bits_id ? 1'h0 : _GEN_13; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _GEN_15 = 4'hf == auto_in_ar_bits_id ? 1'h0 : _GEN_14; // @[UserYanker.scala 48:36:chipyard.TestHarness.RocketConfig.fir@75549.4]
  assign _T_19 = ~auto_out_r_valid; // @[UserYanker.scala 55:15:chipyard.TestHarness.RocketConfig.fir@75598.4]
  assign _T_17_0 = QueueCompatibility_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75564.4]
  assign _T_17_1 = QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75565.4]
  assign _GEN_17 = 4'h1 == auto_out_r_bits_id ? _T_17_1 : _T_17_0; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_17_2 = QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75566.4]
  assign _GEN_18 = 4'h2 == auto_out_r_bits_id ? _T_17_2 : _GEN_17; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_17_3 = QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75567.4]
  assign _GEN_19 = 4'h3 == auto_out_r_bits_id ? _T_17_3 : _GEN_18; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_17_4 = QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75568.4]
  assign _GEN_20 = 4'h4 == auto_out_r_bits_id ? _T_17_4 : _GEN_19; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_17_5 = QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75569.4]
  assign _GEN_21 = 4'h5 == auto_out_r_bits_id ? _T_17_5 : _GEN_20; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_17_6 = QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75570.4]
  assign _GEN_22 = 4'h6 == auto_out_r_bits_id ? _T_17_6 : _GEN_21; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_17_7 = QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75571.4]
  assign _GEN_23 = 4'h7 == auto_out_r_bits_id ? _T_17_7 : _GEN_22; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_17_8 = QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75572.4]
  assign _GEN_24 = 4'h8 == auto_out_r_bits_id ? _T_17_8 : _GEN_23; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_17_9 = QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75562.4 UserYanker.scala 53:24:chipyard.TestHarness.RocketConfig.fir@75573.4]
  assign _GEN_25 = 4'h9 == auto_out_r_bits_id ? _T_17_9 : _GEN_24; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _GEN_26 = 4'ha == auto_out_r_bits_id ? 1'h0 : _GEN_25; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _GEN_27 = 4'hb == auto_out_r_bits_id ? 1'h0 : _GEN_26; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _GEN_28 = 4'hc == auto_out_r_bits_id ? 1'h0 : _GEN_27; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _GEN_29 = 4'hd == auto_out_r_bits_id ? 1'h0 : _GEN_28; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _GEN_30 = 4'he == auto_out_r_bits_id ? 1'h0 : _GEN_29; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _GEN_31 = 4'hf == auto_out_r_bits_id ? 1'h0 : _GEN_30; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_20 = _T_19 | _GEN_31; // @[UserYanker.scala 55:28:chipyard.TestHarness.RocketConfig.fir@75599.4]
  assign _T_22 = _T_20 | reset; // @[UserYanker.scala 55:14:chipyard.TestHarness.RocketConfig.fir@75601.4]
  assign _T_23 = ~_T_22; // @[UserYanker.scala 55:14:chipyard.TestHarness.RocketConfig.fir@75602.4]
  assign _T_18_0_tl_state_size = QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75582.4]
  assign _T_18_0_tl_state_source = QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75582.4]
  assign _T_18_1_tl_state_size = QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75583.4]
  assign _GEN_34 = 4'h1 == auto_out_r_bits_id ? _T_18_1_tl_state_size : _T_18_0_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_1_tl_state_source = QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75583.4]
  assign _GEN_35 = 4'h1 == auto_out_r_bits_id ? _T_18_1_tl_state_source : _T_18_0_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_2_tl_state_size = QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75584.4]
  assign _GEN_36 = 4'h2 == auto_out_r_bits_id ? _T_18_2_tl_state_size : _GEN_34; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_2_tl_state_source = QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75584.4]
  assign _GEN_37 = 4'h2 == auto_out_r_bits_id ? _T_18_2_tl_state_source : _GEN_35; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_3_tl_state_size = QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75585.4]
  assign _GEN_38 = 4'h3 == auto_out_r_bits_id ? _T_18_3_tl_state_size : _GEN_36; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_3_tl_state_source = QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75585.4]
  assign _GEN_39 = 4'h3 == auto_out_r_bits_id ? _T_18_3_tl_state_source : _GEN_37; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_4_tl_state_size = QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75586.4]
  assign _GEN_40 = 4'h4 == auto_out_r_bits_id ? _T_18_4_tl_state_size : _GEN_38; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_4_tl_state_source = QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75586.4]
  assign _GEN_41 = 4'h4 == auto_out_r_bits_id ? _T_18_4_tl_state_source : _GEN_39; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_5_tl_state_size = QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75587.4]
  assign _GEN_42 = 4'h5 == auto_out_r_bits_id ? _T_18_5_tl_state_size : _GEN_40; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_5_tl_state_source = QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75587.4]
  assign _GEN_43 = 4'h5 == auto_out_r_bits_id ? _T_18_5_tl_state_source : _GEN_41; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_6_tl_state_size = QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75588.4]
  assign _GEN_44 = 4'h6 == auto_out_r_bits_id ? _T_18_6_tl_state_size : _GEN_42; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_6_tl_state_source = QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75588.4]
  assign _GEN_45 = 4'h6 == auto_out_r_bits_id ? _T_18_6_tl_state_source : _GEN_43; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_7_tl_state_size = QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75589.4]
  assign _GEN_46 = 4'h7 == auto_out_r_bits_id ? _T_18_7_tl_state_size : _GEN_44; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_7_tl_state_source = QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75589.4]
  assign _GEN_47 = 4'h7 == auto_out_r_bits_id ? _T_18_7_tl_state_source : _GEN_45; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_8_tl_state_size = QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75590.4]
  assign _GEN_48 = 4'h8 == auto_out_r_bits_id ? _T_18_8_tl_state_size : _GEN_46; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_8_tl_state_source = QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75590.4]
  assign _GEN_49 = 4'h8 == auto_out_r_bits_id ? _T_18_8_tl_state_source : _GEN_47; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_9_tl_state_size = QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75591.4]
  assign _GEN_50 = 4'h9 == auto_out_r_bits_id ? _T_18_9_tl_state_size : _GEN_48; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_18_9_tl_state_source = QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75580.4 UserYanker.scala 54:23:chipyard.TestHarness.RocketConfig.fir@75591.4]
  assign _GEN_51 = 4'h9 == auto_out_r_bits_id ? _T_18_9_tl_state_source : _GEN_49; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_52 = 4'ha == auto_out_r_bits_id ? 4'h0 : _GEN_50; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_53 = 4'ha == auto_out_r_bits_id ? 4'h0 : _GEN_51; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_54 = 4'hb == auto_out_r_bits_id ? 4'h0 : _GEN_52; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_55 = 4'hb == auto_out_r_bits_id ? 4'h0 : _GEN_53; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_56 = 4'hc == auto_out_r_bits_id ? 4'h0 : _GEN_54; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_57 = 4'hc == auto_out_r_bits_id ? 4'h0 : _GEN_55; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_58 = 4'hd == auto_out_r_bits_id ? 4'h0 : _GEN_56; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_59 = 4'hd == auto_out_r_bits_id ? 4'h0 : _GEN_57; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_60 = 4'he == auto_out_r_bits_id ? 4'h0 : _GEN_58; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _GEN_61 = 4'he == auto_out_r_bits_id ? 4'h0 : _GEN_59; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75615.4]
  assign _T_25 = 16'h1 << auto_in_ar_bits_id; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@75618.4]
  assign _T_44 = 16'h1 << auto_out_r_bits_id; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@75637.4]
  assign _T_62 = auto_out_r_valid & auto_in_r_ready; // @[UserYanker.scala 62:37:chipyard.TestHarness.RocketConfig.fir@75655.4]
  assign _T_63 = _T_62 & _T_44[0]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75656.4]
  assign _T_65 = auto_in_ar_valid & auto_out_ar_ready; // @[UserYanker.scala 63:37:chipyard.TestHarness.RocketConfig.fir@75659.4]
  assign _T_68 = _T_62 & _T_44[1]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75665.4]
  assign _T_73 = _T_62 & _T_44[2]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75674.4]
  assign _T_78 = _T_62 & _T_44[3]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75683.4]
  assign _T_83 = _T_62 & _T_44[4]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75692.4]
  assign _T_88 = _T_62 & _T_44[5]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75701.4]
  assign _T_93 = _T_62 & _T_44[6]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75710.4]
  assign _T_98 = _T_62 & _T_44[7]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75719.4]
  assign _T_103 = _T_62 & _T_44[8]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75728.4]
  assign _T_108 = _T_62 & _T_44[9]; // @[UserYanker.scala 62:53:chipyard.TestHarness.RocketConfig.fir@75737.4]
  assign _T_142_0 = QueueCompatibility_10_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75801.4]
  assign _T_142_1 = QueueCompatibility_11_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75802.4]
  assign _GEN_65 = 4'h1 == auto_in_aw_bits_id ? _T_142_1 : _T_142_0; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_142_2 = QueueCompatibility_12_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75803.4]
  assign _GEN_66 = 4'h2 == auto_in_aw_bits_id ? _T_142_2 : _GEN_65; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_142_3 = QueueCompatibility_13_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75804.4]
  assign _GEN_67 = 4'h3 == auto_in_aw_bits_id ? _T_142_3 : _GEN_66; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_142_4 = QueueCompatibility_14_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75805.4]
  assign _GEN_68 = 4'h4 == auto_in_aw_bits_id ? _T_142_4 : _GEN_67; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_142_5 = QueueCompatibility_15_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75806.4]
  assign _GEN_69 = 4'h5 == auto_in_aw_bits_id ? _T_142_5 : _GEN_68; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_142_6 = QueueCompatibility_16_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75807.4]
  assign _GEN_70 = 4'h6 == auto_in_aw_bits_id ? _T_142_6 : _GEN_69; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_142_7 = QueueCompatibility_17_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75808.4]
  assign _GEN_71 = 4'h7 == auto_in_aw_bits_id ? _T_142_7 : _GEN_70; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_142_8 = QueueCompatibility_18_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75809.4]
  assign _GEN_72 = 4'h8 == auto_in_aw_bits_id ? _T_142_8 : _GEN_71; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_142_9 = QueueCompatibility_19_io_enq_ready; // @[UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75799.4 UserYanker.scala 68:25:chipyard.TestHarness.RocketConfig.fir@75810.4]
  assign _GEN_73 = 4'h9 == auto_in_aw_bits_id ? _T_142_9 : _GEN_72; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _GEN_74 = 4'ha == auto_in_aw_bits_id ? 1'h0 : _GEN_73; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _GEN_75 = 4'hb == auto_in_aw_bits_id ? 1'h0 : _GEN_74; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _GEN_76 = 4'hc == auto_in_aw_bits_id ? 1'h0 : _GEN_75; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _GEN_77 = 4'hd == auto_in_aw_bits_id ? 1'h0 : _GEN_76; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _GEN_78 = 4'he == auto_in_aw_bits_id ? 1'h0 : _GEN_77; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _GEN_79 = 4'hf == auto_in_aw_bits_id ? 1'h0 : _GEN_78; // @[UserYanker.scala 69:36:chipyard.TestHarness.RocketConfig.fir@75817.4]
  assign _T_147 = ~auto_out_b_valid; // @[UserYanker.scala 76:15:chipyard.TestHarness.RocketConfig.fir@75866.4]
  assign _T_145_0 = QueueCompatibility_10_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75832.4]
  assign _T_145_1 = QueueCompatibility_11_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75833.4]
  assign _GEN_81 = 4'h1 == auto_out_b_bits_id ? _T_145_1 : _T_145_0; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_145_2 = QueueCompatibility_12_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75834.4]
  assign _GEN_82 = 4'h2 == auto_out_b_bits_id ? _T_145_2 : _GEN_81; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_145_3 = QueueCompatibility_13_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75835.4]
  assign _GEN_83 = 4'h3 == auto_out_b_bits_id ? _T_145_3 : _GEN_82; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_145_4 = QueueCompatibility_14_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75836.4]
  assign _GEN_84 = 4'h4 == auto_out_b_bits_id ? _T_145_4 : _GEN_83; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_145_5 = QueueCompatibility_15_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75837.4]
  assign _GEN_85 = 4'h5 == auto_out_b_bits_id ? _T_145_5 : _GEN_84; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_145_6 = QueueCompatibility_16_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75838.4]
  assign _GEN_86 = 4'h6 == auto_out_b_bits_id ? _T_145_6 : _GEN_85; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_145_7 = QueueCompatibility_17_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75839.4]
  assign _GEN_87 = 4'h7 == auto_out_b_bits_id ? _T_145_7 : _GEN_86; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_145_8 = QueueCompatibility_18_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75840.4]
  assign _GEN_88 = 4'h8 == auto_out_b_bits_id ? _T_145_8 : _GEN_87; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_145_9 = QueueCompatibility_19_io_deq_valid; // @[UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75830.4 UserYanker.scala 74:24:chipyard.TestHarness.RocketConfig.fir@75841.4]
  assign _GEN_89 = 4'h9 == auto_out_b_bits_id ? _T_145_9 : _GEN_88; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _GEN_90 = 4'ha == auto_out_b_bits_id ? 1'h0 : _GEN_89; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _GEN_91 = 4'hb == auto_out_b_bits_id ? 1'h0 : _GEN_90; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _GEN_92 = 4'hc == auto_out_b_bits_id ? 1'h0 : _GEN_91; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _GEN_93 = 4'hd == auto_out_b_bits_id ? 1'h0 : _GEN_92; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _GEN_94 = 4'he == auto_out_b_bits_id ? 1'h0 : _GEN_93; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _GEN_95 = 4'hf == auto_out_b_bits_id ? 1'h0 : _GEN_94; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_148 = _T_147 | _GEN_95; // @[UserYanker.scala 76:28:chipyard.TestHarness.RocketConfig.fir@75867.4]
  assign _T_150 = _T_148 | reset; // @[UserYanker.scala 76:14:chipyard.TestHarness.RocketConfig.fir@75869.4]
  assign _T_151 = ~_T_150; // @[UserYanker.scala 76:14:chipyard.TestHarness.RocketConfig.fir@75870.4]
  assign _T_146_0_tl_state_size = QueueCompatibility_10_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75850.4]
  assign _T_146_0_tl_state_source = QueueCompatibility_10_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75850.4]
  assign _T_146_1_tl_state_size = QueueCompatibility_11_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75851.4]
  assign _GEN_98 = 4'h1 == auto_out_b_bits_id ? _T_146_1_tl_state_size : _T_146_0_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_1_tl_state_source = QueueCompatibility_11_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75851.4]
  assign _GEN_99 = 4'h1 == auto_out_b_bits_id ? _T_146_1_tl_state_source : _T_146_0_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_2_tl_state_size = QueueCompatibility_12_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75852.4]
  assign _GEN_100 = 4'h2 == auto_out_b_bits_id ? _T_146_2_tl_state_size : _GEN_98; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_2_tl_state_source = QueueCompatibility_12_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75852.4]
  assign _GEN_101 = 4'h2 == auto_out_b_bits_id ? _T_146_2_tl_state_source : _GEN_99; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_3_tl_state_size = QueueCompatibility_13_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75853.4]
  assign _GEN_102 = 4'h3 == auto_out_b_bits_id ? _T_146_3_tl_state_size : _GEN_100; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_3_tl_state_source = QueueCompatibility_13_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75853.4]
  assign _GEN_103 = 4'h3 == auto_out_b_bits_id ? _T_146_3_tl_state_source : _GEN_101; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_4_tl_state_size = QueueCompatibility_14_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75854.4]
  assign _GEN_104 = 4'h4 == auto_out_b_bits_id ? _T_146_4_tl_state_size : _GEN_102; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_4_tl_state_source = QueueCompatibility_14_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75854.4]
  assign _GEN_105 = 4'h4 == auto_out_b_bits_id ? _T_146_4_tl_state_source : _GEN_103; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_5_tl_state_size = QueueCompatibility_15_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75855.4]
  assign _GEN_106 = 4'h5 == auto_out_b_bits_id ? _T_146_5_tl_state_size : _GEN_104; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_5_tl_state_source = QueueCompatibility_15_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75855.4]
  assign _GEN_107 = 4'h5 == auto_out_b_bits_id ? _T_146_5_tl_state_source : _GEN_105; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_6_tl_state_size = QueueCompatibility_16_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75856.4]
  assign _GEN_108 = 4'h6 == auto_out_b_bits_id ? _T_146_6_tl_state_size : _GEN_106; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_6_tl_state_source = QueueCompatibility_16_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75856.4]
  assign _GEN_109 = 4'h6 == auto_out_b_bits_id ? _T_146_6_tl_state_source : _GEN_107; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_7_tl_state_size = QueueCompatibility_17_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75857.4]
  assign _GEN_110 = 4'h7 == auto_out_b_bits_id ? _T_146_7_tl_state_size : _GEN_108; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_7_tl_state_source = QueueCompatibility_17_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75857.4]
  assign _GEN_111 = 4'h7 == auto_out_b_bits_id ? _T_146_7_tl_state_source : _GEN_109; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_8_tl_state_size = QueueCompatibility_18_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75858.4]
  assign _GEN_112 = 4'h8 == auto_out_b_bits_id ? _T_146_8_tl_state_size : _GEN_110; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_8_tl_state_source = QueueCompatibility_18_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75858.4]
  assign _GEN_113 = 4'h8 == auto_out_b_bits_id ? _T_146_8_tl_state_source : _GEN_111; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_9_tl_state_size = QueueCompatibility_19_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75859.4]
  assign _GEN_114 = 4'h9 == auto_out_b_bits_id ? _T_146_9_tl_state_size : _GEN_112; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_146_9_tl_state_source = QueueCompatibility_19_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75848.4 UserYanker.scala 75:23:chipyard.TestHarness.RocketConfig.fir@75859.4]
  assign _GEN_115 = 4'h9 == auto_out_b_bits_id ? _T_146_9_tl_state_source : _GEN_113; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_116 = 4'ha == auto_out_b_bits_id ? 4'h0 : _GEN_114; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_117 = 4'ha == auto_out_b_bits_id ? 4'h0 : _GEN_115; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_118 = 4'hb == auto_out_b_bits_id ? 4'h0 : _GEN_116; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_119 = 4'hb == auto_out_b_bits_id ? 4'h0 : _GEN_117; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_120 = 4'hc == auto_out_b_bits_id ? 4'h0 : _GEN_118; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_121 = 4'hc == auto_out_b_bits_id ? 4'h0 : _GEN_119; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_122 = 4'hd == auto_out_b_bits_id ? 4'h0 : _GEN_120; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_123 = 4'hd == auto_out_b_bits_id ? 4'h0 : _GEN_121; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_124 = 4'he == auto_out_b_bits_id ? 4'h0 : _GEN_122; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _GEN_125 = 4'he == auto_out_b_bits_id ? 4'h0 : _GEN_123; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75881.4]
  assign _T_153 = 16'h1 << auto_in_aw_bits_id; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@75884.4]
  assign _T_172 = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@75903.4]
  assign _T_190 = auto_out_b_valid & auto_in_b_ready; // @[UserYanker.scala 83:37:chipyard.TestHarness.RocketConfig.fir@75921.4]
  assign _T_192 = auto_in_aw_valid & auto_out_aw_ready; // @[UserYanker.scala 84:37:chipyard.TestHarness.RocketConfig.fir@75924.4]
  assign auto_in_aw_ready = auto_out_aw_ready & _GEN_79; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_w_ready = auto_out_w_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_b_valid = auto_out_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_b_bits_echo_tl_state_size = 4'hf == auto_out_b_bits_id ? 4'h0 : _GEN_124; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_b_bits_echo_tl_state_source = 4'hf == auto_out_b_bits_id ? 4'h0 : _GEN_125; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_ar_ready = auto_out_ar_ready & _GEN_15; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_r_bits_echo_tl_state_size = 4'hf == auto_out_r_bits_id ? 4'h0 : _GEN_60; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_r_bits_echo_tl_state_source = 4'hf == auto_out_r_bits_id ? 4'h0 : _GEN_61; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@75426.4]
  assign auto_out_aw_valid = auto_in_aw_valid & _GEN_79; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_lock = auto_in_aw_bits_lock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_aw_bits_qos = auto_in_aw_bits_qos; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_w_valid = auto_in_w_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_b_ready = auto_in_b_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_valid = auto_in_ar_valid & _GEN_15; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_lock = auto_in_ar_bits_lock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_ar_bits_qos = auto_in_ar_bits_qos; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@75425.4]
  assign QueueCompatibility_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75429.4]
  assign QueueCompatibility_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75430.4]
  assign QueueCompatibility_io_enq_valid = _T_65 & _T_25[0]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75661.4]
  assign QueueCompatibility_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75663.4]
  assign QueueCompatibility_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75662.4]
  assign QueueCompatibility_io_deq_ready = _T_63 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75658.4]
  assign QueueCompatibility_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75433.4]
  assign QueueCompatibility_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75434.4]
  assign QueueCompatibility_1_io_enq_valid = _T_65 & _T_25[1]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75670.4]
  assign QueueCompatibility_1_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75672.4]
  assign QueueCompatibility_1_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75671.4]
  assign QueueCompatibility_1_io_deq_ready = _T_68 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75667.4]
  assign QueueCompatibility_2_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75437.4]
  assign QueueCompatibility_2_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75438.4]
  assign QueueCompatibility_2_io_enq_valid = _T_65 & _T_25[2]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75679.4]
  assign QueueCompatibility_2_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75681.4]
  assign QueueCompatibility_2_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75680.4]
  assign QueueCompatibility_2_io_deq_ready = _T_73 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75676.4]
  assign QueueCompatibility_3_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75441.4]
  assign QueueCompatibility_3_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75442.4]
  assign QueueCompatibility_3_io_enq_valid = _T_65 & _T_25[3]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75688.4]
  assign QueueCompatibility_3_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75690.4]
  assign QueueCompatibility_3_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75689.4]
  assign QueueCompatibility_3_io_deq_ready = _T_78 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75685.4]
  assign QueueCompatibility_4_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75445.4]
  assign QueueCompatibility_4_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75446.4]
  assign QueueCompatibility_4_io_enq_valid = _T_65 & _T_25[4]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75697.4]
  assign QueueCompatibility_4_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75699.4]
  assign QueueCompatibility_4_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75698.4]
  assign QueueCompatibility_4_io_deq_ready = _T_83 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75694.4]
  assign QueueCompatibility_5_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75449.4]
  assign QueueCompatibility_5_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75450.4]
  assign QueueCompatibility_5_io_enq_valid = _T_65 & _T_25[5]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75706.4]
  assign QueueCompatibility_5_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75708.4]
  assign QueueCompatibility_5_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75707.4]
  assign QueueCompatibility_5_io_deq_ready = _T_88 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75703.4]
  assign QueueCompatibility_6_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75453.4]
  assign QueueCompatibility_6_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75454.4]
  assign QueueCompatibility_6_io_enq_valid = _T_65 & _T_25[6]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75715.4]
  assign QueueCompatibility_6_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75717.4]
  assign QueueCompatibility_6_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75716.4]
  assign QueueCompatibility_6_io_deq_ready = _T_93 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75712.4]
  assign QueueCompatibility_7_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75457.4]
  assign QueueCompatibility_7_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75458.4]
  assign QueueCompatibility_7_io_enq_valid = _T_65 & _T_25[7]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75724.4]
  assign QueueCompatibility_7_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75726.4]
  assign QueueCompatibility_7_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75725.4]
  assign QueueCompatibility_7_io_deq_ready = _T_98 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75721.4]
  assign QueueCompatibility_8_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75461.4]
  assign QueueCompatibility_8_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75462.4]
  assign QueueCompatibility_8_io_enq_valid = _T_65 & _T_25[8]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75733.4]
  assign QueueCompatibility_8_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75735.4]
  assign QueueCompatibility_8_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75734.4]
  assign QueueCompatibility_8_io_deq_ready = _T_103 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75730.4]
  assign QueueCompatibility_9_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75465.4]
  assign QueueCompatibility_9_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75466.4]
  assign QueueCompatibility_9_io_enq_valid = _T_65 & _T_25[9]; // @[UserYanker.scala 63:21:chipyard.TestHarness.RocketConfig.fir@75742.4]
  assign QueueCompatibility_9_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75744.4]
  assign QueueCompatibility_9_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75743.4]
  assign QueueCompatibility_9_io_deq_ready = _T_108 & auto_out_r_bits_last; // @[UserYanker.scala 62:21:chipyard.TestHarness.RocketConfig.fir@75739.4]
  assign QueueCompatibility_10_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75481.4]
  assign QueueCompatibility_10_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75482.4]
  assign QueueCompatibility_10_io_enq_valid = _T_192 & _T_153[0]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75926.4]
  assign QueueCompatibility_10_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75928.4]
  assign QueueCompatibility_10_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75927.4]
  assign QueueCompatibility_10_io_deq_ready = _T_190 & _T_172[0]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75923.4]
  assign QueueCompatibility_11_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75485.4]
  assign QueueCompatibility_11_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75486.4]
  assign QueueCompatibility_11_io_enq_valid = _T_192 & _T_153[1]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75934.4]
  assign QueueCompatibility_11_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75936.4]
  assign QueueCompatibility_11_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75935.4]
  assign QueueCompatibility_11_io_deq_ready = _T_190 & _T_172[1]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75931.4]
  assign QueueCompatibility_12_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75489.4]
  assign QueueCompatibility_12_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75490.4]
  assign QueueCompatibility_12_io_enq_valid = _T_192 & _T_153[2]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75942.4]
  assign QueueCompatibility_12_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75944.4]
  assign QueueCompatibility_12_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75943.4]
  assign QueueCompatibility_12_io_deq_ready = _T_190 & _T_172[2]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75939.4]
  assign QueueCompatibility_13_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75493.4]
  assign QueueCompatibility_13_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75494.4]
  assign QueueCompatibility_13_io_enq_valid = _T_192 & _T_153[3]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75950.4]
  assign QueueCompatibility_13_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75952.4]
  assign QueueCompatibility_13_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75951.4]
  assign QueueCompatibility_13_io_deq_ready = _T_190 & _T_172[3]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75947.4]
  assign QueueCompatibility_14_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75497.4]
  assign QueueCompatibility_14_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75498.4]
  assign QueueCompatibility_14_io_enq_valid = _T_192 & _T_153[4]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75958.4]
  assign QueueCompatibility_14_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75960.4]
  assign QueueCompatibility_14_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75959.4]
  assign QueueCompatibility_14_io_deq_ready = _T_190 & _T_172[4]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75955.4]
  assign QueueCompatibility_15_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75501.4]
  assign QueueCompatibility_15_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75502.4]
  assign QueueCompatibility_15_io_enq_valid = _T_192 & _T_153[5]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75966.4]
  assign QueueCompatibility_15_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75968.4]
  assign QueueCompatibility_15_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75967.4]
  assign QueueCompatibility_15_io_deq_ready = _T_190 & _T_172[5]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75963.4]
  assign QueueCompatibility_16_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75505.4]
  assign QueueCompatibility_16_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75506.4]
  assign QueueCompatibility_16_io_enq_valid = _T_192 & _T_153[6]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75974.4]
  assign QueueCompatibility_16_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75976.4]
  assign QueueCompatibility_16_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75975.4]
  assign QueueCompatibility_16_io_deq_ready = _T_190 & _T_172[6]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75971.4]
  assign QueueCompatibility_17_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75509.4]
  assign QueueCompatibility_17_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75510.4]
  assign QueueCompatibility_17_io_enq_valid = _T_192 & _T_153[7]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75982.4]
  assign QueueCompatibility_17_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75984.4]
  assign QueueCompatibility_17_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75983.4]
  assign QueueCompatibility_17_io_deq_ready = _T_190 & _T_172[7]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75979.4]
  assign QueueCompatibility_18_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75513.4]
  assign QueueCompatibility_18_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75514.4]
  assign QueueCompatibility_18_io_enq_valid = _T_192 & _T_153[8]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75990.4]
  assign QueueCompatibility_18_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75992.4]
  assign QueueCompatibility_18_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75991.4]
  assign QueueCompatibility_18_io_deq_ready = _T_190 & _T_172[8]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75987.4]
  assign QueueCompatibility_19_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@75517.4]
  assign QueueCompatibility_19_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@75518.4]
  assign QueueCompatibility_19_io_enq_valid = _T_192 & _T_153[9]; // @[UserYanker.scala 84:21:chipyard.TestHarness.RocketConfig.fir@75998.4]
  assign QueueCompatibility_19_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@76000.4]
  assign QueueCompatibility_19_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[BundleMap.scala 248:19:chipyard.TestHarness.RocketConfig.fir@75999.4]
  assign QueueCompatibility_19_io_deq_ready = _T_190 & _T_172[9]; // @[UserYanker.scala 83:21:chipyard.TestHarness.RocketConfig.fir@75995.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_23) begin
          $fwrite(32'h80000002,"Assertion failed\n    at UserYanker.scala:55 assert (!out.r.valid || r_valid) // Q must be ready faster than the response\n"); // @[UserYanker.scala 55:14:chipyard.TestHarness.RocketConfig.fir@75604.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_23) begin
          $fatal; // @[UserYanker.scala 55:14:chipyard.TestHarness.RocketConfig.fir@75605.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_151) begin
          $fwrite(32'h80000002,"Assertion failed\n    at UserYanker.scala:76 assert (!out.b.valid || b_valid) // Q must be ready faster than the response\n"); // @[UserYanker.scala 76:14:chipyard.TestHarness.RocketConfig.fir@75872.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_151) begin
          $fatal; // @[UserYanker.scala 76:14:chipyard.TestHarness.RocketConfig.fir@75873.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
