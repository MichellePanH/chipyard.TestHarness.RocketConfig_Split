module ICache( // @[:chipyard.TestHarness.RocketConfig.fir@218510.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@218511.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@218512.4]
  input         auto_master_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@218513.4]
  output        auto_master_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@218513.4]
  output [31:0] auto_master_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@218513.4]
  input         auto_master_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@218513.4]
  input  [2:0]  auto_master_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@218513.4]
  input  [3:0]  auto_master_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@218513.4]
  input  [63:0] auto_master_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@218513.4]
  input         auto_master_out_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@218513.4]
  output        io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  input         io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  input  [38:0] io_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  input  [31:0] io_s1_paddr, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  input         io_s1_kill, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  input         io_s2_kill, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  output        io_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  output [31:0] io_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  output        io_resp_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  output        io_resp_bits_ae, // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
  input         io_invalidate // @[:chipyard.TestHarness.RocketConfig.fir@218514.4]
);
  wire  MaxPeriodFibonacciLFSR_clock; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_reset; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_increment; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_0; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_1; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_2; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_3; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_4; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_5; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_6; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_7; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_8; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_9; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_10; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_11; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_12; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_13; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_14; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire  MaxPeriodFibonacciLFSR_io_out_15; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
  wire [5:0] tag_array_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire  tag_array_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire  tag_array_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire  tag_array_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [20:0] tag_array_RW0_wdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [20:0] tag_array_RW0_wdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [20:0] tag_array_RW0_wdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [20:0] tag_array_RW0_wdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [20:0] tag_array_RW0_rdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [20:0] tag_array_RW0_rdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [20:0] tag_array_RW0_rdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [20:0] tag_array_RW0_rdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire  tag_array_RW0_wmask_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire  tag_array_RW0_wmask_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire  tag_array_RW0_wmask_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire  tag_array_RW0_wmask_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
  wire [8:0] data_arrays_0_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire  data_arrays_0_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire  data_arrays_0_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire  data_arrays_0_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [31:0] data_arrays_0_RW0_wdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [31:0] data_arrays_0_RW0_wdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [31:0] data_arrays_0_RW0_wdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [31:0] data_arrays_0_RW0_wdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [31:0] data_arrays_0_RW0_rdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [31:0] data_arrays_0_RW0_rdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [31:0] data_arrays_0_RW0_rdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [31:0] data_arrays_0_RW0_rdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire  data_arrays_0_RW0_wmask_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire  data_arrays_0_RW0_wmask_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire  data_arrays_0_RW0_wmask_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire  data_arrays_0_RW0_wmask_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
  wire [8:0] data_arrays_1_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire  data_arrays_1_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire  data_arrays_1_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire  data_arrays_1_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire [31:0] data_arrays_1_RW0_wdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire [31:0] data_arrays_1_RW0_wdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire [31:0] data_arrays_1_RW0_wdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire [31:0] data_arrays_1_RW0_wdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire [31:0] data_arrays_1_RW0_rdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire [31:0] data_arrays_1_RW0_rdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire [31:0] data_arrays_1_RW0_rdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire [31:0] data_arrays_1_RW0_rdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire  data_arrays_1_RW0_wmask_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire  data_arrays_1_RW0_wmask_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire  data_arrays_1_RW0_wmask_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire  data_arrays_1_RW0_wmask_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
  wire  s0_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@218530.4]
  reg  s1_valid; // @[ICache.scala 164:21:chipyard.TestHarness.RocketConfig.fir@218531.4]
  reg [31:0] _RAND_0;
  reg [255:0] vb_array; // @[ICache.scala 224:21:chipyard.TestHarness.RocketConfig.fir@218707.4]
  reg [255:0] _RAND_1;
  wire [6:0] _T_104; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218750.4]
  wire [255:0] _T_105; // @[ICache.scala 252:25:chipyard.TestHarness.RocketConfig.fir@218751.4]
  wire  _T_111; // @[ICache.scala 255:33:chipyard.TestHarness.RocketConfig.fir@218757.4]
  wire  s1_tag_hit_0; // @[ICache.scala 255:26:chipyard.TestHarness.RocketConfig.fir@218758.4]
  wire [6:0] _T_132; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218781.4]
  wire [255:0] _T_133; // @[ICache.scala 252:25:chipyard.TestHarness.RocketConfig.fir@218782.4]
  wire  _T_139; // @[ICache.scala 255:33:chipyard.TestHarness.RocketConfig.fir@218788.4]
  wire  s1_tag_hit_1; // @[ICache.scala 255:26:chipyard.TestHarness.RocketConfig.fir@218789.4]
  wire  _T; // @[ICache.scala 167:35:chipyard.TestHarness.RocketConfig.fir@218538.4]
  wire [7:0] _T_160; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218812.4]
  wire [255:0] _T_161; // @[ICache.scala 252:25:chipyard.TestHarness.RocketConfig.fir@218813.4]
  wire  _T_167; // @[ICache.scala 255:33:chipyard.TestHarness.RocketConfig.fir@218819.4]
  wire  s1_tag_hit_2; // @[ICache.scala 255:26:chipyard.TestHarness.RocketConfig.fir@218820.4]
  wire  _T_1; // @[ICache.scala 167:35:chipyard.TestHarness.RocketConfig.fir@218539.4]
  wire [7:0] _T_188; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218843.4]
  wire [255:0] _T_189; // @[ICache.scala 252:25:chipyard.TestHarness.RocketConfig.fir@218844.4]
  wire  _T_195; // @[ICache.scala 255:33:chipyard.TestHarness.RocketConfig.fir@218850.4]
  wire  s1_tag_hit_3; // @[ICache.scala 255:26:chipyard.TestHarness.RocketConfig.fir@218851.4]
  wire  _T_2; // @[ICache.scala 167:35:chipyard.TestHarness.RocketConfig.fir@218540.4]
  wire  s1_hit; // @[ICache.scala 167:40:chipyard.TestHarness.RocketConfig.fir@218542.4]
  wire  _T_4; // @[ICache.scala 169:38:chipyard.TestHarness.RocketConfig.fir@218543.4]
  wire  _T_5; // @[ICache.scala 169:35:chipyard.TestHarness.RocketConfig.fir@218544.4]
  reg  s2_valid; // @[ICache.scala 169:25:chipyard.TestHarness.RocketConfig.fir@218545.4]
  reg [31:0] _RAND_2;
  reg  s2_hit; // @[ICache.scala 170:23:chipyard.TestHarness.RocketConfig.fir@218547.4]
  reg [31:0] _RAND_3;
  reg  invalidated; // @[ICache.scala 172:24:chipyard.TestHarness.RocketConfig.fir@218549.4]
  reg [31:0] _RAND_4;
  reg  refill_valid; // @[ICache.scala 173:29:chipyard.TestHarness.RocketConfig.fir@218550.4]
  reg [31:0] _RAND_5;
  wire  _T_8; // @[ICache.scala 177:29:chipyard.TestHarness.RocketConfig.fir@218556.4]
  wire  _T_9; // @[ICache.scala 177:26:chipyard.TestHarness.RocketConfig.fir@218557.4]
  wire  _T_10; // @[ICache.scala 177:40:chipyard.TestHarness.RocketConfig.fir@218558.4]
  wire  s2_miss; // @[ICache.scala 177:37:chipyard.TestHarness.RocketConfig.fir@218559.4]
  reg  _T_12; // @[ICache.scala 179:45:chipyard.TestHarness.RocketConfig.fir@218562.4]
  reg [31:0] _RAND_6;
  wire  s2_request_refill; // @[ICache.scala 179:35:chipyard.TestHarness.RocketConfig.fir@218564.4]
  wire  refill_fire; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@218552.4]
  wire  _T_11; // @[ICache.scala 178:41:chipyard.TestHarness.RocketConfig.fir@218560.4]
  wire  s1_can_request_refill; // @[ICache.scala 178:31:chipyard.TestHarness.RocketConfig.fir@218561.4]
  wire  _T_13; // @[ICache.scala 180:54:chipyard.TestHarness.RocketConfig.fir@218565.4]
  reg [31:0] refill_paddr; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@218566.4]
  reg [31:0] _RAND_7;
  wire [19:0] refill_tag; // @[ICache.scala 182:33:chipyard.TestHarness.RocketConfig.fir@218575.4]
  wire [5:0] refill_idx; // @[ICache.scala 476:21:chipyard.TestHarness.RocketConfig.fir@218576.4]
  wire  refill_one_beat; // @[ICache.scala 184:41:chipyard.TestHarness.RocketConfig.fir@218579.4]
  wire [26:0] _T_22; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@218587.4]
  wire [11:0] _T_24; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@218589.4]
  wire [8:0] _T_27; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@218592.4]
  reg [8:0] _T_28; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@218593.4]
  reg [31:0] _RAND_8;
  wire [8:0] _T_30; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@218595.4]
  wire  _T_31; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@218596.4]
  wire  _T_32; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@218597.4]
  wire  _T_33; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@218598.4]
  wire  _T_34; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@218599.4]
  wire  d_done; // @[Edges.scala 234:22:chipyard.TestHarness.RocketConfig.fir@218600.4]
  wire [8:0] _T_35; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@218601.4]
  wire [8:0] refill_cnt; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@218602.4]
  wire  refill_done; // @[ICache.scala 190:37:chipyard.TestHarness.RocketConfig.fir@218607.4]
  wire [7:0] _T_44; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@218637.4]
  wire [15:0] _T_52; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@218645.4]
  wire [1:0] repl_way; // @[ICache.scala 196:35:chipyard.TestHarness.RocketConfig.fir@218646.4]
  wire [7:0] _T_55; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218648.4]
  wire  _T_67; // @[ICache.scala 213:70:chipyard.TestHarness.RocketConfig.fir@218666.4]
  wire  _T_68; // @[ICache.scala 213:83:chipyard.TestHarness.RocketConfig.fir@218667.4]
  reg  accruedRefillError; // @[ICache.scala 214:31:chipyard.TestHarness.RocketConfig.fir@218677.4]
  reg [31:0] _RAND_9;
  wire  _T_72; // @[ICache.scala 215:58:chipyard.TestHarness.RocketConfig.fir@218678.4]
  wire  _T_73; // @[ICache.scala 215:62:chipyard.TestHarness.RocketConfig.fir@218679.4]
  wire  refillError; // @[ICache.scala 215:43:chipyard.TestHarness.RocketConfig.fir@218680.4]
  wire  _T_82; // @[ICache.scala 228:75:chipyard.TestHarness.RocketConfig.fir@218711.6]
  wire  _T_83; // @[ICache.scala 228:72:chipyard.TestHarness.RocketConfig.fir@218712.6]
  wire [255:0] _T_84; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218713.6]
  wire [255:0] _T_85; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218714.6]
  wire [255:0] _T_86; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218715.6]
  wire [255:0] _T_87; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218716.6]
  wire [255:0] _T_88; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218717.6]
  wire  s2_tag_disparity; // @[ICache.scala 301:72:chipyard.TestHarness.RocketConfig.fir@219064.4]
  wire  _T_333; // @[ICache.scala 324:22:chipyard.TestHarness.RocketConfig.fir@219091.4]
  wire  invalidate; // @[ICache.scala 324:39:chipyard.TestHarness.RocketConfig.fir@219092.4]
  wire  _GEN_30; // @[ICache.scala 231:21:chipyard.TestHarness.RocketConfig.fir@218724.4]
  wire  s1_tl_error_0; // @[ICache.scala 257:32:chipyard.TestHarness.RocketConfig.fir@218763.4]
  wire  s1_tl_error_1; // @[ICache.scala 257:32:chipyard.TestHarness.RocketConfig.fir@218794.4]
  wire  s1_tl_error_2; // @[ICache.scala 257:32:chipyard.TestHarness.RocketConfig.fir@218825.4]
  wire  s1_tl_error_3; // @[ICache.scala 257:32:chipyard.TestHarness.RocketConfig.fir@218856.4]
  wire  _T_203; // @[ICache.scala 260:10:chipyard.TestHarness.RocketConfig.fir@218861.4]
  wire [1:0] _T_212; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@218870.4]
  wire [1:0] _T_214; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@218872.4]
  wire [2:0] _T_216; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@218874.4]
  wire  _T_218; // @[ICache.scala 260:115:chipyard.TestHarness.RocketConfig.fir@218876.4]
  wire  _T_219; // @[ICache.scala 260:39:chipyard.TestHarness.RocketConfig.fir@218877.4]
  wire  _T_221; // @[ICache.scala 260:9:chipyard.TestHarness.RocketConfig.fir@218879.4]
  wire  _T_222; // @[ICache.scala 260:9:chipyard.TestHarness.RocketConfig.fir@218880.4]
  wire  _T_224; // @[ICache.scala 275:111:chipyard.TestHarness.RocketConfig.fir@218888.4]
  wire  _T_225; // @[ICache.scala 277:28:chipyard.TestHarness.RocketConfig.fir@218889.4]
  wire  _T_230; // @[ICache.scala 278:32:chipyard.TestHarness.RocketConfig.fir@218894.4]
  wire [8:0] _T_235; // @[ICache.scala 279:52:chipyard.TestHarness.RocketConfig.fir@218899.4]
  wire [8:0] _T_236; // @[ICache.scala 279:79:chipyard.TestHarness.RocketConfig.fir@218900.4]
  wire  _T_252; // @[ICache.scala 288:41:chipyard.TestHarness.RocketConfig.fir@218935.4]
  wire  _T_253; // @[ICache.scala 288:46:chipyard.TestHarness.RocketConfig.fir@218936.4]
  wire [31:0] _GEN_54; // @[ICache.scala 289:71:chipyard.TestHarness.RocketConfig.fir@218949.4]
  wire [31:0] _GEN_55; // @[ICache.scala 289:71:chipyard.TestHarness.RocketConfig.fir@218949.4]
  wire [31:0] _GEN_56; // @[ICache.scala 289:71:chipyard.TestHarness.RocketConfig.fir@218949.4]
  wire [31:0] _GEN_57; // @[ICache.scala 289:71:chipyard.TestHarness.RocketConfig.fir@218949.4]
  wire  _T_263; // @[ICache.scala 277:28:chipyard.TestHarness.RocketConfig.fir@218954.4]
  wire  _T_291; // @[ICache.scala 288:46:chipyard.TestHarness.RocketConfig.fir@219001.4]
  reg  s2_tag_hit_0; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219018.4]
  reg [31:0] _RAND_10;
  reg  s2_tag_hit_1; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219018.4]
  reg [31:0] _RAND_11;
  reg  s2_tag_hit_2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219018.4]
  reg [31:0] _RAND_12;
  reg  s2_tag_hit_3; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219018.4]
  reg [31:0] _RAND_13;
  reg [31:0] s2_dout_0; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219038.4]
  reg [31:0] _RAND_14;
  reg [31:0] s2_dout_1; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219038.4]
  reg [31:0] _RAND_15;
  reg [31:0] s2_dout_2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219038.4]
  reg [31:0] _RAND_16;
  reg [31:0] s2_dout_3; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219038.4]
  reg [31:0] _RAND_17;
  wire [31:0] _T_310; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219045.4]
  wire [31:0] _T_311; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219046.4]
  wire [31:0] _T_312; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219047.4]
  wire [31:0] _T_313; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219048.4]
  wire [31:0] _T_314; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219049.4]
  wire [31:0] _T_315; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219050.4]
  wire [3:0] _T_323; // @[ICache.scala 302:43:chipyard.TestHarness.RocketConfig.fir@219067.4]
  wire  _T_324; // @[ICache.scala 302:50:chipyard.TestHarness.RocketConfig.fir@219068.4]
  reg  s2_tl_error; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@219069.4]
  reg [31:0] _RAND_18;
  wire  _T_462; // @[ICache.scala 466:9:chipyard.TestHarness.RocketConfig.fir@219248.4]
  wire  _GEN_101; // @[ICache.scala 467:22:chipyard.TestHarness.RocketConfig.fir@219252.4]
  MaxPeriodFibonacciLFSR_1 MaxPeriodFibonacciLFSR ( // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@218610.4]
    .clock(MaxPeriodFibonacciLFSR_clock),
    .reset(MaxPeriodFibonacciLFSR_reset),
    .io_increment(MaxPeriodFibonacciLFSR_io_increment),
    .io_out_0(MaxPeriodFibonacciLFSR_io_out_0),
    .io_out_1(MaxPeriodFibonacciLFSR_io_out_1),
    .io_out_2(MaxPeriodFibonacciLFSR_io_out_2),
    .io_out_3(MaxPeriodFibonacciLFSR_io_out_3),
    .io_out_4(MaxPeriodFibonacciLFSR_io_out_4),
    .io_out_5(MaxPeriodFibonacciLFSR_io_out_5),
    .io_out_6(MaxPeriodFibonacciLFSR_io_out_6),
    .io_out_7(MaxPeriodFibonacciLFSR_io_out_7),
    .io_out_8(MaxPeriodFibonacciLFSR_io_out_8),
    .io_out_9(MaxPeriodFibonacciLFSR_io_out_9),
    .io_out_10(MaxPeriodFibonacciLFSR_io_out_10),
    .io_out_11(MaxPeriodFibonacciLFSR_io_out_11),
    .io_out_12(MaxPeriodFibonacciLFSR_io_out_12),
    .io_out_13(MaxPeriodFibonacciLFSR_io_out_13),
    .io_out_14(MaxPeriodFibonacciLFSR_io_out_14),
    .io_out_15(MaxPeriodFibonacciLFSR_io_out_15)
  );
  tag_array_0 tag_array ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218664.4]
    .RW0_addr(tag_array_RW0_addr),
    .RW0_en(tag_array_RW0_en),
    .RW0_clk(tag_array_RW0_clk),
    .RW0_wmode(tag_array_RW0_wmode),
    .RW0_wdata_0(tag_array_RW0_wdata_0),
    .RW0_wdata_1(tag_array_RW0_wdata_1),
    .RW0_wdata_2(tag_array_RW0_wdata_2),
    .RW0_wdata_3(tag_array_RW0_wdata_3),
    .RW0_rdata_0(tag_array_RW0_rdata_0),
    .RW0_rdata_1(tag_array_RW0_rdata_1),
    .RW0_rdata_2(tag_array_RW0_rdata_2),
    .RW0_rdata_3(tag_array_RW0_rdata_3),
    .RW0_wmask_0(tag_array_RW0_wmask_0),
    .RW0_wmask_1(tag_array_RW0_wmask_1),
    .RW0_wmask_2(tag_array_RW0_wmask_2),
    .RW0_wmask_3(tag_array_RW0_wmask_3)
  );
  data_arrays_0_0 data_arrays_0 ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218885.4]
    .RW0_addr(data_arrays_0_RW0_addr),
    .RW0_en(data_arrays_0_RW0_en),
    .RW0_clk(data_arrays_0_RW0_clk),
    .RW0_wmode(data_arrays_0_RW0_wmode),
    .RW0_wdata_0(data_arrays_0_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_0_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_0_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_0_RW0_wdata_3),
    .RW0_rdata_0(data_arrays_0_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_0_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_0_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_0_RW0_rdata_3),
    .RW0_wmask_0(data_arrays_0_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_0_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_0_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_0_RW0_wmask_3)
  );
  data_arrays_0_0 data_arrays_1 ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@218886.4]
    .RW0_addr(data_arrays_1_RW0_addr),
    .RW0_en(data_arrays_1_RW0_en),
    .RW0_clk(data_arrays_1_RW0_clk),
    .RW0_wmode(data_arrays_1_RW0_wmode),
    .RW0_wdata_0(data_arrays_1_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_1_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_1_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_1_RW0_wdata_3),
    .RW0_rdata_0(data_arrays_1_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_1_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_1_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_1_RW0_rdata_3),
    .RW0_wmask_0(data_arrays_1_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_1_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_1_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_1_RW0_wmask_3)
  );
  assign s0_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@218530.4]
  assign _T_104 = {1'h0,io_s1_paddr[11:6]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218750.4]
  assign _T_105 = vb_array >> _T_104; // @[ICache.scala 252:25:chipyard.TestHarness.RocketConfig.fir@218751.4]
  assign _T_111 = tag_array_RW0_rdata_0[19:0] == io_s1_paddr[31:12]; // @[ICache.scala 255:33:chipyard.TestHarness.RocketConfig.fir@218757.4]
  assign s1_tag_hit_0 = _T_105[0] & _T_111; // @[ICache.scala 255:26:chipyard.TestHarness.RocketConfig.fir@218758.4]
  assign _T_132 = {1'h1,io_s1_paddr[11:6]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218781.4]
  assign _T_133 = vb_array >> _T_132; // @[ICache.scala 252:25:chipyard.TestHarness.RocketConfig.fir@218782.4]
  assign _T_139 = tag_array_RW0_rdata_1[19:0] == io_s1_paddr[31:12]; // @[ICache.scala 255:33:chipyard.TestHarness.RocketConfig.fir@218788.4]
  assign s1_tag_hit_1 = _T_133[0] & _T_139; // @[ICache.scala 255:26:chipyard.TestHarness.RocketConfig.fir@218789.4]
  assign _T = s1_tag_hit_0 | s1_tag_hit_1; // @[ICache.scala 167:35:chipyard.TestHarness.RocketConfig.fir@218538.4]
  assign _T_160 = {2'h2,io_s1_paddr[11:6]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218812.4]
  assign _T_161 = vb_array >> _T_160; // @[ICache.scala 252:25:chipyard.TestHarness.RocketConfig.fir@218813.4]
  assign _T_167 = tag_array_RW0_rdata_2[19:0] == io_s1_paddr[31:12]; // @[ICache.scala 255:33:chipyard.TestHarness.RocketConfig.fir@218819.4]
  assign s1_tag_hit_2 = _T_161[0] & _T_167; // @[ICache.scala 255:26:chipyard.TestHarness.RocketConfig.fir@218820.4]
  assign _T_1 = _T | s1_tag_hit_2; // @[ICache.scala 167:35:chipyard.TestHarness.RocketConfig.fir@218539.4]
  assign _T_188 = {2'h3,io_s1_paddr[11:6]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218843.4]
  assign _T_189 = vb_array >> _T_188; // @[ICache.scala 252:25:chipyard.TestHarness.RocketConfig.fir@218844.4]
  assign _T_195 = tag_array_RW0_rdata_3[19:0] == io_s1_paddr[31:12]; // @[ICache.scala 255:33:chipyard.TestHarness.RocketConfig.fir@218850.4]
  assign s1_tag_hit_3 = _T_189[0] & _T_195; // @[ICache.scala 255:26:chipyard.TestHarness.RocketConfig.fir@218851.4]
  assign _T_2 = _T_1 | s1_tag_hit_3; // @[ICache.scala 167:35:chipyard.TestHarness.RocketConfig.fir@218540.4]
  assign s1_hit = _T_2; // @[ICache.scala 167:40:chipyard.TestHarness.RocketConfig.fir@218542.4]
  assign _T_4 = ~io_s1_kill; // @[ICache.scala 169:38:chipyard.TestHarness.RocketConfig.fir@218543.4]
  assign _T_5 = s1_valid & _T_4; // @[ICache.scala 169:35:chipyard.TestHarness.RocketConfig.fir@218544.4]
  assign _T_8 = ~s2_hit; // @[ICache.scala 177:29:chipyard.TestHarness.RocketConfig.fir@218556.4]
  assign _T_9 = s2_valid & _T_8; // @[ICache.scala 177:26:chipyard.TestHarness.RocketConfig.fir@218557.4]
  assign _T_10 = ~io_s2_kill; // @[ICache.scala 177:40:chipyard.TestHarness.RocketConfig.fir@218558.4]
  assign s2_miss = _T_9 & _T_10; // @[ICache.scala 177:37:chipyard.TestHarness.RocketConfig.fir@218559.4]
  assign s2_request_refill = s2_miss & _T_12; // @[ICache.scala 179:35:chipyard.TestHarness.RocketConfig.fir@218564.4]
  assign refill_fire = auto_master_out_a_ready & s2_request_refill; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@218552.4]
  assign _T_11 = s2_miss | refill_valid; // @[ICache.scala 178:41:chipyard.TestHarness.RocketConfig.fir@218560.4]
  assign s1_can_request_refill = ~_T_11; // @[ICache.scala 178:31:chipyard.TestHarness.RocketConfig.fir@218561.4]
  assign _T_13 = s1_valid & s1_can_request_refill; // @[ICache.scala 180:54:chipyard.TestHarness.RocketConfig.fir@218565.4]
  assign refill_tag = refill_paddr[31:12]; // @[ICache.scala 182:33:chipyard.TestHarness.RocketConfig.fir@218575.4]
  assign refill_idx = refill_paddr[11:6]; // @[ICache.scala 476:21:chipyard.TestHarness.RocketConfig.fir@218576.4]
  assign refill_one_beat = auto_master_out_d_valid & auto_master_out_d_bits_opcode[0]; // @[ICache.scala 184:41:chipyard.TestHarness.RocketConfig.fir@218579.4]
  assign _T_22 = 27'hfff << auto_master_out_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@218587.4]
  assign _T_24 = ~_T_22[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@218589.4]
  assign _T_27 = auto_master_out_d_bits_opcode[0] ? _T_24[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@218592.4]
  assign _T_30 = _T_28 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@218595.4]
  assign _T_31 = _T_28 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@218596.4]
  assign _T_32 = _T_28 == 9'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@218597.4]
  assign _T_33 = _T_27 == 9'h0; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@218598.4]
  assign _T_34 = _T_32 | _T_33; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@218599.4]
  assign d_done = _T_34 & auto_master_out_d_valid; // @[Edges.scala 234:22:chipyard.TestHarness.RocketConfig.fir@218600.4]
  assign _T_35 = ~_T_30; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@218601.4]
  assign refill_cnt = _T_27 & _T_35; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@218602.4]
  assign refill_done = refill_one_beat & d_done; // @[ICache.scala 190:37:chipyard.TestHarness.RocketConfig.fir@218607.4]
  assign _T_44 = {MaxPeriodFibonacciLFSR_io_out_7,MaxPeriodFibonacciLFSR_io_out_6,MaxPeriodFibonacciLFSR_io_out_5,MaxPeriodFibonacciLFSR_io_out_4,MaxPeriodFibonacciLFSR_io_out_3,MaxPeriodFibonacciLFSR_io_out_2,MaxPeriodFibonacciLFSR_io_out_1,MaxPeriodFibonacciLFSR_io_out_0}; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@218637.4]
  assign _T_52 = {MaxPeriodFibonacciLFSR_io_out_15,MaxPeriodFibonacciLFSR_io_out_14,MaxPeriodFibonacciLFSR_io_out_13,MaxPeriodFibonacciLFSR_io_out_12,MaxPeriodFibonacciLFSR_io_out_11,MaxPeriodFibonacciLFSR_io_out_10,MaxPeriodFibonacciLFSR_io_out_9,MaxPeriodFibonacciLFSR_io_out_8,_T_44}; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@218645.4]
  assign repl_way = _T_52[1:0]; // @[ICache.scala 196:35:chipyard.TestHarness.RocketConfig.fir@218646.4]
  assign _T_55 = {repl_way,refill_idx}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218648.4]
  assign _T_67 = ~refill_done; // @[ICache.scala 213:70:chipyard.TestHarness.RocketConfig.fir@218666.4]
  assign _T_68 = _T_67 & s0_valid; // @[ICache.scala 213:83:chipyard.TestHarness.RocketConfig.fir@218667.4]
  assign _T_72 = refill_cnt > 9'h0; // @[ICache.scala 215:58:chipyard.TestHarness.RocketConfig.fir@218678.4]
  assign _T_73 = _T_72 & accruedRefillError; // @[ICache.scala 215:62:chipyard.TestHarness.RocketConfig.fir@218679.4]
  assign refillError = auto_master_out_d_bits_corrupt | _T_73; // @[ICache.scala 215:43:chipyard.TestHarness.RocketConfig.fir@218680.4]
  assign _T_82 = ~invalidated; // @[ICache.scala 228:75:chipyard.TestHarness.RocketConfig.fir@218711.6]
  assign _T_83 = refill_done & _T_82; // @[ICache.scala 228:72:chipyard.TestHarness.RocketConfig.fir@218712.6]
  assign _T_84 = 256'h1 << _T_55; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218713.6]
  assign _T_85 = vb_array | _T_84; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218714.6]
  assign _T_86 = ~vb_array; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218715.6]
  assign _T_87 = _T_86 | _T_84; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218716.6]
  assign _T_88 = ~_T_87; // @[ICache.scala 228:32:chipyard.TestHarness.RocketConfig.fir@218717.6]
  assign s2_tag_disparity = |4'h0; // @[ICache.scala 301:72:chipyard.TestHarness.RocketConfig.fir@219064.4]
  assign _T_333 = s2_valid & s2_tag_disparity; // @[ICache.scala 324:22:chipyard.TestHarness.RocketConfig.fir@219091.4]
  assign invalidate = _T_333 | io_invalidate; // @[ICache.scala 324:39:chipyard.TestHarness.RocketConfig.fir@219092.4]
  assign _GEN_30 = invalidate | invalidated; // @[ICache.scala 231:21:chipyard.TestHarness.RocketConfig.fir@218724.4]
  assign s1_tl_error_0 = s1_tag_hit_0 & tag_array_RW0_rdata_0[20]; // @[ICache.scala 257:32:chipyard.TestHarness.RocketConfig.fir@218763.4]
  assign s1_tl_error_1 = s1_tag_hit_1 & tag_array_RW0_rdata_1[20]; // @[ICache.scala 257:32:chipyard.TestHarness.RocketConfig.fir@218794.4]
  assign s1_tl_error_2 = s1_tag_hit_2 & tag_array_RW0_rdata_2[20]; // @[ICache.scala 257:32:chipyard.TestHarness.RocketConfig.fir@218825.4]
  assign s1_tl_error_3 = s1_tag_hit_3 & tag_array_RW0_rdata_3[20]; // @[ICache.scala 257:32:chipyard.TestHarness.RocketConfig.fir@218856.4]
  assign _T_203 = ~s1_valid; // @[ICache.scala 260:10:chipyard.TestHarness.RocketConfig.fir@218861.4]
  assign _T_212 = s1_tag_hit_0 + s1_tag_hit_1; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@218870.4]
  assign _T_214 = s1_tag_hit_2 + s1_tag_hit_3; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@218872.4]
  assign _T_216 = _T_212 + _T_214; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@218874.4]
  assign _T_218 = _T_216 <= 3'h1; // @[ICache.scala 260:115:chipyard.TestHarness.RocketConfig.fir@218876.4]
  assign _T_219 = _T_203 | _T_218; // @[ICache.scala 260:39:chipyard.TestHarness.RocketConfig.fir@218877.4]
  assign _T_221 = _T_219 | reset; // @[ICache.scala 260:9:chipyard.TestHarness.RocketConfig.fir@218879.4]
  assign _T_222 = ~_T_221; // @[ICache.scala 260:9:chipyard.TestHarness.RocketConfig.fir@218880.4]
  assign _T_224 = ~io_req_bits_addr[2]; // @[ICache.scala 275:111:chipyard.TestHarness.RocketConfig.fir@218888.4]
  assign _T_225 = s0_valid & _T_224; // @[ICache.scala 277:28:chipyard.TestHarness.RocketConfig.fir@218889.4]
  assign _T_230 = refill_one_beat & _T_82; // @[ICache.scala 278:32:chipyard.TestHarness.RocketConfig.fir@218894.4]
  assign _T_235 = {refill_idx, 3'h0}; // @[ICache.scala 279:52:chipyard.TestHarness.RocketConfig.fir@218899.4]
  assign _T_236 = _T_235 | refill_cnt; // @[ICache.scala 279:79:chipyard.TestHarness.RocketConfig.fir@218900.4]
  assign _T_252 = ~_T_230; // @[ICache.scala 288:41:chipyard.TestHarness.RocketConfig.fir@218935.4]
  assign _T_253 = _T_252 & _T_225; // @[ICache.scala 288:46:chipyard.TestHarness.RocketConfig.fir@218936.4]
  assign _GEN_54 = data_arrays_0_RW0_rdata_0; // @[ICache.scala 289:71:chipyard.TestHarness.RocketConfig.fir@218949.4]
  assign _GEN_55 = data_arrays_0_RW0_rdata_1; // @[ICache.scala 289:71:chipyard.TestHarness.RocketConfig.fir@218949.4]
  assign _GEN_56 = data_arrays_0_RW0_rdata_2; // @[ICache.scala 289:71:chipyard.TestHarness.RocketConfig.fir@218949.4]
  assign _GEN_57 = data_arrays_0_RW0_rdata_3; // @[ICache.scala 289:71:chipyard.TestHarness.RocketConfig.fir@218949.4]
  assign _T_263 = s0_valid & io_req_bits_addr[2]; // @[ICache.scala 277:28:chipyard.TestHarness.RocketConfig.fir@218954.4]
  assign _T_291 = _T_252 & _T_263; // @[ICache.scala 288:46:chipyard.TestHarness.RocketConfig.fir@219001.4]
  assign _T_310 = s2_tag_hit_0 ? s2_dout_0 : 32'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219045.4]
  assign _T_311 = s2_tag_hit_1 ? s2_dout_1 : 32'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219046.4]
  assign _T_312 = s2_tag_hit_2 ? s2_dout_2 : 32'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219047.4]
  assign _T_313 = s2_tag_hit_3 ? s2_dout_3 : 32'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219048.4]
  assign _T_314 = _T_310 | _T_311; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219049.4]
  assign _T_315 = _T_314 | _T_312; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@219050.4]
  assign _T_323 = {s1_tl_error_3,s1_tl_error_2,s1_tl_error_1,s1_tl_error_0}; // @[ICache.scala 302:43:chipyard.TestHarness.RocketConfig.fir@219067.4]
  assign _T_324 = |_T_323; // @[ICache.scala 302:50:chipyard.TestHarness.RocketConfig.fir@219068.4]
  assign _T_462 = ~refill_valid; // @[ICache.scala 466:9:chipyard.TestHarness.RocketConfig.fir@219248.4]
  assign _GEN_101 = refill_fire | refill_valid; // @[ICache.scala 467:22:chipyard.TestHarness.RocketConfig.fir@219252.4]
  assign auto_master_out_a_valid = s2_miss & _T_12; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@218522.4]
  assign auto_master_out_a_bits_address = {refill_paddr[31:6], 6'h0}; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@218522.4]
  assign io_req_ready = ~refill_one_beat; // @[ICache.scala 186:16:chipyard.TestHarness.RocketConfig.fir@218583.4]
  assign io_resp_valid = s2_valid & s2_hit; // @[ICache.scala 329:21:chipyard.TestHarness.RocketConfig.fir@219099.4]
  assign io_resp_bits_data = _T_315 | _T_313; // @[ICache.scala 326:25:chipyard.TestHarness.RocketConfig.fir@219095.4]
  assign io_resp_bits_replay = |4'h0; // @[ICache.scala 328:27:chipyard.TestHarness.RocketConfig.fir@219097.4]
  assign io_resp_bits_ae = s2_tl_error; // @[ICache.scala 327:23:chipyard.TestHarness.RocketConfig.fir@219096.4]
  assign MaxPeriodFibonacciLFSR_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@218611.4]
  assign MaxPeriodFibonacciLFSR_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@218612.4]
  assign MaxPeriodFibonacciLFSR_io_increment = auto_master_out_a_ready & s2_request_refill; // @[PRNG.scala 85:23:chipyard.TestHarness.RocketConfig.fir@218630.4]
  assign tag_array_RW0_wdata_0 = {refillError,refill_tag}; // @[:chipyard.TestHarness.RocketConfig.fir@218695.8]
  assign tag_array_RW0_wdata_1 = {refillError,refill_tag}; // @[:chipyard.TestHarness.RocketConfig.fir@218698.8]
  assign tag_array_RW0_wdata_2 = {refillError,refill_tag}; // @[:chipyard.TestHarness.RocketConfig.fir@218701.8]
  assign tag_array_RW0_wdata_3 = {refillError,refill_tag}; // @[:chipyard.TestHarness.RocketConfig.fir@218704.8]
  assign tag_array_RW0_wmask_0 = repl_way == 2'h0; // @[:chipyard.TestHarness.RocketConfig.fir@218693.6 :chipyard.TestHarness.RocketConfig.fir@218695.8]
  assign tag_array_RW0_wmask_1 = repl_way == 2'h1; // @[:chipyard.TestHarness.RocketConfig.fir@218693.6 :chipyard.TestHarness.RocketConfig.fir@218698.8]
  assign tag_array_RW0_wmask_2 = repl_way == 2'h2; // @[:chipyard.TestHarness.RocketConfig.fir@218693.6 :chipyard.TestHarness.RocketConfig.fir@218701.8]
  assign tag_array_RW0_wmask_3 = repl_way == 2'h3; // @[:chipyard.TestHarness.RocketConfig.fir@218693.6 :chipyard.TestHarness.RocketConfig.fir@218704.8]
  assign data_arrays_0_RW0_wdata_0 = auto_master_out_d_bits_data[31:0]; // @[:chipyard.TestHarness.RocketConfig.fir@218923.8]
  assign data_arrays_0_RW0_wdata_1 = auto_master_out_d_bits_data[31:0]; // @[:chipyard.TestHarness.RocketConfig.fir@218926.8]
  assign data_arrays_0_RW0_wdata_2 = auto_master_out_d_bits_data[31:0]; // @[:chipyard.TestHarness.RocketConfig.fir@218929.8]
  assign data_arrays_0_RW0_wdata_3 = auto_master_out_d_bits_data[31:0]; // @[:chipyard.TestHarness.RocketConfig.fir@218932.8]
  assign data_arrays_0_RW0_wmask_0 = repl_way == 2'h0; // @[:chipyard.TestHarness.RocketConfig.fir@218921.6 :chipyard.TestHarness.RocketConfig.fir@218923.8]
  assign data_arrays_0_RW0_wmask_1 = repl_way == 2'h1; // @[:chipyard.TestHarness.RocketConfig.fir@218921.6 :chipyard.TestHarness.RocketConfig.fir@218926.8]
  assign data_arrays_0_RW0_wmask_2 = repl_way == 2'h2; // @[:chipyard.TestHarness.RocketConfig.fir@218921.6 :chipyard.TestHarness.RocketConfig.fir@218929.8]
  assign data_arrays_0_RW0_wmask_3 = repl_way == 2'h3; // @[:chipyard.TestHarness.RocketConfig.fir@218921.6 :chipyard.TestHarness.RocketConfig.fir@218932.8]
  assign data_arrays_1_RW0_wdata_0 = auto_master_out_d_bits_data[63:32]; // @[:chipyard.TestHarness.RocketConfig.fir@218988.8]
  assign data_arrays_1_RW0_wdata_1 = auto_master_out_d_bits_data[63:32]; // @[:chipyard.TestHarness.RocketConfig.fir@218991.8]
  assign data_arrays_1_RW0_wdata_2 = auto_master_out_d_bits_data[63:32]; // @[:chipyard.TestHarness.RocketConfig.fir@218994.8]
  assign data_arrays_1_RW0_wdata_3 = auto_master_out_d_bits_data[63:32]; // @[:chipyard.TestHarness.RocketConfig.fir@218997.8]
  assign data_arrays_1_RW0_wmask_0 = repl_way == 2'h0; // @[:chipyard.TestHarness.RocketConfig.fir@218986.6 :chipyard.TestHarness.RocketConfig.fir@218988.8]
  assign data_arrays_1_RW0_wmask_1 = repl_way == 2'h1; // @[:chipyard.TestHarness.RocketConfig.fir@218986.6 :chipyard.TestHarness.RocketConfig.fir@218991.8]
  assign data_arrays_1_RW0_wmask_2 = repl_way == 2'h2; // @[:chipyard.TestHarness.RocketConfig.fir@218986.6 :chipyard.TestHarness.RocketConfig.fir@218994.8]
  assign data_arrays_1_RW0_wmask_3 = repl_way == 2'h3; // @[:chipyard.TestHarness.RocketConfig.fir@218986.6 :chipyard.TestHarness.RocketConfig.fir@218997.8]
  assign tag_array_RW0_wmode = refill_one_beat & d_done;
  assign tag_array_RW0_clk = clock;
  assign tag_array_RW0_en = _T_68 | refill_done;
  assign tag_array_RW0_addr = refill_done ? refill_idx : io_req_bits_addr[11:6];
  assign data_arrays_0_RW0_wmode = refill_one_beat & _T_82;
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = _T_253 | _T_230;
  assign data_arrays_0_RW0_addr = refill_one_beat ? _T_236 : io_req_bits_addr[11:3];
  assign data_arrays_1_RW0_wmode = refill_one_beat & _T_82;
  assign data_arrays_1_RW0_clk = clock;
  assign data_arrays_1_RW0_en = _T_291 | _T_230;
  assign data_arrays_1_RW0_addr = refill_one_beat ? _T_236 : io_req_bits_addr[11:3];
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s1_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {8{`RANDOM}};
  vb_array = _RAND_1[255:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  s2_valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s2_hit = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  invalidated = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  refill_valid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_12 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  refill_paddr = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_28 = _RAND_8[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  accruedRefillError = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  s2_tag_hit_0 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  s2_tag_hit_1 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  s2_tag_hit_2 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  s2_tag_hit_3 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s2_dout_0 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  s2_dout_1 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s2_dout_2 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s2_dout_3 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  s2_tl_error = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= s0_valid;
    end
    if (reset) begin
      vb_array <= 256'h0;
    end else if (invalidate) begin
      vb_array <= 256'h0;
    end else if (refill_one_beat) begin
      if (_T_83) begin
        vb_array <= _T_85;
      end else begin
        vb_array <= _T_88;
      end
    end
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _T_5;
    end
    s2_hit <= s1_hit;
    if (_T_462) begin
      invalidated <= 1'h0;
    end else begin
      invalidated <= _GEN_30;
    end
    if (reset) begin
      refill_valid <= 1'h0;
    end else if (refill_done) begin
      refill_valid <= 1'h0;
    end else begin
      refill_valid <= _GEN_101;
    end
    _T_12 <= ~_T_11;
    if (_T_13) begin
      refill_paddr <= io_s1_paddr;
    end
    if (reset) begin
      _T_28 <= 9'h0;
    end else if (auto_master_out_d_valid) begin
      if (_T_31) begin
        if (auto_master_out_d_bits_opcode[0]) begin
          _T_28 <= _T_24[11:3];
        end else begin
          _T_28 <= 9'h0;
        end
      end else begin
        _T_28 <= _T_30;
      end
    end
    if (refill_one_beat) begin
      accruedRefillError <= refillError;
    end
    if (s1_valid) begin
      s2_tag_hit_0 <= s1_tag_hit_0;
    end
    if (s1_valid) begin
      s2_tag_hit_1 <= s1_tag_hit_1;
    end
    if (s1_valid) begin
      s2_tag_hit_2 <= s1_tag_hit_2;
    end
    if (s1_valid) begin
      s2_tag_hit_3 <= s1_tag_hit_3;
    end
    if (s1_valid) begin
      if (io_s1_paddr[2]) begin
        s2_dout_0 <= data_arrays_1_RW0_rdata_0;
      end else begin
        s2_dout_0 <= _GEN_54;
      end
    end
    if (s1_valid) begin
      if (io_s1_paddr[2]) begin
        s2_dout_1 <= data_arrays_1_RW0_rdata_1;
      end else begin
        s2_dout_1 <= _GEN_55;
      end
    end
    if (s1_valid) begin
      if (io_s1_paddr[2]) begin
        s2_dout_2 <= data_arrays_1_RW0_rdata_2;
      end else begin
        s2_dout_2 <= _GEN_56;
      end
    end
    if (s1_valid) begin
      if (io_s1_paddr[2]) begin
        s2_dout_3 <= data_arrays_1_RW0_rdata_3;
      end else begin
        s2_dout_3 <= _GEN_57;
      end
    end
    if (s1_valid) begin
      s2_tl_error <= _T_324;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_222) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:260 assert(!(s1_valid || s1_slaveValid) || PopCount(s1_tag_hit zip s1_tag_disparity map { case (h, d) => h && !d }) <= 1)\n"); // @[ICache.scala 260:9:chipyard.TestHarness.RocketConfig.fir@218882.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_222) begin
          $fatal; // @[ICache.scala 260:9:chipyard.TestHarness.RocketConfig.fir@218883.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
