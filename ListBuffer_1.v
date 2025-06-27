module ListBuffer_1( // @[:chipyard.TestHarness.RocketConfig.fir@86858.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@86859.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@86860.4]
  output        io_push_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  input         io_push_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  input         io_push_bits_index, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  input  [63:0] io_push_bits_data_data, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  input         io_push_bits_data_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  output [1:0]  io_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  input         io_pop_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  input         io_pop_bits, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  output [63:0] io_data_data, // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
  output        io_data_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@86861.4]
);
  reg [3:0] head [0:1]; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  reg [31:0] _RAND_0;
  wire [3:0] head_pop_head_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire  head_pop_head_addr; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire [3:0] head__T_47_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire  head__T_47_addr; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire  head__T_47_mask; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire  head__T_47_en; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire [3:0] head__T_72_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire  head__T_72_addr; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire  head__T_72_mask; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  wire  head__T_72_en; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  reg [3:0] tail [0:1]; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  reg [31:0] _RAND_1;
  wire [3:0] tail_push_tail_data; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  wire  tail_push_tail_addr; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  wire [3:0] tail__T_61_data; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  wire  tail__T_61_addr; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  wire [3:0] tail__T_48_data; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  wire  tail__T_48_addr; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  wire  tail__T_48_mask; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  wire  tail__T_48_en; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  reg [3:0] next [0:15]; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
  reg [31:0] _RAND_2;
  wire [3:0] next__T_70_data; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
  wire [3:0] next__T_70_addr; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
  wire [3:0] next__T_46_data; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
  wire [3:0] next__T_46_addr; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
  wire  next__T_46_mask; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
  wire  next__T_46_en; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
  reg [63:0] data_data [0:15]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  reg [63:0] _RAND_3;
  wire [63:0] data_data__T_50_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire [3:0] data_data__T_50_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire [63:0] data_data__T_45_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire [3:0] data_data__T_45_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire  data_data__T_45_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire  data_data__T_45_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  reg  data_corrupt [0:15]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  reg [31:0] _RAND_4;
  wire  data_corrupt__T_50_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire [3:0] data_corrupt__T_50_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire  data_corrupt__T_45_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire [3:0] data_corrupt__T_45_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire  data_corrupt__T_45_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  wire  data_corrupt__T_45_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  reg [1:0] valid; // @[ListBuffer.scala 45:22:chipyard.TestHarness.RocketConfig.fir@86866.4]
  reg [31:0] _RAND_5;
  reg [15:0] used; // @[ListBuffer.scala 48:22:chipyard.TestHarness.RocketConfig.fir@86869.4]
  reg [31:0] _RAND_6;
  wire [15:0] _T; // @[ListBuffer.scala 52:25:chipyard.TestHarness.RocketConfig.fir@86872.4]
  wire [16:0] _T_1; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86873.4]
  wire [15:0] _T_3; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86875.4]
  wire [17:0] _T_4; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86876.4]
  wire [15:0] _T_6; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86878.4]
  wire [19:0] _T_7; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86879.4]
  wire [15:0] _T_9; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86881.4]
  wire [23:0] _T_10; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86882.4]
  wire [15:0] _T_12; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86884.4]
  wire [16:0] _T_14; // @[ListBuffer.scala 52:32:chipyard.TestHarness.RocketConfig.fir@86886.4]
  wire [16:0] _T_15; // @[ListBuffer.scala 52:16:chipyard.TestHarness.RocketConfig.fir@86887.4]
  wire [16:0] _GEN_41; // @[ListBuffer.scala 52:38:chipyard.TestHarness.RocketConfig.fir@86889.4]
  wire [16:0] freeOH; // @[ListBuffer.scala 52:38:chipyard.TestHarness.RocketConfig.fir@86889.4]
  wire  _T_19; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86892.4]
  wire [15:0] _GEN_42; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86893.4]
  wire [15:0] _T_20; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86893.4]
  wire  _T_23; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86896.4]
  wire [7:0] _T_24; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86897.4]
  wire  _T_27; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86900.4]
  wire [3:0] _T_28; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86901.4]
  wire  _T_31; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86904.4]
  wire [1:0] _T_32; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86905.4]
  wire [4:0] freeIdx; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86910.4]
  wire [1:0] _T_37; // @[ListBuffer.scala 61:25:chipyard.TestHarness.RocketConfig.fir@86924.4]
  wire  push_valid; // @[ListBuffer.scala 61:25:chipyard.TestHarness.RocketConfig.fir@86925.4]
  wire  _T_38; // @[ListBuffer.scala 63:30:chipyard.TestHarness.RocketConfig.fir@86926.4]
  wire  _T_40; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86929.4]
  wire [1:0] _T_42; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@86932.6]
  wire  _GEN_7; // @[ListBuffer.scala 68:23:chipyard.TestHarness.RocketConfig.fir@86939.6]
  wire [1:0] valid_set; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@86930.4]
  wire [16:0] _GEN_11; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@86930.4]
  wire  _GEN_20; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@86930.4]
  wire  _T_51; // @[ListBuffer.scala 84:11:chipyard.TestHarness.RocketConfig.fir@86956.4]
  wire [1:0] _T_52; // @[ListBuffer.scala 84:39:chipyard.TestHarness.RocketConfig.fir@86957.4]
  wire  _T_54; // @[ListBuffer.scala 84:26:chipyard.TestHarness.RocketConfig.fir@86959.4]
  wire  _T_56; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@86961.4]
  wire  _T_57; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@86962.4]
  wire [3:0] _T_58; // @[OneHot.scala 64:49:chipyard.TestHarness.RocketConfig.fir@86968.6]
  wire [15:0] _T_59; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@86969.6]
  wire  _T_62; // @[ListBuffer.scala 88:20:chipyard.TestHarness.RocketConfig.fir@86973.6]
  wire [1:0] _T_64; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@86976.8]
  wire [1:0] _GEN_30; // @[ListBuffer.scala 88:48:chipyard.TestHarness.RocketConfig.fir@86974.6]
  wire  _T_68; // @[ListBuffer.scala 91:75:chipyard.TestHarness.RocketConfig.fir@86982.6]
  wire  _T_69; // @[ListBuffer.scala 91:62:chipyard.TestHarness.RocketConfig.fir@86983.6]
  wire [4:0] _T_71; // @[ListBuffer.scala 91:32:chipyard.TestHarness.RocketConfig.fir@86985.6]
  wire [15:0] used_clr; // @[ListBuffer.scala 86:24:chipyard.TestHarness.RocketConfig.fir@86967.4]
  wire [1:0] valid_clr; // @[ListBuffer.scala 86:24:chipyard.TestHarness.RocketConfig.fir@86967.4]
  wire [15:0] _T_76; // @[ListBuffer.scala 96:23:chipyard.TestHarness.RocketConfig.fir@86993.6]
  wire [15:0] _T_77; // @[ListBuffer.scala 96:21:chipyard.TestHarness.RocketConfig.fir@86994.6]
  wire [15:0] used_set; // @[:chipyard.TestHarness.RocketConfig.fir@86917.4 :chipyard.TestHarness.RocketConfig.fir@86919.4 ListBuffer.scala 66:14:chipyard.TestHarness.RocketConfig.fir@86935.6]
  wire [15:0] _T_78; // @[ListBuffer.scala 96:35:chipyard.TestHarness.RocketConfig.fir@86995.6]
  wire [1:0] _T_79; // @[ListBuffer.scala 97:23:chipyard.TestHarness.RocketConfig.fir@86997.6]
  wire [1:0] _T_80; // @[ListBuffer.scala 97:21:chipyard.TestHarness.RocketConfig.fir@86998.6]
  wire [1:0] _T_81; // @[ListBuffer.scala 97:35:chipyard.TestHarness.RocketConfig.fir@86999.6]
  assign head_pop_head_addr = io_pop_bits;
  assign head_pop_head_data = head[head_pop_head_addr]; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
  assign head__T_47_data = freeIdx[3:0];
  assign head__T_47_addr = io_push_bits_index;
  assign head__T_47_mask = 1'h1;
  assign head__T_47_en = _T_40 & _GEN_7;
  assign head__T_72_data = _T_71[3:0];
  assign head__T_72_addr = io_pop_bits;
  assign head__T_72_mask = 1'h1;
  assign head__T_72_en = io_pop_valid;
  assign tail_push_tail_addr = io_push_bits_index;
  assign tail_push_tail_data = tail[tail_push_tail_addr]; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  assign tail__T_61_addr = io_pop_bits;
  assign tail__T_61_data = tail[tail__T_61_addr]; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
  assign tail__T_48_data = freeIdx[3:0];
  assign tail__T_48_addr = io_push_bits_index;
  assign tail__T_48_mask = 1'h1;
  assign tail__T_48_en = io_push_ready & io_push_valid;
  assign next__T_70_addr = head_pop_head_data;
  assign next__T_70_data = next[next__T_70_addr]; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
  assign next__T_46_data = freeIdx[3:0];
  assign next__T_46_addr = tail_push_tail_data;
  assign next__T_46_mask = 1'h1;
  assign next__T_46_en = _T_40 & push_valid;
  assign data_data__T_50_addr = head_pop_head_data;
  assign data_data__T_50_data = data_data[data_data__T_50_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  assign data_data__T_45_data = io_push_bits_data_data;
  assign data_data__T_45_addr = freeIdx[3:0];
  assign data_data__T_45_mask = 1'h1;
  assign data_data__T_45_en = io_push_ready & io_push_valid;
  assign data_corrupt__T_50_addr = head_pop_head_data;
  assign data_corrupt__T_50_data = data_corrupt[data_corrupt__T_50_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
  assign data_corrupt__T_45_data = io_push_bits_data_corrupt;
  assign data_corrupt__T_45_addr = freeIdx[3:0];
  assign data_corrupt__T_45_mask = 1'h1;
  assign data_corrupt__T_45_en = io_push_ready & io_push_valid;
  assign _T = ~used; // @[ListBuffer.scala 52:25:chipyard.TestHarness.RocketConfig.fir@86872.4]
  assign _T_1 = {_T, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86873.4]
  assign _T_3 = _T | _T_1[15:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86875.4]
  assign _T_4 = {_T_3, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86876.4]
  assign _T_6 = _T_3 | _T_4[15:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86878.4]
  assign _T_7 = {_T_6, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86879.4]
  assign _T_9 = _T_6 | _T_7[15:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86881.4]
  assign _T_10 = {_T_9, 8'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@86882.4]
  assign _T_12 = _T_9 | _T_10[15:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@86884.4]
  assign _T_14 = {_T_12, 1'h0}; // @[ListBuffer.scala 52:32:chipyard.TestHarness.RocketConfig.fir@86886.4]
  assign _T_15 = ~_T_14; // @[ListBuffer.scala 52:16:chipyard.TestHarness.RocketConfig.fir@86887.4]
  assign _GEN_41 = {{1'd0}, _T}; // @[ListBuffer.scala 52:38:chipyard.TestHarness.RocketConfig.fir@86889.4]
  assign freeOH = _T_15 & _GEN_41; // @[ListBuffer.scala 52:38:chipyard.TestHarness.RocketConfig.fir@86889.4]
  assign _T_19 = |freeOH[16]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86892.4]
  assign _GEN_42 = {{15'd0}, freeOH[16]}; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86893.4]
  assign _T_20 = _GEN_42 | freeOH[15:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86893.4]
  assign _T_23 = |_T_20[15:8]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86896.4]
  assign _T_24 = _T_20[15:8] | _T_20[7:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86897.4]
  assign _T_27 = |_T_24[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86900.4]
  assign _T_28 = _T_24[7:4] | _T_24[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86901.4]
  assign _T_31 = |_T_28[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@86904.4]
  assign _T_32 = _T_28[3:2] | _T_28[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@86905.4]
  assign freeIdx = {_T_19,_T_23,_T_27,_T_31,_T_32[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@86910.4]
  assign _T_37 = valid >> io_push_bits_index; // @[ListBuffer.scala 61:25:chipyard.TestHarness.RocketConfig.fir@86924.4]
  assign push_valid = _T_37[0]; // @[ListBuffer.scala 61:25:chipyard.TestHarness.RocketConfig.fir@86925.4]
  assign _T_38 = &used; // @[ListBuffer.scala 63:30:chipyard.TestHarness.RocketConfig.fir@86926.4]
  assign _T_40 = io_push_ready & io_push_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86929.4]
  assign _T_42 = 2'h1 << io_push_bits_index; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@86932.6]
  assign _GEN_7 = push_valid ? 1'h0 : 1'h1; // @[ListBuffer.scala 68:23:chipyard.TestHarness.RocketConfig.fir@86939.6]
  assign valid_set = _T_40 ? _T_42 : 2'h0; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@86930.4]
  assign _GEN_11 = _T_40 ? freeOH : 17'h0; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@86930.4]
  assign _GEN_20 = _T_40 & push_valid; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@86930.4]
  assign _T_51 = ~io_pop_valid; // @[ListBuffer.scala 84:11:chipyard.TestHarness.RocketConfig.fir@86956.4]
  assign _T_52 = io_valid >> io_pop_bits; // @[ListBuffer.scala 84:39:chipyard.TestHarness.RocketConfig.fir@86957.4]
  assign _T_54 = _T_51 | _T_52[0]; // @[ListBuffer.scala 84:26:chipyard.TestHarness.RocketConfig.fir@86959.4]
  assign _T_56 = _T_54 | reset; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@86961.4]
  assign _T_57 = ~_T_56; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@86962.4]
  assign _T_58 = head_pop_head_data; // @[OneHot.scala 64:49:chipyard.TestHarness.RocketConfig.fir@86968.6]
  assign _T_59 = 16'h1 << _T_58; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@86969.6]
  assign _T_62 = head_pop_head_data == tail__T_61_data; // @[ListBuffer.scala 88:20:chipyard.TestHarness.RocketConfig.fir@86973.6]
  assign _T_64 = 2'h1 << io_pop_bits; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@86976.8]
  assign _GEN_30 = _T_62 ? _T_64 : 2'h0; // @[ListBuffer.scala 88:48:chipyard.TestHarness.RocketConfig.fir@86974.6]
  assign _T_68 = tail_push_tail_data == head_pop_head_data; // @[ListBuffer.scala 91:75:chipyard.TestHarness.RocketConfig.fir@86982.6]
  assign _T_69 = _GEN_20 & _T_68; // @[ListBuffer.scala 91:62:chipyard.TestHarness.RocketConfig.fir@86983.6]
  assign _T_71 = _T_69 ? freeIdx : {{1'd0}, next__T_70_data}; // @[ListBuffer.scala 91:32:chipyard.TestHarness.RocketConfig.fir@86985.6]
  assign used_clr = io_pop_valid ? _T_59 : 16'h0; // @[ListBuffer.scala 86:24:chipyard.TestHarness.RocketConfig.fir@86967.4]
  assign valid_clr = io_pop_valid ? _GEN_30 : 2'h0; // @[ListBuffer.scala 86:24:chipyard.TestHarness.RocketConfig.fir@86967.4]
  assign _T_76 = ~used_clr; // @[ListBuffer.scala 96:23:chipyard.TestHarness.RocketConfig.fir@86993.6]
  assign _T_77 = used & _T_76; // @[ListBuffer.scala 96:21:chipyard.TestHarness.RocketConfig.fir@86994.6]
  assign used_set = _GEN_11[15:0]; // @[:chipyard.TestHarness.RocketConfig.fir@86917.4 :chipyard.TestHarness.RocketConfig.fir@86919.4 ListBuffer.scala 66:14:chipyard.TestHarness.RocketConfig.fir@86935.6]
  assign _T_78 = _T_77 | used_set; // @[ListBuffer.scala 96:35:chipyard.TestHarness.RocketConfig.fir@86995.6]
  assign _T_79 = ~valid_clr; // @[ListBuffer.scala 97:23:chipyard.TestHarness.RocketConfig.fir@86997.6]
  assign _T_80 = valid & _T_79; // @[ListBuffer.scala 97:21:chipyard.TestHarness.RocketConfig.fir@86998.6]
  assign _T_81 = _T_80 | valid_set; // @[ListBuffer.scala 97:35:chipyard.TestHarness.RocketConfig.fir@86999.6]
  assign io_push_ready = ~_T_38; // @[ListBuffer.scala 63:17:chipyard.TestHarness.RocketConfig.fir@86928.4]
  assign io_valid = valid; // @[ListBuffer.scala 81:12:chipyard.TestHarness.RocketConfig.fir@86955.4]
  assign io_data_data = data_data__T_50_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@86954.4]
  assign io_data_corrupt = data_corrupt__T_50_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@86954.4]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    head[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    tail[initvar] = _RAND_1[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    next[initvar] = _RAND_2[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_data[initvar] = _RAND_3[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_corrupt[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  valid = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  used = _RAND_6[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(head__T_47_en & head__T_47_mask) begin
      head[head__T_47_addr] <= head__T_47_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
    end
    if(head__T_72_en & head__T_72_mask) begin
      head[head__T_72_addr] <= head__T_72_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@86867.4]
    end
    if(tail__T_48_en & tail__T_48_mask) begin
      tail[tail__T_48_addr] <= tail__T_48_data; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@86868.4]
    end
    if(next__T_46_en & next__T_46_mask) begin
      next[next__T_46_addr] <= next__T_46_data; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@86870.4]
    end
    if(data_data__T_45_en & data_data__T_45_mask) begin
      data_data[data_data__T_45_addr] <= data_data__T_45_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
    end
    if(data_corrupt__T_45_en & data_corrupt__T_45_mask) begin
      data_corrupt[data_corrupt__T_45_addr] <= data_corrupt__T_45_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@86871.4]
    end
    if (reset) begin
      valid <= 2'h0;
    end else begin
      valid <= _T_81;
    end
    if (reset) begin
      used <= 16'h0;
    end else begin
      used <= _T_78;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_57) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ListBuffer.scala:84 assert (!io.pop.fire() || (io.valid)(io.pop.bits))\n"); // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@86964.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_57) begin
          $fatal; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@86965.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
