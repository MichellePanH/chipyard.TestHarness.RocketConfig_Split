module TLFragmenter_5( // @[:chipyard.TestHarness.RocketConfig.fir@69507.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@69508.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@69509.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [2:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [2:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [16:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [2:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [2:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [63:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [1:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [6:0]  auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [16:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output        auto_out_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [1:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [6:0]  auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
  input  [63:0] auto_out_d_bits_data // @[:chipyard.TestHarness.RocketConfig.fir@69510.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire [2:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire [2:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire [16:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire [2:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire [2:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
  wire  Repeater_clock; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_reset; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_io_repeat; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_io_full; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_io_enq_ready; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_io_enq_valid; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [2:0] Repeater_io_enq_bits_opcode; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [2:0] Repeater_io_enq_bits_param; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [2:0] Repeater_io_enq_bits_size; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [2:0] Repeater_io_enq_bits_source; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [16:0] Repeater_io_enq_bits_address; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [7:0] Repeater_io_enq_bits_mask; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_io_enq_bits_corrupt; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_io_deq_ready; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_io_deq_valid; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [2:0] Repeater_io_deq_bits_opcode; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [2:0] Repeater_io_deq_bits_param; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [2:0] Repeater_io_deq_bits_size; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [2:0] Repeater_io_deq_bits_source; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [16:0] Repeater_io_deq_bits_address; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire [7:0] Repeater_io_deq_bits_mask; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  wire  Repeater_io_deq_bits_corrupt; // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
  reg [2:0] _T_2; // @[Fragmenter.scala 181:29:chipyard.TestHarness.RocketConfig.fir@69544.4]
  reg [31:0] _RAND_0;
  reg [2:0] _T_3; // @[Fragmenter.scala 182:24:chipyard.TestHarness.RocketConfig.fir@69545.4]
  reg [31:0] _RAND_1;
  reg  _T_4; // @[Fragmenter.scala 183:30:chipyard.TestHarness.RocketConfig.fir@69546.4]
  reg [31:0] _RAND_2;
  wire  _T_6; // @[Fragmenter.scala 185:29:chipyard.TestHarness.RocketConfig.fir@69548.4]
  wire [5:0] _T_12; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@69554.4]
  wire [2:0] _T_14; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@69556.4]
  wire [5:0] _T_29; // @[Fragmenter.scala 198:47:chipyard.TestHarness.RocketConfig.fir@69575.4]
  wire [5:0] _GEN_7; // @[Fragmenter.scala 198:69:chipyard.TestHarness.RocketConfig.fir@69576.4]
  wire [5:0] _T_30; // @[Fragmenter.scala 198:69:chipyard.TestHarness.RocketConfig.fir@69576.4]
  wire [6:0] _T_31; // @[package.scala 187:35:chipyard.TestHarness.RocketConfig.fir@69577.4]
  wire [6:0] _T_32; // @[package.scala 187:40:chipyard.TestHarness.RocketConfig.fir@69578.4]
  wire [6:0] _T_33; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@69579.4]
  wire [6:0] _T_34; // @[package.scala 187:53:chipyard.TestHarness.RocketConfig.fir@69580.4]
  wire [6:0] _T_35; // @[package.scala 187:51:chipyard.TestHarness.RocketConfig.fir@69581.4]
  wire  _T_38; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@69584.4]
  wire [3:0] _GEN_8; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@69585.4]
  wire [3:0] _T_39; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@69585.4]
  wire  _T_42; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@69588.4]
  wire [1:0] _T_43; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@69589.4]
  wire [2:0] _T_46; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@69592.4]
  wire  _T_47; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@69593.4]
  wire [2:0] _T_49; // @[Fragmenter.scala 201:55:chipyard.TestHarness.RocketConfig.fir@69596.6]
  wire  _T_79; // @[Fragmenter.scala 276:31:chipyard.TestHarness.RocketConfig.fir@69644.4]
  wire [2:0] _T_80; // @[Fragmenter.scala 276:24:chipyard.TestHarness.RocketConfig.fir@69645.4]
  wire [12:0] _T_82; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@69647.4]
  wire [5:0] _T_84; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@69649.4]
  wire [9:0] _T_86; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@69651.4]
  wire [2:0] _T_88; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@69653.4]
  reg [2:0] _T_92; // @[Fragmenter.scala 282:29:chipyard.TestHarness.RocketConfig.fir@69657.4]
  reg [31:0] _RAND_3;
  wire  _T_93; // @[Fragmenter.scala 283:29:chipyard.TestHarness.RocketConfig.fir@69658.4]
  wire [2:0] _T_96; // @[Fragmenter.scala 284:79:chipyard.TestHarness.RocketConfig.fir@69661.4]
  wire [2:0] _T_97; // @[Fragmenter.scala 284:30:chipyard.TestHarness.RocketConfig.fir@69662.4]
  wire [2:0] _T_98; // @[Fragmenter.scala 285:28:chipyard.TestHarness.RocketConfig.fir@69663.4]
  wire [2:0] _T_101; // @[Fragmenter.scala 285:26:chipyard.TestHarness.RocketConfig.fir@69666.4]
  reg  _T_108; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@69673.4]
  reg [31:0] _RAND_4;
  wire  _GEN_5; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@69674.4]
  wire  _T_110; // @[Fragmenter.scala 288:23:chipyard.TestHarness.RocketConfig.fir@69678.4]
  wire  _T_1_a_valid; // @[Nodes.scala 388:84:chipyard.TestHarness.RocketConfig.fir@69540.4 Fragmenter.scala 294:15:chipyard.TestHarness.RocketConfig.fir@69687.4]
  wire  _T_111; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@69679.4]
  wire [5:0] _T_115; // @[Fragmenter.scala 295:65:chipyard.TestHarness.RocketConfig.fir@69688.4]
  wire [5:0] _T_116; // @[Fragmenter.scala 295:90:chipyard.TestHarness.RocketConfig.fir@69689.4]
  wire [5:0] _T_117; // @[Fragmenter.scala 295:88:chipyard.TestHarness.RocketConfig.fir@69690.4]
  wire [5:0] _GEN_9; // @[Fragmenter.scala 295:100:chipyard.TestHarness.RocketConfig.fir@69691.4]
  wire [5:0] _T_118; // @[Fragmenter.scala 295:100:chipyard.TestHarness.RocketConfig.fir@69691.4]
  wire [5:0] _T_119; // @[Fragmenter.scala 295:111:chipyard.TestHarness.RocketConfig.fir@69692.4]
  wire [5:0] _T_120; // @[Fragmenter.scala 295:51:chipyard.TestHarness.RocketConfig.fir@69693.4]
  wire [16:0] _GEN_10; // @[Fragmenter.scala 295:49:chipyard.TestHarness.RocketConfig.fir@69694.4]
  wire [3:0] _T_122; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@69696.4]
  wire  _T_124; // @[Fragmenter.scala 300:17:chipyard.TestHarness.RocketConfig.fir@69700.4]
  wire  _T_131; // @[Fragmenter.scala 303:53:chipyard.TestHarness.RocketConfig.fir@69712.4]
  wire  _T_132; // @[Fragmenter.scala 303:35:chipyard.TestHarness.RocketConfig.fir@69713.4]
  wire  _T_134; // @[Fragmenter.scala 303:16:chipyard.TestHarness.RocketConfig.fir@69715.4]
  wire  _T_135; // @[Fragmenter.scala 303:16:chipyard.TestHarness.RocketConfig.fir@69716.4]
  TLMonitor_33 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@69517.4]
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
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source)
  );
  Repeater_5 Repeater ( // @[Fragmenter.scala 253:30:chipyard.TestHarness.RocketConfig.fir@69619.4]
    .clock(Repeater_clock),
    .reset(Repeater_reset),
    .io_repeat(Repeater_io_repeat),
    .io_full(Repeater_io_full),
    .io_enq_ready(Repeater_io_enq_ready),
    .io_enq_valid(Repeater_io_enq_valid),
    .io_enq_bits_opcode(Repeater_io_enq_bits_opcode),
    .io_enq_bits_param(Repeater_io_enq_bits_param),
    .io_enq_bits_size(Repeater_io_enq_bits_size),
    .io_enq_bits_source(Repeater_io_enq_bits_source),
    .io_enq_bits_address(Repeater_io_enq_bits_address),
    .io_enq_bits_mask(Repeater_io_enq_bits_mask),
    .io_enq_bits_corrupt(Repeater_io_enq_bits_corrupt),
    .io_deq_ready(Repeater_io_deq_ready),
    .io_deq_valid(Repeater_io_deq_valid),
    .io_deq_bits_opcode(Repeater_io_deq_bits_opcode),
    .io_deq_bits_param(Repeater_io_deq_bits_param),
    .io_deq_bits_size(Repeater_io_deq_bits_size),
    .io_deq_bits_source(Repeater_io_deq_bits_source),
    .io_deq_bits_address(Repeater_io_deq_bits_address),
    .io_deq_bits_mask(Repeater_io_deq_bits_mask),
    .io_deq_bits_corrupt(Repeater_io_deq_bits_corrupt)
  );
  assign _T_6 = _T_2 == 3'h0; // @[Fragmenter.scala 185:29:chipyard.TestHarness.RocketConfig.fir@69548.4]
  assign _T_12 = 6'h7 << auto_out_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@69554.4]
  assign _T_14 = ~_T_12[2:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@69556.4]
  assign _T_29 = {auto_out_d_bits_source[2:0], 3'h0}; // @[Fragmenter.scala 198:47:chipyard.TestHarness.RocketConfig.fir@69575.4]
  assign _GEN_7 = {{3'd0}, _T_14}; // @[Fragmenter.scala 198:69:chipyard.TestHarness.RocketConfig.fir@69576.4]
  assign _T_30 = _T_29 | _GEN_7; // @[Fragmenter.scala 198:69:chipyard.TestHarness.RocketConfig.fir@69576.4]
  assign _T_31 = {_T_30, 1'h0}; // @[package.scala 187:35:chipyard.TestHarness.RocketConfig.fir@69577.4]
  assign _T_32 = _T_31 | 7'h1; // @[package.scala 187:40:chipyard.TestHarness.RocketConfig.fir@69578.4]
  assign _T_33 = {1'h0,_T_30}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@69579.4]
  assign _T_34 = ~_T_33; // @[package.scala 187:53:chipyard.TestHarness.RocketConfig.fir@69580.4]
  assign _T_35 = _T_32 & _T_34; // @[package.scala 187:51:chipyard.TestHarness.RocketConfig.fir@69581.4]
  assign _T_38 = |_T_35[6:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@69584.4]
  assign _GEN_8 = {{1'd0}, _T_35[6:4]}; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@69585.4]
  assign _T_39 = _GEN_8 | _T_35[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@69585.4]
  assign _T_42 = |_T_39[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@69588.4]
  assign _T_43 = _T_39[3:2] | _T_39[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@69589.4]
  assign _T_46 = {_T_38,_T_42,_T_43[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@69592.4]
  assign _T_47 = auto_in_d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@69593.4]
  assign _T_49 = _T_2 - 3'h1; // @[Fragmenter.scala 201:55:chipyard.TestHarness.RocketConfig.fir@69596.6]
  assign _T_79 = Repeater_io_deq_bits_size > 3'h3; // @[Fragmenter.scala 276:31:chipyard.TestHarness.RocketConfig.fir@69644.4]
  assign _T_80 = _T_79 ? 3'h3 : Repeater_io_deq_bits_size; // @[Fragmenter.scala 276:24:chipyard.TestHarness.RocketConfig.fir@69645.4]
  assign _T_82 = 13'h3f << Repeater_io_deq_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@69647.4]
  assign _T_84 = ~_T_82[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@69649.4]
  assign _T_86 = 10'h7 << _T_80; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@69651.4]
  assign _T_88 = ~_T_86[2:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@69653.4]
  assign _T_93 = _T_92 == 3'h0; // @[Fragmenter.scala 283:29:chipyard.TestHarness.RocketConfig.fir@69658.4]
  assign _T_96 = _T_92 - 3'h1; // @[Fragmenter.scala 284:79:chipyard.TestHarness.RocketConfig.fir@69661.4]
  assign _T_97 = _T_93 ? _T_84[5:3] : _T_96; // @[Fragmenter.scala 284:30:chipyard.TestHarness.RocketConfig.fir@69662.4]
  assign _T_98 = ~_T_97; // @[Fragmenter.scala 285:28:chipyard.TestHarness.RocketConfig.fir@69663.4]
  assign _T_101 = ~_T_98; // @[Fragmenter.scala 285:26:chipyard.TestHarness.RocketConfig.fir@69666.4]
  assign _GEN_5 = _T_93 ? _T_4 : _T_108; // @[Reg.scala 16:19:chipyard.TestHarness.RocketConfig.fir@69674.4]
  assign _T_110 = ~_GEN_5; // @[Fragmenter.scala 288:23:chipyard.TestHarness.RocketConfig.fir@69678.4]
  assign _T_1_a_valid = Repeater_io_deq_valid; // @[Nodes.scala 388:84:chipyard.TestHarness.RocketConfig.fir@69540.4 Fragmenter.scala 294:15:chipyard.TestHarness.RocketConfig.fir@69687.4]
  assign _T_111 = auto_out_a_ready & _T_1_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@69679.4]
  assign _T_115 = {_T_97, 3'h0}; // @[Fragmenter.scala 295:65:chipyard.TestHarness.RocketConfig.fir@69688.4]
  assign _T_116 = ~_T_84; // @[Fragmenter.scala 295:90:chipyard.TestHarness.RocketConfig.fir@69689.4]
  assign _T_117 = _T_115 | _T_116; // @[Fragmenter.scala 295:88:chipyard.TestHarness.RocketConfig.fir@69690.4]
  assign _GEN_9 = {{3'd0}, _T_88}; // @[Fragmenter.scala 295:100:chipyard.TestHarness.RocketConfig.fir@69691.4]
  assign _T_118 = _T_117 | _GEN_9; // @[Fragmenter.scala 295:100:chipyard.TestHarness.RocketConfig.fir@69691.4]
  assign _T_119 = _T_118 | 6'h7; // @[Fragmenter.scala 295:111:chipyard.TestHarness.RocketConfig.fir@69692.4]
  assign _T_120 = ~_T_119; // @[Fragmenter.scala 295:51:chipyard.TestHarness.RocketConfig.fir@69693.4]
  assign _GEN_10 = {{11'd0}, _T_120}; // @[Fragmenter.scala 295:49:chipyard.TestHarness.RocketConfig.fir@69694.4]
  assign _T_122 = {Repeater_io_deq_bits_source,_T_110}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@69696.4]
  assign _T_124 = ~Repeater_io_full; // @[Fragmenter.scala 300:17:chipyard.TestHarness.RocketConfig.fir@69700.4]
  assign _T_131 = Repeater_io_deq_bits_mask == 8'hff; // @[Fragmenter.scala 303:53:chipyard.TestHarness.RocketConfig.fir@69712.4]
  assign _T_132 = _T_124 | _T_131; // @[Fragmenter.scala 303:35:chipyard.TestHarness.RocketConfig.fir@69713.4]
  assign _T_134 = _T_132 | reset; // @[Fragmenter.scala 303:16:chipyard.TestHarness.RocketConfig.fir@69715.4]
  assign _T_135 = ~_T_134; // @[Fragmenter.scala 303:16:chipyard.TestHarness.RocketConfig.fir@69716.4]
  assign auto_in_a_ready = Repeater_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@69543.4]
  assign auto_in_d_valid = auto_out_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@69543.4]
  assign auto_in_d_bits_size = _T_6 ? _T_46 : _T_3; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@69543.4]
  assign auto_in_d_bits_source = auto_out_d_bits_source[6:4]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@69543.4]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@69543.4]
  assign auto_out_a_valid = Repeater_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign auto_out_a_bits_opcode = Repeater_io_deq_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign auto_out_a_bits_param = Repeater_io_deq_bits_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign auto_out_a_bits_size = _T_80[1:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign auto_out_a_bits_source = {_T_122,_T_101}; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign auto_out_a_bits_address = Repeater_io_deq_bits_address | _GEN_10; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign auto_out_a_bits_mask = Repeater_io_full ? 8'hff : auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign auto_out_a_bits_corrupt = Repeater_io_deq_bits_corrupt; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign auto_out_d_ready = auto_in_d_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@69542.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@69518.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@69519.4]
  assign TLMonitor_io_in_a_ready = Repeater_io_enq_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69539.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69538.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69537.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69536.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69535.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69534.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69533.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69532.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69530.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69529.4]
  assign TLMonitor_io_in_d_valid = auto_out_d_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69528.4]
  assign TLMonitor_io_in_d_bits_size = _T_6 ? _T_46 : _T_3; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69525.4]
  assign TLMonitor_io_in_d_bits_source = auto_out_d_bits_source[6:4]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@69524.4]
  assign Repeater_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@69621.4]
  assign Repeater_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@69622.4]
  assign Repeater_io_repeat = _T_101 != 3'h0; // @[Fragmenter.scala 293:28:chipyard.TestHarness.RocketConfig.fir@69686.4]
  assign Repeater_io_enq_valid = auto_in_a_valid; // @[Fragmenter.scala 254:25:chipyard.TestHarness.RocketConfig.fir@69623.4]
  assign Repeater_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Fragmenter.scala 254:25:chipyard.TestHarness.RocketConfig.fir@69623.4]
  assign Repeater_io_enq_bits_param = auto_in_a_bits_param; // @[Fragmenter.scala 254:25:chipyard.TestHarness.RocketConfig.fir@69623.4]
  assign Repeater_io_enq_bits_size = auto_in_a_bits_size; // @[Fragmenter.scala 254:25:chipyard.TestHarness.RocketConfig.fir@69623.4]
  assign Repeater_io_enq_bits_source = auto_in_a_bits_source; // @[Fragmenter.scala 254:25:chipyard.TestHarness.RocketConfig.fir@69623.4]
  assign Repeater_io_enq_bits_address = auto_in_a_bits_address; // @[Fragmenter.scala 254:25:chipyard.TestHarness.RocketConfig.fir@69623.4]
  assign Repeater_io_enq_bits_mask = auto_in_a_bits_mask; // @[Fragmenter.scala 254:25:chipyard.TestHarness.RocketConfig.fir@69623.4]
  assign Repeater_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Fragmenter.scala 254:25:chipyard.TestHarness.RocketConfig.fir@69623.4]
  assign Repeater_io_deq_ready = auto_out_a_ready; // @[Fragmenter.scala 294:15:chipyard.TestHarness.RocketConfig.fir@69687.4]
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
  _T_2 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_3 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_4 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_92 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_108 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_2 <= 3'h0;
    end else if (_T_47) begin
      if (_T_6) begin
        _T_2 <= auto_out_d_bits_source[2:0];
      end else begin
        _T_2 <= _T_49;
      end
    end
    if (_T_47) begin
      if (_T_6) begin
        _T_3 <= _T_46;
      end
    end
    if (reset) begin
      _T_4 <= 1'h0;
    end else if (_T_47) begin
      if (_T_6) begin
        _T_4 <= auto_out_d_bits_source[3];
      end
    end
    if (reset) begin
      _T_92 <= 3'h0;
    end else if (_T_111) begin
      _T_92 <= _T_101;
    end
    if (_T_93) begin
      _T_108 <= _T_4;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_135) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:303 assert (!repeater.io.full || in_a.bits.mask === fullMask)\n"); // @[Fragmenter.scala 303:16:chipyard.TestHarness.RocketConfig.fir@69718.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_135) begin
          $fatal; // @[Fragmenter.scala 303:16:chipyard.TestHarness.RocketConfig.fir@69719.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
