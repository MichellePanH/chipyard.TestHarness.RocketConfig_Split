module TLAtomicAutomata( // @[:chipyard.TestHarness.RocketConfig.fir@28975.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@28976.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@28977.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [2:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [2:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [30:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [1:0]  auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [2:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [2:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output        auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [2:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [2:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [30:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [1:0]  auto_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [2:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [2:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input         auto_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input         auto_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input  [63:0] auto_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
  input         auto_out_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@28978.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [2:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [30:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire [2:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
  reg [1:0] _T_4_0_state; // @[AtomicAutomata.scala 76:28:chipyard.TestHarness.RocketConfig.fir@29018.4]
  reg [31:0] _RAND_0;
  reg [2:0] _T_5_0_bits_opcode; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_5_0_bits_param; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_5_0_bits_size; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_5_0_bits_source; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [31:0] _RAND_4;
  reg [30:0] _T_5_0_bits_address; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [31:0] _RAND_5;
  reg [7:0] _T_5_0_bits_mask; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [31:0] _RAND_6;
  reg [63:0] _T_5_0_bits_data; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [63:0] _RAND_7;
  reg  _T_5_0_bits_corrupt; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_5_0_lut; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@29019.4]
  reg [31:0] _RAND_9;
  reg [63:0] _T_6_0_data; // @[AtomicAutomata.scala 78:24:chipyard.TestHarness.RocketConfig.fir@29020.4]
  reg [63:0] _RAND_10;
  reg  _T_6_0_denied; // @[AtomicAutomata.scala 78:24:chipyard.TestHarness.RocketConfig.fir@29020.4]
  reg [31:0] _RAND_11;
  reg  _T_6_0_corrupt; // @[AtomicAutomata.scala 78:24:chipyard.TestHarness.RocketConfig.fir@29020.4]
  reg [31:0] _RAND_12;
  wire  _T_7; // @[AtomicAutomata.scala 80:44:chipyard.TestHarness.RocketConfig.fir@29021.4]
  wire  _T_8; // @[AtomicAutomata.scala 81:44:chipyard.TestHarness.RocketConfig.fir@29022.4]
  wire  _T_9; // @[AtomicAutomata.scala 82:49:chipyard.TestHarness.RocketConfig.fir@29023.4]
  wire  _T_11; // @[AtomicAutomata.scala 82:57:chipyard.TestHarness.RocketConfig.fir@29025.4]
  wire  _T_12; // @[AtomicAutomata.scala 83:49:chipyard.TestHarness.RocketConfig.fir@29026.4]
  wire  _T_31; // @[AtomicAutomata.scala 90:47:chipyard.TestHarness.RocketConfig.fir@29045.4]
  wire  _T_32; // @[AtomicAutomata.scala 91:47:chipyard.TestHarness.RocketConfig.fir@29046.4]
  wire  _T_33; // @[AtomicAutomata.scala 92:63:chipyard.TestHarness.RocketConfig.fir@29047.4]
  wire  _T_34; // @[AtomicAutomata.scala 92:32:chipyard.TestHarness.RocketConfig.fir@29048.4]
  wire [1:0] _T_50; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29064.4]
  wire [1:0] _T_53; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29067.4]
  wire [1:0] _T_56; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29070.4]
  wire [1:0] _T_59; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29073.4]
  wire [1:0] _T_62; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29076.4]
  wire [1:0] _T_65; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29079.4]
  wire [1:0] _T_68; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29082.4]
  wire [1:0] _T_71; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29085.4]
  wire [1:0] _T_74; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29088.4]
  wire [1:0] _T_77; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29091.4]
  wire [1:0] _T_80; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29094.4]
  wire [1:0] _T_83; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29097.4]
  wire [1:0] _T_86; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29100.4]
  wire [1:0] _T_89; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29103.4]
  wire [1:0] _T_92; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29106.4]
  wire [1:0] _T_95; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29109.4]
  wire [1:0] _T_98; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29112.4]
  wire [1:0] _T_101; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29115.4]
  wire [1:0] _T_104; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29118.4]
  wire [1:0] _T_107; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29121.4]
  wire [1:0] _T_110; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29124.4]
  wire [1:0] _T_113; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29127.4]
  wire [1:0] _T_116; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29130.4]
  wire [1:0] _T_119; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29133.4]
  wire [1:0] _T_122; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29136.4]
  wire [1:0] _T_125; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29139.4]
  wire [1:0] _T_128; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29142.4]
  wire [1:0] _T_131; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29145.4]
  wire [1:0] _T_134; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29148.4]
  wire [1:0] _T_137; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29151.4]
  wire [1:0] _T_140; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29154.4]
  wire [1:0] _T_143; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29157.4]
  wire [1:0] _T_146; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29160.4]
  wire [1:0] _T_149; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29163.4]
  wire [1:0] _T_152; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29166.4]
  wire [1:0] _T_155; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29169.4]
  wire [1:0] _T_158; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29172.4]
  wire [1:0] _T_161; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29175.4]
  wire [1:0] _T_164; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29178.4]
  wire [1:0] _T_167; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29181.4]
  wire [1:0] _T_170; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29184.4]
  wire [1:0] _T_173; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29187.4]
  wire [1:0] _T_176; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29190.4]
  wire [1:0] _T_179; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29193.4]
  wire [1:0] _T_182; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29196.4]
  wire [1:0] _T_185; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29199.4]
  wire [1:0] _T_188; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29202.4]
  wire [1:0] _T_191; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29205.4]
  wire [1:0] _T_194; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29208.4]
  wire [1:0] _T_197; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29211.4]
  wire [1:0] _T_200; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29214.4]
  wire [1:0] _T_203; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29217.4]
  wire [1:0] _T_206; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29220.4]
  wire [1:0] _T_209; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29223.4]
  wire [1:0] _T_212; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29226.4]
  wire [1:0] _T_215; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29229.4]
  wire [1:0] _T_218; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29232.4]
  wire [1:0] _T_221; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29235.4]
  wire [1:0] _T_224; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29238.4]
  wire [1:0] _T_227; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29241.4]
  wire [1:0] _T_230; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29244.4]
  wire [1:0] _T_233; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29247.4]
  wire [1:0] _T_236; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29250.4]
  wire [1:0] _T_239; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29253.4]
  wire [3:0] _T_240; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29254.4]
  wire [3:0] _T_242; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29256.4]
  wire [3:0] _T_244; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29258.4]
  wire [3:0] _T_246; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29260.4]
  wire [3:0] _T_248; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29262.4]
  wire [3:0] _T_250; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29264.4]
  wire [3:0] _T_252; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29266.4]
  wire [3:0] _T_254; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29268.4]
  wire [3:0] _T_256; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29270.4]
  wire [3:0] _T_258; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29272.4]
  wire [3:0] _T_260; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29274.4]
  wire [3:0] _T_262; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29276.4]
  wire [3:0] _T_264; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29278.4]
  wire [3:0] _T_266; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29280.4]
  wire [3:0] _T_268; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29282.4]
  wire [3:0] _T_270; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29284.4]
  wire [3:0] _T_272; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29286.4]
  wire [3:0] _T_274; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29288.4]
  wire [3:0] _T_276; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29290.4]
  wire [3:0] _T_278; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29292.4]
  wire [3:0] _T_280; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29294.4]
  wire [3:0] _T_282; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29296.4]
  wire [3:0] _T_284; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29298.4]
  wire [3:0] _T_286; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29300.4]
  wire [3:0] _T_288; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29302.4]
  wire [3:0] _T_290; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29304.4]
  wire [3:0] _T_292; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29306.4]
  wire [3:0] _T_294; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29308.4]
  wire [3:0] _T_296; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29310.4]
  wire [3:0] _T_298; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29312.4]
  wire [3:0] _T_300; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29314.4]
  wire [3:0] _T_302; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29316.4]
  wire [3:0] _T_304; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29318.4]
  wire [3:0] _T_306; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29320.4]
  wire [3:0] _T_308; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29322.4]
  wire [3:0] _T_310; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29324.4]
  wire [3:0] _T_312; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29326.4]
  wire [3:0] _T_314; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29328.4]
  wire [3:0] _T_316; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29330.4]
  wire [3:0] _T_318; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29332.4]
  wire [3:0] _T_320; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29334.4]
  wire [3:0] _T_322; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29336.4]
  wire [3:0] _T_324; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29338.4]
  wire [3:0] _T_326; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29340.4]
  wire [3:0] _T_328; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29342.4]
  wire [3:0] _T_330; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29344.4]
  wire [3:0] _T_332; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29346.4]
  wire [3:0] _T_334; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29348.4]
  wire [3:0] _T_336; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29350.4]
  wire [3:0] _T_338; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29352.4]
  wire [3:0] _T_340; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29354.4]
  wire [3:0] _T_342; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29356.4]
  wire [3:0] _T_344; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29358.4]
  wire [3:0] _T_346; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29360.4]
  wire [3:0] _T_348; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29362.4]
  wire [3:0] _T_350; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29364.4]
  wire [3:0] _T_352; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29366.4]
  wire [3:0] _T_354; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29368.4]
  wire [3:0] _T_356; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29370.4]
  wire [3:0] _T_358; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29372.4]
  wire [3:0] _T_360; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29374.4]
  wire [3:0] _T_362; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29376.4]
  wire [3:0] _T_364; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29378.4]
  wire [3:0] _T_366; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29380.4]
  wire [7:0] _T_374; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29388.4]
  wire [15:0] _T_382; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29396.4]
  wire [7:0] _T_389; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29403.4]
  wire [31:0] _T_398; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29412.4]
  wire [7:0] _T_405; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29419.4]
  wire [15:0] _T_413; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29427.4]
  wire [7:0] _T_420; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29434.4]
  wire [31:0] _T_429; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29443.4]
  wire [63:0] _T_430; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29444.4]
  wire [7:0] _T_434; // @[AtomicAutomata.scala 121:25:chipyard.TestHarness.RocketConfig.fir@29448.4]
  wire [7:0] _GEN_39; // @[AtomicAutomata.scala 121:31:chipyard.TestHarness.RocketConfig.fir@29450.4]
  wire [7:0] _T_436; // @[AtomicAutomata.scala 121:31:chipyard.TestHarness.RocketConfig.fir@29450.4]
  wire [7:0] _T_437; // @[AtomicAutomata.scala 121:23:chipyard.TestHarness.RocketConfig.fir@29451.4]
  wire [7:0] _T_452; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29466.4]
  wire [7:0] _T_467; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29481.4]
  wire [7:0] _T_468; // @[AtomicAutomata.scala 125:38:chipyard.TestHarness.RocketConfig.fir@29482.4]
  wire [8:0] _T_469; // @[AtomicAutomata.scala 125:49:chipyard.TestHarness.RocketConfig.fir@29483.4]
  wire [7:0] _T_471; // @[AtomicAutomata.scala 126:38:chipyard.TestHarness.RocketConfig.fir@29485.4]
  wire [8:0] _T_472; // @[AtomicAutomata.scala 126:49:chipyard.TestHarness.RocketConfig.fir@29486.4]
  wire [8:0] _T_474; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29488.4]
  wire [7:0] _T_476; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29490.4]
  wire [9:0] _T_477; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29491.4]
  wire [7:0] _T_479; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29493.4]
  wire [11:0] _T_480; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29494.4]
  wire [7:0] _T_482; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29496.4]
  wire [7:0] _T_493; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29507.4]
  wire [7:0] _T_495; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29509.4]
  wire [7:0] _T_497; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29511.4]
  wire [7:0] _T_499; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29513.4]
  wire [7:0] _T_501; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29515.4]
  wire [7:0] _T_503; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29517.4]
  wire [7:0] _T_505; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29519.4]
  wire [7:0] _T_507; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29521.4]
  wire [63:0] _T_514; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29528.4]
  wire [8:0] _T_515; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29529.4]
  wire [7:0] _T_517; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29531.4]
  wire [9:0] _T_518; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29532.4]
  wire [7:0] _T_520; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29534.4]
  wire [11:0] _T_521; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29535.4]
  wire [7:0] _T_523; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29537.4]
  wire [7:0] _T_534; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29548.4]
  wire [7:0] _T_536; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29550.4]
  wire [7:0] _T_538; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29552.4]
  wire [7:0] _T_540; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29554.4]
  wire [7:0] _T_542; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29556.4]
  wire [7:0] _T_544; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29558.4]
  wire [7:0] _T_546; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29560.4]
  wire [7:0] _T_548; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29562.4]
  wire [63:0] _T_555; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29569.4]
  wire [7:0] _T_565; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29579.4]
  wire [7:0] _T_567; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29581.4]
  wire [7:0] _T_569; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29583.4]
  wire [7:0] _T_571; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29585.4]
  wire [7:0] _T_573; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29587.4]
  wire [7:0] _T_575; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29589.4]
  wire [7:0] _T_577; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29591.4]
  wire [7:0] _T_579; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29593.4]
  wire [63:0] _T_586; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29600.4]
  wire [63:0] _T_587; // @[AtomicAutomata.scala 131:28:chipyard.TestHarness.RocketConfig.fir@29601.4]
  wire [63:0] _T_588; // @[AtomicAutomata.scala 131:41:chipyard.TestHarness.RocketConfig.fir@29602.4]
  wire [63:0] _T_589; // @[AtomicAutomata.scala 132:28:chipyard.TestHarness.RocketConfig.fir@29603.4]
  wire [63:0] _T_590; // @[AtomicAutomata.scala 132:41:chipyard.TestHarness.RocketConfig.fir@29604.4]
  wire [63:0] _T_591; // @[AtomicAutomata.scala 133:43:chipyard.TestHarness.RocketConfig.fir@29605.4]
  wire [63:0] _T_592; // @[AtomicAutomata.scala 133:26:chipyard.TestHarness.RocketConfig.fir@29606.4]
  wire [63:0] _T_594; // @[AtomicAutomata.scala 134:33:chipyard.TestHarness.RocketConfig.fir@29608.4]
  wire  _T_596; // @[AtomicAutomata.scala 136:38:chipyard.TestHarness.RocketConfig.fir@29610.4]
  wire  _T_599; // @[AtomicAutomata.scala 137:39:chipyard.TestHarness.RocketConfig.fir@29613.4]
  wire  _T_601; // @[AtomicAutomata.scala 137:55:chipyard.TestHarness.RocketConfig.fir@29615.4]
  wire  _T_602; // @[AtomicAutomata.scala 137:27:chipyard.TestHarness.RocketConfig.fir@29616.4]
  wire  _T_603; // @[AtomicAutomata.scala 138:31:chipyard.TestHarness.RocketConfig.fir@29617.4]
  wire [63:0] _T_604; // @[AtomicAutomata.scala 139:50:chipyard.TestHarness.RocketConfig.fir@29618.4]
  wire [63:0] _T_605; // @[AtomicAutomata.scala 139:28:chipyard.TestHarness.RocketConfig.fir@29619.4]
  wire [63:0] _T_607; // @[AtomicAutomata.scala 145:14:chipyard.TestHarness.RocketConfig.fir@29621.4]
  wire  _T_609; // @[AtomicAutomata.scala 149:23:chipyard.TestHarness.RocketConfig.fir@29624.4]
  wire  _T_610; // @[AtomicAutomata.scala 149:53:chipyard.TestHarness.RocketConfig.fir@29625.4]
  wire  _T_611; // @[AtomicAutomata.scala 149:35:chipyard.TestHarness.RocketConfig.fir@29626.4]
  reg [2:0] _T_701; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@29735.4]
  reg [31:0] _RAND_13;
  wire  _T_702; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@29736.4]
  wire  _T_613; // @[AtomicAutomata.scala 151:38:chipyard.TestHarness.RocketConfig.fir@29629.4]
  wire [1:0] _T_704; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29738.4]
  wire [2:0] _T_705; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29739.4]
  wire [1:0] _T_707; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29741.4]
  wire [2:0] _T_709; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@29743.4]
  wire [1:0] _T_711; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@29745.4]
  reg  _T_745_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@29797.4]
  reg [31:0] _RAND_14;
  wire  _T_747_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@29800.4]
  wire  _T_749; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@29803.4]
  wire  _T_614; // @[AtomicAutomata.scala 153:15:chipyard.TestHarness.RocketConfig.fir@29632.4]
  wire [2:0] _GEN_0; // @[AtomicAutomata.scala 153:31:chipyard.TestHarness.RocketConfig.fir@29633.4]
  wire [2:0] _GEN_1; // @[AtomicAutomata.scala 153:31:chipyard.TestHarness.RocketConfig.fir@29633.4]
  wire  _T_616; // @[AtomicAutomata.scala 166:45:chipyard.TestHarness.RocketConfig.fir@29640.4]
  wire [3:0] _T_631; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@29661.4]
  wire [2:0] _T_633; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@29663.4]
  wire  _T_634; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@29664.4]
  wire  _T_637; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@29667.4]
  wire  _T_639; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29669.4]
  wire  _T_640; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29670.4]
  wire  _T_642; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29672.4]
  wire  _T_643; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29673.4]
  wire  _T_646; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@29676.4]
  wire  _T_647; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29677.4]
  wire  _T_648; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29678.4]
  wire  _T_649; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29679.4]
  wire  _T_650; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29680.4]
  wire  _T_651; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29681.4]
  wire  _T_652; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29682.4]
  wire  _T_653; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29683.4]
  wire  _T_654; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29684.4]
  wire  _T_655; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29685.4]
  wire  _T_656; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29686.4]
  wire  _T_657; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29687.4]
  wire  _T_658; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29688.4]
  wire  _T_661; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@29691.4]
  wire  _T_662; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29692.4]
  wire  _T_663; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29693.4]
  wire  _T_664; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29694.4]
  wire  _T_665; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29695.4]
  wire  _T_666; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29696.4]
  wire  _T_667; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29697.4]
  wire  _T_668; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29698.4]
  wire  _T_669; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29699.4]
  wire  _T_670; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29700.4]
  wire  _T_671; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29701.4]
  wire  _T_672; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29702.4]
  wire  _T_673; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29703.4]
  wire  _T_674; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29704.4]
  wire  _T_675; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29705.4]
  wire  _T_676; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29706.4]
  wire  _T_677; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29707.4]
  wire  _T_678; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29708.4]
  wire  _T_679; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29709.4]
  wire  _T_680; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29710.4]
  wire  _T_681; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29711.4]
  wire  _T_682; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29712.4]
  wire  _T_683; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29713.4]
  wire  _T_684; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29714.4]
  wire  _T_685; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29715.4]
  wire [12:0] _T_694; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@29728.4]
  wire [5:0] _T_696; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@29730.4]
  wire  _T_699; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@29733.4]
  wire  _T_703; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@29737.4]
  wire  _T_715; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@29752.4]
  wire  _T_716; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@29753.4]
  wire  _T_719; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@29759.4]
  wire  _T_721; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@29761.4]
  wire  _T_724; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@29764.4]
  wire  _T_725; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@29765.4]
  wire  _T_728; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@29768.4]
  wire  _T_729; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@29769.4]
  wire  _T_730; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@29774.4]
  wire  _T_731; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@29775.4]
  wire  _T_733; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@29777.4]
  wire  _T_735; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@29779.4]
  wire  _T_736; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@29780.4]
  reg  _T_745_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@29797.4]
  reg [31:0] _RAND_15;
  wire  _T_751; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29806.4]
  wire  _T_752; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29807.4]
  wire  _T_753; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29808.4]
  wire  _T_755; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@29811.4]
  wire  _T_740; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@29788.4]
  wire [2:0] _GEN_40; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@29789.4]
  wire [2:0] _T_742; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@29790.4]
  wire  _T_746_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@29798.4]
  wire  _T_746_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@29798.4]
  wire  _T_747_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@29800.4]
  wire  _T_748; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@29801.4]
  wire [64:0] _T_756; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29813.4]
  wire [103:0] _T_758; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29815.4]
  wire [115:0] _T_762; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29819.4]
  wire [115:0] _T_763; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29820.4]
  wire [115:0] _T_770; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29827.4]
  wire [115:0] _T_771; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29828.4]
  wire [115:0] _T_772; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29829.4]
  wire  _T_783; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@29857.4]
  wire  _T_785; // @[AtomicAutomata.scala 174:31:chipyard.TestHarness.RocketConfig.fir@29859.4]
  wire [2:0] _GEN_41; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@29865.8]
  wire  _T_787; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@29865.8]
  wire  _T_789; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@29867.8]
  wire  _T_791; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@29869.8]
  wire  _T_793; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@29877.4]
  reg [2:0] _T_802; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@29891.4]
  reg [31:0] _RAND_16;
  wire  _T_805; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@29894.4]
  wire  _T_817; // @[AtomicAutomata.scala 213:40:chipyard.TestHarness.RocketConfig.fir@29909.4]
  wire  _T_823; // @[AtomicAutomata.scala 232:30:chipyard.TestHarness.RocketConfig.fir@29925.4]
  wire  _T_813; // @[AtomicAutomata.scala 204:53:chipyard.TestHarness.RocketConfig.fir@29905.4]
  wire  _T_814; // @[AtomicAutomata.scala 205:83:chipyard.TestHarness.RocketConfig.fir@29906.4]
  wire  _T_824; // @[AtomicAutomata.scala 232:40:chipyard.TestHarness.RocketConfig.fir@29926.4]
  wire  _T_829; // @[AtomicAutomata.scala 236:35:chipyard.TestHarness.RocketConfig.fir@29932.4]
  wire  _T_794; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@29883.4]
  wire [12:0] _T_796; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@29885.4]
  wire [5:0] _T_798; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@29887.4]
  wire [2:0] _T_804; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@29893.4]
  wire  _T_818; // @[AtomicAutomata.scala 214:40:chipyard.TestHarness.RocketConfig.fir@29910.4]
  wire  _T_820; // @[AtomicAutomata.scala 216:28:chipyard.TestHarness.RocketConfig.fir@29912.4]
  wire  _T_821; // @[AtomicAutomata.scala 218:22:chipyard.TestHarness.RocketConfig.fir@29914.6]
  wire  _T_825; // @[AtomicAutomata.scala 233:33:chipyard.TestHarness.RocketConfig.fir@29927.4]
  wire  _T_826; // @[AtomicAutomata.scala 233:42:chipyard.TestHarness.RocketConfig.fir@29928.4]
  wire  _T_827; // @[AtomicAutomata.scala 235:38:chipyard.TestHarness.RocketConfig.fir@29929.4]
  wire  _T_830; // @[AtomicAutomata.scala 242:46:chipyard.TestHarness.RocketConfig.fir@29938.6]
  wire  _T_831; // @[AtomicAutomata.scala 243:46:chipyard.TestHarness.RocketConfig.fir@29940.6]
  TLMonitor_12 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@28985.4]
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
  assign _T_7 = _T_4_0_state == 2'h0; // @[AtomicAutomata.scala 80:44:chipyard.TestHarness.RocketConfig.fir@29021.4]
  assign _T_8 = _T_4_0_state == 2'h2; // @[AtomicAutomata.scala 81:44:chipyard.TestHarness.RocketConfig.fir@29022.4]
  assign _T_9 = _T_4_0_state == 2'h3; // @[AtomicAutomata.scala 82:49:chipyard.TestHarness.RocketConfig.fir@29023.4]
  assign _T_11 = _T_9 | _T_8; // @[AtomicAutomata.scala 82:57:chipyard.TestHarness.RocketConfig.fir@29025.4]
  assign _T_12 = _T_4_0_state != 2'h0; // @[AtomicAutomata.scala 83:49:chipyard.TestHarness.RocketConfig.fir@29026.4]
  assign _T_31 = auto_in_a_bits_opcode == 3'h3; // @[AtomicAutomata.scala 90:47:chipyard.TestHarness.RocketConfig.fir@29045.4]
  assign _T_32 = auto_in_a_bits_opcode == 3'h2; // @[AtomicAutomata.scala 91:47:chipyard.TestHarness.RocketConfig.fir@29046.4]
  assign _T_33 = _T_32 ? 1'h0 : 1'h1; // @[AtomicAutomata.scala 92:63:chipyard.TestHarness.RocketConfig.fir@29047.4]
  assign _T_34 = _T_31 ? 1'h0 : _T_33; // @[AtomicAutomata.scala 92:32:chipyard.TestHarness.RocketConfig.fir@29048.4]
  assign _T_50 = {_T_5_0_bits_data[0],_T_6_0_data[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29064.4]
  assign _T_53 = {_T_5_0_bits_data[1],_T_6_0_data[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29067.4]
  assign _T_56 = {_T_5_0_bits_data[2],_T_6_0_data[2]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29070.4]
  assign _T_59 = {_T_5_0_bits_data[3],_T_6_0_data[3]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29073.4]
  assign _T_62 = {_T_5_0_bits_data[4],_T_6_0_data[4]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29076.4]
  assign _T_65 = {_T_5_0_bits_data[5],_T_6_0_data[5]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29079.4]
  assign _T_68 = {_T_5_0_bits_data[6],_T_6_0_data[6]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29082.4]
  assign _T_71 = {_T_5_0_bits_data[7],_T_6_0_data[7]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29085.4]
  assign _T_74 = {_T_5_0_bits_data[8],_T_6_0_data[8]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29088.4]
  assign _T_77 = {_T_5_0_bits_data[9],_T_6_0_data[9]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29091.4]
  assign _T_80 = {_T_5_0_bits_data[10],_T_6_0_data[10]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29094.4]
  assign _T_83 = {_T_5_0_bits_data[11],_T_6_0_data[11]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29097.4]
  assign _T_86 = {_T_5_0_bits_data[12],_T_6_0_data[12]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29100.4]
  assign _T_89 = {_T_5_0_bits_data[13],_T_6_0_data[13]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29103.4]
  assign _T_92 = {_T_5_0_bits_data[14],_T_6_0_data[14]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29106.4]
  assign _T_95 = {_T_5_0_bits_data[15],_T_6_0_data[15]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29109.4]
  assign _T_98 = {_T_5_0_bits_data[16],_T_6_0_data[16]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29112.4]
  assign _T_101 = {_T_5_0_bits_data[17],_T_6_0_data[17]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29115.4]
  assign _T_104 = {_T_5_0_bits_data[18],_T_6_0_data[18]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29118.4]
  assign _T_107 = {_T_5_0_bits_data[19],_T_6_0_data[19]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29121.4]
  assign _T_110 = {_T_5_0_bits_data[20],_T_6_0_data[20]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29124.4]
  assign _T_113 = {_T_5_0_bits_data[21],_T_6_0_data[21]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29127.4]
  assign _T_116 = {_T_5_0_bits_data[22],_T_6_0_data[22]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29130.4]
  assign _T_119 = {_T_5_0_bits_data[23],_T_6_0_data[23]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29133.4]
  assign _T_122 = {_T_5_0_bits_data[24],_T_6_0_data[24]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29136.4]
  assign _T_125 = {_T_5_0_bits_data[25],_T_6_0_data[25]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29139.4]
  assign _T_128 = {_T_5_0_bits_data[26],_T_6_0_data[26]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29142.4]
  assign _T_131 = {_T_5_0_bits_data[27],_T_6_0_data[27]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29145.4]
  assign _T_134 = {_T_5_0_bits_data[28],_T_6_0_data[28]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29148.4]
  assign _T_137 = {_T_5_0_bits_data[29],_T_6_0_data[29]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29151.4]
  assign _T_140 = {_T_5_0_bits_data[30],_T_6_0_data[30]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29154.4]
  assign _T_143 = {_T_5_0_bits_data[31],_T_6_0_data[31]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29157.4]
  assign _T_146 = {_T_5_0_bits_data[32],_T_6_0_data[32]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29160.4]
  assign _T_149 = {_T_5_0_bits_data[33],_T_6_0_data[33]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29163.4]
  assign _T_152 = {_T_5_0_bits_data[34],_T_6_0_data[34]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29166.4]
  assign _T_155 = {_T_5_0_bits_data[35],_T_6_0_data[35]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29169.4]
  assign _T_158 = {_T_5_0_bits_data[36],_T_6_0_data[36]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29172.4]
  assign _T_161 = {_T_5_0_bits_data[37],_T_6_0_data[37]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29175.4]
  assign _T_164 = {_T_5_0_bits_data[38],_T_6_0_data[38]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29178.4]
  assign _T_167 = {_T_5_0_bits_data[39],_T_6_0_data[39]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29181.4]
  assign _T_170 = {_T_5_0_bits_data[40],_T_6_0_data[40]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29184.4]
  assign _T_173 = {_T_5_0_bits_data[41],_T_6_0_data[41]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29187.4]
  assign _T_176 = {_T_5_0_bits_data[42],_T_6_0_data[42]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29190.4]
  assign _T_179 = {_T_5_0_bits_data[43],_T_6_0_data[43]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29193.4]
  assign _T_182 = {_T_5_0_bits_data[44],_T_6_0_data[44]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29196.4]
  assign _T_185 = {_T_5_0_bits_data[45],_T_6_0_data[45]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29199.4]
  assign _T_188 = {_T_5_0_bits_data[46],_T_6_0_data[46]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29202.4]
  assign _T_191 = {_T_5_0_bits_data[47],_T_6_0_data[47]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29205.4]
  assign _T_194 = {_T_5_0_bits_data[48],_T_6_0_data[48]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29208.4]
  assign _T_197 = {_T_5_0_bits_data[49],_T_6_0_data[49]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29211.4]
  assign _T_200 = {_T_5_0_bits_data[50],_T_6_0_data[50]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29214.4]
  assign _T_203 = {_T_5_0_bits_data[51],_T_6_0_data[51]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29217.4]
  assign _T_206 = {_T_5_0_bits_data[52],_T_6_0_data[52]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29220.4]
  assign _T_209 = {_T_5_0_bits_data[53],_T_6_0_data[53]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29223.4]
  assign _T_212 = {_T_5_0_bits_data[54],_T_6_0_data[54]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29226.4]
  assign _T_215 = {_T_5_0_bits_data[55],_T_6_0_data[55]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29229.4]
  assign _T_218 = {_T_5_0_bits_data[56],_T_6_0_data[56]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29232.4]
  assign _T_221 = {_T_5_0_bits_data[57],_T_6_0_data[57]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29235.4]
  assign _T_224 = {_T_5_0_bits_data[58],_T_6_0_data[58]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29238.4]
  assign _T_227 = {_T_5_0_bits_data[59],_T_6_0_data[59]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29241.4]
  assign _T_230 = {_T_5_0_bits_data[60],_T_6_0_data[60]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29244.4]
  assign _T_233 = {_T_5_0_bits_data[61],_T_6_0_data[61]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29247.4]
  assign _T_236 = {_T_5_0_bits_data[62],_T_6_0_data[62]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29250.4]
  assign _T_239 = {_T_5_0_bits_data[63],_T_6_0_data[63]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29253.4]
  assign _T_240 = _T_5_0_lut >> _T_50; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29254.4]
  assign _T_242 = _T_5_0_lut >> _T_53; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29256.4]
  assign _T_244 = _T_5_0_lut >> _T_56; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29258.4]
  assign _T_246 = _T_5_0_lut >> _T_59; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29260.4]
  assign _T_248 = _T_5_0_lut >> _T_62; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29262.4]
  assign _T_250 = _T_5_0_lut >> _T_65; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29264.4]
  assign _T_252 = _T_5_0_lut >> _T_68; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29266.4]
  assign _T_254 = _T_5_0_lut >> _T_71; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29268.4]
  assign _T_256 = _T_5_0_lut >> _T_74; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29270.4]
  assign _T_258 = _T_5_0_lut >> _T_77; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29272.4]
  assign _T_260 = _T_5_0_lut >> _T_80; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29274.4]
  assign _T_262 = _T_5_0_lut >> _T_83; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29276.4]
  assign _T_264 = _T_5_0_lut >> _T_86; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29278.4]
  assign _T_266 = _T_5_0_lut >> _T_89; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29280.4]
  assign _T_268 = _T_5_0_lut >> _T_92; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29282.4]
  assign _T_270 = _T_5_0_lut >> _T_95; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29284.4]
  assign _T_272 = _T_5_0_lut >> _T_98; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29286.4]
  assign _T_274 = _T_5_0_lut >> _T_101; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29288.4]
  assign _T_276 = _T_5_0_lut >> _T_104; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29290.4]
  assign _T_278 = _T_5_0_lut >> _T_107; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29292.4]
  assign _T_280 = _T_5_0_lut >> _T_110; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29294.4]
  assign _T_282 = _T_5_0_lut >> _T_113; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29296.4]
  assign _T_284 = _T_5_0_lut >> _T_116; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29298.4]
  assign _T_286 = _T_5_0_lut >> _T_119; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29300.4]
  assign _T_288 = _T_5_0_lut >> _T_122; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29302.4]
  assign _T_290 = _T_5_0_lut >> _T_125; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29304.4]
  assign _T_292 = _T_5_0_lut >> _T_128; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29306.4]
  assign _T_294 = _T_5_0_lut >> _T_131; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29308.4]
  assign _T_296 = _T_5_0_lut >> _T_134; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29310.4]
  assign _T_298 = _T_5_0_lut >> _T_137; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29312.4]
  assign _T_300 = _T_5_0_lut >> _T_140; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29314.4]
  assign _T_302 = _T_5_0_lut >> _T_143; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29316.4]
  assign _T_304 = _T_5_0_lut >> _T_146; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29318.4]
  assign _T_306 = _T_5_0_lut >> _T_149; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29320.4]
  assign _T_308 = _T_5_0_lut >> _T_152; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29322.4]
  assign _T_310 = _T_5_0_lut >> _T_155; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29324.4]
  assign _T_312 = _T_5_0_lut >> _T_158; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29326.4]
  assign _T_314 = _T_5_0_lut >> _T_161; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29328.4]
  assign _T_316 = _T_5_0_lut >> _T_164; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29330.4]
  assign _T_318 = _T_5_0_lut >> _T_167; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29332.4]
  assign _T_320 = _T_5_0_lut >> _T_170; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29334.4]
  assign _T_322 = _T_5_0_lut >> _T_173; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29336.4]
  assign _T_324 = _T_5_0_lut >> _T_176; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29338.4]
  assign _T_326 = _T_5_0_lut >> _T_179; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29340.4]
  assign _T_328 = _T_5_0_lut >> _T_182; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29342.4]
  assign _T_330 = _T_5_0_lut >> _T_185; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29344.4]
  assign _T_332 = _T_5_0_lut >> _T_188; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29346.4]
  assign _T_334 = _T_5_0_lut >> _T_191; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29348.4]
  assign _T_336 = _T_5_0_lut >> _T_194; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29350.4]
  assign _T_338 = _T_5_0_lut >> _T_197; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29352.4]
  assign _T_340 = _T_5_0_lut >> _T_200; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29354.4]
  assign _T_342 = _T_5_0_lut >> _T_203; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29356.4]
  assign _T_344 = _T_5_0_lut >> _T_206; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29358.4]
  assign _T_346 = _T_5_0_lut >> _T_209; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29360.4]
  assign _T_348 = _T_5_0_lut >> _T_212; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29362.4]
  assign _T_350 = _T_5_0_lut >> _T_215; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29364.4]
  assign _T_352 = _T_5_0_lut >> _T_218; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29366.4]
  assign _T_354 = _T_5_0_lut >> _T_221; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29368.4]
  assign _T_356 = _T_5_0_lut >> _T_224; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29370.4]
  assign _T_358 = _T_5_0_lut >> _T_227; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29372.4]
  assign _T_360 = _T_5_0_lut >> _T_230; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29374.4]
  assign _T_362 = _T_5_0_lut >> _T_233; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29376.4]
  assign _T_364 = _T_5_0_lut >> _T_236; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29378.4]
  assign _T_366 = _T_5_0_lut >> _T_239; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@29380.4]
  assign _T_374 = {_T_254[0],_T_252[0],_T_250[0],_T_248[0],_T_246[0],_T_244[0],_T_242[0],_T_240[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29388.4]
  assign _T_382 = {_T_270[0],_T_268[0],_T_266[0],_T_264[0],_T_262[0],_T_260[0],_T_258[0],_T_256[0],_T_374}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29396.4]
  assign _T_389 = {_T_286[0],_T_284[0],_T_282[0],_T_280[0],_T_278[0],_T_276[0],_T_274[0],_T_272[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29403.4]
  assign _T_398 = {_T_302[0],_T_300[0],_T_298[0],_T_296[0],_T_294[0],_T_292[0],_T_290[0],_T_288[0],_T_389,_T_382}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29412.4]
  assign _T_405 = {_T_318[0],_T_316[0],_T_314[0],_T_312[0],_T_310[0],_T_308[0],_T_306[0],_T_304[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29419.4]
  assign _T_413 = {_T_334[0],_T_332[0],_T_330[0],_T_328[0],_T_326[0],_T_324[0],_T_322[0],_T_320[0],_T_405}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29427.4]
  assign _T_420 = {_T_350[0],_T_348[0],_T_346[0],_T_344[0],_T_342[0],_T_340[0],_T_338[0],_T_336[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29434.4]
  assign _T_429 = {_T_366[0],_T_364[0],_T_362[0],_T_360[0],_T_358[0],_T_356[0],_T_354[0],_T_352[0],_T_420,_T_413}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29443.4]
  assign _T_430 = {_T_429,_T_398}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29444.4]
  assign _T_434 = ~_T_5_0_bits_mask; // @[AtomicAutomata.scala 121:25:chipyard.TestHarness.RocketConfig.fir@29448.4]
  assign _GEN_39 = {{1'd0}, _T_5_0_bits_mask[7:1]}; // @[AtomicAutomata.scala 121:31:chipyard.TestHarness.RocketConfig.fir@29450.4]
  assign _T_436 = _T_434 | _GEN_39; // @[AtomicAutomata.scala 121:31:chipyard.TestHarness.RocketConfig.fir@29450.4]
  assign _T_437 = ~_T_436; // @[AtomicAutomata.scala 121:23:chipyard.TestHarness.RocketConfig.fir@29451.4]
  assign _T_452 = {_T_5_0_bits_data[63],_T_5_0_bits_data[55],_T_5_0_bits_data[47],_T_5_0_bits_data[39],_T_5_0_bits_data[31],_T_5_0_bits_data[23],_T_5_0_bits_data[15],_T_5_0_bits_data[7]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29466.4]
  assign _T_467 = {_T_6_0_data[63],_T_6_0_data[55],_T_6_0_data[47],_T_6_0_data[39],_T_6_0_data[31],_T_6_0_data[23],_T_6_0_data[15],_T_6_0_data[7]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29481.4]
  assign _T_468 = _T_452 & _T_437; // @[AtomicAutomata.scala 125:38:chipyard.TestHarness.RocketConfig.fir@29482.4]
  assign _T_469 = {_T_468, 1'h0}; // @[AtomicAutomata.scala 125:49:chipyard.TestHarness.RocketConfig.fir@29483.4]
  assign _T_471 = _T_467 & _T_437; // @[AtomicAutomata.scala 126:38:chipyard.TestHarness.RocketConfig.fir@29485.4]
  assign _T_472 = {_T_471, 1'h0}; // @[AtomicAutomata.scala 126:49:chipyard.TestHarness.RocketConfig.fir@29486.4]
  assign _T_474 = {_T_469[7:0], 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29488.4]
  assign _T_476 = _T_469[7:0] | _T_474[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29490.4]
  assign _T_477 = {_T_476, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29491.4]
  assign _T_479 = _T_476 | _T_477[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29493.4]
  assign _T_480 = {_T_479, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29494.4]
  assign _T_482 = _T_479 | _T_480[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29496.4]
  assign _T_493 = _T_482[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29507.4]
  assign _T_495 = _T_482[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29509.4]
  assign _T_497 = _T_482[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29511.4]
  assign _T_499 = _T_482[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29513.4]
  assign _T_501 = _T_482[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29515.4]
  assign _T_503 = _T_482[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29517.4]
  assign _T_505 = _T_482[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29519.4]
  assign _T_507 = _T_482[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29521.4]
  assign _T_514 = {_T_507,_T_505,_T_503,_T_501,_T_499,_T_497,_T_495,_T_493}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29528.4]
  assign _T_515 = {_T_472[7:0], 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29529.4]
  assign _T_517 = _T_472[7:0] | _T_515[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29531.4]
  assign _T_518 = {_T_517, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29532.4]
  assign _T_520 = _T_517 | _T_518[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29534.4]
  assign _T_521 = {_T_520, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29535.4]
  assign _T_523 = _T_520 | _T_521[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29537.4]
  assign _T_534 = _T_523[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29548.4]
  assign _T_536 = _T_523[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29550.4]
  assign _T_538 = _T_523[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29552.4]
  assign _T_540 = _T_523[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29554.4]
  assign _T_542 = _T_523[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29556.4]
  assign _T_544 = _T_523[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29558.4]
  assign _T_546 = _T_523[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29560.4]
  assign _T_548 = _T_523[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29562.4]
  assign _T_555 = {_T_548,_T_546,_T_544,_T_542,_T_540,_T_538,_T_536,_T_534}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29569.4]
  assign _T_565 = _T_5_0_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29579.4]
  assign _T_567 = _T_5_0_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29581.4]
  assign _T_569 = _T_5_0_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29583.4]
  assign _T_571 = _T_5_0_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29585.4]
  assign _T_573 = _T_5_0_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29587.4]
  assign _T_575 = _T_5_0_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29589.4]
  assign _T_577 = _T_5_0_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29591.4]
  assign _T_579 = _T_5_0_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@29593.4]
  assign _T_586 = {_T_579,_T_577,_T_575,_T_573,_T_571,_T_569,_T_567,_T_565}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29600.4]
  assign _T_587 = _T_5_0_bits_data & _T_586; // @[AtomicAutomata.scala 131:28:chipyard.TestHarness.RocketConfig.fir@29601.4]
  assign _T_588 = _T_587 | _T_514; // @[AtomicAutomata.scala 131:41:chipyard.TestHarness.RocketConfig.fir@29602.4]
  assign _T_589 = _T_6_0_data & _T_586; // @[AtomicAutomata.scala 132:28:chipyard.TestHarness.RocketConfig.fir@29603.4]
  assign _T_590 = _T_589 | _T_555; // @[AtomicAutomata.scala 132:41:chipyard.TestHarness.RocketConfig.fir@29604.4]
  assign _T_591 = ~_T_590; // @[AtomicAutomata.scala 133:43:chipyard.TestHarness.RocketConfig.fir@29605.4]
  assign _T_592 = _T_5_0_bits_param[2] ? _T_590 : _T_591; // @[AtomicAutomata.scala 133:26:chipyard.TestHarness.RocketConfig.fir@29606.4]
  assign _T_594 = _T_588 + _T_592; // @[AtomicAutomata.scala 134:33:chipyard.TestHarness.RocketConfig.fir@29608.4]
  assign _T_596 = _T_5_0_bits_param[1] == _T_588[63]; // @[AtomicAutomata.scala 136:38:chipyard.TestHarness.RocketConfig.fir@29610.4]
  assign _T_599 = _T_588[63] == _T_590[63]; // @[AtomicAutomata.scala 137:39:chipyard.TestHarness.RocketConfig.fir@29613.4]
  assign _T_601 = ~_T_594[63]; // @[AtomicAutomata.scala 137:55:chipyard.TestHarness.RocketConfig.fir@29615.4]
  assign _T_602 = _T_599 ? _T_601 : _T_596; // @[AtomicAutomata.scala 137:27:chipyard.TestHarness.RocketConfig.fir@29616.4]
  assign _T_603 = _T_5_0_bits_param[0] == _T_602; // @[AtomicAutomata.scala 138:31:chipyard.TestHarness.RocketConfig.fir@29617.4]
  assign _T_604 = _T_603 ? _T_5_0_bits_data : _T_6_0_data; // @[AtomicAutomata.scala 139:50:chipyard.TestHarness.RocketConfig.fir@29618.4]
  assign _T_605 = _T_5_0_bits_param[2] ? _T_594 : _T_604; // @[AtomicAutomata.scala 139:28:chipyard.TestHarness.RocketConfig.fir@29619.4]
  assign _T_607 = _T_5_0_bits_opcode[0] ? _T_430 : _T_605; // @[AtomicAutomata.scala 145:14:chipyard.TestHarness.RocketConfig.fir@29621.4]
  assign _T_609 = ~_T_11; // @[AtomicAutomata.scala 149:23:chipyard.TestHarness.RocketConfig.fir@29624.4]
  assign _T_610 = _T_34 | _T_7; // @[AtomicAutomata.scala 149:53:chipyard.TestHarness.RocketConfig.fir@29625.4]
  assign _T_611 = _T_609 & _T_610; // @[AtomicAutomata.scala 149:35:chipyard.TestHarness.RocketConfig.fir@29626.4]
  assign _T_702 = _T_701 == 3'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@29736.4]
  assign _T_613 = auto_in_a_valid & _T_611; // @[AtomicAutomata.scala 151:38:chipyard.TestHarness.RocketConfig.fir@29629.4]
  assign _T_704 = {_T_613,_T_8}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@29738.4]
  assign _T_705 = {_T_704, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@29739.4]
  assign _T_707 = _T_704 | _T_705[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@29741.4]
  assign _T_709 = {_T_707, 1'h0}; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@29743.4]
  assign _T_711 = ~_T_709[1:0]; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@29745.4]
  assign _T_747_1 = _T_702 ? _T_711[1] : _T_745_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@29800.4]
  assign _T_749 = auto_out_a_ready & _T_747_1; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@29803.4]
  assign _T_614 = ~_T_34; // @[AtomicAutomata.scala 153:15:chipyard.TestHarness.RocketConfig.fir@29632.4]
  assign _GEN_0 = _T_614 ? 3'h4 : auto_in_a_bits_opcode; // @[AtomicAutomata.scala 153:31:chipyard.TestHarness.RocketConfig.fir@29633.4]
  assign _GEN_1 = _T_614 ? 3'h0 : auto_in_a_bits_param; // @[AtomicAutomata.scala 153:31:chipyard.TestHarness.RocketConfig.fir@29633.4]
  assign _T_616 = _T_5_0_bits_corrupt | _T_6_0_corrupt; // @[AtomicAutomata.scala 166:45:chipyard.TestHarness.RocketConfig.fir@29640.4]
  assign _T_631 = 4'h1 << _T_5_0_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@29661.4]
  assign _T_633 = _T_631[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@29663.4]
  assign _T_634 = _T_5_0_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@29664.4]
  assign _T_637 = ~_T_5_0_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@29667.4]
  assign _T_639 = _T_633[2] & _T_637; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29669.4]
  assign _T_640 = _T_634 | _T_639; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29670.4]
  assign _T_642 = _T_633[2] & _T_5_0_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29672.4]
  assign _T_643 = _T_634 | _T_642; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29673.4]
  assign _T_646 = ~_T_5_0_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@29676.4]
  assign _T_647 = _T_637 & _T_646; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29677.4]
  assign _T_648 = _T_633[1] & _T_647; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29678.4]
  assign _T_649 = _T_640 | _T_648; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29679.4]
  assign _T_650 = _T_637 & _T_5_0_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29680.4]
  assign _T_651 = _T_633[1] & _T_650; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29681.4]
  assign _T_652 = _T_640 | _T_651; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29682.4]
  assign _T_653 = _T_5_0_bits_address[2] & _T_646; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29683.4]
  assign _T_654 = _T_633[1] & _T_653; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29684.4]
  assign _T_655 = _T_643 | _T_654; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29685.4]
  assign _T_656 = _T_5_0_bits_address[2] & _T_5_0_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29686.4]
  assign _T_657 = _T_633[1] & _T_656; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29687.4]
  assign _T_658 = _T_643 | _T_657; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29688.4]
  assign _T_661 = ~_T_5_0_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@29691.4]
  assign _T_662 = _T_647 & _T_661; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29692.4]
  assign _T_663 = _T_633[0] & _T_662; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29693.4]
  assign _T_664 = _T_649 | _T_663; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29694.4]
  assign _T_665 = _T_647 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29695.4]
  assign _T_666 = _T_633[0] & _T_665; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29696.4]
  assign _T_667 = _T_649 | _T_666; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29697.4]
  assign _T_668 = _T_650 & _T_661; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29698.4]
  assign _T_669 = _T_633[0] & _T_668; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29699.4]
  assign _T_670 = _T_652 | _T_669; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29700.4]
  assign _T_671 = _T_650 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29701.4]
  assign _T_672 = _T_633[0] & _T_671; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29702.4]
  assign _T_673 = _T_652 | _T_672; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29703.4]
  assign _T_674 = _T_653 & _T_661; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29704.4]
  assign _T_675 = _T_633[0] & _T_674; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29705.4]
  assign _T_676 = _T_655 | _T_675; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29706.4]
  assign _T_677 = _T_653 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29707.4]
  assign _T_678 = _T_633[0] & _T_677; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29708.4]
  assign _T_679 = _T_655 | _T_678; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29709.4]
  assign _T_680 = _T_656 & _T_661; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29710.4]
  assign _T_681 = _T_633[0] & _T_680; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29711.4]
  assign _T_682 = _T_658 | _T_681; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29712.4]
  assign _T_683 = _T_656 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@29713.4]
  assign _T_684 = _T_633[0] & _T_683; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@29714.4]
  assign _T_685 = _T_658 | _T_684; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@29715.4]
  assign _T_694 = 13'h3f << auto_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@29728.4]
  assign _T_696 = ~_T_694[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@29730.4]
  assign _T_699 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@29733.4]
  assign _T_703 = _T_702 & auto_out_a_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@29737.4]
  assign _T_715 = _T_711[0] & _T_8; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@29752.4]
  assign _T_716 = _T_711[1] & _T_613; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@29753.4]
  assign _T_719 = _T_715 | _T_716; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@29759.4]
  assign _T_721 = ~_T_715; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@29761.4]
  assign _T_724 = ~_T_716; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@29764.4]
  assign _T_725 = _T_721 | _T_724; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@29765.4]
  assign _T_728 = _T_725 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@29768.4]
  assign _T_729 = ~_T_728; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@29769.4]
  assign _T_730 = _T_8 | _T_613; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@29774.4]
  assign _T_731 = ~_T_730; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@29775.4]
  assign _T_733 = _T_731 | _T_719; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@29777.4]
  assign _T_735 = _T_733 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@29779.4]
  assign _T_736 = ~_T_735; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@29780.4]
  assign _T_751 = _T_745_0 & _T_8; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29806.4]
  assign _T_752 = _T_745_1 & _T_613; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29807.4]
  assign _T_753 = _T_751 | _T_752; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29808.4]
  assign _T_755 = _T_702 ? _T_730 : _T_753; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@29811.4]
  assign _T_740 = auto_out_a_ready & _T_755; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@29788.4]
  assign _GEN_40 = {{2'd0}, _T_740}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@29789.4]
  assign _T_742 = _T_701 - _GEN_40; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@29790.4]
  assign _T_746_0 = _T_702 ? _T_715 : _T_745_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@29798.4]
  assign _T_746_1 = _T_702 ? _T_716 : _T_745_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@29798.4]
  assign _T_747_0 = _T_702 ? _T_711[0] : _T_745_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@29800.4]
  assign _T_748 = auto_out_a_ready & _T_747_0; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@29801.4]
  assign _T_756 = {_T_607,_T_616}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29813.4]
  assign _T_758 = {_T_5_0_bits_address,_T_685,_T_682,_T_679,_T_676,_T_673,_T_670,_T_667,_T_664,_T_756}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29815.4]
  assign _T_762 = {6'h0,_T_5_0_bits_size,_T_5_0_bits_source,_T_758}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29819.4]
  assign _T_763 = _T_746_0 ? _T_762 : 116'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29820.4]
  assign _T_770 = {_GEN_0,_GEN_1,auto_in_a_bits_size,auto_in_a_bits_source,auto_in_a_bits_address,auto_in_a_bits_mask,auto_in_a_bits_data,auto_in_a_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29827.4]
  assign _T_771 = _T_746_1 ? _T_770 : 116'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29828.4]
  assign _T_772 = _T_763 | _T_771; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@29829.4]
  assign _T_783 = _T_749 & _T_613; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@29857.4]
  assign _T_785 = _T_783 & _T_614; // @[AtomicAutomata.scala 174:31:chipyard.TestHarness.RocketConfig.fir@29859.4]
  assign _GEN_41 = {{1'd0}, auto_in_a_bits_param[1:0]}; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@29865.8]
  assign _T_787 = 3'h1 == _GEN_41; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@29865.8]
  assign _T_789 = 3'h0 == _GEN_41; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@29867.8]
  assign _T_791 = 3'h3 == _GEN_41; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@29869.8]
  assign _T_793 = _T_748 & _T_8; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@29877.4]
  assign _T_805 = _T_802 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@29894.4]
  assign _T_817 = auto_out_d_bits_opcode == 3'h1; // @[AtomicAutomata.scala 213:40:chipyard.TestHarness.RocketConfig.fir@29909.4]
  assign _T_823 = _T_805 & _T_817; // @[AtomicAutomata.scala 232:30:chipyard.TestHarness.RocketConfig.fir@29925.4]
  assign _T_813 = _T_5_0_bits_source == auto_out_d_bits_source; // @[AtomicAutomata.scala 204:53:chipyard.TestHarness.RocketConfig.fir@29905.4]
  assign _T_814 = _T_813 & _T_12; // @[AtomicAutomata.scala 205:83:chipyard.TestHarness.RocketConfig.fir@29906.4]
  assign _T_824 = _T_823 & _T_814; // @[AtomicAutomata.scala 232:40:chipyard.TestHarness.RocketConfig.fir@29926.4]
  assign _T_829 = auto_in_d_ready | _T_824; // @[AtomicAutomata.scala 236:35:chipyard.TestHarness.RocketConfig.fir@29932.4]
  assign _T_794 = _T_829 & auto_out_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@29883.4]
  assign _T_796 = 13'h3f << auto_out_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@29885.4]
  assign _T_798 = ~_T_796[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@29887.4]
  assign _T_804 = _T_802 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@29893.4]
  assign _T_818 = auto_out_d_bits_opcode == 3'h0; // @[AtomicAutomata.scala 214:40:chipyard.TestHarness.RocketConfig.fir@29910.4]
  assign _T_820 = _T_794 & _T_805; // @[AtomicAutomata.scala 216:28:chipyard.TestHarness.RocketConfig.fir@29912.4]
  assign _T_821 = _T_814 & _T_817; // @[AtomicAutomata.scala 218:22:chipyard.TestHarness.RocketConfig.fir@29914.6]
  assign _T_825 = _T_805 & _T_818; // @[AtomicAutomata.scala 233:33:chipyard.TestHarness.RocketConfig.fir@29927.4]
  assign _T_826 = _T_825 & _T_814; // @[AtomicAutomata.scala 233:42:chipyard.TestHarness.RocketConfig.fir@29928.4]
  assign _T_827 = ~_T_824; // @[AtomicAutomata.scala 235:38:chipyard.TestHarness.RocketConfig.fir@29929.4]
  assign _T_830 = _T_6_0_corrupt | auto_out_d_bits_denied; // @[AtomicAutomata.scala 242:46:chipyard.TestHarness.RocketConfig.fir@29938.6]
  assign _T_831 = _T_6_0_denied | auto_out_d_bits_denied; // @[AtomicAutomata.scala 243:46:chipyard.TestHarness.RocketConfig.fir@29940.6]
  assign auto_in_a_ready = _T_749 & _T_611; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_valid = auto_out_d_valid & _T_827; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_bits_opcode = _T_826 ? 3'h1 : auto_out_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_bits_param = auto_out_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_bits_denied = _T_826 ? _T_831 : auto_out_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_bits_data = _T_826 ? _T_6_0_data : auto_out_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_in_d_bits_corrupt = _T_826 ? _T_830 : auto_out_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@29011.4]
  assign auto_out_a_valid = _T_702 ? _T_730 : _T_753; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_a_bits_opcode = _T_772[115:113]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_a_bits_param = _T_772[112:110]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_a_bits_size = _T_772[109:107]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_a_bits_source = _T_772[106:104]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_a_bits_address = _T_772[103:73]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_a_bits_mask = _T_772[72:65]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_a_bits_data = _T_772[64:1]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_a_bits_corrupt = _T_772[0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign auto_out_d_ready = auto_in_d_ready | _T_824; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@29010.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@28986.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@28987.4]
  assign TLMonitor_io_in_a_ready = _T_749 & _T_611; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@29007.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@29006.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@29005.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@29004.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@29003.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@29002.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@29001.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@29000.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28998.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28997.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid & _T_827; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28996.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_826 ? 3'h1 : auto_out_d_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28995.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28994.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28993.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28992.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28991.4]
  assign TLMonitor_io_in_d_bits_denied = _T_826 ? _T_831 : auto_out_d_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28990.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_826 ? _T_830 : auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@28988.4]
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
  _T_4_0_state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_5_0_bits_opcode = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_5_0_bits_param = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_5_0_bits_size = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_5_0_bits_source = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_5_0_bits_address = _RAND_5[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_5_0_bits_mask = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {2{`RANDOM}};
  _T_5_0_bits_data = _RAND_7[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_5_0_bits_corrupt = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_5_0_lut = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {2{`RANDOM}};
  _T_6_0_data = _RAND_10[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_6_0_denied = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_6_0_corrupt = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_701 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_745_1 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_745_0 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_802 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_4_0_state <= 2'h0;
    end else if (_T_820) begin
      if (_T_814) begin
        if (_T_817) begin
          _T_4_0_state <= 2'h2;
        end else begin
          _T_4_0_state <= 2'h0;
        end
      end else if (_T_793) begin
        if (_T_8) begin
          _T_4_0_state <= 2'h1;
        end else if (_T_785) begin
          if (_T_7) begin
            _T_4_0_state <= 2'h3;
          end
        end
      end else if (_T_785) begin
        if (_T_7) begin
          _T_4_0_state <= 2'h3;
        end
      end
    end else if (_T_793) begin
      if (_T_8) begin
        _T_4_0_state <= 2'h1;
      end else if (_T_785) begin
        if (_T_7) begin
          _T_4_0_state <= 2'h3;
        end
      end
    end else if (_T_785) begin
      if (_T_7) begin
        _T_4_0_state <= 2'h3;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        _T_5_0_bits_opcode <= auto_in_a_bits_opcode;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        _T_5_0_bits_param <= auto_in_a_bits_param;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        _T_5_0_bits_size <= auto_in_a_bits_size;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        _T_5_0_bits_source <= auto_in_a_bits_source;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        _T_5_0_bits_address <= auto_in_a_bits_address;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        _T_5_0_bits_mask <= auto_in_a_bits_mask;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        _T_5_0_bits_data <= auto_in_a_bits_data;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        _T_5_0_bits_corrupt <= auto_in_a_bits_corrupt;
      end
    end
    if (_T_785) begin
      if (_T_7) begin
        if (_T_791) begin
          _T_5_0_lut <= 4'hc;
        end else if (_T_789) begin
          _T_5_0_lut <= 4'h6;
        end else if (_T_787) begin
          _T_5_0_lut <= 4'he;
        end else begin
          _T_5_0_lut <= 4'h8;
        end
      end
    end
    if (_T_820) begin
      if (_T_821) begin
        _T_6_0_data <= auto_out_d_bits_data;
      end
    end
    if (_T_820) begin
      if (_T_821) begin
        _T_6_0_denied <= auto_out_d_bits_denied;
      end
    end
    if (_T_820) begin
      if (_T_821) begin
        _T_6_0_corrupt <= auto_out_d_bits_corrupt;
      end
    end
    if (reset) begin
      _T_701 <= 3'h0;
    end else if (_T_703) begin
      if (_T_716) begin
        if (_T_699) begin
          _T_701 <= _T_696[5:3];
        end else begin
          _T_701 <= 3'h0;
        end
      end else begin
        _T_701 <= 3'h0;
      end
    end else begin
      _T_701 <= _T_742;
    end
    if (reset) begin
      _T_745_1 <= 1'h0;
    end else if (_T_702) begin
      _T_745_1 <= _T_716;
    end
    if (reset) begin
      _T_745_0 <= 1'h0;
    end else if (_T_702) begin
      _T_745_0 <= _T_715;
    end
    if (reset) begin
      _T_802 <= 3'h0;
    end else if (_T_794) begin
      if (_T_805) begin
        if (auto_out_d_bits_opcode[0]) begin
          _T_802 <= _T_798[5:3];
        end else begin
          _T_802 <= 3'h0;
        end
      end else begin
        _T_802 <= _T_804;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_729) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@29771.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_729) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@29772.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_736) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@29782.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_736) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@29783.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
