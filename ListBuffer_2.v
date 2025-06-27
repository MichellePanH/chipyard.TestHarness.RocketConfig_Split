module ListBuffer_2( // @[:chipyard.TestHarness.RocketConfig.fir@89009.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@89010.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@89011.4]
  output        io_push_ready, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input         io_push_valid, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [4:0]  io_push_bits_index, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input         io_push_bits_data_prio_0, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input         io_push_bits_data_prio_2, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input         io_push_bits_data_control, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [2:0]  io_push_bits_data_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [2:0]  io_push_bits_data_param, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [2:0]  io_push_bits_data_size, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [2:0]  io_push_bits_data_source, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [11:0] io_push_bits_data_tag, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [5:0]  io_push_bits_data_offset, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [5:0]  io_push_bits_data_put, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output [20:0] io_valid, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input         io_pop_valid, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  input  [4:0]  io_pop_bits, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output        io_data_prio_0, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output        io_data_prio_1, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output        io_data_prio_2, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output        io_data_control, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output [2:0]  io_data_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output [2:0]  io_data_param, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output [2:0]  io_data_size, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output [2:0]  io_data_source, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output [11:0] io_data_tag, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output [5:0]  io_data_offset, // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
  output [5:0]  io_data_put // @[:chipyard.TestHarness.RocketConfig.fir@89012.4]
);
  reg [5:0] head [0:20]; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  reg [31:0] _RAND_0;
  wire [5:0] head_pop_head_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  wire [4:0] head_pop_head_addr; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  reg [31:0] _RAND_1;
  wire [5:0] head__T_57_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  wire [4:0] head__T_57_addr; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  wire  head__T_57_mask; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  wire  head__T_57_en; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  wire [5:0] head__T_82_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  wire [4:0] head__T_82_addr; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  wire  head__T_82_mask; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  wire  head__T_82_en; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  reg [5:0] tail [0:20]; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  reg [31:0] _RAND_2;
  wire [5:0] tail_push_tail_data; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  wire [4:0] tail_push_tail_addr; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  reg [31:0] _RAND_3;
  wire [5:0] tail__T_71_data; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  wire [4:0] tail__T_71_addr; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  reg [31:0] _RAND_4;
  wire [5:0] tail__T_58_data; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  wire [4:0] tail__T_58_addr; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  wire  tail__T_58_mask; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  wire  tail__T_58_en; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  reg [5:0] next [0:32]; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  reg [31:0] _RAND_5;
  wire [5:0] next__T_80_data; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  wire [5:0] next__T_80_addr; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  reg [31:0] _RAND_6;
  wire [5:0] next__T_56_data; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  wire [5:0] next__T_56_addr; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  wire  next__T_56_mask; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  wire  next__T_56_en; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  reg  data_prio_0 [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_7;
  wire  data_prio_0__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_prio_0__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_8;
  wire  data_prio_0__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_prio_0__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_prio_0__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_prio_0__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg  data_prio_1 [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_9;
  wire  data_prio_1__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_prio_1__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_10;
  wire  data_prio_1__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_prio_1__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_prio_1__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_prio_1__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg  data_prio_2 [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_11;
  wire  data_prio_2__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_prio_2__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_12;
  wire  data_prio_2__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_prio_2__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_prio_2__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_prio_2__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg  data_control [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_13;
  wire  data_control__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_control__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_14;
  wire  data_control__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_control__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_control__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_control__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [2:0] data_opcode [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_15;
  wire [2:0] data_opcode__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_opcode__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_16;
  wire [2:0] data_opcode__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_opcode__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_opcode__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_opcode__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [2:0] data_param [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_17;
  wire [2:0] data_param__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_param__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_18;
  wire [2:0] data_param__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_param__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_param__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_param__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [2:0] data_size [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_19;
  wire [2:0] data_size__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_size__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_20;
  wire [2:0] data_size__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_size__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_size__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_size__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [2:0] data_source [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_21;
  wire [2:0] data_source__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_source__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_22;
  wire [2:0] data_source__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_source__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_source__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_source__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [11:0] data_tag [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_23;
  wire [11:0] data_tag__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_tag__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_24;
  wire [11:0] data_tag__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_tag__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_tag__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_tag__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [5:0] data_offset [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_25;
  wire [5:0] data_offset__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_offset__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_26;
  wire [5:0] data_offset__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_offset__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_offset__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_offset__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [5:0] data_put [0:32]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_27;
  wire [5:0] data_put__T_60_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_put__T_60_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [31:0] _RAND_28;
  wire [5:0] data_put__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire [5:0] data_put__T_55_addr; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_put__T_55_mask; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  wire  data_put__T_55_en; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  reg [20:0] valid; // @[ListBuffer.scala 45:22:chipyard.TestHarness.RocketConfig.fir@89017.4]
  reg [31:0] _RAND_29;
  reg [32:0] used; // @[ListBuffer.scala 48:22:chipyard.TestHarness.RocketConfig.fir@89020.4]
  reg [63:0] _RAND_30;
  wire [32:0] _T; // @[ListBuffer.scala 52:25:chipyard.TestHarness.RocketConfig.fir@89023.4]
  wire [33:0] _T_1; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89024.4]
  wire [32:0] _T_3; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89026.4]
  wire [34:0] _T_4; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89027.4]
  wire [32:0] _T_6; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89029.4]
  wire [36:0] _T_7; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89030.4]
  wire [32:0] _T_9; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89032.4]
  wire [40:0] _T_10; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89033.4]
  wire [32:0] _T_12; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89035.4]
  wire [48:0] _T_13; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89036.4]
  wire [32:0] _T_15; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89038.4]
  wire [64:0] _T_16; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89039.4]
  wire [32:0] _T_18; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89041.4]
  wire [33:0] _T_20; // @[ListBuffer.scala 52:32:chipyard.TestHarness.RocketConfig.fir@89043.4]
  wire [33:0] _T_21; // @[ListBuffer.scala 52:16:chipyard.TestHarness.RocketConfig.fir@89044.4]
  wire [33:0] _GEN_49; // @[ListBuffer.scala 52:38:chipyard.TestHarness.RocketConfig.fir@89046.4]
  wire [33:0] freeOH; // @[ListBuffer.scala 52:38:chipyard.TestHarness.RocketConfig.fir@89046.4]
  wire  _T_25; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89049.4]
  wire [31:0] _GEN_50; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89050.4]
  wire [31:0] _T_26; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89050.4]
  wire  _T_29; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89053.4]
  wire [15:0] _T_30; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89054.4]
  wire  _T_33; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89057.4]
  wire [7:0] _T_34; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89058.4]
  wire  _T_37; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89061.4]
  wire [3:0] _T_38; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89062.4]
  wire  _T_41; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89065.4]
  wire [1:0] _T_42; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89066.4]
  wire [4:0] _T_47; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@89071.4]
  wire [5:0] freeIdx; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@89072.4]
  wire [20:0] _T_48; // @[ListBuffer.scala 61:25:chipyard.TestHarness.RocketConfig.fir@89086.4]
  wire  push_valid; // @[ListBuffer.scala 61:25:chipyard.TestHarness.RocketConfig.fir@89087.4]
  wire  _T_49; // @[ListBuffer.scala 63:30:chipyard.TestHarness.RocketConfig.fir@89088.4]
  wire  _T_51; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@89091.4]
  wire [31:0] _T_53; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@89094.6]
  wire  _GEN_7; // @[ListBuffer.scala 68:23:chipyard.TestHarness.RocketConfig.fir@89100.6]
  wire [20:0] valid_set; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@89092.4]
  wire [33:0] _GEN_11; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@89092.4]
  wire  _GEN_29; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@89092.4]
  wire  _T_61; // @[ListBuffer.scala 84:11:chipyard.TestHarness.RocketConfig.fir@89117.4]
  wire [20:0] _T_62; // @[ListBuffer.scala 84:39:chipyard.TestHarness.RocketConfig.fir@89118.4]
  wire  _T_64; // @[ListBuffer.scala 84:26:chipyard.TestHarness.RocketConfig.fir@89120.4]
  wire  _T_66; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@89122.4]
  wire  _T_67; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@89123.4]
  wire [5:0] _T_68; // @[OneHot.scala 64:49:chipyard.TestHarness.RocketConfig.fir@89129.6]
  wire [63:0] _T_69; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@89130.6]
  wire  _T_72; // @[ListBuffer.scala 88:20:chipyard.TestHarness.RocketConfig.fir@89134.6]
  wire [31:0] _T_74; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@89137.8]
  wire [20:0] _GEN_38; // @[ListBuffer.scala 88:48:chipyard.TestHarness.RocketConfig.fir@89135.6]
  wire  _T_78; // @[ListBuffer.scala 91:75:chipyard.TestHarness.RocketConfig.fir@89143.6]
  wire  _T_79; // @[ListBuffer.scala 91:62:chipyard.TestHarness.RocketConfig.fir@89144.6]
  wire [32:0] used_clr; // @[ListBuffer.scala 86:24:chipyard.TestHarness.RocketConfig.fir@89128.4]
  wire [20:0] valid_clr; // @[ListBuffer.scala 86:24:chipyard.TestHarness.RocketConfig.fir@89128.4]
  wire [32:0] _T_86; // @[ListBuffer.scala 96:23:chipyard.TestHarness.RocketConfig.fir@89154.6]
  wire [32:0] _T_87; // @[ListBuffer.scala 96:21:chipyard.TestHarness.RocketConfig.fir@89155.6]
  wire [32:0] used_set; // @[:chipyard.TestHarness.RocketConfig.fir@89079.4 :chipyard.TestHarness.RocketConfig.fir@89081.4 ListBuffer.scala 66:14:chipyard.TestHarness.RocketConfig.fir@89097.6]
  wire [32:0] _T_88; // @[ListBuffer.scala 96:35:chipyard.TestHarness.RocketConfig.fir@89156.6]
  wire [20:0] _T_89; // @[ListBuffer.scala 97:23:chipyard.TestHarness.RocketConfig.fir@89158.6]
  wire [20:0] _T_90; // @[ListBuffer.scala 97:21:chipyard.TestHarness.RocketConfig.fir@89159.6]
  wire [20:0] _T_91; // @[ListBuffer.scala 97:35:chipyard.TestHarness.RocketConfig.fir@89160.6]
  assign head_pop_head_addr = io_pop_bits;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign head_pop_head_data = head[head_pop_head_addr]; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  `else
  assign head_pop_head_data = head_pop_head_addr >= 5'h15 ? _RAND_1[5:0] : head[head_pop_head_addr]; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign head__T_57_data = {_T_25,_T_47};
  assign head__T_57_addr = io_push_bits_index;
  assign head__T_57_mask = 1'h1;
  assign head__T_57_en = _T_51 & _GEN_7;
  assign head__T_82_data = _T_79 ? freeIdx : next__T_80_data;
  assign head__T_82_addr = io_pop_bits;
  assign head__T_82_mask = 1'h1;
  assign head__T_82_en = io_pop_valid;
  assign tail_push_tail_addr = io_push_bits_index;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign tail_push_tail_data = tail[tail_push_tail_addr]; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  `else
  assign tail_push_tail_data = tail_push_tail_addr >= 5'h15 ? _RAND_3[5:0] : tail[tail_push_tail_addr]; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign tail__T_71_addr = io_pop_bits;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign tail__T_71_data = tail[tail__T_71_addr]; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  `else
  assign tail__T_71_data = tail__T_71_addr >= 5'h15 ? _RAND_4[5:0] : tail[tail__T_71_addr]; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign tail__T_58_data = {_T_25,_T_47};
  assign tail__T_58_addr = io_push_bits_index;
  assign tail__T_58_mask = 1'h1;
  assign tail__T_58_en = io_push_ready & io_push_valid;
  assign next__T_80_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign next__T_80_data = next[next__T_80_addr]; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  `else
  assign next__T_80_data = next__T_80_addr >= 6'h21 ? _RAND_6[5:0] : next[next__T_80_addr]; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign next__T_56_data = {_T_25,_T_47};
  assign next__T_56_addr = tail_push_tail_data;
  assign next__T_56_mask = 1'h1;
  assign next__T_56_en = _T_51 & push_valid;
  assign data_prio_0__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_prio_0__T_60_data = data_prio_0[data_prio_0__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_prio_0__T_60_data = data_prio_0__T_60_addr >= 6'h21 ? _RAND_8[0:0] : data_prio_0[data_prio_0__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_prio_0__T_55_data = io_push_bits_data_prio_0;
  assign data_prio_0__T_55_addr = {_T_25,_T_47};
  assign data_prio_0__T_55_mask = 1'h1;
  assign data_prio_0__T_55_en = io_push_ready & io_push_valid;
  assign data_prio_1__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_prio_1__T_60_data = data_prio_1[data_prio_1__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_prio_1__T_60_data = data_prio_1__T_60_addr >= 6'h21 ? _RAND_10[0:0] : data_prio_1[data_prio_1__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_prio_1__T_55_data = 1'h0;
  assign data_prio_1__T_55_addr = {_T_25,_T_47};
  assign data_prio_1__T_55_mask = 1'h1;
  assign data_prio_1__T_55_en = io_push_ready & io_push_valid;
  assign data_prio_2__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_prio_2__T_60_data = data_prio_2[data_prio_2__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_prio_2__T_60_data = data_prio_2__T_60_addr >= 6'h21 ? _RAND_12[0:0] : data_prio_2[data_prio_2__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_prio_2__T_55_data = io_push_bits_data_prio_2;
  assign data_prio_2__T_55_addr = {_T_25,_T_47};
  assign data_prio_2__T_55_mask = 1'h1;
  assign data_prio_2__T_55_en = io_push_ready & io_push_valid;
  assign data_control__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_control__T_60_data = data_control[data_control__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_control__T_60_data = data_control__T_60_addr >= 6'h21 ? _RAND_14[0:0] : data_control[data_control__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_control__T_55_data = io_push_bits_data_control;
  assign data_control__T_55_addr = {_T_25,_T_47};
  assign data_control__T_55_mask = 1'h1;
  assign data_control__T_55_en = io_push_ready & io_push_valid;
  assign data_opcode__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_opcode__T_60_data = data_opcode[data_opcode__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_opcode__T_60_data = data_opcode__T_60_addr >= 6'h21 ? _RAND_16[2:0] : data_opcode[data_opcode__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_opcode__T_55_data = io_push_bits_data_opcode;
  assign data_opcode__T_55_addr = {_T_25,_T_47};
  assign data_opcode__T_55_mask = 1'h1;
  assign data_opcode__T_55_en = io_push_ready & io_push_valid;
  assign data_param__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_param__T_60_data = data_param[data_param__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_param__T_60_data = data_param__T_60_addr >= 6'h21 ? _RAND_18[2:0] : data_param[data_param__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_param__T_55_data = io_push_bits_data_param;
  assign data_param__T_55_addr = {_T_25,_T_47};
  assign data_param__T_55_mask = 1'h1;
  assign data_param__T_55_en = io_push_ready & io_push_valid;
  assign data_size__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_size__T_60_data = data_size[data_size__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_size__T_60_data = data_size__T_60_addr >= 6'h21 ? _RAND_20[2:0] : data_size[data_size__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_size__T_55_data = io_push_bits_data_size;
  assign data_size__T_55_addr = {_T_25,_T_47};
  assign data_size__T_55_mask = 1'h1;
  assign data_size__T_55_en = io_push_ready & io_push_valid;
  assign data_source__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_source__T_60_data = data_source[data_source__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_source__T_60_data = data_source__T_60_addr >= 6'h21 ? _RAND_22[2:0] : data_source[data_source__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_source__T_55_data = io_push_bits_data_source;
  assign data_source__T_55_addr = {_T_25,_T_47};
  assign data_source__T_55_mask = 1'h1;
  assign data_source__T_55_en = io_push_ready & io_push_valid;
  assign data_tag__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_tag__T_60_data = data_tag[data_tag__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_tag__T_60_data = data_tag__T_60_addr >= 6'h21 ? _RAND_24[11:0] : data_tag[data_tag__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_tag__T_55_data = io_push_bits_data_tag;
  assign data_tag__T_55_addr = {_T_25,_T_47};
  assign data_tag__T_55_mask = 1'h1;
  assign data_tag__T_55_en = io_push_ready & io_push_valid;
  assign data_offset__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_offset__T_60_data = data_offset[data_offset__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_offset__T_60_data = data_offset__T_60_addr >= 6'h21 ? _RAND_26[5:0] : data_offset[data_offset__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_offset__T_55_data = io_push_bits_data_offset;
  assign data_offset__T_55_addr = {_T_25,_T_47};
  assign data_offset__T_55_mask = 1'h1;
  assign data_offset__T_55_en = io_push_ready & io_push_valid;
  assign data_put__T_60_addr = head_pop_head_data;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign data_put__T_60_data = data_put[data_put__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `else
  assign data_put__T_60_data = data_put__T_60_addr >= 6'h21 ? _RAND_28[5:0] : data_put[data_put__T_60_addr]; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign data_put__T_55_data = io_push_bits_data_put;
  assign data_put__T_55_addr = {_T_25,_T_47};
  assign data_put__T_55_mask = 1'h1;
  assign data_put__T_55_en = io_push_ready & io_push_valid;
  assign _T = ~used; // @[ListBuffer.scala 52:25:chipyard.TestHarness.RocketConfig.fir@89023.4]
  assign _T_1 = {_T, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89024.4]
  assign _T_3 = _T | _T_1[32:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89026.4]
  assign _T_4 = {_T_3, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89027.4]
  assign _T_6 = _T_3 | _T_4[32:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89029.4]
  assign _T_7 = {_T_6, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89030.4]
  assign _T_9 = _T_6 | _T_7[32:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89032.4]
  assign _T_10 = {_T_9, 8'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89033.4]
  assign _T_12 = _T_9 | _T_10[32:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89035.4]
  assign _T_13 = {_T_12, 16'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89036.4]
  assign _T_15 = _T_12 | _T_13[32:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89038.4]
  assign _T_16 = {_T_15, 32'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@89039.4]
  assign _T_18 = _T_15 | _T_16[32:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@89041.4]
  assign _T_20 = {_T_18, 1'h0}; // @[ListBuffer.scala 52:32:chipyard.TestHarness.RocketConfig.fir@89043.4]
  assign _T_21 = ~_T_20; // @[ListBuffer.scala 52:16:chipyard.TestHarness.RocketConfig.fir@89044.4]
  assign _GEN_49 = {{1'd0}, _T}; // @[ListBuffer.scala 52:38:chipyard.TestHarness.RocketConfig.fir@89046.4]
  assign freeOH = _T_21 & _GEN_49; // @[ListBuffer.scala 52:38:chipyard.TestHarness.RocketConfig.fir@89046.4]
  assign _T_25 = |freeOH[33:32]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89049.4]
  assign _GEN_50 = {{30'd0}, freeOH[33:32]}; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89050.4]
  assign _T_26 = _GEN_50 | freeOH[31:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89050.4]
  assign _T_29 = |_T_26[31:16]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89053.4]
  assign _T_30 = _T_26[31:16] | _T_26[15:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89054.4]
  assign _T_33 = |_T_30[15:8]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89057.4]
  assign _T_34 = _T_30[15:8] | _T_30[7:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89058.4]
  assign _T_37 = |_T_34[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89061.4]
  assign _T_38 = _T_34[7:4] | _T_34[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89062.4]
  assign _T_41 = |_T_38[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@89065.4]
  assign _T_42 = _T_38[3:2] | _T_38[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@89066.4]
  assign _T_47 = {_T_29,_T_33,_T_37,_T_41,_T_42[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@89071.4]
  assign freeIdx = {_T_25,_T_29,_T_33,_T_37,_T_41,_T_42[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@89072.4]
  assign _T_48 = valid >> io_push_bits_index; // @[ListBuffer.scala 61:25:chipyard.TestHarness.RocketConfig.fir@89086.4]
  assign push_valid = _T_48[0]; // @[ListBuffer.scala 61:25:chipyard.TestHarness.RocketConfig.fir@89087.4]
  assign _T_49 = &used; // @[ListBuffer.scala 63:30:chipyard.TestHarness.RocketConfig.fir@89088.4]
  assign _T_51 = io_push_ready & io_push_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@89091.4]
  assign _T_53 = 32'h1 << io_push_bits_index; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@89094.6]
  assign _GEN_7 = push_valid ? 1'h0 : 1'h1; // @[ListBuffer.scala 68:23:chipyard.TestHarness.RocketConfig.fir@89100.6]
  assign valid_set = _T_51 ? _T_53[20:0] : 21'h0; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@89092.4]
  assign _GEN_11 = _T_51 ? freeOH : 34'h0; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@89092.4]
  assign _GEN_29 = _T_51 & push_valid; // @[ListBuffer.scala 64:25:chipyard.TestHarness.RocketConfig.fir@89092.4]
  assign _T_61 = ~io_pop_valid; // @[ListBuffer.scala 84:11:chipyard.TestHarness.RocketConfig.fir@89117.4]
  assign _T_62 = io_valid >> io_pop_bits; // @[ListBuffer.scala 84:39:chipyard.TestHarness.RocketConfig.fir@89118.4]
  assign _T_64 = _T_61 | _T_62[0]; // @[ListBuffer.scala 84:26:chipyard.TestHarness.RocketConfig.fir@89120.4]
  assign _T_66 = _T_64 | reset; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@89122.4]
  assign _T_67 = ~_T_66; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@89123.4]
  assign _T_68 = head_pop_head_data; // @[OneHot.scala 64:49:chipyard.TestHarness.RocketConfig.fir@89129.6]
  assign _T_69 = 64'h1 << _T_68; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@89130.6]
  assign _T_72 = head_pop_head_data == tail__T_71_data; // @[ListBuffer.scala 88:20:chipyard.TestHarness.RocketConfig.fir@89134.6]
  assign _T_74 = 32'h1 << io_pop_bits; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@89137.8]
  assign _GEN_38 = _T_72 ? _T_74[20:0] : 21'h0; // @[ListBuffer.scala 88:48:chipyard.TestHarness.RocketConfig.fir@89135.6]
  assign _T_78 = tail_push_tail_data == head_pop_head_data; // @[ListBuffer.scala 91:75:chipyard.TestHarness.RocketConfig.fir@89143.6]
  assign _T_79 = _GEN_29 & _T_78; // @[ListBuffer.scala 91:62:chipyard.TestHarness.RocketConfig.fir@89144.6]
  assign used_clr = io_pop_valid ? _T_69[32:0] : 33'h0; // @[ListBuffer.scala 86:24:chipyard.TestHarness.RocketConfig.fir@89128.4]
  assign valid_clr = io_pop_valid ? _GEN_38 : 21'h0; // @[ListBuffer.scala 86:24:chipyard.TestHarness.RocketConfig.fir@89128.4]
  assign _T_86 = ~used_clr; // @[ListBuffer.scala 96:23:chipyard.TestHarness.RocketConfig.fir@89154.6]
  assign _T_87 = used & _T_86; // @[ListBuffer.scala 96:21:chipyard.TestHarness.RocketConfig.fir@89155.6]
  assign used_set = _GEN_11[32:0]; // @[:chipyard.TestHarness.RocketConfig.fir@89079.4 :chipyard.TestHarness.RocketConfig.fir@89081.4 ListBuffer.scala 66:14:chipyard.TestHarness.RocketConfig.fir@89097.6]
  assign _T_88 = _T_87 | used_set; // @[ListBuffer.scala 96:35:chipyard.TestHarness.RocketConfig.fir@89156.6]
  assign _T_89 = ~valid_clr; // @[ListBuffer.scala 97:23:chipyard.TestHarness.RocketConfig.fir@89158.6]
  assign _T_90 = valid & _T_89; // @[ListBuffer.scala 97:21:chipyard.TestHarness.RocketConfig.fir@89159.6]
  assign _T_91 = _T_90 | valid_set; // @[ListBuffer.scala 97:35:chipyard.TestHarness.RocketConfig.fir@89160.6]
  assign io_push_ready = ~_T_49; // @[ListBuffer.scala 63:17:chipyard.TestHarness.RocketConfig.fir@89090.4]
  assign io_valid = valid; // @[ListBuffer.scala 81:12:chipyard.TestHarness.RocketConfig.fir@89116.4]
  assign io_data_prio_0 = data_prio_0__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_prio_1 = data_prio_1__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_prio_2 = data_prio_2__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_control = data_control__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_opcode = data_opcode__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_param = data_param__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_size = data_size__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_source = data_source__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_tag = data_tag__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_offset = data_offset__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
  assign io_data_put = data_put__T_60_data; // @[ListBuffer.scala 80:11:chipyard.TestHarness.RocketConfig.fir@89115.4]
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
  for (initvar = 0; initvar < 21; initvar = initvar+1)
    head[initvar] = _RAND_0[5:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 21; initvar = initvar+1)
    tail[initvar] = _RAND_2[5:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  _RAND_4 = {1{`RANDOM}};
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    next[initvar] = _RAND_5[5:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_6 = {1{`RANDOM}};
  _RAND_7 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_prio_0[initvar] = _RAND_7[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_8 = {1{`RANDOM}};
  _RAND_9 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_prio_1[initvar] = _RAND_9[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_10 = {1{`RANDOM}};
  _RAND_11 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_prio_2[initvar] = _RAND_11[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_12 = {1{`RANDOM}};
  _RAND_13 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_control[initvar] = _RAND_13[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_14 = {1{`RANDOM}};
  _RAND_15 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_opcode[initvar] = _RAND_15[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_16 = {1{`RANDOM}};
  _RAND_17 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_param[initvar] = _RAND_17[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_18 = {1{`RANDOM}};
  _RAND_19 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_size[initvar] = _RAND_19[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_20 = {1{`RANDOM}};
  _RAND_21 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_source[initvar] = _RAND_21[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_22 = {1{`RANDOM}};
  _RAND_23 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_tag[initvar] = _RAND_23[11:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_24 = {1{`RANDOM}};
  _RAND_25 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_offset[initvar] = _RAND_25[5:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_26 = {1{`RANDOM}};
  _RAND_27 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 33; initvar = initvar+1)
    data_put[initvar] = _RAND_27[5:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_28 = {1{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  valid = _RAND_29[20:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {2{`RANDOM}};
  used = _RAND_30[32:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(head__T_57_en & head__T_57_mask) begin
      head[head__T_57_addr] <= head__T_57_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
    end
    if(head__T_82_en & head__T_82_mask) begin
      head[head__T_82_addr] <= head__T_82_data; // @[ListBuffer.scala 46:18:chipyard.TestHarness.RocketConfig.fir@89018.4]
    end
    if(tail__T_58_en & tail__T_58_mask) begin
      tail[tail__T_58_addr] <= tail__T_58_data; // @[ListBuffer.scala 47:18:chipyard.TestHarness.RocketConfig.fir@89019.4]
    end
    if(next__T_56_en & next__T_56_mask) begin
      next[next__T_56_addr] <= next__T_56_data; // @[ListBuffer.scala 49:18:chipyard.TestHarness.RocketConfig.fir@89021.4]
    end
    if(data_prio_0__T_55_en & data_prio_0__T_55_mask) begin
      data_prio_0[data_prio_0__T_55_addr] <= data_prio_0__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_prio_1__T_55_en & data_prio_1__T_55_mask) begin
      data_prio_1[data_prio_1__T_55_addr] <= data_prio_1__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_prio_2__T_55_en & data_prio_2__T_55_mask) begin
      data_prio_2[data_prio_2__T_55_addr] <= data_prio_2__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_control__T_55_en & data_control__T_55_mask) begin
      data_control[data_control__T_55_addr] <= data_control__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_opcode__T_55_en & data_opcode__T_55_mask) begin
      data_opcode[data_opcode__T_55_addr] <= data_opcode__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_param__T_55_en & data_param__T_55_mask) begin
      data_param[data_param__T_55_addr] <= data_param__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_size__T_55_en & data_size__T_55_mask) begin
      data_size[data_size__T_55_addr] <= data_size__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_source__T_55_en & data_source__T_55_mask) begin
      data_source[data_source__T_55_addr] <= data_source__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_tag__T_55_en & data_tag__T_55_mask) begin
      data_tag[data_tag__T_55_addr] <= data_tag__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_offset__T_55_en & data_offset__T_55_mask) begin
      data_offset[data_offset__T_55_addr] <= data_offset__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if(data_put__T_55_en & data_put__T_55_mask) begin
      data_put[data_put__T_55_addr] <= data_put__T_55_data; // @[ListBuffer.scala 50:18:chipyard.TestHarness.RocketConfig.fir@89022.4]
    end
    if (reset) begin
      valid <= 21'h0;
    end else begin
      valid <= _T_91;
    end
    if (reset) begin
      used <= 33'h0;
    end else begin
      used <= _T_88;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_67) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ListBuffer.scala:84 assert (!io.pop.fire() || (io.valid)(io.pop.bits))\n"); // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@89125.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_67) begin
          $fatal; // @[ListBuffer.scala 84:10:chipyard.TestHarness.RocketConfig.fir@89126.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
