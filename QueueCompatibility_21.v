module QueueCompatibility_21( // @[:chipyard.TestHarness.RocketConfig.fir@84549.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@84550.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@84551.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84552.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84552.4]
  input  [63:0] io_enq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@84552.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84552.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84552.4]
  output [63:0] io_deq_bits_data // @[:chipyard.TestHarness.RocketConfig.fir@84552.4]
);
  reg [63:0] ram_data [0:2]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  reg [63:0] _RAND_0;
  wire [63:0] ram_data__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  wire [1:0] ram_data__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  reg [63:0] _RAND_1;
  wire [63:0] ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  wire [1:0] ram_data__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  wire  ram_data__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  wire  ram_data__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  reg [1:0] enq_ptr_value; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@84558.4]
  reg [31:0] _RAND_2;
  reg [1:0] deq_ptr_value; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@84559.4]
  reg [31:0] _RAND_3;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@84560.4]
  reg [31:0] _RAND_4;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@84561.4]
  wire  _T; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@84562.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@84563.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@84564.4]
  wire  _T_1; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84565.4]
  wire  _T_2; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84569.4]
  wire  wrap; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@84576.6]
  wire [1:0] _T_5; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@84578.6]
  wire  _GEN_11; // @[Decoupled.scala 240:27:chipyard.TestHarness.RocketConfig.fir@84609.6]
  wire  do_enq; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@84606.4]
  wire  wrap_1; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@84585.6]
  wire [1:0] _T_7; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@84587.6]
  wire  do_deq; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@84606.4]
  wire  _T_8; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@84593.4]
  wire  _T_9; // @[Decoupled.scala 231:19:chipyard.TestHarness.RocketConfig.fir@84597.4]
  assign ram_data__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_data__T_11_data = ram_data[ram_data__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  `else
  assign ram_data__T_11_data = ram_data__T_11_addr >= 2'h3 ? _RAND_1[63:0] : ram_data[ram_data__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_data__T_3_data = io_enq_bits_data;
  assign ram_data__T_3_addr = enq_ptr_value;
  assign ram_data__T_3_mask = 1'h1;
  assign ram_data__T_3_en = empty ? _GEN_11 : _T_1;
  assign ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@84561.4]
  assign _T = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@84562.4]
  assign empty = ptr_match & _T; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@84563.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@84564.4]
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84565.4]
  assign _T_2 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84569.4]
  assign wrap = enq_ptr_value == 2'h2; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@84576.6]
  assign _T_5 = enq_ptr_value + 2'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@84578.6]
  assign _GEN_11 = io_deq_ready ? 1'h0 : _T_1; // @[Decoupled.scala 240:27:chipyard.TestHarness.RocketConfig.fir@84609.6]
  assign do_enq = empty ? _GEN_11 : _T_1; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@84606.4]
  assign wrap_1 = deq_ptr_value == 2'h2; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@84585.6]
  assign _T_7 = deq_ptr_value + 2'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@84587.6]
  assign do_deq = empty ? 1'h0 : _T_2; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@84606.4]
  assign _T_8 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@84593.4]
  assign _T_9 = ~empty; // @[Decoupled.scala 231:19:chipyard.TestHarness.RocketConfig.fir@84597.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@84600.4]
  assign io_deq_valid = io_enq_valid | _T_9; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@84598.4 Decoupled.scala 236:40:chipyard.TestHarness.RocketConfig.fir@84604.6]
  assign io_deq_bits_data = empty ? io_enq_bits_data : ram_data__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@84602.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@84607.6]
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
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_data[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {2{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  enq_ptr_value = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  deq_ptr_value = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  maybe_full = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_data__T_3_en & ram_data__T_3_mask) begin
      ram_data[ram_data__T_3_addr] <= ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84557.4]
    end
    if (reset) begin
      enq_ptr_value <= 2'h0;
    end else if (do_enq) begin
      if (wrap) begin
        enq_ptr_value <= 2'h0;
      end else begin
        enq_ptr_value <= _T_5;
      end
    end
    if (reset) begin
      deq_ptr_value <= 2'h0;
    end else if (do_deq) begin
      if (wrap_1) begin
        deq_ptr_value <= 2'h0;
      end else begin
        deq_ptr_value <= _T_7;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_8) begin
      if (empty) begin
        if (io_deq_ready) begin
          maybe_full <= 1'h0;
        end else begin
          maybe_full <= _T_1;
        end
      end else begin
        maybe_full <= _T_1;
      end
    end
  end
endmodule
