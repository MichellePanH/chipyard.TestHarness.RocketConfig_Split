module TLAtomicAutomata_1( // @[:chipyard.TestHarness.RocketConfig.fir@51964.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@51965.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@51966.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [3:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [2:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [30:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [1:0]  auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [3:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [2:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output        auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [3:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [2:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [30:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [1:0]  auto_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [3:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [2:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input         auto_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input         auto_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input  [63:0] auto_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
  input         auto_out_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@51967.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [2:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [30:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire [2:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
  reg [1:0] _T_4_0_state; // @[AtomicAutomata.scala 76:28:chipyard.TestHarness.RocketConfig.fir@52007.4]
  reg [31:0] _RAND_0;
  reg [2:0] _T_5_0_bits_opcode; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_5_0_bits_param; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_5_0_bits_size; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_5_0_bits_source; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [31:0] _RAND_4;
  reg [30:0] _T_5_0_bits_address; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [31:0] _RAND_5;
  reg [7:0] _T_5_0_bits_mask; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [31:0] _RAND_6;
  reg [63:0] _T_5_0_bits_data; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [63:0] _RAND_7;
  reg  _T_5_0_bits_corrupt; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_5_0_lut; // @[AtomicAutomata.scala 77:24:chipyard.TestHarness.RocketConfig.fir@52008.4]
  reg [31:0] _RAND_9;
  reg [63:0] _T_6_0_data; // @[AtomicAutomata.scala 78:24:chipyard.TestHarness.RocketConfig.fir@52009.4]
  reg [63:0] _RAND_10;
  reg  _T_6_0_denied; // @[AtomicAutomata.scala 78:24:chipyard.TestHarness.RocketConfig.fir@52009.4]
  reg [31:0] _RAND_11;
  reg  _T_6_0_corrupt; // @[AtomicAutomata.scala 78:24:chipyard.TestHarness.RocketConfig.fir@52009.4]
  reg [31:0] _RAND_12;
  wire  _T_7; // @[AtomicAutomata.scala 80:44:chipyard.TestHarness.RocketConfig.fir@52010.4]
  wire  _T_8; // @[AtomicAutomata.scala 81:44:chipyard.TestHarness.RocketConfig.fir@52011.4]
  wire  _T_9; // @[AtomicAutomata.scala 82:49:chipyard.TestHarness.RocketConfig.fir@52012.4]
  wire  _T_11; // @[AtomicAutomata.scala 82:57:chipyard.TestHarness.RocketConfig.fir@52014.4]
  wire  _T_12; // @[AtomicAutomata.scala 83:49:chipyard.TestHarness.RocketConfig.fir@52015.4]
  wire  _T_14; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@52017.4]
  wire [30:0] _T_17; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@52020.4]
  wire [31:0] _T_18; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@52021.4]
  wire [31:0] _T_20; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@52023.4]
  wire  _T_21; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@52024.4]
  wire [30:0] _T_22; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@52025.4]
  wire [31:0] _T_23; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@52026.4]
  wire [31:0] _T_25; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@52028.4]
  wire  _T_26; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@52029.4]
  wire  _T_27; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@52030.4]
  wire  _T_28; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@52031.4]
  wire  _T_113; // @[AtomicAutomata.scala 90:47:chipyard.TestHarness.RocketConfig.fir@52116.4]
  wire  _T_114; // @[AtomicAutomata.scala 91:47:chipyard.TestHarness.RocketConfig.fir@52117.4]
  wire  _T_115; // @[AtomicAutomata.scala 92:63:chipyard.TestHarness.RocketConfig.fir@52118.4]
  wire  _T_116; // @[AtomicAutomata.scala 92:32:chipyard.TestHarness.RocketConfig.fir@52119.4]
  wire [1:0] _T_132; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52135.4]
  wire [1:0] _T_135; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52138.4]
  wire [1:0] _T_138; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52141.4]
  wire [1:0] _T_141; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52144.4]
  wire [1:0] _T_144; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52147.4]
  wire [1:0] _T_147; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52150.4]
  wire [1:0] _T_150; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52153.4]
  wire [1:0] _T_153; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52156.4]
  wire [1:0] _T_156; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52159.4]
  wire [1:0] _T_159; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52162.4]
  wire [1:0] _T_162; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52165.4]
  wire [1:0] _T_165; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52168.4]
  wire [1:0] _T_168; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52171.4]
  wire [1:0] _T_171; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52174.4]
  wire [1:0] _T_174; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52177.4]
  wire [1:0] _T_177; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52180.4]
  wire [1:0] _T_180; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52183.4]
  wire [1:0] _T_183; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52186.4]
  wire [1:0] _T_186; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52189.4]
  wire [1:0] _T_189; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52192.4]
  wire [1:0] _T_192; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52195.4]
  wire [1:0] _T_195; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52198.4]
  wire [1:0] _T_198; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52201.4]
  wire [1:0] _T_201; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52204.4]
  wire [1:0] _T_204; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52207.4]
  wire [1:0] _T_207; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52210.4]
  wire [1:0] _T_210; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52213.4]
  wire [1:0] _T_213; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52216.4]
  wire [1:0] _T_216; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52219.4]
  wire [1:0] _T_219; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52222.4]
  wire [1:0] _T_222; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52225.4]
  wire [1:0] _T_225; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52228.4]
  wire [1:0] _T_228; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52231.4]
  wire [1:0] _T_231; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52234.4]
  wire [1:0] _T_234; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52237.4]
  wire [1:0] _T_237; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52240.4]
  wire [1:0] _T_240; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52243.4]
  wire [1:0] _T_243; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52246.4]
  wire [1:0] _T_246; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52249.4]
  wire [1:0] _T_249; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52252.4]
  wire [1:0] _T_252; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52255.4]
  wire [1:0] _T_255; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52258.4]
  wire [1:0] _T_258; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52261.4]
  wire [1:0] _T_261; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52264.4]
  wire [1:0] _T_264; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52267.4]
  wire [1:0] _T_267; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52270.4]
  wire [1:0] _T_270; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52273.4]
  wire [1:0] _T_273; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52276.4]
  wire [1:0] _T_276; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52279.4]
  wire [1:0] _T_279; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52282.4]
  wire [1:0] _T_282; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52285.4]
  wire [1:0] _T_285; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52288.4]
  wire [1:0] _T_288; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52291.4]
  wire [1:0] _T_291; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52294.4]
  wire [1:0] _T_294; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52297.4]
  wire [1:0] _T_297; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52300.4]
  wire [1:0] _T_300; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52303.4]
  wire [1:0] _T_303; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52306.4]
  wire [1:0] _T_306; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52309.4]
  wire [1:0] _T_309; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52312.4]
  wire [1:0] _T_312; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52315.4]
  wire [1:0] _T_315; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52318.4]
  wire [1:0] _T_318; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52321.4]
  wire [1:0] _T_321; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52324.4]
  wire [3:0] _T_322; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52325.4]
  wire [3:0] _T_324; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52327.4]
  wire [3:0] _T_326; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52329.4]
  wire [3:0] _T_328; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52331.4]
  wire [3:0] _T_330; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52333.4]
  wire [3:0] _T_332; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52335.4]
  wire [3:0] _T_334; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52337.4]
  wire [3:0] _T_336; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52339.4]
  wire [3:0] _T_338; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52341.4]
  wire [3:0] _T_340; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52343.4]
  wire [3:0] _T_342; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52345.4]
  wire [3:0] _T_344; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52347.4]
  wire [3:0] _T_346; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52349.4]
  wire [3:0] _T_348; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52351.4]
  wire [3:0] _T_350; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52353.4]
  wire [3:0] _T_352; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52355.4]
  wire [3:0] _T_354; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52357.4]
  wire [3:0] _T_356; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52359.4]
  wire [3:0] _T_358; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52361.4]
  wire [3:0] _T_360; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52363.4]
  wire [3:0] _T_362; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52365.4]
  wire [3:0] _T_364; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52367.4]
  wire [3:0] _T_366; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52369.4]
  wire [3:0] _T_368; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52371.4]
  wire [3:0] _T_370; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52373.4]
  wire [3:0] _T_372; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52375.4]
  wire [3:0] _T_374; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52377.4]
  wire [3:0] _T_376; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52379.4]
  wire [3:0] _T_378; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52381.4]
  wire [3:0] _T_380; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52383.4]
  wire [3:0] _T_382; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52385.4]
  wire [3:0] _T_384; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52387.4]
  wire [3:0] _T_386; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52389.4]
  wire [3:0] _T_388; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52391.4]
  wire [3:0] _T_390; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52393.4]
  wire [3:0] _T_392; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52395.4]
  wire [3:0] _T_394; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52397.4]
  wire [3:0] _T_396; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52399.4]
  wire [3:0] _T_398; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52401.4]
  wire [3:0] _T_400; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52403.4]
  wire [3:0] _T_402; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52405.4]
  wire [3:0] _T_404; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52407.4]
  wire [3:0] _T_406; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52409.4]
  wire [3:0] _T_408; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52411.4]
  wire [3:0] _T_410; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52413.4]
  wire [3:0] _T_412; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52415.4]
  wire [3:0] _T_414; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52417.4]
  wire [3:0] _T_416; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52419.4]
  wire [3:0] _T_418; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52421.4]
  wire [3:0] _T_420; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52423.4]
  wire [3:0] _T_422; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52425.4]
  wire [3:0] _T_424; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52427.4]
  wire [3:0] _T_426; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52429.4]
  wire [3:0] _T_428; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52431.4]
  wire [3:0] _T_430; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52433.4]
  wire [3:0] _T_432; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52435.4]
  wire [3:0] _T_434; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52437.4]
  wire [3:0] _T_436; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52439.4]
  wire [3:0] _T_438; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52441.4]
  wire [3:0] _T_440; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52443.4]
  wire [3:0] _T_442; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52445.4]
  wire [3:0] _T_444; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52447.4]
  wire [3:0] _T_446; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52449.4]
  wire [3:0] _T_448; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52451.4]
  wire [7:0] _T_456; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52459.4]
  wire [15:0] _T_464; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52467.4]
  wire [7:0] _T_471; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52474.4]
  wire [31:0] _T_480; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52483.4]
  wire [7:0] _T_487; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52490.4]
  wire [15:0] _T_495; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52498.4]
  wire [7:0] _T_502; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52505.4]
  wire [31:0] _T_511; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52514.4]
  wire [63:0] _T_512; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52515.4]
  wire [7:0] _T_516; // @[AtomicAutomata.scala 121:25:chipyard.TestHarness.RocketConfig.fir@52519.4]
  wire [7:0] _GEN_39; // @[AtomicAutomata.scala 121:31:chipyard.TestHarness.RocketConfig.fir@52521.4]
  wire [7:0] _T_518; // @[AtomicAutomata.scala 121:31:chipyard.TestHarness.RocketConfig.fir@52521.4]
  wire [7:0] _T_519; // @[AtomicAutomata.scala 121:23:chipyard.TestHarness.RocketConfig.fir@52522.4]
  wire [7:0] _T_534; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52537.4]
  wire [7:0] _T_549; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52552.4]
  wire [7:0] _T_550; // @[AtomicAutomata.scala 125:38:chipyard.TestHarness.RocketConfig.fir@52553.4]
  wire [8:0] _T_551; // @[AtomicAutomata.scala 125:49:chipyard.TestHarness.RocketConfig.fir@52554.4]
  wire [7:0] _T_553; // @[AtomicAutomata.scala 126:38:chipyard.TestHarness.RocketConfig.fir@52556.4]
  wire [8:0] _T_554; // @[AtomicAutomata.scala 126:49:chipyard.TestHarness.RocketConfig.fir@52557.4]
  wire [8:0] _T_556; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52559.4]
  wire [7:0] _T_558; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52561.4]
  wire [9:0] _T_559; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52562.4]
  wire [7:0] _T_561; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52564.4]
  wire [11:0] _T_562; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52565.4]
  wire [7:0] _T_564; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52567.4]
  wire [7:0] _T_575; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52578.4]
  wire [7:0] _T_577; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52580.4]
  wire [7:0] _T_579; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52582.4]
  wire [7:0] _T_581; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52584.4]
  wire [7:0] _T_583; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52586.4]
  wire [7:0] _T_585; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52588.4]
  wire [7:0] _T_587; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52590.4]
  wire [7:0] _T_589; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52592.4]
  wire [63:0] _T_596; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52599.4]
  wire [8:0] _T_597; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52600.4]
  wire [7:0] _T_599; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52602.4]
  wire [9:0] _T_600; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52603.4]
  wire [7:0] _T_602; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52605.4]
  wire [11:0] _T_603; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52606.4]
  wire [7:0] _T_605; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52608.4]
  wire [7:0] _T_616; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52619.4]
  wire [7:0] _T_618; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52621.4]
  wire [7:0] _T_620; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52623.4]
  wire [7:0] _T_622; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52625.4]
  wire [7:0] _T_624; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52627.4]
  wire [7:0] _T_626; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52629.4]
  wire [7:0] _T_628; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52631.4]
  wire [7:0] _T_630; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52633.4]
  wire [63:0] _T_637; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52640.4]
  wire [7:0] _T_647; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52650.4]
  wire [7:0] _T_649; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52652.4]
  wire [7:0] _T_651; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52654.4]
  wire [7:0] _T_653; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52656.4]
  wire [7:0] _T_655; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52658.4]
  wire [7:0] _T_657; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52660.4]
  wire [7:0] _T_659; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52662.4]
  wire [7:0] _T_661; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52664.4]
  wire [63:0] _T_668; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52671.4]
  wire [63:0] _T_669; // @[AtomicAutomata.scala 131:28:chipyard.TestHarness.RocketConfig.fir@52672.4]
  wire [63:0] _T_670; // @[AtomicAutomata.scala 131:41:chipyard.TestHarness.RocketConfig.fir@52673.4]
  wire [63:0] _T_671; // @[AtomicAutomata.scala 132:28:chipyard.TestHarness.RocketConfig.fir@52674.4]
  wire [63:0] _T_672; // @[AtomicAutomata.scala 132:41:chipyard.TestHarness.RocketConfig.fir@52675.4]
  wire [63:0] _T_673; // @[AtomicAutomata.scala 133:43:chipyard.TestHarness.RocketConfig.fir@52676.4]
  wire [63:0] _T_674; // @[AtomicAutomata.scala 133:26:chipyard.TestHarness.RocketConfig.fir@52677.4]
  wire [63:0] _T_676; // @[AtomicAutomata.scala 134:33:chipyard.TestHarness.RocketConfig.fir@52679.4]
  wire  _T_678; // @[AtomicAutomata.scala 136:38:chipyard.TestHarness.RocketConfig.fir@52681.4]
  wire  _T_681; // @[AtomicAutomata.scala 137:39:chipyard.TestHarness.RocketConfig.fir@52684.4]
  wire  _T_683; // @[AtomicAutomata.scala 137:55:chipyard.TestHarness.RocketConfig.fir@52686.4]
  wire  _T_684; // @[AtomicAutomata.scala 137:27:chipyard.TestHarness.RocketConfig.fir@52687.4]
  wire  _T_685; // @[AtomicAutomata.scala 138:31:chipyard.TestHarness.RocketConfig.fir@52688.4]
  wire [63:0] _T_686; // @[AtomicAutomata.scala 139:50:chipyard.TestHarness.RocketConfig.fir@52689.4]
  wire [63:0] _T_687; // @[AtomicAutomata.scala 139:28:chipyard.TestHarness.RocketConfig.fir@52690.4]
  wire [63:0] _T_689; // @[AtomicAutomata.scala 145:14:chipyard.TestHarness.RocketConfig.fir@52692.4]
  wire  _T_691; // @[AtomicAutomata.scala 149:23:chipyard.TestHarness.RocketConfig.fir@52695.4]
  wire  _T_692; // @[AtomicAutomata.scala 149:53:chipyard.TestHarness.RocketConfig.fir@52696.4]
  wire  _T_693; // @[AtomicAutomata.scala 149:35:chipyard.TestHarness.RocketConfig.fir@52697.4]
  reg [8:0] _T_820; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@52843.4]
  reg [31:0] _RAND_13;
  wire  _T_821; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@52844.4]
  wire  _T_695; // @[AtomicAutomata.scala 151:38:chipyard.TestHarness.RocketConfig.fir@52700.4]
  wire [1:0] _T_823; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52846.4]
  wire [2:0] _T_824; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52847.4]
  wire [1:0] _T_826; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52849.4]
  wire [2:0] _T_828; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@52851.4]
  wire [1:0] _T_830; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@52853.4]
  reg  _T_864_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@52905.4]
  reg [31:0] _RAND_14;
  wire  _T_866_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@52908.4]
  wire  _T_868; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@52911.4]
  wire  _T_696; // @[AtomicAutomata.scala 153:15:chipyard.TestHarness.RocketConfig.fir@52703.4]
  wire [2:0] _GEN_0; // @[AtomicAutomata.scala 153:31:chipyard.TestHarness.RocketConfig.fir@52704.4]
  wire [2:0] _GEN_1; // @[AtomicAutomata.scala 153:31:chipyard.TestHarness.RocketConfig.fir@52704.4]
  wire  _T_698; // @[AtomicAutomata.scala 166:45:chipyard.TestHarness.RocketConfig.fir@52711.4]
  wire [3:0] _T_750; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@52769.4]
  wire [2:0] _T_752; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@52771.4]
  wire  _T_753; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@52772.4]
  wire  _T_756; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@52775.4]
  wire  _T_758; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52777.4]
  wire  _T_759; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52778.4]
  wire  _T_761; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52780.4]
  wire  _T_762; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52781.4]
  wire  _T_765; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@52784.4]
  wire  _T_766; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52785.4]
  wire  _T_767; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52786.4]
  wire  _T_768; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52787.4]
  wire  _T_769; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52788.4]
  wire  _T_770; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52789.4]
  wire  _T_771; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52790.4]
  wire  _T_772; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52791.4]
  wire  _T_773; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52792.4]
  wire  _T_774; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52793.4]
  wire  _T_775; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52794.4]
  wire  _T_776; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52795.4]
  wire  _T_777; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52796.4]
  wire  _T_780; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@52799.4]
  wire  _T_781; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52800.4]
  wire  _T_782; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52801.4]
  wire  _T_783; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52802.4]
  wire  _T_784; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52803.4]
  wire  _T_785; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52804.4]
  wire  _T_786; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52805.4]
  wire  _T_787; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52806.4]
  wire  _T_788; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52807.4]
  wire  _T_789; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52808.4]
  wire  _T_790; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52809.4]
  wire  _T_791; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52810.4]
  wire  _T_792; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52811.4]
  wire  _T_793; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52812.4]
  wire  _T_794; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52813.4]
  wire  _T_795; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52814.4]
  wire  _T_796; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52815.4]
  wire  _T_797; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52816.4]
  wire  _T_798; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52817.4]
  wire  _T_799; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52818.4]
  wire  _T_800; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52819.4]
  wire  _T_801; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52820.4]
  wire  _T_802; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52821.4]
  wire  _T_803; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52822.4]
  wire  _T_804; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52823.4]
  wire [26:0] _T_813; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@52836.4]
  wire [11:0] _T_815; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@52838.4]
  wire  _T_818; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@52841.4]
  wire  _T_822; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@52845.4]
  wire  _T_834; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@52860.4]
  wire  _T_835; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@52861.4]
  wire  _T_838; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@52867.4]
  wire  _T_840; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@52869.4]
  wire  _T_843; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@52872.4]
  wire  _T_844; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@52873.4]
  wire  _T_847; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@52876.4]
  wire  _T_848; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@52877.4]
  wire  _T_849; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@52882.4]
  wire  _T_850; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@52883.4]
  wire  _T_852; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@52885.4]
  wire  _T_854; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@52887.4]
  wire  _T_855; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@52888.4]
  reg  _T_864_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@52905.4]
  reg [31:0] _RAND_15;
  wire  _T_870; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52914.4]
  wire  _T_871; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52915.4]
  wire  _T_872; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52916.4]
  wire  _T_874; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@52919.4]
  wire  _T_859; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@52896.4]
  wire [8:0] _GEN_40; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@52897.4]
  wire [8:0] _T_861; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@52898.4]
  wire  _T_865_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@52906.4]
  wire  _T_865_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@52906.4]
  wire  _T_866_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@52908.4]
  wire  _T_867; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@52909.4]
  wire [64:0] _T_875; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52921.4]
  wire [103:0] _T_877; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52923.4]
  wire [116:0] _T_881; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52927.4]
  wire [116:0] _T_882; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52928.4]
  wire [116:0] _T_889; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52935.4]
  wire [116:0] _T_890; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52936.4]
  wire [116:0] _T_891; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52937.4]
  wire  _T_902; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@52965.4]
  wire  _T_904; // @[AtomicAutomata.scala 174:31:chipyard.TestHarness.RocketConfig.fir@52967.4]
  wire [2:0] _GEN_41; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@52973.8]
  wire  _T_906; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@52973.8]
  wire  _T_908; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@52975.8]
  wire  _T_910; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@52977.8]
  wire  _T_912; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@52985.4]
  reg [8:0] _T_921; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@52999.4]
  reg [31:0] _RAND_16;
  wire  _T_924; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@53002.4]
  wire  _T_936; // @[AtomicAutomata.scala 213:40:chipyard.TestHarness.RocketConfig.fir@53017.4]
  wire  _T_942; // @[AtomicAutomata.scala 232:30:chipyard.TestHarness.RocketConfig.fir@53033.4]
  wire  _T_932; // @[AtomicAutomata.scala 204:53:chipyard.TestHarness.RocketConfig.fir@53013.4]
  wire  _T_933; // @[AtomicAutomata.scala 205:83:chipyard.TestHarness.RocketConfig.fir@53014.4]
  wire  _T_943; // @[AtomicAutomata.scala 232:40:chipyard.TestHarness.RocketConfig.fir@53034.4]
  wire  _T_948; // @[AtomicAutomata.scala 236:35:chipyard.TestHarness.RocketConfig.fir@53040.4]
  wire  _T_913; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@52991.4]
  wire [26:0] _T_915; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@52993.4]
  wire [11:0] _T_917; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@52995.4]
  wire [8:0] _T_923; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@53001.4]
  wire  _T_937; // @[AtomicAutomata.scala 214:40:chipyard.TestHarness.RocketConfig.fir@53018.4]
  wire  _T_939; // @[AtomicAutomata.scala 216:28:chipyard.TestHarness.RocketConfig.fir@53020.4]
  wire  _T_940; // @[AtomicAutomata.scala 218:22:chipyard.TestHarness.RocketConfig.fir@53022.6]
  wire  _T_944; // @[AtomicAutomata.scala 233:33:chipyard.TestHarness.RocketConfig.fir@53035.4]
  wire  _T_945; // @[AtomicAutomata.scala 233:42:chipyard.TestHarness.RocketConfig.fir@53036.4]
  wire  _T_946; // @[AtomicAutomata.scala 235:38:chipyard.TestHarness.RocketConfig.fir@53037.4]
  wire  _T_949; // @[AtomicAutomata.scala 242:46:chipyard.TestHarness.RocketConfig.fir@53046.6]
  wire  _T_950; // @[AtomicAutomata.scala 243:46:chipyard.TestHarness.RocketConfig.fir@53048.6]
  TLMonitor_23 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@51974.4]
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
  assign _T_7 = _T_4_0_state == 2'h0; // @[AtomicAutomata.scala 80:44:chipyard.TestHarness.RocketConfig.fir@52010.4]
  assign _T_8 = _T_4_0_state == 2'h2; // @[AtomicAutomata.scala 81:44:chipyard.TestHarness.RocketConfig.fir@52011.4]
  assign _T_9 = _T_4_0_state == 2'h3; // @[AtomicAutomata.scala 82:49:chipyard.TestHarness.RocketConfig.fir@52012.4]
  assign _T_11 = _T_9 | _T_8; // @[AtomicAutomata.scala 82:57:chipyard.TestHarness.RocketConfig.fir@52014.4]
  assign _T_12 = _T_4_0_state != 2'h0; // @[AtomicAutomata.scala 83:49:chipyard.TestHarness.RocketConfig.fir@52015.4]
  assign _T_14 = auto_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@52017.4]
  assign _T_17 = auto_in_a_bits_address ^ 31'h2000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@52020.4]
  assign _T_18 = {1'b0,$signed(_T_17)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@52021.4]
  assign _T_20 = $signed(_T_18) & 32'sh46012000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@52023.4]
  assign _T_21 = $signed(_T_20) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@52024.4]
  assign _T_22 = auto_in_a_bits_address ^ 31'h44000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@52025.4]
  assign _T_23 = {1'b0,$signed(_T_22)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@52026.4]
  assign _T_25 = $signed(_T_23) & 32'sh46012000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@52028.4]
  assign _T_26 = $signed(_T_25) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@52029.4]
  assign _T_27 = _T_21 | _T_26; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@52030.4]
  assign _T_28 = _T_14 & _T_27; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@52031.4]
  assign _T_113 = auto_in_a_bits_opcode == 3'h3; // @[AtomicAutomata.scala 90:47:chipyard.TestHarness.RocketConfig.fir@52116.4]
  assign _T_114 = auto_in_a_bits_opcode == 3'h2; // @[AtomicAutomata.scala 91:47:chipyard.TestHarness.RocketConfig.fir@52117.4]
  assign _T_115 = _T_114 ? _T_28 : 1'h1; // @[AtomicAutomata.scala 92:63:chipyard.TestHarness.RocketConfig.fir@52118.4]
  assign _T_116 = _T_113 ? _T_28 : _T_115; // @[AtomicAutomata.scala 92:32:chipyard.TestHarness.RocketConfig.fir@52119.4]
  assign _T_132 = {_T_5_0_bits_data[0],_T_6_0_data[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52135.4]
  assign _T_135 = {_T_5_0_bits_data[1],_T_6_0_data[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52138.4]
  assign _T_138 = {_T_5_0_bits_data[2],_T_6_0_data[2]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52141.4]
  assign _T_141 = {_T_5_0_bits_data[3],_T_6_0_data[3]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52144.4]
  assign _T_144 = {_T_5_0_bits_data[4],_T_6_0_data[4]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52147.4]
  assign _T_147 = {_T_5_0_bits_data[5],_T_6_0_data[5]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52150.4]
  assign _T_150 = {_T_5_0_bits_data[6],_T_6_0_data[6]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52153.4]
  assign _T_153 = {_T_5_0_bits_data[7],_T_6_0_data[7]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52156.4]
  assign _T_156 = {_T_5_0_bits_data[8],_T_6_0_data[8]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52159.4]
  assign _T_159 = {_T_5_0_bits_data[9],_T_6_0_data[9]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52162.4]
  assign _T_162 = {_T_5_0_bits_data[10],_T_6_0_data[10]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52165.4]
  assign _T_165 = {_T_5_0_bits_data[11],_T_6_0_data[11]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52168.4]
  assign _T_168 = {_T_5_0_bits_data[12],_T_6_0_data[12]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52171.4]
  assign _T_171 = {_T_5_0_bits_data[13],_T_6_0_data[13]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52174.4]
  assign _T_174 = {_T_5_0_bits_data[14],_T_6_0_data[14]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52177.4]
  assign _T_177 = {_T_5_0_bits_data[15],_T_6_0_data[15]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52180.4]
  assign _T_180 = {_T_5_0_bits_data[16],_T_6_0_data[16]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52183.4]
  assign _T_183 = {_T_5_0_bits_data[17],_T_6_0_data[17]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52186.4]
  assign _T_186 = {_T_5_0_bits_data[18],_T_6_0_data[18]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52189.4]
  assign _T_189 = {_T_5_0_bits_data[19],_T_6_0_data[19]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52192.4]
  assign _T_192 = {_T_5_0_bits_data[20],_T_6_0_data[20]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52195.4]
  assign _T_195 = {_T_5_0_bits_data[21],_T_6_0_data[21]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52198.4]
  assign _T_198 = {_T_5_0_bits_data[22],_T_6_0_data[22]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52201.4]
  assign _T_201 = {_T_5_0_bits_data[23],_T_6_0_data[23]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52204.4]
  assign _T_204 = {_T_5_0_bits_data[24],_T_6_0_data[24]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52207.4]
  assign _T_207 = {_T_5_0_bits_data[25],_T_6_0_data[25]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52210.4]
  assign _T_210 = {_T_5_0_bits_data[26],_T_6_0_data[26]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52213.4]
  assign _T_213 = {_T_5_0_bits_data[27],_T_6_0_data[27]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52216.4]
  assign _T_216 = {_T_5_0_bits_data[28],_T_6_0_data[28]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52219.4]
  assign _T_219 = {_T_5_0_bits_data[29],_T_6_0_data[29]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52222.4]
  assign _T_222 = {_T_5_0_bits_data[30],_T_6_0_data[30]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52225.4]
  assign _T_225 = {_T_5_0_bits_data[31],_T_6_0_data[31]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52228.4]
  assign _T_228 = {_T_5_0_bits_data[32],_T_6_0_data[32]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52231.4]
  assign _T_231 = {_T_5_0_bits_data[33],_T_6_0_data[33]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52234.4]
  assign _T_234 = {_T_5_0_bits_data[34],_T_6_0_data[34]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52237.4]
  assign _T_237 = {_T_5_0_bits_data[35],_T_6_0_data[35]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52240.4]
  assign _T_240 = {_T_5_0_bits_data[36],_T_6_0_data[36]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52243.4]
  assign _T_243 = {_T_5_0_bits_data[37],_T_6_0_data[37]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52246.4]
  assign _T_246 = {_T_5_0_bits_data[38],_T_6_0_data[38]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52249.4]
  assign _T_249 = {_T_5_0_bits_data[39],_T_6_0_data[39]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52252.4]
  assign _T_252 = {_T_5_0_bits_data[40],_T_6_0_data[40]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52255.4]
  assign _T_255 = {_T_5_0_bits_data[41],_T_6_0_data[41]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52258.4]
  assign _T_258 = {_T_5_0_bits_data[42],_T_6_0_data[42]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52261.4]
  assign _T_261 = {_T_5_0_bits_data[43],_T_6_0_data[43]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52264.4]
  assign _T_264 = {_T_5_0_bits_data[44],_T_6_0_data[44]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52267.4]
  assign _T_267 = {_T_5_0_bits_data[45],_T_6_0_data[45]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52270.4]
  assign _T_270 = {_T_5_0_bits_data[46],_T_6_0_data[46]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52273.4]
  assign _T_273 = {_T_5_0_bits_data[47],_T_6_0_data[47]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52276.4]
  assign _T_276 = {_T_5_0_bits_data[48],_T_6_0_data[48]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52279.4]
  assign _T_279 = {_T_5_0_bits_data[49],_T_6_0_data[49]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52282.4]
  assign _T_282 = {_T_5_0_bits_data[50],_T_6_0_data[50]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52285.4]
  assign _T_285 = {_T_5_0_bits_data[51],_T_6_0_data[51]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52288.4]
  assign _T_288 = {_T_5_0_bits_data[52],_T_6_0_data[52]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52291.4]
  assign _T_291 = {_T_5_0_bits_data[53],_T_6_0_data[53]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52294.4]
  assign _T_294 = {_T_5_0_bits_data[54],_T_6_0_data[54]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52297.4]
  assign _T_297 = {_T_5_0_bits_data[55],_T_6_0_data[55]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52300.4]
  assign _T_300 = {_T_5_0_bits_data[56],_T_6_0_data[56]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52303.4]
  assign _T_303 = {_T_5_0_bits_data[57],_T_6_0_data[57]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52306.4]
  assign _T_306 = {_T_5_0_bits_data[58],_T_6_0_data[58]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52309.4]
  assign _T_309 = {_T_5_0_bits_data[59],_T_6_0_data[59]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52312.4]
  assign _T_312 = {_T_5_0_bits_data[60],_T_6_0_data[60]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52315.4]
  assign _T_315 = {_T_5_0_bits_data[61],_T_6_0_data[61]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52318.4]
  assign _T_318 = {_T_5_0_bits_data[62],_T_6_0_data[62]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52321.4]
  assign _T_321 = {_T_5_0_bits_data[63],_T_6_0_data[63]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52324.4]
  assign _T_322 = _T_5_0_lut >> _T_132; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52325.4]
  assign _T_324 = _T_5_0_lut >> _T_135; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52327.4]
  assign _T_326 = _T_5_0_lut >> _T_138; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52329.4]
  assign _T_328 = _T_5_0_lut >> _T_141; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52331.4]
  assign _T_330 = _T_5_0_lut >> _T_144; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52333.4]
  assign _T_332 = _T_5_0_lut >> _T_147; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52335.4]
  assign _T_334 = _T_5_0_lut >> _T_150; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52337.4]
  assign _T_336 = _T_5_0_lut >> _T_153; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52339.4]
  assign _T_338 = _T_5_0_lut >> _T_156; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52341.4]
  assign _T_340 = _T_5_0_lut >> _T_159; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52343.4]
  assign _T_342 = _T_5_0_lut >> _T_162; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52345.4]
  assign _T_344 = _T_5_0_lut >> _T_165; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52347.4]
  assign _T_346 = _T_5_0_lut >> _T_168; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52349.4]
  assign _T_348 = _T_5_0_lut >> _T_171; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52351.4]
  assign _T_350 = _T_5_0_lut >> _T_174; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52353.4]
  assign _T_352 = _T_5_0_lut >> _T_177; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52355.4]
  assign _T_354 = _T_5_0_lut >> _T_180; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52357.4]
  assign _T_356 = _T_5_0_lut >> _T_183; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52359.4]
  assign _T_358 = _T_5_0_lut >> _T_186; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52361.4]
  assign _T_360 = _T_5_0_lut >> _T_189; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52363.4]
  assign _T_362 = _T_5_0_lut >> _T_192; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52365.4]
  assign _T_364 = _T_5_0_lut >> _T_195; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52367.4]
  assign _T_366 = _T_5_0_lut >> _T_198; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52369.4]
  assign _T_368 = _T_5_0_lut >> _T_201; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52371.4]
  assign _T_370 = _T_5_0_lut >> _T_204; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52373.4]
  assign _T_372 = _T_5_0_lut >> _T_207; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52375.4]
  assign _T_374 = _T_5_0_lut >> _T_210; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52377.4]
  assign _T_376 = _T_5_0_lut >> _T_213; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52379.4]
  assign _T_378 = _T_5_0_lut >> _T_216; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52381.4]
  assign _T_380 = _T_5_0_lut >> _T_219; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52383.4]
  assign _T_382 = _T_5_0_lut >> _T_222; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52385.4]
  assign _T_384 = _T_5_0_lut >> _T_225; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52387.4]
  assign _T_386 = _T_5_0_lut >> _T_228; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52389.4]
  assign _T_388 = _T_5_0_lut >> _T_231; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52391.4]
  assign _T_390 = _T_5_0_lut >> _T_234; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52393.4]
  assign _T_392 = _T_5_0_lut >> _T_237; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52395.4]
  assign _T_394 = _T_5_0_lut >> _T_240; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52397.4]
  assign _T_396 = _T_5_0_lut >> _T_243; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52399.4]
  assign _T_398 = _T_5_0_lut >> _T_246; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52401.4]
  assign _T_400 = _T_5_0_lut >> _T_249; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52403.4]
  assign _T_402 = _T_5_0_lut >> _T_252; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52405.4]
  assign _T_404 = _T_5_0_lut >> _T_255; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52407.4]
  assign _T_406 = _T_5_0_lut >> _T_258; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52409.4]
  assign _T_408 = _T_5_0_lut >> _T_261; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52411.4]
  assign _T_410 = _T_5_0_lut >> _T_264; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52413.4]
  assign _T_412 = _T_5_0_lut >> _T_267; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52415.4]
  assign _T_414 = _T_5_0_lut >> _T_270; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52417.4]
  assign _T_416 = _T_5_0_lut >> _T_273; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52419.4]
  assign _T_418 = _T_5_0_lut >> _T_276; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52421.4]
  assign _T_420 = _T_5_0_lut >> _T_279; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52423.4]
  assign _T_422 = _T_5_0_lut >> _T_282; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52425.4]
  assign _T_424 = _T_5_0_lut >> _T_285; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52427.4]
  assign _T_426 = _T_5_0_lut >> _T_288; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52429.4]
  assign _T_428 = _T_5_0_lut >> _T_291; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52431.4]
  assign _T_430 = _T_5_0_lut >> _T_294; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52433.4]
  assign _T_432 = _T_5_0_lut >> _T_297; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52435.4]
  assign _T_434 = _T_5_0_lut >> _T_300; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52437.4]
  assign _T_436 = _T_5_0_lut >> _T_303; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52439.4]
  assign _T_438 = _T_5_0_lut >> _T_306; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52441.4]
  assign _T_440 = _T_5_0_lut >> _T_309; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52443.4]
  assign _T_442 = _T_5_0_lut >> _T_312; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52445.4]
  assign _T_444 = _T_5_0_lut >> _T_315; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52447.4]
  assign _T_446 = _T_5_0_lut >> _T_318; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52449.4]
  assign _T_448 = _T_5_0_lut >> _T_321; // @[AtomicAutomata.scala 114:57:chipyard.TestHarness.RocketConfig.fir@52451.4]
  assign _T_456 = {_T_336[0],_T_334[0],_T_332[0],_T_330[0],_T_328[0],_T_326[0],_T_324[0],_T_322[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52459.4]
  assign _T_464 = {_T_352[0],_T_350[0],_T_348[0],_T_346[0],_T_344[0],_T_342[0],_T_340[0],_T_338[0],_T_456}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52467.4]
  assign _T_471 = {_T_368[0],_T_366[0],_T_364[0],_T_362[0],_T_360[0],_T_358[0],_T_356[0],_T_354[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52474.4]
  assign _T_480 = {_T_384[0],_T_382[0],_T_380[0],_T_378[0],_T_376[0],_T_374[0],_T_372[0],_T_370[0],_T_471,_T_464}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52483.4]
  assign _T_487 = {_T_400[0],_T_398[0],_T_396[0],_T_394[0],_T_392[0],_T_390[0],_T_388[0],_T_386[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52490.4]
  assign _T_495 = {_T_416[0],_T_414[0],_T_412[0],_T_410[0],_T_408[0],_T_406[0],_T_404[0],_T_402[0],_T_487}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52498.4]
  assign _T_502 = {_T_432[0],_T_430[0],_T_428[0],_T_426[0],_T_424[0],_T_422[0],_T_420[0],_T_418[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52505.4]
  assign _T_511 = {_T_448[0],_T_446[0],_T_444[0],_T_442[0],_T_440[0],_T_438[0],_T_436[0],_T_434[0],_T_502,_T_495}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52514.4]
  assign _T_512 = {_T_511,_T_480}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52515.4]
  assign _T_516 = ~_T_5_0_bits_mask; // @[AtomicAutomata.scala 121:25:chipyard.TestHarness.RocketConfig.fir@52519.4]
  assign _GEN_39 = {{1'd0}, _T_5_0_bits_mask[7:1]}; // @[AtomicAutomata.scala 121:31:chipyard.TestHarness.RocketConfig.fir@52521.4]
  assign _T_518 = _T_516 | _GEN_39; // @[AtomicAutomata.scala 121:31:chipyard.TestHarness.RocketConfig.fir@52521.4]
  assign _T_519 = ~_T_518; // @[AtomicAutomata.scala 121:23:chipyard.TestHarness.RocketConfig.fir@52522.4]
  assign _T_534 = {_T_5_0_bits_data[63],_T_5_0_bits_data[55],_T_5_0_bits_data[47],_T_5_0_bits_data[39],_T_5_0_bits_data[31],_T_5_0_bits_data[23],_T_5_0_bits_data[15],_T_5_0_bits_data[7]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52537.4]
  assign _T_549 = {_T_6_0_data[63],_T_6_0_data[55],_T_6_0_data[47],_T_6_0_data[39],_T_6_0_data[31],_T_6_0_data[23],_T_6_0_data[15],_T_6_0_data[7]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52552.4]
  assign _T_550 = _T_534 & _T_519; // @[AtomicAutomata.scala 125:38:chipyard.TestHarness.RocketConfig.fir@52553.4]
  assign _T_551 = {_T_550, 1'h0}; // @[AtomicAutomata.scala 125:49:chipyard.TestHarness.RocketConfig.fir@52554.4]
  assign _T_553 = _T_549 & _T_519; // @[AtomicAutomata.scala 126:38:chipyard.TestHarness.RocketConfig.fir@52556.4]
  assign _T_554 = {_T_553, 1'h0}; // @[AtomicAutomata.scala 126:49:chipyard.TestHarness.RocketConfig.fir@52557.4]
  assign _T_556 = {_T_551[7:0], 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52559.4]
  assign _T_558 = _T_551[7:0] | _T_556[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52561.4]
  assign _T_559 = {_T_558, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52562.4]
  assign _T_561 = _T_558 | _T_559[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52564.4]
  assign _T_562 = {_T_561, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52565.4]
  assign _T_564 = _T_561 | _T_562[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52567.4]
  assign _T_575 = _T_564[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52578.4]
  assign _T_577 = _T_564[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52580.4]
  assign _T_579 = _T_564[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52582.4]
  assign _T_581 = _T_564[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52584.4]
  assign _T_583 = _T_564[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52586.4]
  assign _T_585 = _T_564[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52588.4]
  assign _T_587 = _T_564[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52590.4]
  assign _T_589 = _T_564[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52592.4]
  assign _T_596 = {_T_589,_T_587,_T_585,_T_583,_T_581,_T_579,_T_577,_T_575}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52599.4]
  assign _T_597 = {_T_554[7:0], 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52600.4]
  assign _T_599 = _T_554[7:0] | _T_597[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52602.4]
  assign _T_600 = {_T_599, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52603.4]
  assign _T_602 = _T_599 | _T_600[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52605.4]
  assign _T_603 = {_T_602, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52606.4]
  assign _T_605 = _T_602 | _T_603[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52608.4]
  assign _T_616 = _T_605[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52619.4]
  assign _T_618 = _T_605[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52621.4]
  assign _T_620 = _T_605[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52623.4]
  assign _T_622 = _T_605[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52625.4]
  assign _T_624 = _T_605[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52627.4]
  assign _T_626 = _T_605[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52629.4]
  assign _T_628 = _T_605[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52631.4]
  assign _T_630 = _T_605[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52633.4]
  assign _T_637 = {_T_630,_T_628,_T_626,_T_624,_T_622,_T_620,_T_618,_T_616}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52640.4]
  assign _T_647 = _T_5_0_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52650.4]
  assign _T_649 = _T_5_0_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52652.4]
  assign _T_651 = _T_5_0_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52654.4]
  assign _T_653 = _T_5_0_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52656.4]
  assign _T_655 = _T_5_0_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52658.4]
  assign _T_657 = _T_5_0_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52660.4]
  assign _T_659 = _T_5_0_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52662.4]
  assign _T_661 = _T_5_0_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@52664.4]
  assign _T_668 = {_T_661,_T_659,_T_657,_T_655,_T_653,_T_651,_T_649,_T_647}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52671.4]
  assign _T_669 = _T_5_0_bits_data & _T_668; // @[AtomicAutomata.scala 131:28:chipyard.TestHarness.RocketConfig.fir@52672.4]
  assign _T_670 = _T_669 | _T_596; // @[AtomicAutomata.scala 131:41:chipyard.TestHarness.RocketConfig.fir@52673.4]
  assign _T_671 = _T_6_0_data & _T_668; // @[AtomicAutomata.scala 132:28:chipyard.TestHarness.RocketConfig.fir@52674.4]
  assign _T_672 = _T_671 | _T_637; // @[AtomicAutomata.scala 132:41:chipyard.TestHarness.RocketConfig.fir@52675.4]
  assign _T_673 = ~_T_672; // @[AtomicAutomata.scala 133:43:chipyard.TestHarness.RocketConfig.fir@52676.4]
  assign _T_674 = _T_5_0_bits_param[2] ? _T_672 : _T_673; // @[AtomicAutomata.scala 133:26:chipyard.TestHarness.RocketConfig.fir@52677.4]
  assign _T_676 = _T_670 + _T_674; // @[AtomicAutomata.scala 134:33:chipyard.TestHarness.RocketConfig.fir@52679.4]
  assign _T_678 = _T_5_0_bits_param[1] == _T_670[63]; // @[AtomicAutomata.scala 136:38:chipyard.TestHarness.RocketConfig.fir@52681.4]
  assign _T_681 = _T_670[63] == _T_672[63]; // @[AtomicAutomata.scala 137:39:chipyard.TestHarness.RocketConfig.fir@52684.4]
  assign _T_683 = ~_T_676[63]; // @[AtomicAutomata.scala 137:55:chipyard.TestHarness.RocketConfig.fir@52686.4]
  assign _T_684 = _T_681 ? _T_683 : _T_678; // @[AtomicAutomata.scala 137:27:chipyard.TestHarness.RocketConfig.fir@52687.4]
  assign _T_685 = _T_5_0_bits_param[0] == _T_684; // @[AtomicAutomata.scala 138:31:chipyard.TestHarness.RocketConfig.fir@52688.4]
  assign _T_686 = _T_685 ? _T_5_0_bits_data : _T_6_0_data; // @[AtomicAutomata.scala 139:50:chipyard.TestHarness.RocketConfig.fir@52689.4]
  assign _T_687 = _T_5_0_bits_param[2] ? _T_676 : _T_686; // @[AtomicAutomata.scala 139:28:chipyard.TestHarness.RocketConfig.fir@52690.4]
  assign _T_689 = _T_5_0_bits_opcode[0] ? _T_512 : _T_687; // @[AtomicAutomata.scala 145:14:chipyard.TestHarness.RocketConfig.fir@52692.4]
  assign _T_691 = ~_T_11; // @[AtomicAutomata.scala 149:23:chipyard.TestHarness.RocketConfig.fir@52695.4]
  assign _T_692 = _T_116 | _T_7; // @[AtomicAutomata.scala 149:53:chipyard.TestHarness.RocketConfig.fir@52696.4]
  assign _T_693 = _T_691 & _T_692; // @[AtomicAutomata.scala 149:35:chipyard.TestHarness.RocketConfig.fir@52697.4]
  assign _T_821 = _T_820 == 9'h0; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@52844.4]
  assign _T_695 = auto_in_a_valid & _T_693; // @[AtomicAutomata.scala 151:38:chipyard.TestHarness.RocketConfig.fir@52700.4]
  assign _T_823 = {_T_695,_T_8}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@52846.4]
  assign _T_824 = {_T_823, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@52847.4]
  assign _T_826 = _T_823 | _T_824[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@52849.4]
  assign _T_828 = {_T_826, 1'h0}; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@52851.4]
  assign _T_830 = ~_T_828[1:0]; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@52853.4]
  assign _T_866_1 = _T_821 ? _T_830[1] : _T_864_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@52908.4]
  assign _T_868 = auto_out_a_ready & _T_866_1; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@52911.4]
  assign _T_696 = ~_T_116; // @[AtomicAutomata.scala 153:15:chipyard.TestHarness.RocketConfig.fir@52703.4]
  assign _GEN_0 = _T_696 ? 3'h4 : auto_in_a_bits_opcode; // @[AtomicAutomata.scala 153:31:chipyard.TestHarness.RocketConfig.fir@52704.4]
  assign _GEN_1 = _T_696 ? 3'h0 : auto_in_a_bits_param; // @[AtomicAutomata.scala 153:31:chipyard.TestHarness.RocketConfig.fir@52704.4]
  assign _T_698 = _T_5_0_bits_corrupt | _T_6_0_corrupt; // @[AtomicAutomata.scala 166:45:chipyard.TestHarness.RocketConfig.fir@52711.4]
  assign _T_750 = 4'h1 << _T_5_0_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@52769.4]
  assign _T_752 = _T_750[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@52771.4]
  assign _T_753 = _T_5_0_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@52772.4]
  assign _T_756 = ~_T_5_0_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@52775.4]
  assign _T_758 = _T_752[2] & _T_756; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52777.4]
  assign _T_759 = _T_753 | _T_758; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52778.4]
  assign _T_761 = _T_752[2] & _T_5_0_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52780.4]
  assign _T_762 = _T_753 | _T_761; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52781.4]
  assign _T_765 = ~_T_5_0_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@52784.4]
  assign _T_766 = _T_756 & _T_765; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52785.4]
  assign _T_767 = _T_752[1] & _T_766; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52786.4]
  assign _T_768 = _T_759 | _T_767; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52787.4]
  assign _T_769 = _T_756 & _T_5_0_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52788.4]
  assign _T_770 = _T_752[1] & _T_769; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52789.4]
  assign _T_771 = _T_759 | _T_770; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52790.4]
  assign _T_772 = _T_5_0_bits_address[2] & _T_765; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52791.4]
  assign _T_773 = _T_752[1] & _T_772; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52792.4]
  assign _T_774 = _T_762 | _T_773; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52793.4]
  assign _T_775 = _T_5_0_bits_address[2] & _T_5_0_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52794.4]
  assign _T_776 = _T_752[1] & _T_775; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52795.4]
  assign _T_777 = _T_762 | _T_776; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52796.4]
  assign _T_780 = ~_T_5_0_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@52799.4]
  assign _T_781 = _T_766 & _T_780; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52800.4]
  assign _T_782 = _T_752[0] & _T_781; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52801.4]
  assign _T_783 = _T_768 | _T_782; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52802.4]
  assign _T_784 = _T_766 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52803.4]
  assign _T_785 = _T_752[0] & _T_784; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52804.4]
  assign _T_786 = _T_768 | _T_785; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52805.4]
  assign _T_787 = _T_769 & _T_780; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52806.4]
  assign _T_788 = _T_752[0] & _T_787; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52807.4]
  assign _T_789 = _T_771 | _T_788; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52808.4]
  assign _T_790 = _T_769 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52809.4]
  assign _T_791 = _T_752[0] & _T_790; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52810.4]
  assign _T_792 = _T_771 | _T_791; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52811.4]
  assign _T_793 = _T_772 & _T_780; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52812.4]
  assign _T_794 = _T_752[0] & _T_793; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52813.4]
  assign _T_795 = _T_774 | _T_794; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52814.4]
  assign _T_796 = _T_772 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52815.4]
  assign _T_797 = _T_752[0] & _T_796; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52816.4]
  assign _T_798 = _T_774 | _T_797; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52817.4]
  assign _T_799 = _T_775 & _T_780; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52818.4]
  assign _T_800 = _T_752[0] & _T_799; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52819.4]
  assign _T_801 = _T_777 | _T_800; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52820.4]
  assign _T_802 = _T_775 & _T_5_0_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@52821.4]
  assign _T_803 = _T_752[0] & _T_802; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@52822.4]
  assign _T_804 = _T_777 | _T_803; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@52823.4]
  assign _T_813 = 27'hfff << auto_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@52836.4]
  assign _T_815 = ~_T_813[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@52838.4]
  assign _T_818 = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@52841.4]
  assign _T_822 = _T_821 & auto_out_a_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@52845.4]
  assign _T_834 = _T_830[0] & _T_8; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@52860.4]
  assign _T_835 = _T_830[1] & _T_695; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@52861.4]
  assign _T_838 = _T_834 | _T_835; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@52867.4]
  assign _T_840 = ~_T_834; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@52869.4]
  assign _T_843 = ~_T_835; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@52872.4]
  assign _T_844 = _T_840 | _T_843; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@52873.4]
  assign _T_847 = _T_844 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@52876.4]
  assign _T_848 = ~_T_847; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@52877.4]
  assign _T_849 = _T_8 | _T_695; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@52882.4]
  assign _T_850 = ~_T_849; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@52883.4]
  assign _T_852 = _T_850 | _T_838; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@52885.4]
  assign _T_854 = _T_852 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@52887.4]
  assign _T_855 = ~_T_854; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@52888.4]
  assign _T_870 = _T_864_0 & _T_8; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52914.4]
  assign _T_871 = _T_864_1 & _T_695; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52915.4]
  assign _T_872 = _T_870 | _T_871; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52916.4]
  assign _T_874 = _T_821 ? _T_849 : _T_872; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@52919.4]
  assign _T_859 = auto_out_a_ready & _T_874; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@52896.4]
  assign _GEN_40 = {{8'd0}, _T_859}; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@52897.4]
  assign _T_861 = _T_820 - _GEN_40; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@52898.4]
  assign _T_865_0 = _T_821 ? _T_834 : _T_864_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@52906.4]
  assign _T_865_1 = _T_821 ? _T_835 : _T_864_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@52906.4]
  assign _T_866_0 = _T_821 ? _T_830[0] : _T_864_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@52908.4]
  assign _T_867 = auto_out_a_ready & _T_866_0; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@52909.4]
  assign _T_875 = {_T_689,_T_698}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52921.4]
  assign _T_877 = {_T_5_0_bits_address,_T_804,_T_801,_T_798,_T_795,_T_792,_T_789,_T_786,_T_783,_T_875}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52923.4]
  assign _T_881 = {6'h0,_T_5_0_bits_size,_T_5_0_bits_source,_T_877}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52927.4]
  assign _T_882 = _T_865_0 ? _T_881 : 117'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52928.4]
  assign _T_889 = {_GEN_0,_GEN_1,auto_in_a_bits_size,auto_in_a_bits_source,auto_in_a_bits_address,auto_in_a_bits_mask,auto_in_a_bits_data,auto_in_a_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52935.4]
  assign _T_890 = _T_865_1 ? _T_889 : 117'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52936.4]
  assign _T_891 = _T_882 | _T_890; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@52937.4]
  assign _T_902 = _T_868 & _T_695; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@52965.4]
  assign _T_904 = _T_902 & _T_696; // @[AtomicAutomata.scala 174:31:chipyard.TestHarness.RocketConfig.fir@52967.4]
  assign _GEN_41 = {{1'd0}, auto_in_a_bits_param[1:0]}; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@52973.8]
  assign _T_906 = 3'h1 == _GEN_41; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@52973.8]
  assign _T_908 = 3'h0 == _GEN_41; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@52975.8]
  assign _T_910 = 3'h3 == _GEN_41; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@52977.8]
  assign _T_912 = _T_867 & _T_8; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@52985.4]
  assign _T_924 = _T_921 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@53002.4]
  assign _T_936 = auto_out_d_bits_opcode == 3'h1; // @[AtomicAutomata.scala 213:40:chipyard.TestHarness.RocketConfig.fir@53017.4]
  assign _T_942 = _T_924 & _T_936; // @[AtomicAutomata.scala 232:30:chipyard.TestHarness.RocketConfig.fir@53033.4]
  assign _T_932 = _T_5_0_bits_source == auto_out_d_bits_source; // @[AtomicAutomata.scala 204:53:chipyard.TestHarness.RocketConfig.fir@53013.4]
  assign _T_933 = _T_932 & _T_12; // @[AtomicAutomata.scala 205:83:chipyard.TestHarness.RocketConfig.fir@53014.4]
  assign _T_943 = _T_942 & _T_933; // @[AtomicAutomata.scala 232:40:chipyard.TestHarness.RocketConfig.fir@53034.4]
  assign _T_948 = auto_in_d_ready | _T_943; // @[AtomicAutomata.scala 236:35:chipyard.TestHarness.RocketConfig.fir@53040.4]
  assign _T_913 = _T_948 & auto_out_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@52991.4]
  assign _T_915 = 27'hfff << auto_out_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@52993.4]
  assign _T_917 = ~_T_915[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@52995.4]
  assign _T_923 = _T_921 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@53001.4]
  assign _T_937 = auto_out_d_bits_opcode == 3'h0; // @[AtomicAutomata.scala 214:40:chipyard.TestHarness.RocketConfig.fir@53018.4]
  assign _T_939 = _T_913 & _T_924; // @[AtomicAutomata.scala 216:28:chipyard.TestHarness.RocketConfig.fir@53020.4]
  assign _T_940 = _T_933 & _T_936; // @[AtomicAutomata.scala 218:22:chipyard.TestHarness.RocketConfig.fir@53022.6]
  assign _T_944 = _T_924 & _T_937; // @[AtomicAutomata.scala 233:33:chipyard.TestHarness.RocketConfig.fir@53035.4]
  assign _T_945 = _T_944 & _T_933; // @[AtomicAutomata.scala 233:42:chipyard.TestHarness.RocketConfig.fir@53036.4]
  assign _T_946 = ~_T_943; // @[AtomicAutomata.scala 235:38:chipyard.TestHarness.RocketConfig.fir@53037.4]
  assign _T_949 = _T_6_0_corrupt | auto_out_d_bits_denied; // @[AtomicAutomata.scala 242:46:chipyard.TestHarness.RocketConfig.fir@53046.6]
  assign _T_950 = _T_6_0_denied | auto_out_d_bits_denied; // @[AtomicAutomata.scala 243:46:chipyard.TestHarness.RocketConfig.fir@53048.6]
  assign auto_in_a_ready = _T_868 & _T_693; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_valid = auto_out_d_valid & _T_946; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_bits_opcode = _T_945 ? 3'h1 : auto_out_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_bits_param = auto_out_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_bits_denied = _T_945 ? _T_950 : auto_out_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_bits_data = _T_945 ? _T_6_0_data : auto_out_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_in_d_bits_corrupt = _T_945 ? _T_949 : auto_out_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@52000.4]
  assign auto_out_a_valid = _T_821 ? _T_849 : _T_872; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_a_bits_opcode = _T_891[116:114]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_a_bits_param = _T_891[113:111]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_a_bits_size = _T_891[110:107]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_a_bits_source = _T_891[106:104]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_a_bits_address = _T_891[103:73]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_a_bits_mask = _T_891[72:65]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_a_bits_data = _T_891[64:1]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_a_bits_corrupt = _T_891[0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign auto_out_d_ready = auto_in_d_ready | _T_943; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@51999.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@51975.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@51976.4]
  assign TLMonitor_io_in_a_ready = _T_868 & _T_693; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51996.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51995.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51994.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51993.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51992.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51991.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51990.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51989.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51987.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51986.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid & _T_946; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51985.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_945 ? 3'h1 : auto_out_d_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51984.4]
  assign TLMonitor_io_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51983.4]
  assign TLMonitor_io_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51982.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51981.4]
  assign TLMonitor_io_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51980.4]
  assign TLMonitor_io_in_d_bits_denied = _T_945 ? _T_950 : auto_out_d_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51979.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_945 ? _T_949 : auto_out_d_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@51977.4]
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
  _T_5_0_bits_size = _RAND_3[3:0];
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
  _T_820 = _RAND_13[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_864_1 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_864_0 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_921 = _RAND_16[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_4_0_state <= 2'h0;
    end else if (_T_939) begin
      if (_T_933) begin
        if (_T_936) begin
          _T_4_0_state <= 2'h2;
        end else begin
          _T_4_0_state <= 2'h0;
        end
      end else if (_T_912) begin
        if (_T_8) begin
          _T_4_0_state <= 2'h1;
        end else if (_T_904) begin
          if (_T_7) begin
            _T_4_0_state <= 2'h3;
          end
        end
      end else if (_T_904) begin
        if (_T_7) begin
          _T_4_0_state <= 2'h3;
        end
      end
    end else if (_T_912) begin
      if (_T_8) begin
        _T_4_0_state <= 2'h1;
      end else if (_T_904) begin
        if (_T_7) begin
          _T_4_0_state <= 2'h3;
        end
      end
    end else if (_T_904) begin
      if (_T_7) begin
        _T_4_0_state <= 2'h3;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        _T_5_0_bits_opcode <= auto_in_a_bits_opcode;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        _T_5_0_bits_param <= auto_in_a_bits_param;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        _T_5_0_bits_size <= auto_in_a_bits_size;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        _T_5_0_bits_source <= auto_in_a_bits_source;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        _T_5_0_bits_address <= auto_in_a_bits_address;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        _T_5_0_bits_mask <= auto_in_a_bits_mask;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        _T_5_0_bits_data <= auto_in_a_bits_data;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        _T_5_0_bits_corrupt <= auto_in_a_bits_corrupt;
      end
    end
    if (_T_904) begin
      if (_T_7) begin
        if (_T_910) begin
          _T_5_0_lut <= 4'hc;
        end else if (_T_908) begin
          _T_5_0_lut <= 4'h6;
        end else if (_T_906) begin
          _T_5_0_lut <= 4'he;
        end else begin
          _T_5_0_lut <= 4'h8;
        end
      end
    end
    if (_T_939) begin
      if (_T_940) begin
        _T_6_0_data <= auto_out_d_bits_data;
      end
    end
    if (_T_939) begin
      if (_T_940) begin
        _T_6_0_denied <= auto_out_d_bits_denied;
      end
    end
    if (_T_939) begin
      if (_T_940) begin
        _T_6_0_corrupt <= auto_out_d_bits_corrupt;
      end
    end
    if (reset) begin
      _T_820 <= 9'h0;
    end else if (_T_822) begin
      if (_T_835) begin
        if (_T_818) begin
          _T_820 <= _T_815[11:3];
        end else begin
          _T_820 <= 9'h0;
        end
      end else begin
        _T_820 <= 9'h0;
      end
    end else begin
      _T_820 <= _T_861;
    end
    if (reset) begin
      _T_864_1 <= 1'h0;
    end else if (_T_821) begin
      _T_864_1 <= _T_835;
    end
    if (reset) begin
      _T_864_0 <= 1'h0;
    end else if (_T_821) begin
      _T_864_0 <= _T_834;
    end
    if (reset) begin
      _T_921 <= 9'h0;
    end else if (_T_913) begin
      if (_T_924) begin
        if (auto_out_d_bits_opcode[0]) begin
          _T_921 <= _T_917[11:3];
        end else begin
          _T_921 <= 9'h0;
        end
      end else begin
        _T_921 <= _T_923;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_848) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@52879.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_848) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@52880.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_855) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@52890.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_855) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@52891.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
