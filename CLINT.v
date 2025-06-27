module CLINT( // @[:chipyard.TestHarness.RocketConfig.fir@123729.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@123730.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@123731.4]
  output        auto_int_out_0, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  output        auto_int_out_1, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input  [1:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input  [6:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input  [25:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  output [1:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  output [6:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@123732.4]
  input         io_rtcTick // @[:chipyard.TestHarness.RocketConfig.fir@123733.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [6:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [25:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  wire [6:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
  reg [63:0] time_; // @[CLINT.scala 69:23:chipyard.TestHarness.RocketConfig.fir@123768.4]
  reg [63:0] _RAND_0;
  wire [63:0] _T_2; // @[CLINT.scala 70:38:chipyard.TestHarness.RocketConfig.fir@123771.6]
  reg [63:0] timecmp_0; // @[CLINT.scala 73:41:chipyard.TestHarness.RocketConfig.fir@123774.4]
  reg [63:0] _RAND_1;
  reg  ipi_0; // @[CLINT.scala 74:41:chipyard.TestHarness.RocketConfig.fir@123775.4]
  reg [31:0] _RAND_2;
  wire  _T_60; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@123886.4]
  wire [1:0] _T_594; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@124502.4]
  wire [12:0] _T_65; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123902.4]
  wire  _T_69; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123906.4]
  wire  _T_67; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123904.4]
  wire  _T_695; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124696.4]
  wire  _T_696; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124697.4]
  wire  _T_697; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124698.4]
  wire [3:0] _T_614; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@124522.4]
  wire  _T_704; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124710.4]
  wire  _T_705; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124711.4]
  wire [7:0] _T_131; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123972.4]
  wire [7:0] _T_129; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123970.4]
  wire [7:0] _T_127; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123968.4]
  wire [7:0] _T_125; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123966.4]
  wire [7:0] _T_123; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123964.4]
  wire [7:0] _T_121; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123962.4]
  wire [7:0] _T_119; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123960.4]
  wire [7:0] _T_117; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123958.4]
  wire [63:0] _T_138; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@123979.4]
  wire  _T_146; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123987.4]
  wire  _T_150; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123991.4]
  wire  _T_169; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124014.4]
  wire  _T_173; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124018.4]
  wire  _T_18; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123815.4]
  wire  _T_194; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124043.4]
  wire  _T_198; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124047.4]
  wire  _T_19; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123816.4]
  wire  _T_219; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124072.4]
  wire  _T_223; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124076.4]
  wire  _T_20; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123817.4]
  wire  _T_244; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124101.4]
  wire  _T_248; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124105.4]
  wire  _T_21; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123818.4]
  wire  _T_269; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124130.4]
  wire  _T_273; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124134.4]
  wire  _T_22; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123819.4]
  wire  _T_294; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124159.4]
  wire  _T_298; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124163.4]
  wire  _T_23; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123820.4]
  wire  _T_319; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124188.4]
  wire  _T_323; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124192.4]
  wire  _T_24; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123821.4]
  wire [7:0] _GEN_4; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124021.4]
  wire [7:0] _GEN_3; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@123994.4]
  wire [7:0] _GEN_6; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124079.4]
  wire [7:0] _GEN_5; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124050.4]
  wire [7:0] _GEN_8; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124137.4]
  wire [7:0] _GEN_7; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124108.4]
  wire [7:0] _GEN_10; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124195.4]
  wire [7:0] _GEN_9; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124166.4]
  wire [63:0] _T_31; // @[RegField.scala 214:52:chipyard.TestHarness.RocketConfig.fir@123829.6]
  wire  _T_709; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124725.4]
  wire  _T_710; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124726.4]
  wire  _T_348; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124221.4]
  wire  _T_371; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124248.4]
  wire  _T_45; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123867.4]
  wire  _T_396; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124277.4]
  wire  _T_46; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123868.4]
  wire  _T_421; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124306.4]
  wire  _T_47; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123869.4]
  wire  _T_446; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124335.4]
  wire  _T_48; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123870.4]
  wire  _T_471; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124364.4]
  wire  _T_49; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123871.4]
  wire  _T_496; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124393.4]
  wire  _T_50; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123872.4]
  wire  _T_521; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124422.4]
  wire  _T_51; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123873.4]
  wire [7:0] _GEN_12; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124251.4]
  wire [7:0] _GEN_11; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124224.4]
  wire [7:0] _GEN_14; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124309.4]
  wire [7:0] _GEN_13; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124280.4]
  wire [7:0] _GEN_16; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124367.4]
  wire [7:0] _GEN_15; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124338.4]
  wire [7:0] _GEN_18; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124425.4]
  wire [7:0] _GEN_17; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124396.4]
  wire [63:0] _T_58; // @[RegField.scala 214:52:chipyard.TestHarness.RocketConfig.fir@123881.6]
  wire [63:0] _T_334; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@124207.4]
  wire [63:0] _T_532; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@124437.4]
  wire  _T_538; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124443.4]
  wire  _T_648; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124588.4]
  wire  _T_649; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124589.4]
  wire  _T_545; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124450.4]
  wire [1:0] _T_578; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@124486.4]
  wire [31:0] _T_579; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124487.4]
  wire  _GEN_37; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124771.4]
  wire  _GEN_38; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124771.4]
  wire  _GEN_44; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124771.4]
  wire  _GEN_39; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124771.4]
  wire [63:0] _T_731_0; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@124773.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@124775.4]
  wire [63:0] _GEN_41; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124779.4]
  wire [63:0] _GEN_42; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124779.4]
  wire [63:0] _GEN_43; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124779.4]
  TLMonitor_49 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@123741.4]
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
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source)
  );
  assign _T_2 = time_ + 64'h1; // @[CLINT.scala 70:38:chipyard.TestHarness.RocketConfig.fir@123771.6]
  assign _T_60 = auto_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@123886.4]
  assign _T_594 = {auto_in_a_bits_address[15],auto_in_a_bits_address[14]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@124502.4]
  assign _T_65 = auto_in_a_bits_address[15:3] & 13'h7ff; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123902.4]
  assign _T_69 = _T_65 == 13'h7ff; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123906.4]
  assign _T_67 = _T_65 == 13'h0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123904.4]
  assign _T_695 = auto_in_a_valid & auto_in_d_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124696.4]
  assign _T_696 = ~_T_60; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124697.4]
  assign _T_697 = _T_695 & _T_696; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124698.4]
  assign _T_614 = 4'h1 << _T_594; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@124522.4]
  assign _T_704 = _T_697 & _T_614[1]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124710.4]
  assign _T_705 = _T_704 & _T_67; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124711.4]
  assign _T_131 = auto_in_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123972.4]
  assign _T_129 = auto_in_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123970.4]
  assign _T_127 = auto_in_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123968.4]
  assign _T_125 = auto_in_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123966.4]
  assign _T_123 = auto_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123964.4]
  assign _T_121 = auto_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123962.4]
  assign _T_119 = auto_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123960.4]
  assign _T_117 = auto_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@123958.4]
  assign _T_138 = {_T_131,_T_129,_T_127,_T_125,_T_123,_T_121,_T_119,_T_117}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@123979.4]
  assign _T_146 = &_T_138[7:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123987.4]
  assign _T_150 = _T_705 & _T_146; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@123991.4]
  assign _T_169 = &_T_138[15:8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124014.4]
  assign _T_173 = _T_705 & _T_169; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124018.4]
  assign _T_18 = _T_150 | _T_173; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123815.4]
  assign _T_194 = &_T_138[23:16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124043.4]
  assign _T_198 = _T_705 & _T_194; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124047.4]
  assign _T_19 = _T_18 | _T_198; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123816.4]
  assign _T_219 = &_T_138[31:24]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124072.4]
  assign _T_223 = _T_705 & _T_219; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124076.4]
  assign _T_20 = _T_19 | _T_223; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123817.4]
  assign _T_244 = &_T_138[39:32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124101.4]
  assign _T_248 = _T_705 & _T_244; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124105.4]
  assign _T_21 = _T_20 | _T_248; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123818.4]
  assign _T_269 = &_T_138[47:40]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124130.4]
  assign _T_273 = _T_705 & _T_269; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124134.4]
  assign _T_22 = _T_21 | _T_273; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123819.4]
  assign _T_294 = &_T_138[55:48]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124159.4]
  assign _T_298 = _T_705 & _T_294; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124163.4]
  assign _T_23 = _T_22 | _T_298; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123820.4]
  assign _T_319 = &_T_138[63:56]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124188.4]
  assign _T_323 = _T_705 & _T_319; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124192.4]
  assign _T_24 = _T_23 | _T_323; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123821.4]
  assign _GEN_4 = _T_173 ? auto_in_a_bits_data[15:8] : timecmp_0[15:8]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124021.4]
  assign _GEN_3 = _T_150 ? auto_in_a_bits_data[7:0] : timecmp_0[7:0]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@123994.4]
  assign _GEN_6 = _T_223 ? auto_in_a_bits_data[31:24] : timecmp_0[31:24]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124079.4]
  assign _GEN_5 = _T_198 ? auto_in_a_bits_data[23:16] : timecmp_0[23:16]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124050.4]
  assign _GEN_8 = _T_273 ? auto_in_a_bits_data[47:40] : timecmp_0[47:40]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124137.4]
  assign _GEN_7 = _T_248 ? auto_in_a_bits_data[39:32] : timecmp_0[39:32]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124108.4]
  assign _GEN_10 = _T_323 ? auto_in_a_bits_data[63:56] : timecmp_0[63:56]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124195.4]
  assign _GEN_9 = _T_298 ? auto_in_a_bits_data[55:48] : timecmp_0[55:48]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124166.4]
  assign _T_31 = {_GEN_10,_GEN_9,_GEN_8,_GEN_7,_GEN_6,_GEN_5,_GEN_4,_GEN_3}; // @[RegField.scala 214:52:chipyard.TestHarness.RocketConfig.fir@123829.6]
  assign _T_709 = _T_697 & _T_614[2]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124725.4]
  assign _T_710 = _T_709 & _T_69; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124726.4]
  assign _T_348 = _T_710 & _T_146; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124221.4]
  assign _T_371 = _T_710 & _T_169; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124248.4]
  assign _T_45 = _T_348 | _T_371; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123867.4]
  assign _T_396 = _T_710 & _T_194; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124277.4]
  assign _T_46 = _T_45 | _T_396; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123868.4]
  assign _T_421 = _T_710 & _T_219; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124306.4]
  assign _T_47 = _T_46 | _T_421; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123869.4]
  assign _T_446 = _T_710 & _T_244; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124335.4]
  assign _T_48 = _T_47 | _T_446; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123870.4]
  assign _T_471 = _T_710 & _T_269; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124364.4]
  assign _T_49 = _T_48 | _T_471; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123871.4]
  assign _T_496 = _T_710 & _T_294; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124393.4]
  assign _T_50 = _T_49 | _T_496; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123872.4]
  assign _T_521 = _T_710 & _T_319; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124422.4]
  assign _T_51 = _T_50 | _T_521; // @[RegField.scala 214:27:chipyard.TestHarness.RocketConfig.fir@123873.4]
  assign _GEN_12 = _T_371 ? auto_in_a_bits_data[15:8] : time_[15:8]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124251.4]
  assign _GEN_11 = _T_348 ? auto_in_a_bits_data[7:0] : time_[7:0]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124224.4]
  assign _GEN_14 = _T_421 ? auto_in_a_bits_data[31:24] : time_[31:24]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124309.4]
  assign _GEN_13 = _T_396 ? auto_in_a_bits_data[23:16] : time_[23:16]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124280.4]
  assign _GEN_16 = _T_471 ? auto_in_a_bits_data[47:40] : time_[47:40]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124367.4]
  assign _GEN_15 = _T_446 ? auto_in_a_bits_data[39:32] : time_[39:32]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124338.4]
  assign _GEN_18 = _T_521 ? auto_in_a_bits_data[63:56] : time_[63:56]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124425.4]
  assign _GEN_17 = _T_496 ? auto_in_a_bits_data[55:48] : time_[55:48]; // @[RegField.scala 218:20:chipyard.TestHarness.RocketConfig.fir@124396.4]
  assign _T_58 = {_GEN_18,_GEN_17,_GEN_16,_GEN_15,_GEN_14,_GEN_13,_GEN_12,_GEN_11}; // @[RegField.scala 214:52:chipyard.TestHarness.RocketConfig.fir@123881.6]
  assign _T_334 = {timecmp_0[63:56],timecmp_0[55:48],timecmp_0[47:40],timecmp_0[39:32],timecmp_0[31:24],timecmp_0[23:16],timecmp_0[15:8],timecmp_0[7:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@124207.4]
  assign _T_532 = {time_[63:56],time_[55:48],time_[47:40],time_[39:32],time_[31:24],time_[23:16],time_[15:8],time_[7:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@124437.4]
  assign _T_538 = &_T_138[0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124443.4]
  assign _T_648 = _T_697 & _T_614[0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124588.4]
  assign _T_649 = _T_648 & _T_67; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124589.4]
  assign _T_545 = _T_649 & _T_538; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124450.4]
  assign _T_578 = {1'h0,ipi_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@124486.4]
  assign _T_579 = {{30'd0}, _T_578}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@124487.4]
  assign _GEN_37 = 2'h1 == _T_594 ? _T_67 : _T_67; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124771.4]
  assign _GEN_38 = 2'h2 == _T_594 ? _T_69 : _GEN_37; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124771.4]
  assign _GEN_44 = 2'h3 == _T_594; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124771.4]
  assign _GEN_39 = _GEN_44 | _GEN_38; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124771.4]
  assign _T_731_0 = {{32'd0}, _T_579}; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@124773.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@124775.4]
  assign _GEN_41 = 2'h1 == _T_594 ? _T_334 : _T_731_0; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124779.4]
  assign _GEN_42 = 2'h2 == _T_594 ? _T_532 : _GEN_41; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124779.4]
  assign _GEN_43 = 2'h3 == _T_594 ? 64'h0 : _GEN_42; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@124779.4]
  assign auto_int_out_0 = ipi_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@123767.4]
  assign auto_int_out_1 = time_ >= timecmp_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@123767.4]
  assign auto_in_a_ready = auto_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@123766.4]
  assign auto_in_d_valid = auto_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@123766.4]
  assign auto_in_d_bits_opcode = {{2'd0}, _T_60}; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@123766.4]
  assign auto_in_d_bits_size = auto_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@123766.4]
  assign auto_in_d_bits_source = auto_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@123766.4]
  assign auto_in_d_bits_data = _GEN_39 ? _GEN_43 : 64'h0; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@123766.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@123742.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@123743.4]
  assign TLMonitor_io_in_a_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123763.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123762.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123761.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123760.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123759.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123758.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123757.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123756.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123754.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123753.4]
  assign TLMonitor_io_in_d_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123752.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_60}; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123751.4]
  assign TLMonitor_io_in_d_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123749.4]
  assign TLMonitor_io_in_d_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@123748.4]
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
  _RAND_0 = {2{`RANDOM}};
  time_ = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  timecmp_0 = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ipi_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      time_ <= 64'h0;
    end else if (_T_51) begin
      time_ <= _T_58;
    end else if (io_rtcTick) begin
      time_ <= _T_2;
    end
    if (_T_24) begin
      timecmp_0 <= _T_31;
    end
    if (reset) begin
      ipi_0 <= 1'h0;
    end else if (_T_545) begin
      ipi_0 <= auto_in_a_bits_data[0];
    end
  end
endmodule
