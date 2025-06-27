module TLError_1( // @[:chipyard.TestHarness.RocketConfig.fir@132286.2]
  input          clock, // @[:chipyard.TestHarness.RocketConfig.fir@132287.4]
  input          reset, // @[:chipyard.TestHarness.RocketConfig.fir@132288.4]
  output         auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  input          auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  input  [2:0]   auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  input  [127:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  input  [3:0]   auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  input          auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output         auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output [2:0]   auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output [1:0]   auto_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output [1:0]   auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output         auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output         auto_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output         auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output [31:0]  auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
  output         auto_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@132289.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire [127:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
  reg  idle; // @[Error.scala 46:23:chipyard.TestHarness.RocketConfig.fir@132322.4]
  reg [31:0] _RAND_0;
  reg  _T_113; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@132497.4]
  reg [31:0] _RAND_1;
  wire  _T_114; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@132498.4]
  wire  da_valid; // @[Error.scala 53:35:chipyard.TestHarness.RocketConfig.fir@132382.4]
  wire [1:0] _T_116; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@132500.4]
  wire [2:0] _T_117; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@132501.4]
  wire [1:0] _T_119; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@132503.4]
  wire [2:0] _T_121; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@132505.4]
  wire [1:0] _T_123; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@132507.4]
  reg  _T_157_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@132559.4]
  reg [31:0] _RAND_2;
  wire  _T_159_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@132562.4]
  wire  da_ready; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@132565.4]
  reg  _T_27; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@132354.4]
  reg [31:0] _RAND_3;
  wire [2:0] _GEN_4; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  wire [2:0] _GEN_5; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  wire [2:0] _GEN_6; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  wire [2:0] _GEN_7; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  wire [2:0] _GEN_8; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  wire [2:0] da_bits_opcode; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  wire  _T_19; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@132346.4]
  wire  _T_29; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@132356.4]
  wire  da_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@132357.4]
  wire  _T_36; // @[Error.scala 51:18:chipyard.TestHarness.RocketConfig.fir@132368.4]
  wire  _T_38; // @[Error.scala 51:12:chipyard.TestHarness.RocketConfig.fir@132370.4]
  wire  _T_39; // @[Error.scala 51:12:chipyard.TestHarness.RocketConfig.fir@132371.4]
  wire  _T_89; // @[Error.scala 72:41:chipyard.TestHarness.RocketConfig.fir@132452.4]
  wire  _T_90; // @[Error.scala 72:23:chipyard.TestHarness.RocketConfig.fir@132453.4]
  wire  _GEN_12; // @[Error.scala 72:52:chipyard.TestHarness.RocketConfig.fir@132454.4]
  wire  _T_115; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@132499.4]
  wire  _T_128; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@132515.4]
  wire  _T_143; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@132537.4]
  wire  _T_145; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@132539.4]
  wire  _T_147; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@132541.4]
  wire  _T_148; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@132542.4]
  wire  _T_164; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@132569.4]
  wire  in_d_valid; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@132573.4]
  wire  _T_152; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@132550.4]
  wire  _T_154; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@132552.4]
  wire  _T_158_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@132560.4]
  wire [42:0] _T_182; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@132589.4]
  wire [42:0] _T_183; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@132590.4]
  TLMonitor_53 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@132296.4]
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
  assign _T_114 = ~_T_113; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@132498.4]
  assign da_valid = auto_in_a_valid & idle; // @[Error.scala 53:35:chipyard.TestHarness.RocketConfig.fir@132382.4]
  assign _T_116 = {da_valid,1'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@132500.4]
  assign _T_117 = {_T_116, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@132501.4]
  assign _T_119 = _T_116 | _T_117[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@132503.4]
  assign _T_121 = {_T_119, 1'h0}; // @[Arbiter.scala 16:78:chipyard.TestHarness.RocketConfig.fir@132505.4]
  assign _T_123 = ~_T_121[1:0]; // @[Arbiter.scala 16:61:chipyard.TestHarness.RocketConfig.fir@132507.4]
  assign _T_159_1 = _T_114 ? _T_123[1] : _T_157_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@132562.4]
  assign da_ready = auto_in_d_ready & _T_159_1; // @[Arbiter.scala 85:31:chipyard.TestHarness.RocketConfig.fir@132565.4]
  assign _GEN_4 = 3'h2 == auto_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  assign _GEN_5 = 3'h3 == auto_in_a_bits_opcode ? 3'h1 : _GEN_4; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  assign _GEN_6 = 3'h4 == auto_in_a_bits_opcode ? 3'h1 : _GEN_5; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  assign _GEN_7 = 3'h5 == auto_in_a_bits_opcode ? 3'h2 : _GEN_6; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  assign _GEN_8 = 3'h6 == auto_in_a_bits_opcode ? 3'h4 : _GEN_7; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  assign da_bits_opcode = 3'h7 == auto_in_a_bits_opcode ? 3'h4 : _GEN_8; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@132394.4]
  assign _T_19 = da_ready & da_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@132346.4]
  assign _T_29 = _T_27 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@132356.4]
  assign da_first = ~_T_27; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@132357.4]
  assign _T_36 = idle | da_first; // @[Error.scala 51:18:chipyard.TestHarness.RocketConfig.fir@132368.4]
  assign _T_38 = _T_36 | reset; // @[Error.scala 51:12:chipyard.TestHarness.RocketConfig.fir@132370.4]
  assign _T_39 = ~_T_38; // @[Error.scala 51:12:chipyard.TestHarness.RocketConfig.fir@132371.4]
  assign _T_89 = da_bits_opcode == 3'h4; // @[Error.scala 72:41:chipyard.TestHarness.RocketConfig.fir@132452.4]
  assign _T_90 = _T_19 & _T_89; // @[Error.scala 72:23:chipyard.TestHarness.RocketConfig.fir@132453.4]
  assign _GEN_12 = _T_90 ? 1'h0 : idle; // @[Error.scala 72:52:chipyard.TestHarness.RocketConfig.fir@132454.4]
  assign _T_115 = _T_114 & auto_in_d_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@132499.4]
  assign _T_128 = _T_123[1] & da_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@132515.4]
  assign _T_143 = ~da_valid; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@132537.4]
  assign _T_145 = _T_143 | _T_128; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@132539.4]
  assign _T_147 = _T_145 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@132541.4]
  assign _T_148 = ~_T_147; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@132542.4]
  assign _T_164 = _T_157_1 & da_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@132569.4]
  assign in_d_valid = _T_114 ? da_valid : _T_164; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@132573.4]
  assign _T_152 = auto_in_d_ready & in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@132550.4]
  assign _T_154 = _T_113 - _T_152; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@132552.4]
  assign _T_158_1 = _T_114 ? _T_128 : _T_157_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@132560.4]
  assign _T_182 = {da_bits_opcode,2'h0,3'h4,2'h1,32'h0,da_bits_opcode[0]}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@132589.4]
  assign _T_183 = _T_158_1 ? _T_182 : 43'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@132590.4]
  assign auto_in_a_ready = da_ready & idle; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_valid = _T_114 ? da_valid : _T_164; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_bits_opcode = _T_183[42:40]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_bits_param = _T_183[39:38]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_bits_size = _T_183[37:36]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_bits_source = _T_183[35]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_bits_sink = _T_183[34]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_bits_denied = _T_183[33]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_bits_data = _T_183[32:1]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign auto_in_d_bits_corrupt = _T_183[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@132319.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@132297.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@132298.4]
  assign TLMonitor_io_in_a_ready = da_ready & idle; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132318.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132317.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132316.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132312.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132311.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132308.4]
  assign TLMonitor_io_in_d_valid = _T_114 ? da_valid : _T_164; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132307.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_183[42:40]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132306.4]
  assign TLMonitor_io_in_d_bits_param = _T_183[39:38]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132305.4]
  assign TLMonitor_io_in_d_bits_size = _T_183[37:36]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132304.4]
  assign TLMonitor_io_in_d_bits_source = _T_183[35]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132303.4]
  assign TLMonitor_io_in_d_bits_sink = _T_183[34]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132302.4]
  assign TLMonitor_io_in_d_bits_denied = _T_183[33]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132301.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_183[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@132299.4]
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
  idle = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_113 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_157_1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_27 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    idle <= reset | _GEN_12;
    if (reset) begin
      _T_113 <= 1'h0;
    end else if (_T_115) begin
      _T_113 <= 1'h0;
    end else begin
      _T_113 <= _T_154;
    end
    if (reset) begin
      _T_157_1 <= 1'h0;
    end else if (_T_114) begin
      _T_157_1 <= _T_128;
    end
    if (reset) begin
      _T_27 <= 1'h0;
    end else if (_T_19) begin
      if (da_first) begin
        _T_27 <= 1'h0;
      end else begin
        _T_27 <= _T_29;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_39) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Error.scala:51 assert (idle || da_first) // we only send Grant, never GrantData => simplified flow control below\n"); // @[Error.scala 51:12:chipyard.TestHarness.RocketConfig.fir@132373.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_39) begin
          $fatal; // @[Error.scala 51:12:chipyard.TestHarness.RocketConfig.fir@132374.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_148) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@132544.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_148) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@132545.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
