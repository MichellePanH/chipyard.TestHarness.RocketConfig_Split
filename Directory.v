module Directory( // @[:chipyard.TestHarness.RocketConfig.fir@87747.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@87748.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@87749.4]
  output        io_write_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input         io_write_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input  [9:0]  io_write_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input  [2:0]  io_write_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input         io_write_bits_data_dirty, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input  [1:0]  io_write_bits_data_state, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input         io_write_bits_data_clients, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input  [11:0] io_write_bits_data_tag, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input         io_read_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input  [9:0]  io_read_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  input  [11:0] io_read_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  output        io_result_bits_dirty, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  output [1:0]  io_result_bits_state, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  output        io_result_bits_clients, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  output [11:0] io_result_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  output        io_result_bits_hit, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  output [2:0]  io_result_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
  output        io_ready // @[:chipyard.TestHarness.RocketConfig.fir@87750.4]
);
  wire [9:0] cc_dir_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_wdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_wdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_wdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_wdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_wdata_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_wdata_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_wdata_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_wdata_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_rdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_rdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_rdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_rdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_rdata_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_rdata_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_rdata_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire [15:0] cc_dir_RW0_rdata_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmask_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmask_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmask_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmask_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmask_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmask_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmask_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  cc_dir_RW0_wmask_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
  wire  write_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire [9:0] write_io_enq_bits_set; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire [2:0] write_io_enq_bits_way; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_io_enq_bits_data_dirty; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire [1:0] write_io_enq_bits_data_state; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_io_enq_bits_data_clients; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire [11:0] write_io_enq_bits_data_tag; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire [9:0] write_io_deq_bits_set; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire [2:0] write_io_deq_bits_way; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_io_deq_bits_data_dirty; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire [1:0] write_io_deq_bits_data_state; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  write_io_deq_bits_data_clients; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire [11:0] write_io_deq_bits_data_tag; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
  wire  MaxPeriodFibonacciLFSR_clock; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_reset; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_increment; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_0; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_1; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_2; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_3; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_4; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_5; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_6; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_7; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_8; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_9; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_10; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_11; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_12; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_13; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_14; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  wire  MaxPeriodFibonacciLFSR_io_out_15; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
  reg [10:0] wipeCount; // @[Directory.scala 77:26:chipyard.TestHarness.RocketConfig.fir@87767.4]
  reg [31:0] _RAND_0;
  reg  wipeOff; // @[Directory.scala 78:24:chipyard.TestHarness.RocketConfig.fir@87768.4]
  reg [31:0] _RAND_1;
  wire  wipeDone; // @[Directory.scala 79:27:chipyard.TestHarness.RocketConfig.fir@87770.4]
  wire [9:0] wipeSet; // @[Directory.scala 80:26:chipyard.TestHarness.RocketConfig.fir@87771.4]
  wire  _T; // @[Directory.scala 83:9:chipyard.TestHarness.RocketConfig.fir@87773.4]
  wire  _T_1; // @[Directory.scala 83:22:chipyard.TestHarness.RocketConfig.fir@87774.4]
  wire  _T_2; // @[Directory.scala 83:19:chipyard.TestHarness.RocketConfig.fir@87775.4]
  wire [10:0] _T_4; // @[Directory.scala 83:57:chipyard.TestHarness.RocketConfig.fir@87778.6]
  wire  _T_5; // @[Directory.scala 84:23:chipyard.TestHarness.RocketConfig.fir@87781.4]
  wire  _T_6; // @[Directory.scala 84:20:chipyard.TestHarness.RocketConfig.fir@87782.4]
  wire  _T_8; // @[Directory.scala 84:10:chipyard.TestHarness.RocketConfig.fir@87784.4]
  wire  _T_9; // @[Directory.scala 84:10:chipyard.TestHarness.RocketConfig.fir@87785.4]
  wire  wen; // @[Directory.scala 88:37:chipyard.TestHarness.RocketConfig.fir@87793.4]
  wire  _T_14; // @[Directory.scala 89:26:chipyard.TestHarness.RocketConfig.fir@87795.4]
  wire  _T_16; // @[Directory.scala 89:10:chipyard.TestHarness.RocketConfig.fir@87797.4]
  wire  _T_17; // @[Directory.scala 89:10:chipyard.TestHarness.RocketConfig.fir@87798.4]
  wire  _T_20; // @[Directory.scala 94:14:chipyard.TestHarness.RocketConfig.fir@87806.4]
  wire [9:0] _T_21; // @[Directory.scala 96:10:chipyard.TestHarness.RocketConfig.fir@87808.6]
  wire [15:0] _T_24; // @[Directory.scala 97:67:chipyard.TestHarness.RocketConfig.fir@87811.6]
  wire [2:0] _T_55; // @[OneHot.scala 64:49:chipyard.TestHarness.RocketConfig.fir@87851.6]
  wire [7:0] _T_56; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@87852.6]
  reg  ren1; // @[Directory.scala 101:21:chipyard.TestHarness.RocketConfig.fir@87904.4]
  reg [31:0] _RAND_2;
  reg [11:0] tag; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87917.4]
  reg [31:0] _RAND_3;
  reg [9:0] set; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87921.4]
  reg [31:0] _RAND_4;
  wire [7:0] _T_93; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@87952.4]
  wire [15:0] _T_101; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@87960.4]
  wire [7:0] _T_125; // @[LFSR.scala 43:8:chipyard.TestHarness.RocketConfig.fir@88000.4]
  wire [15:0] _T_133; // @[LFSR.scala 43:8:chipyard.TestHarness.RocketConfig.fir@88008.4]
  wire [9:0] victimLFSR; // @[Directory.scala 113:46:chipyard.TestHarness.RocketConfig.fir@88009.4]
  wire  _T_135; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88011.4]
  wire  _T_136; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88012.4]
  wire  _T_137; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88013.4]
  wire  _T_138; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88014.4]
  wire  _T_139; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88015.4]
  wire  _T_140; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88016.4]
  wire  _T_141; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88017.4]
  wire [7:0] victimLTE; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88024.4]
  wire [8:0] victimSimp; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88027.4]
  wire [7:0] _T_152; // @[Directory.scala 117:57:chipyard.TestHarness.RocketConfig.fir@88030.4]
  wire [7:0] victimWayOH; // @[Directory.scala 117:55:chipyard.TestHarness.RocketConfig.fir@88031.4]
  wire  _T_155; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@88034.4]
  wire [3:0] _T_156; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@88035.4]
  wire  _T_159; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@88038.4]
  wire [1:0] _T_160; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@88039.4]
  wire [2:0] victimWay; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88042.4]
  wire  _T_163; // @[Directory.scala 119:11:chipyard.TestHarness.RocketConfig.fir@88043.4]
  wire  _T_166; // @[Directory.scala 119:17:chipyard.TestHarness.RocketConfig.fir@88046.4]
  wire  _T_168; // @[Directory.scala 119:10:chipyard.TestHarness.RocketConfig.fir@88048.4]
  wire  _T_169; // @[Directory.scala 119:10:chipyard.TestHarness.RocketConfig.fir@88049.4]
  wire [8:0] _T_172; // @[Directory.scala 120:41:chipyard.TestHarness.RocketConfig.fir@88056.4]
  wire [8:0] _GEN_42; // @[Directory.scala 120:39:chipyard.TestHarness.RocketConfig.fir@88057.4]
  wire [8:0] _T_173; // @[Directory.scala 120:39:chipyard.TestHarness.RocketConfig.fir@88057.4]
  wire  _T_174; // @[Directory.scala 120:54:chipyard.TestHarness.RocketConfig.fir@88058.4]
  wire  _T_175; // @[Directory.scala 120:17:chipyard.TestHarness.RocketConfig.fir@88059.4]
  wire  _T_177; // @[Directory.scala 120:10:chipyard.TestHarness.RocketConfig.fir@88061.4]
  wire  _T_178; // @[Directory.scala 120:10:chipyard.TestHarness.RocketConfig.fir@88062.4]
  wire [1:0] _T_188; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88076.4]
  wire [1:0] _T_190; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88078.4]
  wire [2:0] _T_192; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88080.4]
  wire [1:0] _T_194; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88082.4]
  wire [1:0] _T_196; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88084.4]
  wire [2:0] _T_198; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88086.4]
  wire [3:0] _T_200; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88088.4]
  wire  _T_202; // @[Directory.scala 121:42:chipyard.TestHarness.RocketConfig.fir@88090.4]
  wire  _T_203; // @[Directory.scala 121:17:chipyard.TestHarness.RocketConfig.fir@88091.4]
  wire  _T_205; // @[Directory.scala 121:10:chipyard.TestHarness.RocketConfig.fir@88093.4]
  wire  _T_206; // @[Directory.scala 121:10:chipyard.TestHarness.RocketConfig.fir@88094.4]
  wire  _T_207; // @[Directory.scala 123:45:chipyard.TestHarness.RocketConfig.fir@88099.4]
  wire  setQuash; // @[Directory.scala 123:31:chipyard.TestHarness.RocketConfig.fir@88100.4]
  wire  tagMatch; // @[Directory.scala 124:34:chipyard.TestHarness.RocketConfig.fir@88101.4]
  wire  wayMatch; // @[Directory.scala 125:29:chipyard.TestHarness.RocketConfig.fir@88102.4]
  wire [15:0] _T_209; // @[:chipyard.TestHarness.RocketConfig.fir@88105.4 :chipyard.TestHarness.RocketConfig.fir@88107.4]
  wire [11:0] ways_0_tag; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88108.4]
  wire  ways_0_clients; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88110.4]
  wire [1:0] ways_0_state; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88112.4]
  wire  ways_0_dirty; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88114.4]
  wire [15:0] _T_215; // @[:chipyard.TestHarness.RocketConfig.fir@88118.4 :chipyard.TestHarness.RocketConfig.fir@88120.4]
  wire [11:0] ways_1_tag; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88121.4]
  wire  ways_1_clients; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88123.4]
  wire [1:0] ways_1_state; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88125.4]
  wire  ways_1_dirty; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88127.4]
  wire [15:0] _T_221; // @[:chipyard.TestHarness.RocketConfig.fir@88131.4 :chipyard.TestHarness.RocketConfig.fir@88133.4]
  wire [11:0] ways_2_tag; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88134.4]
  wire  ways_2_clients; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88136.4]
  wire [1:0] ways_2_state; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88138.4]
  wire  ways_2_dirty; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88140.4]
  wire [15:0] _T_227; // @[:chipyard.TestHarness.RocketConfig.fir@88144.4 :chipyard.TestHarness.RocketConfig.fir@88146.4]
  wire [11:0] ways_3_tag; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88147.4]
  wire  ways_3_clients; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88149.4]
  wire [1:0] ways_3_state; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88151.4]
  wire  ways_3_dirty; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88153.4]
  wire [15:0] _T_233; // @[:chipyard.TestHarness.RocketConfig.fir@88157.4 :chipyard.TestHarness.RocketConfig.fir@88159.4]
  wire [11:0] ways_4_tag; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88160.4]
  wire  ways_4_clients; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88162.4]
  wire [1:0] ways_4_state; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88164.4]
  wire  ways_4_dirty; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88166.4]
  wire [15:0] _T_239; // @[:chipyard.TestHarness.RocketConfig.fir@88170.4 :chipyard.TestHarness.RocketConfig.fir@88172.4]
  wire [11:0] ways_5_tag; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88173.4]
  wire  ways_5_clients; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88175.4]
  wire [1:0] ways_5_state; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88177.4]
  wire  ways_5_dirty; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88179.4]
  wire [15:0] _T_245; // @[:chipyard.TestHarness.RocketConfig.fir@88183.4 :chipyard.TestHarness.RocketConfig.fir@88185.4]
  wire [11:0] ways_6_tag; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88186.4]
  wire  ways_6_clients; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88188.4]
  wire [1:0] ways_6_state; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88190.4]
  wire  ways_6_dirty; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88192.4]
  wire [15:0] _T_251; // @[:chipyard.TestHarness.RocketConfig.fir@88196.4 :chipyard.TestHarness.RocketConfig.fir@88198.4]
  wire [11:0] ways_7_tag; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88199.4]
  wire  ways_7_clients; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88201.4]
  wire [1:0] ways_7_state; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88203.4]
  wire  ways_7_dirty; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88205.4]
  wire  _T_256; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88217.4]
  wire  _T_257; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88218.4]
  wire  _T_258; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88219.4]
  wire  _T_259; // @[Directory.scala 129:46:chipyard.TestHarness.RocketConfig.fir@88220.4]
  wire  _T_260; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88221.4]
  wire  _T_261; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88222.4]
  wire  _T_262; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88223.4]
  wire  _T_263; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88224.4]
  wire  _T_264; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88225.4]
  wire  _T_265; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88226.4]
  wire  _T_267; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88228.4]
  wire  _T_268; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88229.4]
  wire  _T_269; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88230.4]
  wire  _T_270; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88231.4]
  wire  _T_271; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88232.4]
  wire  _T_272; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88233.4]
  wire  _T_274; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88235.4]
  wire  _T_275; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88236.4]
  wire  _T_276; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88237.4]
  wire  _T_277; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88238.4]
  wire  _T_278; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88239.4]
  wire  _T_279; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88240.4]
  wire  _T_281; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88242.4]
  wire  _T_282; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88243.4]
  wire  _T_283; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88244.4]
  wire  _T_284; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88245.4]
  wire  _T_285; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88246.4]
  wire  _T_286; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88247.4]
  wire  _T_288; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88249.4]
  wire  _T_289; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88250.4]
  wire  _T_290; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88251.4]
  wire  _T_291; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88252.4]
  wire  _T_292; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88253.4]
  wire  _T_293; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88254.4]
  wire  _T_295; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88256.4]
  wire  _T_296; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88257.4]
  wire  _T_297; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88258.4]
  wire  _T_298; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88259.4]
  wire  _T_299; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88260.4]
  wire  _T_300; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88261.4]
  wire  _T_302; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88263.4]
  wire  _T_303; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88264.4]
  wire  _T_304; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88265.4]
  wire  _T_305; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88266.4]
  wire  _T_306; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88267.4]
  wire  _T_307; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88268.4]
  wire  _T_309; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88270.4]
  wire  _T_310; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88271.4]
  wire  _T_311; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88272.4]
  wire [7:0] hits; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88279.4]
  wire  hit; // @[Directory.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88280.4]
  wire [15:0] _T_328; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88292.4]
  wire [15:0] _T_329; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88293.4]
  wire [15:0] _T_332; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88296.4]
  wire [15:0] _T_333; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88297.4]
  wire [15:0] _T_336; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88300.4]
  wire [15:0] _T_337; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88301.4]
  wire [15:0] _T_340; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88304.4]
  wire [15:0] _T_341; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88305.4]
  wire [15:0] _T_344; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88308.4]
  wire [15:0] _T_345; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88309.4]
  wire [15:0] _T_348; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88312.4]
  wire [15:0] _T_349; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88313.4]
  wire [15:0] _T_352; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88316.4]
  wire [15:0] _T_353; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88317.4]
  wire [15:0] _T_356; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88320.4]
  wire [15:0] _T_357; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88321.4]
  wire [15:0] _T_358; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88322.4]
  wire [15:0] _T_359; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88323.4]
  wire [15:0] _T_360; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88324.4]
  wire [15:0] _T_361; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88325.4]
  wire [15:0] _T_362; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88326.4]
  wire [15:0] _T_363; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88327.4]
  wire [15:0] _T_364; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88328.4]
  wire  _T_371; // @[Directory.scala 134:75:chipyard.TestHarness.RocketConfig.fir@88340.4]
  wire  _T_372; // @[Directory.scala 134:62:chipyard.TestHarness.RocketConfig.fir@88341.4]
  wire [15:0] _T_384; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88353.4]
  wire [15:0] _T_388; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88357.4]
  wire [15:0] _T_392; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88361.4]
  wire [15:0] _T_396; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88365.4]
  wire [15:0] _T_400; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88369.4]
  wire [15:0] _T_404; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88373.4]
  wire [15:0] _T_408; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88377.4]
  wire [15:0] _T_412; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88381.4]
  wire [15:0] _T_413; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88382.4]
  wire [15:0] _T_414; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88383.4]
  wire [15:0] _T_415; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88384.4]
  wire [15:0] _T_416; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88385.4]
  wire [15:0] _T_417; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88386.4]
  wire [15:0] _T_418; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88387.4]
  wire [15:0] _T_419; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88388.4]
  wire  _T_426_dirty; // @[Directory.scala 134:52:chipyard.TestHarness.RocketConfig.fir@88400.4]
  wire [1:0] _T_426_state; // @[Directory.scala 134:52:chipyard.TestHarness.RocketConfig.fir@88400.4]
  wire  _T_426_clients; // @[Directory.scala 134:52:chipyard.TestHarness.RocketConfig.fir@88400.4]
  wire [11:0] _T_426_tag; // @[Directory.scala 134:52:chipyard.TestHarness.RocketConfig.fir@88400.4]
  wire  _T_428; // @[Directory.scala 135:42:chipyard.TestHarness.RocketConfig.fir@88403.4]
  wire  _T_429; // @[Directory.scala 135:75:chipyard.TestHarness.RocketConfig.fir@88404.4]
  wire  _T_430; // @[Directory.scala 135:54:chipyard.TestHarness.RocketConfig.fir@88405.4]
  wire  _T_434; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@88410.4]
  wire [3:0] _T_435; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@88411.4]
  wire  _T_438; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@88414.4]
  wire [1:0] _T_439; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@88415.4]
  wire [2:0] _T_442; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88418.4]
  wire [2:0] _T_444; // @[Directory.scala 136:53:chipyard.TestHarness.RocketConfig.fir@88420.4]
  cc_dir cc_dir ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@87755.4]
    .RW0_addr(cc_dir_RW0_addr),
    .RW0_en(cc_dir_RW0_en),
    .RW0_clk(cc_dir_RW0_clk),
    .RW0_wmode(cc_dir_RW0_wmode),
    .RW0_wdata_0(cc_dir_RW0_wdata_0),
    .RW0_wdata_1(cc_dir_RW0_wdata_1),
    .RW0_wdata_2(cc_dir_RW0_wdata_2),
    .RW0_wdata_3(cc_dir_RW0_wdata_3),
    .RW0_wdata_4(cc_dir_RW0_wdata_4),
    .RW0_wdata_5(cc_dir_RW0_wdata_5),
    .RW0_wdata_6(cc_dir_RW0_wdata_6),
    .RW0_wdata_7(cc_dir_RW0_wdata_7),
    .RW0_rdata_0(cc_dir_RW0_rdata_0),
    .RW0_rdata_1(cc_dir_RW0_rdata_1),
    .RW0_rdata_2(cc_dir_RW0_rdata_2),
    .RW0_rdata_3(cc_dir_RW0_rdata_3),
    .RW0_rdata_4(cc_dir_RW0_rdata_4),
    .RW0_rdata_5(cc_dir_RW0_rdata_5),
    .RW0_rdata_6(cc_dir_RW0_rdata_6),
    .RW0_rdata_7(cc_dir_RW0_rdata_7),
    .RW0_wmask_0(cc_dir_RW0_wmask_0),
    .RW0_wmask_1(cc_dir_RW0_wmask_1),
    .RW0_wmask_2(cc_dir_RW0_wmask_2),
    .RW0_wmask_3(cc_dir_RW0_wmask_3),
    .RW0_wmask_4(cc_dir_RW0_wmask_4),
    .RW0_wmask_5(cc_dir_RW0_wmask_5),
    .RW0_wmask_6(cc_dir_RW0_wmask_6),
    .RW0_wmask_7(cc_dir_RW0_wmask_7)
  );
  Queue_23 write ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87756.4]
    .clock(write_clock),
    .reset(write_reset),
    .io_enq_ready(write_io_enq_ready),
    .io_enq_valid(write_io_enq_valid),
    .io_enq_bits_set(write_io_enq_bits_set),
    .io_enq_bits_way(write_io_enq_bits_way),
    .io_enq_bits_data_dirty(write_io_enq_bits_data_dirty),
    .io_enq_bits_data_state(write_io_enq_bits_data_state),
    .io_enq_bits_data_clients(write_io_enq_bits_data_clients),
    .io_enq_bits_data_tag(write_io_enq_bits_data_tag),
    .io_deq_ready(write_io_deq_ready),
    .io_deq_valid(write_io_deq_valid),
    .io_deq_bits_set(write_io_deq_bits_set),
    .io_deq_bits_way(write_io_deq_bits_way),
    .io_deq_bits_data_dirty(write_io_deq_bits_data_dirty),
    .io_deq_bits_data_state(write_io_deq_bits_data_state),
    .io_deq_bits_data_clients(write_io_deq_bits_data_clients),
    .io_deq_bits_data_tag(write_io_deq_bits_data_tag)
  );
  MaxPeriodFibonacciLFSR MaxPeriodFibonacciLFSR ( // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@87925.4]
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
  assign wipeDone = wipeCount[10]; // @[Directory.scala 79:27:chipyard.TestHarness.RocketConfig.fir@87770.4]
  assign wipeSet = wipeCount[9:0]; // @[Directory.scala 80:26:chipyard.TestHarness.RocketConfig.fir@87771.4]
  assign _T = ~wipeDone; // @[Directory.scala 83:9:chipyard.TestHarness.RocketConfig.fir@87773.4]
  assign _T_1 = ~wipeOff; // @[Directory.scala 83:22:chipyard.TestHarness.RocketConfig.fir@87774.4]
  assign _T_2 = _T & _T_1; // @[Directory.scala 83:19:chipyard.TestHarness.RocketConfig.fir@87775.4]
  assign _T_4 = wipeCount + 11'h1; // @[Directory.scala 83:57:chipyard.TestHarness.RocketConfig.fir@87778.6]
  assign _T_5 = ~io_read_valid; // @[Directory.scala 84:23:chipyard.TestHarness.RocketConfig.fir@87781.4]
  assign _T_6 = wipeDone | _T_5; // @[Directory.scala 84:20:chipyard.TestHarness.RocketConfig.fir@87782.4]
  assign _T_8 = _T_6 | reset; // @[Directory.scala 84:10:chipyard.TestHarness.RocketConfig.fir@87784.4]
  assign _T_9 = ~_T_8; // @[Directory.scala 84:10:chipyard.TestHarness.RocketConfig.fir@87785.4]
  assign wen = _T_2 | write_io_deq_valid; // @[Directory.scala 88:37:chipyard.TestHarness.RocketConfig.fir@87793.4]
  assign _T_14 = _T_5 | wipeDone; // @[Directory.scala 89:26:chipyard.TestHarness.RocketConfig.fir@87795.4]
  assign _T_16 = _T_14 | reset; // @[Directory.scala 89:10:chipyard.TestHarness.RocketConfig.fir@87797.4]
  assign _T_17 = ~_T_16; // @[Directory.scala 89:10:chipyard.TestHarness.RocketConfig.fir@87798.4]
  assign _T_20 = _T_5 & wen; // @[Directory.scala 94:14:chipyard.TestHarness.RocketConfig.fir@87806.4]
  assign _T_21 = wipeDone ? write_io_deq_bits_set : wipeSet; // @[Directory.scala 96:10:chipyard.TestHarness.RocketConfig.fir@87808.6]
  assign _T_24 = {write_io_deq_bits_data_dirty,write_io_deq_bits_data_state,write_io_deq_bits_data_clients,write_io_deq_bits_data_tag}; // @[Directory.scala 97:67:chipyard.TestHarness.RocketConfig.fir@87811.6]
  assign _T_55 = write_io_deq_bits_way; // @[OneHot.scala 64:49:chipyard.TestHarness.RocketConfig.fir@87851.6]
  assign _T_56 = 8'h1 << _T_55; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@87852.6]
  assign _T_93 = {MaxPeriodFibonacciLFSR_io_out_7,MaxPeriodFibonacciLFSR_io_out_6,MaxPeriodFibonacciLFSR_io_out_5,MaxPeriodFibonacciLFSR_io_out_4,MaxPeriodFibonacciLFSR_io_out_3,MaxPeriodFibonacciLFSR_io_out_2,MaxPeriodFibonacciLFSR_io_out_1,MaxPeriodFibonacciLFSR_io_out_0}; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@87952.4]
  assign _T_101 = {MaxPeriodFibonacciLFSR_io_out_15,MaxPeriodFibonacciLFSR_io_out_14,MaxPeriodFibonacciLFSR_io_out_13,MaxPeriodFibonacciLFSR_io_out_12,MaxPeriodFibonacciLFSR_io_out_11,MaxPeriodFibonacciLFSR_io_out_10,MaxPeriodFibonacciLFSR_io_out_9,MaxPeriodFibonacciLFSR_io_out_8,_T_93}; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@87960.4]
  assign _T_125 = {_T_101[8],_T_101[9],_T_101[10],_T_101[11],_T_101[12],_T_101[13],_T_101[14],_T_101[15]}; // @[LFSR.scala 43:8:chipyard.TestHarness.RocketConfig.fir@88000.4]
  assign _T_133 = {_T_101[0],_T_101[1],_T_101[2],_T_101[3],_T_101[4],_T_101[5],_T_101[6],_T_101[7],_T_125}; // @[LFSR.scala 43:8:chipyard.TestHarness.RocketConfig.fir@88008.4]
  assign victimLFSR = _T_133[9:0]; // @[Directory.scala 113:46:chipyard.TestHarness.RocketConfig.fir@88009.4]
  assign _T_135 = 10'h80 <= victimLFSR; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88011.4]
  assign _T_136 = 10'h100 <= victimLFSR; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88012.4]
  assign _T_137 = 10'h180 <= victimLFSR; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88013.4]
  assign _T_138 = 10'h200 <= victimLFSR; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88014.4]
  assign _T_139 = 10'h280 <= victimLFSR; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88015.4]
  assign _T_140 = 10'h300 <= victimLFSR; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88016.4]
  assign _T_141 = 10'h380 <= victimLFSR; // @[Directory.scala 115:43:chipyard.TestHarness.RocketConfig.fir@88017.4]
  assign victimLTE = {_T_141,_T_140,_T_139,_T_138,_T_137,_T_136,_T_135,1'h1}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88024.4]
  assign victimSimp = {1'h0,victimLTE[7:1],1'h1}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88027.4]
  assign _T_152 = ~victimSimp[8:1]; // @[Directory.scala 117:57:chipyard.TestHarness.RocketConfig.fir@88030.4]
  assign victimWayOH = victimSimp[7:0] & _T_152; // @[Directory.scala 117:55:chipyard.TestHarness.RocketConfig.fir@88031.4]
  assign _T_155 = |victimWayOH[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@88034.4]
  assign _T_156 = victimWayOH[7:4] | victimWayOH[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@88035.4]
  assign _T_159 = |_T_156[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@88038.4]
  assign _T_160 = _T_156[3:2] | _T_156[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@88039.4]
  assign victimWay = {_T_155,_T_159,_T_160[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88042.4]
  assign _T_163 = ~ren1; // @[Directory.scala 119:11:chipyard.TestHarness.RocketConfig.fir@88043.4]
  assign _T_166 = _T_163 | victimLTE[0]; // @[Directory.scala 119:17:chipyard.TestHarness.RocketConfig.fir@88046.4]
  assign _T_168 = _T_166 | reset; // @[Directory.scala 119:10:chipyard.TestHarness.RocketConfig.fir@88048.4]
  assign _T_169 = ~_T_168; // @[Directory.scala 119:10:chipyard.TestHarness.RocketConfig.fir@88049.4]
  assign _T_172 = ~victimSimp; // @[Directory.scala 120:41:chipyard.TestHarness.RocketConfig.fir@88056.4]
  assign _GEN_42 = {{1'd0}, victimSimp[8:1]}; // @[Directory.scala 120:39:chipyard.TestHarness.RocketConfig.fir@88057.4]
  assign _T_173 = _GEN_42 & _T_172; // @[Directory.scala 120:39:chipyard.TestHarness.RocketConfig.fir@88057.4]
  assign _T_174 = _T_173 == 9'h0; // @[Directory.scala 120:54:chipyard.TestHarness.RocketConfig.fir@88058.4]
  assign _T_175 = _T_163 | _T_174; // @[Directory.scala 120:17:chipyard.TestHarness.RocketConfig.fir@88059.4]
  assign _T_177 = _T_175 | reset; // @[Directory.scala 120:10:chipyard.TestHarness.RocketConfig.fir@88061.4]
  assign _T_178 = ~_T_177; // @[Directory.scala 120:10:chipyard.TestHarness.RocketConfig.fir@88062.4]
  assign _T_188 = victimWayOH[0] + victimWayOH[1]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88076.4]
  assign _T_190 = victimWayOH[2] + victimWayOH[3]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88078.4]
  assign _T_192 = _T_188 + _T_190; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88080.4]
  assign _T_194 = victimWayOH[4] + victimWayOH[5]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88082.4]
  assign _T_196 = victimWayOH[6] + victimWayOH[7]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88084.4]
  assign _T_198 = _T_194 + _T_196; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88086.4]
  assign _T_200 = _T_192 + _T_198; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@88088.4]
  assign _T_202 = _T_200 == 4'h1; // @[Directory.scala 121:42:chipyard.TestHarness.RocketConfig.fir@88090.4]
  assign _T_203 = _T_163 | _T_202; // @[Directory.scala 121:17:chipyard.TestHarness.RocketConfig.fir@88091.4]
  assign _T_205 = _T_203 | reset; // @[Directory.scala 121:10:chipyard.TestHarness.RocketConfig.fir@88093.4]
  assign _T_206 = ~_T_205; // @[Directory.scala 121:10:chipyard.TestHarness.RocketConfig.fir@88094.4]
  assign _T_207 = write_io_deq_bits_set == set; // @[Directory.scala 123:45:chipyard.TestHarness.RocketConfig.fir@88099.4]
  assign setQuash = write_io_deq_valid & _T_207; // @[Directory.scala 123:31:chipyard.TestHarness.RocketConfig.fir@88100.4]
  assign tagMatch = write_io_deq_bits_data_tag == tag; // @[Directory.scala 124:34:chipyard.TestHarness.RocketConfig.fir@88101.4]
  assign wayMatch = write_io_deq_bits_way == victimWay; // @[Directory.scala 125:29:chipyard.TestHarness.RocketConfig.fir@88102.4]
  assign _T_209 = cc_dir_RW0_rdata_0; // @[:chipyard.TestHarness.RocketConfig.fir@88105.4 :chipyard.TestHarness.RocketConfig.fir@88107.4]
  assign ways_0_tag = _T_209[11:0]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88108.4]
  assign ways_0_clients = _T_209[12]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88110.4]
  assign ways_0_state = _T_209[14:13]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88112.4]
  assign ways_0_dirty = _T_209[15]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88114.4]
  assign _T_215 = cc_dir_RW0_rdata_1; // @[:chipyard.TestHarness.RocketConfig.fir@88118.4 :chipyard.TestHarness.RocketConfig.fir@88120.4]
  assign ways_1_tag = _T_215[11:0]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88121.4]
  assign ways_1_clients = _T_215[12]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88123.4]
  assign ways_1_state = _T_215[14:13]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88125.4]
  assign ways_1_dirty = _T_215[15]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88127.4]
  assign _T_221 = cc_dir_RW0_rdata_2; // @[:chipyard.TestHarness.RocketConfig.fir@88131.4 :chipyard.TestHarness.RocketConfig.fir@88133.4]
  assign ways_2_tag = _T_221[11:0]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88134.4]
  assign ways_2_clients = _T_221[12]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88136.4]
  assign ways_2_state = _T_221[14:13]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88138.4]
  assign ways_2_dirty = _T_221[15]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88140.4]
  assign _T_227 = cc_dir_RW0_rdata_3; // @[:chipyard.TestHarness.RocketConfig.fir@88144.4 :chipyard.TestHarness.RocketConfig.fir@88146.4]
  assign ways_3_tag = _T_227[11:0]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88147.4]
  assign ways_3_clients = _T_227[12]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88149.4]
  assign ways_3_state = _T_227[14:13]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88151.4]
  assign ways_3_dirty = _T_227[15]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88153.4]
  assign _T_233 = cc_dir_RW0_rdata_4; // @[:chipyard.TestHarness.RocketConfig.fir@88157.4 :chipyard.TestHarness.RocketConfig.fir@88159.4]
  assign ways_4_tag = _T_233[11:0]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88160.4]
  assign ways_4_clients = _T_233[12]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88162.4]
  assign ways_4_state = _T_233[14:13]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88164.4]
  assign ways_4_dirty = _T_233[15]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88166.4]
  assign _T_239 = cc_dir_RW0_rdata_5; // @[:chipyard.TestHarness.RocketConfig.fir@88170.4 :chipyard.TestHarness.RocketConfig.fir@88172.4]
  assign ways_5_tag = _T_239[11:0]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88173.4]
  assign ways_5_clients = _T_239[12]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88175.4]
  assign ways_5_state = _T_239[14:13]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88177.4]
  assign ways_5_dirty = _T_239[15]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88179.4]
  assign _T_245 = cc_dir_RW0_rdata_6; // @[:chipyard.TestHarness.RocketConfig.fir@88183.4 :chipyard.TestHarness.RocketConfig.fir@88185.4]
  assign ways_6_tag = _T_245[11:0]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88186.4]
  assign ways_6_clients = _T_245[12]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88188.4]
  assign ways_6_state = _T_245[14:13]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88190.4]
  assign ways_6_dirty = _T_245[15]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88192.4]
  assign _T_251 = cc_dir_RW0_rdata_7; // @[:chipyard.TestHarness.RocketConfig.fir@88196.4 :chipyard.TestHarness.RocketConfig.fir@88198.4]
  assign ways_7_tag = _T_251[11:0]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88199.4]
  assign ways_7_clients = _T_251[12]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88201.4]
  assign ways_7_state = _T_251[14:13]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88203.4]
  assign ways_7_dirty = _T_251[15]; // @[Directory.scala 127:69:chipyard.TestHarness.RocketConfig.fir@88205.4]
  assign _T_256 = ways_0_tag == tag; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88217.4]
  assign _T_257 = ways_0_state != 2'h0; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88218.4]
  assign _T_258 = _T_256 & _T_257; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88219.4]
  assign _T_259 = ~setQuash; // @[Directory.scala 129:46:chipyard.TestHarness.RocketConfig.fir@88220.4]
  assign _T_260 = 3'h0 != write_io_deq_bits_way; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88221.4]
  assign _T_261 = _T_259 | _T_260; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88222.4]
  assign _T_262 = _T_258 & _T_261; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88223.4]
  assign _T_263 = ways_1_tag == tag; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88224.4]
  assign _T_264 = ways_1_state != 2'h0; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88225.4]
  assign _T_265 = _T_263 & _T_264; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88226.4]
  assign _T_267 = 3'h1 != write_io_deq_bits_way; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88228.4]
  assign _T_268 = _T_259 | _T_267; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88229.4]
  assign _T_269 = _T_265 & _T_268; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88230.4]
  assign _T_270 = ways_2_tag == tag; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88231.4]
  assign _T_271 = ways_2_state != 2'h0; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88232.4]
  assign _T_272 = _T_270 & _T_271; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88233.4]
  assign _T_274 = 3'h2 != write_io_deq_bits_way; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88235.4]
  assign _T_275 = _T_259 | _T_274; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88236.4]
  assign _T_276 = _T_272 & _T_275; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88237.4]
  assign _T_277 = ways_3_tag == tag; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88238.4]
  assign _T_278 = ways_3_state != 2'h0; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88239.4]
  assign _T_279 = _T_277 & _T_278; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88240.4]
  assign _T_281 = 3'h3 != write_io_deq_bits_way; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88242.4]
  assign _T_282 = _T_259 | _T_281; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88243.4]
  assign _T_283 = _T_279 & _T_282; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88244.4]
  assign _T_284 = ways_4_tag == tag; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88245.4]
  assign _T_285 = ways_4_state != 2'h0; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88246.4]
  assign _T_286 = _T_284 & _T_285; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88247.4]
  assign _T_288 = 3'h4 != write_io_deq_bits_way; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88249.4]
  assign _T_289 = _T_259 | _T_288; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88250.4]
  assign _T_290 = _T_286 & _T_289; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88251.4]
  assign _T_291 = ways_5_tag == tag; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88252.4]
  assign _T_292 = ways_5_state != 2'h0; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88253.4]
  assign _T_293 = _T_291 & _T_292; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88254.4]
  assign _T_295 = 3'h5 != write_io_deq_bits_way; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88256.4]
  assign _T_296 = _T_259 | _T_295; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88257.4]
  assign _T_297 = _T_293 & _T_296; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88258.4]
  assign _T_298 = ways_6_tag == tag; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88259.4]
  assign _T_299 = ways_6_state != 2'h0; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88260.4]
  assign _T_300 = _T_298 & _T_299; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88261.4]
  assign _T_302 = 3'h6 != write_io_deq_bits_way; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88263.4]
  assign _T_303 = _T_259 | _T_302; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88264.4]
  assign _T_304 = _T_300 & _T_303; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88265.4]
  assign _T_305 = ways_7_tag == tag; // @[Directory.scala 129:11:chipyard.TestHarness.RocketConfig.fir@88266.4]
  assign _T_306 = ways_7_state != 2'h0; // @[Directory.scala 129:30:chipyard.TestHarness.RocketConfig.fir@88267.4]
  assign _T_307 = _T_305 & _T_306; // @[Directory.scala 129:19:chipyard.TestHarness.RocketConfig.fir@88268.4]
  assign _T_309 = 3'h7 != write_io_deq_bits_way; // @[Directory.scala 129:67:chipyard.TestHarness.RocketConfig.fir@88270.4]
  assign _T_310 = _T_259 | _T_309; // @[Directory.scala 129:56:chipyard.TestHarness.RocketConfig.fir@88271.4]
  assign _T_311 = _T_307 & _T_310; // @[Directory.scala 129:42:chipyard.TestHarness.RocketConfig.fir@88272.4]
  assign hits = {_T_311,_T_304,_T_297,_T_290,_T_283,_T_276,_T_269,_T_262}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88279.4]
  assign hit = |hits; // @[Directory.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88280.4]
  assign _T_328 = {ways_0_dirty,ways_0_state,ways_0_clients,ways_0_tag}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88292.4]
  assign _T_329 = hits[0] ? _T_328 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88293.4]
  assign _T_332 = {ways_1_dirty,ways_1_state,ways_1_clients,ways_1_tag}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88296.4]
  assign _T_333 = hits[1] ? _T_332 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88297.4]
  assign _T_336 = {ways_2_dirty,ways_2_state,ways_2_clients,ways_2_tag}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88300.4]
  assign _T_337 = hits[2] ? _T_336 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88301.4]
  assign _T_340 = {ways_3_dirty,ways_3_state,ways_3_clients,ways_3_tag}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88304.4]
  assign _T_341 = hits[3] ? _T_340 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88305.4]
  assign _T_344 = {ways_4_dirty,ways_4_state,ways_4_clients,ways_4_tag}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88308.4]
  assign _T_345 = hits[4] ? _T_344 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88309.4]
  assign _T_348 = {ways_5_dirty,ways_5_state,ways_5_clients,ways_5_tag}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88312.4]
  assign _T_349 = hits[5] ? _T_348 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88313.4]
  assign _T_352 = {ways_6_dirty,ways_6_state,ways_6_clients,ways_6_tag}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88316.4]
  assign _T_353 = hits[6] ? _T_352 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88317.4]
  assign _T_356 = {ways_7_dirty,ways_7_state,ways_7_clients,ways_7_tag}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88320.4]
  assign _T_357 = hits[7] ? _T_356 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88321.4]
  assign _T_358 = _T_329 | _T_333; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88322.4]
  assign _T_359 = _T_358 | _T_337; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88323.4]
  assign _T_360 = _T_359 | _T_341; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88324.4]
  assign _T_361 = _T_360 | _T_345; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88325.4]
  assign _T_362 = _T_361 | _T_349; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88326.4]
  assign _T_363 = _T_362 | _T_353; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88327.4]
  assign _T_364 = _T_363 | _T_357; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88328.4]
  assign _T_371 = tagMatch | wayMatch; // @[Directory.scala 134:75:chipyard.TestHarness.RocketConfig.fir@88340.4]
  assign _T_372 = setQuash & _T_371; // @[Directory.scala 134:62:chipyard.TestHarness.RocketConfig.fir@88341.4]
  assign _T_384 = victimWayOH[0] ? _T_328 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88353.4]
  assign _T_388 = victimWayOH[1] ? _T_332 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88357.4]
  assign _T_392 = victimWayOH[2] ? _T_336 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88361.4]
  assign _T_396 = victimWayOH[3] ? _T_340 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88365.4]
  assign _T_400 = victimWayOH[4] ? _T_344 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88369.4]
  assign _T_404 = victimWayOH[5] ? _T_348 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88373.4]
  assign _T_408 = victimWayOH[6] ? _T_352 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88377.4]
  assign _T_412 = victimWayOH[7] ? _T_356 : 16'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88381.4]
  assign _T_413 = _T_384 | _T_388; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88382.4]
  assign _T_414 = _T_413 | _T_392; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88383.4]
  assign _T_415 = _T_414 | _T_396; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88384.4]
  assign _T_416 = _T_415 | _T_400; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88385.4]
  assign _T_417 = _T_416 | _T_404; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88386.4]
  assign _T_418 = _T_417 | _T_408; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88387.4]
  assign _T_419 = _T_418 | _T_412; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@88388.4]
  assign _T_426_dirty = _T_372 ? write_io_deq_bits_data_dirty : _T_419[15]; // @[Directory.scala 134:52:chipyard.TestHarness.RocketConfig.fir@88400.4]
  assign _T_426_state = _T_372 ? write_io_deq_bits_data_state : _T_419[14:13]; // @[Directory.scala 134:52:chipyard.TestHarness.RocketConfig.fir@88400.4]
  assign _T_426_clients = _T_372 ? write_io_deq_bits_data_clients : _T_419[12]; // @[Directory.scala 134:52:chipyard.TestHarness.RocketConfig.fir@88400.4]
  assign _T_426_tag = _T_372 ? write_io_deq_bits_data_tag : _T_419[11:0]; // @[Directory.scala 134:52:chipyard.TestHarness.RocketConfig.fir@88400.4]
  assign _T_428 = setQuash & tagMatch; // @[Directory.scala 135:42:chipyard.TestHarness.RocketConfig.fir@88403.4]
  assign _T_429 = write_io_deq_bits_data_state != 2'h0; // @[Directory.scala 135:75:chipyard.TestHarness.RocketConfig.fir@88404.4]
  assign _T_430 = _T_428 & _T_429; // @[Directory.scala 135:54:chipyard.TestHarness.RocketConfig.fir@88405.4]
  assign _T_434 = |hits[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@88410.4]
  assign _T_435 = hits[7:4] | hits[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@88411.4]
  assign _T_438 = |_T_435[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@88414.4]
  assign _T_439 = _T_435[3:2] | _T_435[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@88415.4]
  assign _T_442 = {_T_434,_T_438,_T_439[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88418.4]
  assign _T_444 = _T_428 ? write_io_deq_bits_way : victimWay; // @[Directory.scala 136:53:chipyard.TestHarness.RocketConfig.fir@88420.4]
  assign io_write_ready = write_io_enq_ready; // @[Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@87766.4]
  assign io_result_bits_dirty = hit ? _T_364[15] : _T_426_dirty; // @[Directory.scala 134:18:chipyard.TestHarness.RocketConfig.fir@88402.4]
  assign io_result_bits_state = hit ? _T_364[14:13] : _T_426_state; // @[Directory.scala 134:18:chipyard.TestHarness.RocketConfig.fir@88402.4]
  assign io_result_bits_clients = hit ? _T_364[12] : _T_426_clients; // @[Directory.scala 134:18:chipyard.TestHarness.RocketConfig.fir@88402.4]
  assign io_result_bits_tag = hit ? _T_364[11:0] : _T_426_tag; // @[Directory.scala 134:18:chipyard.TestHarness.RocketConfig.fir@88402.4]
  assign io_result_bits_hit = hit | _T_430; // @[Directory.scala 135:22:chipyard.TestHarness.RocketConfig.fir@88407.4]
  assign io_result_bits_way = hit ? _T_442 : _T_444; // @[Directory.scala 136:22:chipyard.TestHarness.RocketConfig.fir@88422.4]
  assign io_ready = wipeCount[10]; // @[Directory.scala 82:12:chipyard.TestHarness.RocketConfig.fir@87772.4]
  assign cc_dir_RW0_wdata_0 = wipeDone ? _T_24 : 16'h0; // @[:chipyard.TestHarness.RocketConfig.fir@87880.8]
  assign cc_dir_RW0_wdata_1 = wipeDone ? _T_24 : 16'h0; // @[:chipyard.TestHarness.RocketConfig.fir@87883.8]
  assign cc_dir_RW0_wdata_2 = wipeDone ? _T_24 : 16'h0; // @[:chipyard.TestHarness.RocketConfig.fir@87886.8]
  assign cc_dir_RW0_wdata_3 = wipeDone ? _T_24 : 16'h0; // @[:chipyard.TestHarness.RocketConfig.fir@87889.8]
  assign cc_dir_RW0_wdata_4 = wipeDone ? _T_24 : 16'h0; // @[:chipyard.TestHarness.RocketConfig.fir@87892.8]
  assign cc_dir_RW0_wdata_5 = wipeDone ? _T_24 : 16'h0; // @[:chipyard.TestHarness.RocketConfig.fir@87895.8]
  assign cc_dir_RW0_wdata_6 = wipeDone ? _T_24 : 16'h0; // @[:chipyard.TestHarness.RocketConfig.fir@87898.8]
  assign cc_dir_RW0_wdata_7 = wipeDone ? _T_24 : 16'h0; // @[:chipyard.TestHarness.RocketConfig.fir@87901.8]
  assign cc_dir_RW0_wmask_0 = _T_56[0] | _T; // @[:chipyard.TestHarness.RocketConfig.fir@87878.6 :chipyard.TestHarness.RocketConfig.fir@87880.8]
  assign cc_dir_RW0_wmask_1 = _T_56[1] | _T; // @[:chipyard.TestHarness.RocketConfig.fir@87878.6 :chipyard.TestHarness.RocketConfig.fir@87883.8]
  assign cc_dir_RW0_wmask_2 = _T_56[2] | _T; // @[:chipyard.TestHarness.RocketConfig.fir@87878.6 :chipyard.TestHarness.RocketConfig.fir@87886.8]
  assign cc_dir_RW0_wmask_3 = _T_56[3] | _T; // @[:chipyard.TestHarness.RocketConfig.fir@87878.6 :chipyard.TestHarness.RocketConfig.fir@87889.8]
  assign cc_dir_RW0_wmask_4 = _T_56[4] | _T; // @[:chipyard.TestHarness.RocketConfig.fir@87878.6 :chipyard.TestHarness.RocketConfig.fir@87892.8]
  assign cc_dir_RW0_wmask_5 = _T_56[5] | _T; // @[:chipyard.TestHarness.RocketConfig.fir@87878.6 :chipyard.TestHarness.RocketConfig.fir@87895.8]
  assign cc_dir_RW0_wmask_6 = _T_56[6] | _T; // @[:chipyard.TestHarness.RocketConfig.fir@87878.6 :chipyard.TestHarness.RocketConfig.fir@87898.8]
  assign cc_dir_RW0_wmask_7 = _T_56[7] | _T; // @[:chipyard.TestHarness.RocketConfig.fir@87878.6 :chipyard.TestHarness.RocketConfig.fir@87901.8]
  assign write_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@87757.4]
  assign write_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@87758.4]
  assign write_io_enq_valid = io_write_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@87759.4]
  assign write_io_enq_bits_set = io_write_bits_set; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87765.4]
  assign write_io_enq_bits_way = io_write_bits_way; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87764.4]
  assign write_io_enq_bits_data_dirty = io_write_bits_data_dirty; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87763.4]
  assign write_io_enq_bits_data_state = io_write_bits_data_state; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87762.4]
  assign write_io_enq_bits_data_clients = io_write_bits_data_clients; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87761.4]
  assign write_io_enq_bits_data_tag = io_write_bits_data_tag; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87760.4]
  assign write_io_deq_ready = ~io_read_valid; // @[Directory.scala 93:15:chipyard.TestHarness.RocketConfig.fir@87804.4]
  assign MaxPeriodFibonacciLFSR_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@87926.4]
  assign MaxPeriodFibonacciLFSR_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@87927.4]
  assign MaxPeriodFibonacciLFSR_io_increment = io_read_valid; // @[PRNG.scala 85:23:chipyard.TestHarness.RocketConfig.fir@87945.4]
  assign cc_dir_RW0_wmode = ~io_read_valid;
  assign cc_dir_RW0_clk = clock;
  assign cc_dir_RW0_en = io_read_valid | _T_20;
  assign cc_dir_RW0_addr = _T_20 ? _T_21 : io_read_bits_set;
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
  wipeCount = _RAND_0[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  wipeOff = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ren1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  tag = _RAND_3[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  set = _RAND_4[9:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      wipeCount <= 11'h0;
    end else if (_T_2) begin
      wipeCount <= _T_4;
    end
    wipeOff <= reset;
    if (reset) begin
      ren1 <= 1'h0;
    end else begin
      ren1 <= io_read_valid;
    end
    if (io_read_valid) begin
      tag <= io_read_bits_tag;
    end
    if (io_read_valid) begin
      set <= io_read_bits_set;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_9) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Directory.scala:84 assert (wipeDone || !io.read.valid)\n"); // @[Directory.scala 84:10:chipyard.TestHarness.RocketConfig.fir@87787.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_9) begin
          $fatal; // @[Directory.scala 84:10:chipyard.TestHarness.RocketConfig.fir@87788.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_17) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Directory.scala:89 assert (!io.read.valid || wipeDone)\n"); // @[Directory.scala 89:10:chipyard.TestHarness.RocketConfig.fir@87800.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_17) begin
          $fatal; // @[Directory.scala 89:10:chipyard.TestHarness.RocketConfig.fir@87801.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_169) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Directory.scala:119 assert (!ren2 || victimLTE(0) === UInt(1))\n"); // @[Directory.scala 119:10:chipyard.TestHarness.RocketConfig.fir@88051.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_169) begin
          $fatal; // @[Directory.scala 119:10:chipyard.TestHarness.RocketConfig.fir@88052.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_178) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Directory.scala:120 assert (!ren2 || ((victimSimp >> 1) & ~victimSimp) === UInt(0)) // monotone\n"); // @[Directory.scala 120:10:chipyard.TestHarness.RocketConfig.fir@88064.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_178) begin
          $fatal; // @[Directory.scala 120:10:chipyard.TestHarness.RocketConfig.fir@88065.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_206) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Directory.scala:121 assert (!ren2 || PopCount(victimWayOH) === UInt(1))\n"); // @[Directory.scala 121:10:chipyard.TestHarness.RocketConfig.fir@88096.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_206) begin
          $fatal; // @[Directory.scala 121:10:chipyard.TestHarness.RocketConfig.fir@88097.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
