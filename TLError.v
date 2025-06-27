module TLError( // @[:chipyard.TestHarness.RocketConfig.fir@54551.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@54552.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@54553.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input  [3:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input  [2:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input  [13:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  output [3:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  output [2:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
  output        auto_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@54554.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [2:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [13:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire [2:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
  wire  a_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire  a_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire  a_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire  a_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire [2:0] a_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire [3:0] a_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire [2:0] a_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire  a_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire  a_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire [2:0] a_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire [3:0] a_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire [2:0] a_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
  wire  _T; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54601.4]
  wire [26:0] _T_2; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@54603.4]
  wire [11:0] _T_4; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@54605.4]
  wire  _T_7; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@54608.4]
  wire [8:0] _T_8; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@54609.4]
  reg [8:0] _T_9; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@54610.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_11; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54612.4]
  wire  _T_12; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54613.4]
  wire  _T_13; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@54614.4]
  wire  _T_14; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@54615.4]
  wire  a_last; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@54616.4]
  wire  da_valid; // @[Error.scala 53:25:chipyard.TestHarness.RocketConfig.fir@54659.4]
  wire  _T_19; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54624.4]
  wire [3:0] da_bits_size; // @[Error.scala 45:18:chipyard.TestHarness.RocketConfig.fir@54598.4 Error.scala 57:21:chipyard.TestHarness.RocketConfig.fir@54674.4]
  wire [26:0] _T_21; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@54626.4]
  wire [11:0] _T_23; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@54628.4]
  wire [2:0] _GEN_4; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  wire [2:0] _GEN_5; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  wire [2:0] _GEN_6; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  wire [2:0] _GEN_7; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  wire [2:0] _GEN_8; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  wire [2:0] da_bits_opcode; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  wire [8:0] _T_26; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@54631.4]
  reg [8:0] _T_27; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@54632.4]
  reg [31:0] _RAND_1;
  wire [8:0] _T_29; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54634.4]
  wire  da_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54635.4]
  wire  _T_30; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@54636.4]
  wire  _T_31; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@54637.4]
  wire  da_last; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@54638.4]
  wire  _T_40; // @[Error.scala 52:26:chipyard.TestHarness.RocketConfig.fir@54654.4]
  wire  _T_42; // @[Error.scala 52:49:chipyard.TestHarness.RocketConfig.fir@54656.4]
  TLMonitor_24 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@54561.4]
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
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  Queue_8 a ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@54585.4]
    .clock(a_clock),
    .reset(a_reset),
    .io_enq_ready(a_io_enq_ready),
    .io_enq_valid(a_io_enq_valid),
    .io_enq_bits_opcode(a_io_enq_bits_opcode),
    .io_enq_bits_size(a_io_enq_bits_size),
    .io_enq_bits_source(a_io_enq_bits_source),
    .io_deq_ready(a_io_deq_ready),
    .io_deq_valid(a_io_deq_valid),
    .io_deq_bits_opcode(a_io_deq_bits_opcode),
    .io_deq_bits_size(a_io_deq_bits_size),
    .io_deq_bits_source(a_io_deq_bits_source)
  );
  assign _T = a_io_deq_ready & a_io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54601.4]
  assign _T_2 = 27'hfff << a_io_deq_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@54603.4]
  assign _T_4 = ~_T_2[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@54605.4]
  assign _T_7 = ~a_io_deq_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@54608.4]
  assign _T_8 = _T_7 ? _T_4[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@54609.4]
  assign _T_11 = _T_9 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54612.4]
  assign _T_12 = _T_9 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54613.4]
  assign _T_13 = _T_9 == 9'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@54614.4]
  assign _T_14 = _T_8 == 9'h0; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@54615.4]
  assign a_last = _T_13 | _T_14; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@54616.4]
  assign da_valid = a_io_deq_valid & a_last; // @[Error.scala 53:25:chipyard.TestHarness.RocketConfig.fir@54659.4]
  assign _T_19 = auto_in_d_ready & da_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54624.4]
  assign da_bits_size = a_io_deq_bits_size; // @[Error.scala 45:18:chipyard.TestHarness.RocketConfig.fir@54598.4 Error.scala 57:21:chipyard.TestHarness.RocketConfig.fir@54674.4]
  assign _T_21 = 27'hfff << da_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@54626.4]
  assign _T_23 = ~_T_21[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@54628.4]
  assign _GEN_4 = 3'h2 == a_io_deq_bits_opcode ? 3'h1 : 3'h0; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  assign _GEN_5 = 3'h3 == a_io_deq_bits_opcode ? 3'h1 : _GEN_4; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  assign _GEN_6 = 3'h4 == a_io_deq_bits_opcode ? 3'h1 : _GEN_5; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  assign _GEN_7 = 3'h5 == a_io_deq_bits_opcode ? 3'h2 : _GEN_6; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  assign _GEN_8 = 3'h6 == a_io_deq_bits_opcode ? 3'h4 : _GEN_7; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  assign da_bits_opcode = 3'h7 == a_io_deq_bits_opcode ? 3'h4 : _GEN_8; // @[Error.scala 55:21:chipyard.TestHarness.RocketConfig.fir@54672.4]
  assign _T_26 = da_bits_opcode[0] ? _T_23[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@54631.4]
  assign _T_29 = _T_27 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54634.4]
  assign da_first = _T_27 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54635.4]
  assign _T_30 = _T_27 == 9'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@54636.4]
  assign _T_31 = _T_26 == 9'h0; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@54637.4]
  assign da_last = _T_30 | _T_31; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@54638.4]
  assign _T_40 = auto_in_d_ready & da_last; // @[Error.scala 52:26:chipyard.TestHarness.RocketConfig.fir@54654.4]
  assign _T_42 = ~a_last; // @[Error.scala 52:49:chipyard.TestHarness.RocketConfig.fir@54656.4]
  assign auto_in_a_ready = a_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@54584.4]
  assign auto_in_d_valid = a_io_deq_valid & a_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@54584.4]
  assign auto_in_d_bits_opcode = 3'h7 == a_io_deq_bits_opcode ? 3'h4 : _GEN_8; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@54584.4]
  assign auto_in_d_bits_size = a_io_deq_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@54584.4]
  assign auto_in_d_bits_source = a_io_deq_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@54584.4]
  assign auto_in_d_bits_corrupt = da_bits_opcode[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@54584.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@54562.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@54563.4]
  assign TLMonitor_io_in_a_ready = a_io_enq_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54583.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54582.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54581.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54580.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54579.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54578.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54577.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54576.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54574.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54573.4]
  assign TLMonitor_io_in_d_valid = a_io_deq_valid & a_last; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54572.4]
  assign TLMonitor_io_in_d_bits_opcode = 3'h7 == a_io_deq_bits_opcode ? 3'h4 : _GEN_8; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54571.4]
  assign TLMonitor_io_in_d_bits_size = a_io_deq_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54569.4]
  assign TLMonitor_io_in_d_bits_source = a_io_deq_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54568.4]
  assign TLMonitor_io_in_d_bits_corrupt = da_bits_opcode[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@54564.4]
  assign a_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@54586.4]
  assign a_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@54587.4]
  assign a_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@54588.4]
  assign a_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@54596.4]
  assign a_io_enq_bits_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@54594.4]
  assign a_io_enq_bits_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@54593.4]
  assign a_io_deq_ready = _T_40 | _T_42; // @[Error.scala 52:13:chipyard.TestHarness.RocketConfig.fir@54658.4]
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
  _T_9 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_27 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_9 <= 9'h0;
    end else if (_T) begin
      if (_T_12) begin
        if (_T_7) begin
          _T_9 <= _T_4[11:3];
        end else begin
          _T_9 <= 9'h0;
        end
      end else begin
        _T_9 <= _T_11;
      end
    end
    if (reset) begin
      _T_27 <= 9'h0;
    end else if (_T_19) begin
      if (da_first) begin
        if (da_bits_opcode[0]) begin
          _T_27 <= _T_23[11:3];
        end else begin
          _T_27 <= 9'h0;
        end
      end else begin
        _T_27 <= _T_29;
      end
    end
  end
endmodule
