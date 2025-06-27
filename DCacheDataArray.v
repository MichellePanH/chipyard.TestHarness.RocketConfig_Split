module DCacheDataArray( // @[:chipyard.TestHarness.RocketConfig.fir@213466.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@213467.4]
  input         io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  input  [11:0] io_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  input         io_req_bits_write, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  input  [63:0] io_req_bits_wdata, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  input  [7:0]  io_req_bits_eccMask, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  input  [3:0]  io_req_bits_way_en, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  output [63:0] io_resp_0, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  output [63:0] io_resp_1, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  output [63:0] io_resp_2, // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
  output [63:0] io_resp_3 // @[:chipyard.TestHarness.RocketConfig.fir@213469.4]
);
  wire [8:0] data_arrays_0_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_8; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_9; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_10; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_11; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_12; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_13; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_14; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_15; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_16; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_17; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_18; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_19; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_20; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_21; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_22; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_23; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_24; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_25; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_26; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_27; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_28; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_29; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_30; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_wdata_31; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_8; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_9; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_10; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_11; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_12; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_13; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_14; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_15; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_16; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_17; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_18; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_19; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_20; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_21; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_22; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_23; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_24; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_25; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_26; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_27; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_28; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_29; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_30; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire [7:0] data_arrays_0_RW0_rdata_31; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_8; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_9; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_10; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_11; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_12; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_13; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_14; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_15; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_16; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_17; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_18; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_19; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_20; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_21; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_22; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_23; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_24; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_25; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_26; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_27; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_28; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_29; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_30; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  data_arrays_0_RW0_wmask_31; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
  wire  eccMask_0; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213474.4]
  wire  eccMask_1; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213475.4]
  wire  eccMask_2; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213476.4]
  wire  eccMask_3; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213477.4]
  wire  eccMask_4; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213478.4]
  wire  eccMask_5; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213479.4]
  wire  eccMask_6; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213480.4]
  wire  eccMask_7; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213481.4]
  wire  _T_35; // @[DCache.scala 66:17:chipyard.TestHarness.RocketConfig.fir@213552.4]
  wire  _T_46; // @[DCache.scala 70:42:chipyard.TestHarness.RocketConfig.fir@213694.4]
  wire  _T_47; // @[DCache.scala 70:39:chipyard.TestHarness.RocketConfig.fir@213695.4]
  wire [31:0] _T_54; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213707.4]
  wire [31:0] _T_57; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213710.4]
  wire [31:0] _T_60; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213714.4]
  wire [31:0] _T_63; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213717.4]
  wire [31:0] _T_66; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213721.4]
  wire [31:0] _T_69; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213724.4]
  wire [31:0] _T_72; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213728.4]
  wire [31:0] _T_75; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213731.4]
  data_arrays_0 data_arrays_0 ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213548.4]
    .RW0_addr(data_arrays_0_RW0_addr),
    .RW0_en(data_arrays_0_RW0_en),
    .RW0_clk(data_arrays_0_RW0_clk),
    .RW0_wmode(data_arrays_0_RW0_wmode),
    .RW0_wdata_0(data_arrays_0_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_0_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_0_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_0_RW0_wdata_3),
    .RW0_wdata_4(data_arrays_0_RW0_wdata_4),
    .RW0_wdata_5(data_arrays_0_RW0_wdata_5),
    .RW0_wdata_6(data_arrays_0_RW0_wdata_6),
    .RW0_wdata_7(data_arrays_0_RW0_wdata_7),
    .RW0_wdata_8(data_arrays_0_RW0_wdata_8),
    .RW0_wdata_9(data_arrays_0_RW0_wdata_9),
    .RW0_wdata_10(data_arrays_0_RW0_wdata_10),
    .RW0_wdata_11(data_arrays_0_RW0_wdata_11),
    .RW0_wdata_12(data_arrays_0_RW0_wdata_12),
    .RW0_wdata_13(data_arrays_0_RW0_wdata_13),
    .RW0_wdata_14(data_arrays_0_RW0_wdata_14),
    .RW0_wdata_15(data_arrays_0_RW0_wdata_15),
    .RW0_wdata_16(data_arrays_0_RW0_wdata_16),
    .RW0_wdata_17(data_arrays_0_RW0_wdata_17),
    .RW0_wdata_18(data_arrays_0_RW0_wdata_18),
    .RW0_wdata_19(data_arrays_0_RW0_wdata_19),
    .RW0_wdata_20(data_arrays_0_RW0_wdata_20),
    .RW0_wdata_21(data_arrays_0_RW0_wdata_21),
    .RW0_wdata_22(data_arrays_0_RW0_wdata_22),
    .RW0_wdata_23(data_arrays_0_RW0_wdata_23),
    .RW0_wdata_24(data_arrays_0_RW0_wdata_24),
    .RW0_wdata_25(data_arrays_0_RW0_wdata_25),
    .RW0_wdata_26(data_arrays_0_RW0_wdata_26),
    .RW0_wdata_27(data_arrays_0_RW0_wdata_27),
    .RW0_wdata_28(data_arrays_0_RW0_wdata_28),
    .RW0_wdata_29(data_arrays_0_RW0_wdata_29),
    .RW0_wdata_30(data_arrays_0_RW0_wdata_30),
    .RW0_wdata_31(data_arrays_0_RW0_wdata_31),
    .RW0_rdata_0(data_arrays_0_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_0_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_0_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_0_RW0_rdata_3),
    .RW0_rdata_4(data_arrays_0_RW0_rdata_4),
    .RW0_rdata_5(data_arrays_0_RW0_rdata_5),
    .RW0_rdata_6(data_arrays_0_RW0_rdata_6),
    .RW0_rdata_7(data_arrays_0_RW0_rdata_7),
    .RW0_rdata_8(data_arrays_0_RW0_rdata_8),
    .RW0_rdata_9(data_arrays_0_RW0_rdata_9),
    .RW0_rdata_10(data_arrays_0_RW0_rdata_10),
    .RW0_rdata_11(data_arrays_0_RW0_rdata_11),
    .RW0_rdata_12(data_arrays_0_RW0_rdata_12),
    .RW0_rdata_13(data_arrays_0_RW0_rdata_13),
    .RW0_rdata_14(data_arrays_0_RW0_rdata_14),
    .RW0_rdata_15(data_arrays_0_RW0_rdata_15),
    .RW0_rdata_16(data_arrays_0_RW0_rdata_16),
    .RW0_rdata_17(data_arrays_0_RW0_rdata_17),
    .RW0_rdata_18(data_arrays_0_RW0_rdata_18),
    .RW0_rdata_19(data_arrays_0_RW0_rdata_19),
    .RW0_rdata_20(data_arrays_0_RW0_rdata_20),
    .RW0_rdata_21(data_arrays_0_RW0_rdata_21),
    .RW0_rdata_22(data_arrays_0_RW0_rdata_22),
    .RW0_rdata_23(data_arrays_0_RW0_rdata_23),
    .RW0_rdata_24(data_arrays_0_RW0_rdata_24),
    .RW0_rdata_25(data_arrays_0_RW0_rdata_25),
    .RW0_rdata_26(data_arrays_0_RW0_rdata_26),
    .RW0_rdata_27(data_arrays_0_RW0_rdata_27),
    .RW0_rdata_28(data_arrays_0_RW0_rdata_28),
    .RW0_rdata_29(data_arrays_0_RW0_rdata_29),
    .RW0_rdata_30(data_arrays_0_RW0_rdata_30),
    .RW0_rdata_31(data_arrays_0_RW0_rdata_31),
    .RW0_wmask_0(data_arrays_0_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_0_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_0_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_0_RW0_wmask_3),
    .RW0_wmask_4(data_arrays_0_RW0_wmask_4),
    .RW0_wmask_5(data_arrays_0_RW0_wmask_5),
    .RW0_wmask_6(data_arrays_0_RW0_wmask_6),
    .RW0_wmask_7(data_arrays_0_RW0_wmask_7),
    .RW0_wmask_8(data_arrays_0_RW0_wmask_8),
    .RW0_wmask_9(data_arrays_0_RW0_wmask_9),
    .RW0_wmask_10(data_arrays_0_RW0_wmask_10),
    .RW0_wmask_11(data_arrays_0_RW0_wmask_11),
    .RW0_wmask_12(data_arrays_0_RW0_wmask_12),
    .RW0_wmask_13(data_arrays_0_RW0_wmask_13),
    .RW0_wmask_14(data_arrays_0_RW0_wmask_14),
    .RW0_wmask_15(data_arrays_0_RW0_wmask_15),
    .RW0_wmask_16(data_arrays_0_RW0_wmask_16),
    .RW0_wmask_17(data_arrays_0_RW0_wmask_17),
    .RW0_wmask_18(data_arrays_0_RW0_wmask_18),
    .RW0_wmask_19(data_arrays_0_RW0_wmask_19),
    .RW0_wmask_20(data_arrays_0_RW0_wmask_20),
    .RW0_wmask_21(data_arrays_0_RW0_wmask_21),
    .RW0_wmask_22(data_arrays_0_RW0_wmask_22),
    .RW0_wmask_23(data_arrays_0_RW0_wmask_23),
    .RW0_wmask_24(data_arrays_0_RW0_wmask_24),
    .RW0_wmask_25(data_arrays_0_RW0_wmask_25),
    .RW0_wmask_26(data_arrays_0_RW0_wmask_26),
    .RW0_wmask_27(data_arrays_0_RW0_wmask_27),
    .RW0_wmask_28(data_arrays_0_RW0_wmask_28),
    .RW0_wmask_29(data_arrays_0_RW0_wmask_29),
    .RW0_wmask_30(data_arrays_0_RW0_wmask_30),
    .RW0_wmask_31(data_arrays_0_RW0_wmask_31)
  );
  assign eccMask_0 = io_req_bits_eccMask[0]; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213474.4]
  assign eccMask_1 = io_req_bits_eccMask[1]; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213475.4]
  assign eccMask_2 = io_req_bits_eccMask[2]; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213476.4]
  assign eccMask_3 = io_req_bits_eccMask[3]; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213477.4]
  assign eccMask_4 = io_req_bits_eccMask[4]; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213478.4]
  assign eccMask_5 = io_req_bits_eccMask[5]; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213479.4]
  assign eccMask_6 = io_req_bits_eccMask[6]; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213480.4]
  assign eccMask_7 = io_req_bits_eccMask[7]; // @[DCache.scala 50:79:chipyard.TestHarness.RocketConfig.fir@213481.4]
  assign _T_35 = io_req_valid & io_req_bits_write; // @[DCache.scala 66:17:chipyard.TestHarness.RocketConfig.fir@213552.4]
  assign _T_46 = ~io_req_bits_write; // @[DCache.scala 70:42:chipyard.TestHarness.RocketConfig.fir@213694.4]
  assign _T_47 = io_req_valid & _T_46; // @[DCache.scala 70:39:chipyard.TestHarness.RocketConfig.fir@213695.4]
  assign _T_54 = {data_arrays_0_RW0_rdata_3,data_arrays_0_RW0_rdata_2,data_arrays_0_RW0_rdata_1,data_arrays_0_RW0_rdata_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213707.4]
  assign _T_57 = {data_arrays_0_RW0_rdata_7,data_arrays_0_RW0_rdata_6,data_arrays_0_RW0_rdata_5,data_arrays_0_RW0_rdata_4}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213710.4]
  assign _T_60 = {data_arrays_0_RW0_rdata_11,data_arrays_0_RW0_rdata_10,data_arrays_0_RW0_rdata_9,data_arrays_0_RW0_rdata_8}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213714.4]
  assign _T_63 = {data_arrays_0_RW0_rdata_15,data_arrays_0_RW0_rdata_14,data_arrays_0_RW0_rdata_13,data_arrays_0_RW0_rdata_12}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213717.4]
  assign _T_66 = {data_arrays_0_RW0_rdata_19,data_arrays_0_RW0_rdata_18,data_arrays_0_RW0_rdata_17,data_arrays_0_RW0_rdata_16}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213721.4]
  assign _T_69 = {data_arrays_0_RW0_rdata_23,data_arrays_0_RW0_rdata_22,data_arrays_0_RW0_rdata_21,data_arrays_0_RW0_rdata_20}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213724.4]
  assign _T_72 = {data_arrays_0_RW0_rdata_27,data_arrays_0_RW0_rdata_26,data_arrays_0_RW0_rdata_25,data_arrays_0_RW0_rdata_24}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213728.4]
  assign _T_75 = {data_arrays_0_RW0_rdata_31,data_arrays_0_RW0_rdata_30,data_arrays_0_RW0_rdata_29,data_arrays_0_RW0_rdata_28}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213731.4]
  assign io_resp_0 = {_T_57,_T_54}; // @[DCache.scala 73:69:chipyard.TestHarness.RocketConfig.fir@213733.4]
  assign io_resp_1 = {_T_63,_T_60}; // @[DCache.scala 73:69:chipyard.TestHarness.RocketConfig.fir@213734.4]
  assign io_resp_2 = {_T_69,_T_66}; // @[DCache.scala 73:69:chipyard.TestHarness.RocketConfig.fir@213735.4]
  assign io_resp_3 = {_T_75,_T_72}; // @[DCache.scala 73:69:chipyard.TestHarness.RocketConfig.fir@213736.4]
  assign data_arrays_0_RW0_wdata_0 = io_req_bits_wdata[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@213598.8]
  assign data_arrays_0_RW0_wdata_1 = io_req_bits_wdata[15:8]; // @[:chipyard.TestHarness.RocketConfig.fir@213601.8]
  assign data_arrays_0_RW0_wdata_2 = io_req_bits_wdata[23:16]; // @[:chipyard.TestHarness.RocketConfig.fir@213604.8]
  assign data_arrays_0_RW0_wdata_3 = io_req_bits_wdata[31:24]; // @[:chipyard.TestHarness.RocketConfig.fir@213607.8]
  assign data_arrays_0_RW0_wdata_4 = io_req_bits_wdata[39:32]; // @[:chipyard.TestHarness.RocketConfig.fir@213610.8]
  assign data_arrays_0_RW0_wdata_5 = io_req_bits_wdata[47:40]; // @[:chipyard.TestHarness.RocketConfig.fir@213613.8]
  assign data_arrays_0_RW0_wdata_6 = io_req_bits_wdata[55:48]; // @[:chipyard.TestHarness.RocketConfig.fir@213616.8]
  assign data_arrays_0_RW0_wdata_7 = io_req_bits_wdata[63:56]; // @[:chipyard.TestHarness.RocketConfig.fir@213619.8]
  assign data_arrays_0_RW0_wdata_8 = io_req_bits_wdata[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@213622.8]
  assign data_arrays_0_RW0_wdata_9 = io_req_bits_wdata[15:8]; // @[:chipyard.TestHarness.RocketConfig.fir@213625.8]
  assign data_arrays_0_RW0_wdata_10 = io_req_bits_wdata[23:16]; // @[:chipyard.TestHarness.RocketConfig.fir@213628.8]
  assign data_arrays_0_RW0_wdata_11 = io_req_bits_wdata[31:24]; // @[:chipyard.TestHarness.RocketConfig.fir@213631.8]
  assign data_arrays_0_RW0_wdata_12 = io_req_bits_wdata[39:32]; // @[:chipyard.TestHarness.RocketConfig.fir@213634.8]
  assign data_arrays_0_RW0_wdata_13 = io_req_bits_wdata[47:40]; // @[:chipyard.TestHarness.RocketConfig.fir@213637.8]
  assign data_arrays_0_RW0_wdata_14 = io_req_bits_wdata[55:48]; // @[:chipyard.TestHarness.RocketConfig.fir@213640.8]
  assign data_arrays_0_RW0_wdata_15 = io_req_bits_wdata[63:56]; // @[:chipyard.TestHarness.RocketConfig.fir@213643.8]
  assign data_arrays_0_RW0_wdata_16 = io_req_bits_wdata[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@213646.8]
  assign data_arrays_0_RW0_wdata_17 = io_req_bits_wdata[15:8]; // @[:chipyard.TestHarness.RocketConfig.fir@213649.8]
  assign data_arrays_0_RW0_wdata_18 = io_req_bits_wdata[23:16]; // @[:chipyard.TestHarness.RocketConfig.fir@213652.8]
  assign data_arrays_0_RW0_wdata_19 = io_req_bits_wdata[31:24]; // @[:chipyard.TestHarness.RocketConfig.fir@213655.8]
  assign data_arrays_0_RW0_wdata_20 = io_req_bits_wdata[39:32]; // @[:chipyard.TestHarness.RocketConfig.fir@213658.8]
  assign data_arrays_0_RW0_wdata_21 = io_req_bits_wdata[47:40]; // @[:chipyard.TestHarness.RocketConfig.fir@213661.8]
  assign data_arrays_0_RW0_wdata_22 = io_req_bits_wdata[55:48]; // @[:chipyard.TestHarness.RocketConfig.fir@213664.8]
  assign data_arrays_0_RW0_wdata_23 = io_req_bits_wdata[63:56]; // @[:chipyard.TestHarness.RocketConfig.fir@213667.8]
  assign data_arrays_0_RW0_wdata_24 = io_req_bits_wdata[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@213670.8]
  assign data_arrays_0_RW0_wdata_25 = io_req_bits_wdata[15:8]; // @[:chipyard.TestHarness.RocketConfig.fir@213673.8]
  assign data_arrays_0_RW0_wdata_26 = io_req_bits_wdata[23:16]; // @[:chipyard.TestHarness.RocketConfig.fir@213676.8]
  assign data_arrays_0_RW0_wdata_27 = io_req_bits_wdata[31:24]; // @[:chipyard.TestHarness.RocketConfig.fir@213679.8]
  assign data_arrays_0_RW0_wdata_28 = io_req_bits_wdata[39:32]; // @[:chipyard.TestHarness.RocketConfig.fir@213682.8]
  assign data_arrays_0_RW0_wdata_29 = io_req_bits_wdata[47:40]; // @[:chipyard.TestHarness.RocketConfig.fir@213685.8]
  assign data_arrays_0_RW0_wdata_30 = io_req_bits_wdata[55:48]; // @[:chipyard.TestHarness.RocketConfig.fir@213688.8]
  assign data_arrays_0_RW0_wdata_31 = io_req_bits_wdata[63:56]; // @[:chipyard.TestHarness.RocketConfig.fir@213691.8]
  assign data_arrays_0_RW0_wmask_0 = eccMask_0 & io_req_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213598.8]
  assign data_arrays_0_RW0_wmask_1 = eccMask_1 & io_req_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213601.8]
  assign data_arrays_0_RW0_wmask_2 = eccMask_2 & io_req_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213604.8]
  assign data_arrays_0_RW0_wmask_3 = eccMask_3 & io_req_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213607.8]
  assign data_arrays_0_RW0_wmask_4 = eccMask_4 & io_req_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213610.8]
  assign data_arrays_0_RW0_wmask_5 = eccMask_5 & io_req_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213613.8]
  assign data_arrays_0_RW0_wmask_6 = eccMask_6 & io_req_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213616.8]
  assign data_arrays_0_RW0_wmask_7 = eccMask_7 & io_req_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213619.8]
  assign data_arrays_0_RW0_wmask_8 = eccMask_0 & io_req_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213622.8]
  assign data_arrays_0_RW0_wmask_9 = eccMask_1 & io_req_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213625.8]
  assign data_arrays_0_RW0_wmask_10 = eccMask_2 & io_req_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213628.8]
  assign data_arrays_0_RW0_wmask_11 = eccMask_3 & io_req_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213631.8]
  assign data_arrays_0_RW0_wmask_12 = eccMask_4 & io_req_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213634.8]
  assign data_arrays_0_RW0_wmask_13 = eccMask_5 & io_req_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213637.8]
  assign data_arrays_0_RW0_wmask_14 = eccMask_6 & io_req_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213640.8]
  assign data_arrays_0_RW0_wmask_15 = eccMask_7 & io_req_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213643.8]
  assign data_arrays_0_RW0_wmask_16 = eccMask_0 & io_req_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213646.8]
  assign data_arrays_0_RW0_wmask_17 = eccMask_1 & io_req_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213649.8]
  assign data_arrays_0_RW0_wmask_18 = eccMask_2 & io_req_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213652.8]
  assign data_arrays_0_RW0_wmask_19 = eccMask_3 & io_req_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213655.8]
  assign data_arrays_0_RW0_wmask_20 = eccMask_4 & io_req_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213658.8]
  assign data_arrays_0_RW0_wmask_21 = eccMask_5 & io_req_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213661.8]
  assign data_arrays_0_RW0_wmask_22 = eccMask_6 & io_req_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213664.8]
  assign data_arrays_0_RW0_wmask_23 = eccMask_7 & io_req_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213667.8]
  assign data_arrays_0_RW0_wmask_24 = eccMask_0 & io_req_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213670.8]
  assign data_arrays_0_RW0_wmask_25 = eccMask_1 & io_req_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213673.8]
  assign data_arrays_0_RW0_wmask_26 = eccMask_2 & io_req_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213676.8]
  assign data_arrays_0_RW0_wmask_27 = eccMask_3 & io_req_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213679.8]
  assign data_arrays_0_RW0_wmask_28 = eccMask_4 & io_req_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213682.8]
  assign data_arrays_0_RW0_wmask_29 = eccMask_5 & io_req_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213685.8]
  assign data_arrays_0_RW0_wmask_30 = eccMask_6 & io_req_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213688.8]
  assign data_arrays_0_RW0_wmask_31 = eccMask_7 & io_req_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@213596.6 :chipyard.TestHarness.RocketConfig.fir@213691.8]
  assign data_arrays_0_RW0_wmode = io_req_bits_write;
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = _T_47 | _T_35;
  assign data_arrays_0_RW0_addr = io_req_bits_addr[11:3];
endmodule
