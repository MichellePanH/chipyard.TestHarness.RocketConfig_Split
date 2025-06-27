module TLBusBypassBar( // @[:chipyard.TestHarness.RocketConfig.fir@130657.2]
  input          clock, // @[:chipyard.TestHarness.RocketConfig.fir@130658.4]
  input          reset, // @[:chipyard.TestHarness.RocketConfig.fir@130659.4]
  output         auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [2:0]   auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [8:0]   auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [3:0]   auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [31:0]  auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [2:0]   auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [1:0]   auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [1:0]   auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [31:0]  auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_1_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_out_1_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [2:0]   auto_out_1_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [8:0]   auto_out_1_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [3:0]   auto_out_1_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [31:0]  auto_out_1_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_out_1_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_1_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [2:0]   auto_out_1_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [1:0]   auto_out_1_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [1:0]   auto_out_1_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_1_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_1_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_1_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [31:0]  auto_out_1_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_1_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_0_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_out_0_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [2:0]   auto_out_0_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [127:0] auto_out_0_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output [3:0]   auto_out_0_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  output         auto_out_0_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_0_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [2:0]   auto_out_0_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [1:0]   auto_out_0_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [1:0]   auto_out_0_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_0_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_0_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_0_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input  [31:0]  auto_out_0_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          auto_out_0_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@130660.4]
  input          io_bypass // @[:chipyard.TestHarness.RocketConfig.fir@130661.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire [8:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
  reg  in_reset; // @[BusBypass.scala 80:27:chipyard.TestHarness.RocketConfig.fir@130699.4]
  reg [31:0] _RAND_0;
  reg  bypass_reg; // @[BusBypass.scala 81:25:chipyard.TestHarness.RocketConfig.fir@130701.4]
  reg [31:0] _RAND_1;
  wire  bypass; // @[BusBypass.scala 82:21:chipyard.TestHarness.RocketConfig.fir@130702.4]
  reg [1:0] flight; // @[Edges.scala 277:25:chipyard.TestHarness.RocketConfig.fir@130703.4]
  reg [31:0] _RAND_2;
  wire  _T_163; // @[BusBypass.scala 87:25:chipyard.TestHarness.RocketConfig.fir@130903.4]
  reg  _T_173; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@130913.4]
  reg [31:0] _RAND_3;
  wire  _T_176; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130916.4]
  wire  stall; // @[BusBypass.scala 87:40:chipyard.TestHarness.RocketConfig.fir@130927.4]
  wire  _T_191; // @[BusBypass.scala 91:21:chipyard.TestHarness.RocketConfig.fir@130937.4]
  wire  _T_192; // @[BusBypass.scala 91:34:chipyard.TestHarness.RocketConfig.fir@130938.4]
  wire  in_a_ready; // @[BusBypass.scala 91:28:chipyard.TestHarness.RocketConfig.fir@130939.4]
  wire  _T; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@130704.4]
  reg  _T_9; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@130713.4]
  reg [31:0] _RAND_4;
  wire  _T_11; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130715.4]
  wire  _T_12; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130716.4]
  wire  in_d_valid; // @[BusBypass.scala 97:24:chipyard.TestHarness.RocketConfig.fir@130948.4]
  wire  _T_61; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@130776.4]
  wire [2:0] in_d_bits_opcode; // @[BusBypass.scala 99:21:chipyard.TestHarness.RocketConfig.fir@130956.4]
  reg  _T_69; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@130784.4]
  reg [31:0] _RAND_5;
  wire  _T_71; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130786.4]
  wire  _T_72; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130787.4]
  wire  _T_107; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@130833.4]
  wire  _T_108; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@130834.4]
  wire  _T_112; // @[Edges.scala 292:28:chipyard.TestHarness.RocketConfig.fir@130840.4]
  wire  _T_123; // @[Edges.scala 295:28:chipyard.TestHarness.RocketConfig.fir@130853.4]
  wire  _T_124; // @[Edges.scala 295:39:chipyard.TestHarness.RocketConfig.fir@130854.4]
  wire [1:0] _T_129; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@130860.4]
  wire [1:0] _T_148; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@130882.4]
  wire [1:0] _T_151; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@130885.4]
  wire [1:0] _T_154; // @[Edges.scala 306:30:chipyard.TestHarness.RocketConfig.fir@130888.4]
  wire [1:0] _T_157; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@130891.4]
  wire [1:0] next_flight; // @[Edges.scala 306:46:chipyard.TestHarness.RocketConfig.fir@130894.4]
  wire  _T_161; // @[BusBypass.scala 86:36:chipyard.TestHarness.RocketConfig.fir@130898.4]
  wire  _T_162; // @[BusBypass.scala 86:20:chipyard.TestHarness.RocketConfig.fir@130899.4]
  wire  _T_175; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130915.4]
  wire  _T_185; // @[BusBypass.scala 89:28:chipyard.TestHarness.RocketConfig.fir@130929.4]
  wire  _T_189; // @[BusBypass.scala 90:45:chipyard.TestHarness.RocketConfig.fir@130934.4]
  TLMonitor_52 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@130669.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
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
  assign bypass = in_reset ? io_bypass : bypass_reg; // @[BusBypass.scala 82:21:chipyard.TestHarness.RocketConfig.fir@130702.4]
  assign _T_163 = bypass != io_bypass; // @[BusBypass.scala 87:25:chipyard.TestHarness.RocketConfig.fir@130903.4]
  assign _T_176 = ~_T_173; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130916.4]
  assign stall = _T_163 & _T_176; // @[BusBypass.scala 87:40:chipyard.TestHarness.RocketConfig.fir@130927.4]
  assign _T_191 = ~stall; // @[BusBypass.scala 91:21:chipyard.TestHarness.RocketConfig.fir@130937.4]
  assign _T_192 = bypass ? auto_out_0_a_ready : auto_out_1_a_ready; // @[BusBypass.scala 91:34:chipyard.TestHarness.RocketConfig.fir@130938.4]
  assign in_a_ready = _T_191 & _T_192; // @[BusBypass.scala 91:28:chipyard.TestHarness.RocketConfig.fir@130939.4]
  assign _T = in_a_ready & auto_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@130704.4]
  assign _T_11 = _T_9 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130715.4]
  assign _T_12 = ~_T_9; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130716.4]
  assign in_d_valid = bypass ? auto_out_0_d_valid : auto_out_1_d_valid; // @[BusBypass.scala 97:24:chipyard.TestHarness.RocketConfig.fir@130948.4]
  assign _T_61 = auto_in_d_ready & in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@130776.4]
  assign in_d_bits_opcode = bypass ? auto_out_0_d_bits_opcode : auto_out_1_d_bits_opcode; // @[BusBypass.scala 99:21:chipyard.TestHarness.RocketConfig.fir@130956.4]
  assign _T_71 = _T_69 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130786.4]
  assign _T_72 = ~_T_69; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130787.4]
  assign _T_107 = ~in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@130833.4]
  assign _T_108 = in_d_bits_opcode[2] & _T_107; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@130834.4]
  assign _T_112 = _T & _T_12; // @[Edges.scala 292:28:chipyard.TestHarness.RocketConfig.fir@130840.4]
  assign _T_123 = _T_61 & _T_72; // @[Edges.scala 295:28:chipyard.TestHarness.RocketConfig.fir@130853.4]
  assign _T_124 = _T_123 & _T_108; // @[Edges.scala 295:39:chipyard.TestHarness.RocketConfig.fir@130854.4]
  assign _T_129 = {_T_112,_T_124}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@130860.4]
  assign _T_148 = {1'h0,_T_61}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@130882.4]
  assign _T_151 = _T_129[0] + _T_129[1]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@130885.4]
  assign _T_154 = flight + _T_151; // @[Edges.scala 306:30:chipyard.TestHarness.RocketConfig.fir@130888.4]
  assign _T_157 = _T_148[0] + _T_148[1]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@130891.4]
  assign next_flight = _T_154 - _T_157; // @[Edges.scala 306:46:chipyard.TestHarness.RocketConfig.fir@130894.4]
  assign _T_161 = next_flight == 2'h0; // @[BusBypass.scala 86:36:chipyard.TestHarness.RocketConfig.fir@130898.4]
  assign _T_162 = in_reset | _T_161; // @[BusBypass.scala 86:20:chipyard.TestHarness.RocketConfig.fir@130899.4]
  assign _T_175 = _T_173 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130915.4]
  assign _T_185 = _T_191 & auto_in_a_valid; // @[BusBypass.scala 89:28:chipyard.TestHarness.RocketConfig.fir@130929.4]
  assign _T_189 = ~bypass; // @[BusBypass.scala 90:45:chipyard.TestHarness.RocketConfig.fir@130934.4]
  assign auto_in_a_ready = _T_191 & _T_192; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_valid = bypass ? auto_out_0_d_valid : auto_out_1_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_bits_opcode = bypass ? auto_out_0_d_bits_opcode : auto_out_1_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_bits_param = bypass ? auto_out_0_d_bits_param : auto_out_1_d_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_bits_size = bypass ? auto_out_0_d_bits_size : auto_out_1_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_bits_source = bypass ? auto_out_0_d_bits_source : auto_out_1_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_bits_sink = bypass ? auto_out_0_d_bits_sink : auto_out_1_d_bits_sink; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_bits_denied = bypass ? auto_out_0_d_bits_denied : auto_out_1_d_bits_denied; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_bits_data = bypass ? auto_out_0_d_bits_data : auto_out_1_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_in_d_bits_corrupt = bypass ? auto_out_0_d_bits_corrupt : auto_out_1_d_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@130698.4]
  assign auto_out_1_a_valid = _T_185 & _T_189; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130697.4]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130697.4]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130697.4]
  assign auto_out_1_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130697.4]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130697.4]
  assign auto_out_1_d_ready = auto_in_d_ready & _T_189; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130697.4]
  assign auto_out_0_a_valid = _T_185 & bypass; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130696.4]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130696.4]
  assign auto_out_0_a_bits_address = {{119'd0}, auto_in_a_bits_address}; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130696.4]
  assign auto_out_0_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130696.4]
  assign auto_out_0_d_ready = auto_in_d_ready & bypass; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@130696.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@130670.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@130671.4]
  assign TLMonitor_io_in_a_ready = _T_191 & _T_192; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130691.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130690.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130689.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130685.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130684.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130681.4]
  assign TLMonitor_io_in_d_valid = bypass ? auto_out_0_d_valid : auto_out_1_d_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130680.4]
  assign TLMonitor_io_in_d_bits_opcode = bypass ? auto_out_0_d_bits_opcode : auto_out_1_d_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130679.4]
  assign TLMonitor_io_in_d_bits_param = bypass ? auto_out_0_d_bits_param : auto_out_1_d_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130678.4]
  assign TLMonitor_io_in_d_bits_size = bypass ? auto_out_0_d_bits_size : auto_out_1_d_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130677.4]
  assign TLMonitor_io_in_d_bits_source = bypass ? auto_out_0_d_bits_source : auto_out_1_d_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130676.4]
  assign TLMonitor_io_in_d_bits_sink = bypass ? auto_out_0_d_bits_sink : auto_out_1_d_bits_sink; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130675.4]
  assign TLMonitor_io_in_d_bits_denied = bypass ? auto_out_0_d_bits_denied : auto_out_1_d_bits_denied; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130674.4]
  assign TLMonitor_io_in_d_bits_corrupt = bypass ? auto_out_0_d_bits_corrupt : auto_out_1_d_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@130672.4]
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
  in_reset = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  bypass_reg = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  flight = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_173 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_9 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_69 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    in_reset <= reset;
    if (_T_162) begin
      bypass_reg <= io_bypass;
    end
    if (reset) begin
      flight <= 2'h0;
    end else begin
      flight <= next_flight;
    end
    if (reset) begin
      _T_173 <= 1'h0;
    end else if (_T) begin
      if (_T_176) begin
        _T_173 <= 1'h0;
      end else begin
        _T_173 <= _T_175;
      end
    end
    if (reset) begin
      _T_9 <= 1'h0;
    end else if (_T) begin
      if (_T_12) begin
        _T_9 <= 1'h0;
      end else begin
        _T_9 <= _T_11;
      end
    end
    if (reset) begin
      _T_69 <= 1'h0;
    end else if (_T_61) begin
      if (_T_72) begin
        _T_69 <= 1'h0;
      end else begin
        _T_69 <= _T_71;
      end
    end
  end
endmodule
