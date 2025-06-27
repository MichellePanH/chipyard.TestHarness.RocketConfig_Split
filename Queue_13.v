module Queue_13( // @[:chipyard.TestHarness.RocketConfig.fir@77469.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@77470.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@77471.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  input  [63:0] io_enq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  input  [7:0]  io_enq_bits_strb, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  input         io_enq_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  output [63:0] io_deq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  output [7:0]  io_deq_bits_strb, // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
  output        io_deq_bits_last // @[:chipyard.TestHarness.RocketConfig.fir@77472.4]
);
  reg [63:0] ram_data [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  reg [63:0] _RAND_0;
  wire [63:0] ram_data__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_data__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire [63:0] ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_data__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_data__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_data__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  reg [7:0] ram_strb [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  reg [31:0] _RAND_1;
  wire [7:0] ram_strb__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_strb__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire [7:0] ram_strb__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_strb__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_strb__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_strb__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  reg  ram_last [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  reg [31:0] _RAND_2;
  wire  ram_last__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_last__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_last__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_last__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_last__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  wire  ram_last__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@77475.4]
  reg [31:0] _RAND_3;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@77477.4]
  wire  _T_1; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77480.4]
  wire  _T_2; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77483.4]
  wire  _GEN_9; // @[Decoupled.scala 240:27:chipyard.TestHarness.RocketConfig.fir@77514.6]
  wire  do_enq; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@77509.4]
  wire  do_deq; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@77509.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@77494.4]
  wire  _T_5; // @[Decoupled.scala 231:19:chipyard.TestHarness.RocketConfig.fir@77498.4]
  assign ram_data__T_7_addr = 1'h0;
  assign ram_data__T_7_data = ram_data[ram_data__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  assign ram_data__T_3_data = io_enq_bits_data;
  assign ram_data__T_3_addr = 1'h0;
  assign ram_data__T_3_mask = 1'h1;
  assign ram_data__T_3_en = empty ? _GEN_9 : _T_1;
  assign ram_strb__T_7_addr = 1'h0;
  assign ram_strb__T_7_data = ram_strb[ram_strb__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  assign ram_strb__T_3_data = io_enq_bits_strb;
  assign ram_strb__T_3_addr = 1'h0;
  assign ram_strb__T_3_mask = 1'h1;
  assign ram_strb__T_3_en = empty ? _GEN_9 : _T_1;
  assign ram_last__T_7_addr = 1'h0;
  assign ram_last__T_7_data = ram_last[ram_last__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
  assign ram_last__T_3_data = io_enq_bits_last;
  assign ram_last__T_3_addr = 1'h0;
  assign ram_last__T_3_mask = 1'h1;
  assign ram_last__T_3_en = empty ? _GEN_9 : _T_1;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@77477.4]
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77480.4]
  assign _T_2 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@77483.4]
  assign _GEN_9 = io_deq_ready ? 1'h0 : _T_1; // @[Decoupled.scala 240:27:chipyard.TestHarness.RocketConfig.fir@77514.6]
  assign do_enq = empty ? _GEN_9 : _T_1; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@77509.4]
  assign do_deq = empty ? 1'h0 : _T_2; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@77509.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@77494.4]
  assign _T_5 = ~empty; // @[Decoupled.scala 231:19:chipyard.TestHarness.RocketConfig.fir@77498.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@77501.4]
  assign io_deq_valid = io_enq_valid | _T_5; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@77499.4 Decoupled.scala 236:40:chipyard.TestHarness.RocketConfig.fir@77507.6]
  assign io_deq_bits_data = empty ? io_enq_bits_data : ram_data__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@77505.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@77512.6]
  assign io_deq_bits_strb = empty ? io_enq_bits_strb : ram_strb__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@77504.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@77511.6]
  assign io_deq_bits_last = empty ? io_enq_bits_last : ram_last__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@77503.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@77510.6]
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
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_strb[initvar] = _RAND_1[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_last[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_data__T_3_en & ram_data__T_3_mask) begin
      ram_data[ram_data__T_3_addr] <= ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
    end
    if(ram_strb__T_3_en & ram_strb__T_3_mask) begin
      ram_strb[ram_strb__T_3_addr] <= ram_strb__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
    end
    if(ram_last__T_3_en & ram_last__T_3_mask) begin
      ram_last[ram_last__T_3_addr] <= ram_last__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@77474.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
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
