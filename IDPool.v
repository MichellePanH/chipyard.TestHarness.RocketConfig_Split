module IDPool( // @[:chipyard.TestHarness.RocketConfig.fir@112787.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@112788.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@112789.4]
  input        io_free_valid, // @[:chipyard.TestHarness.RocketConfig.fir@112790.4]
  input  [2:0] io_free_bits, // @[:chipyard.TestHarness.RocketConfig.fir@112790.4]
  input        io_alloc_ready, // @[:chipyard.TestHarness.RocketConfig.fir@112790.4]
  output       io_alloc_valid, // @[:chipyard.TestHarness.RocketConfig.fir@112790.4]
  output [2:0] io_alloc_bits // @[:chipyard.TestHarness.RocketConfig.fir@112790.4]
);
  reg [7:0] bitmap; // @[IDPool.scala 18:23:chipyard.TestHarness.RocketConfig.fir@112793.4]
  reg [31:0] _RAND_0;
  reg [2:0] select; // @[IDPool.scala 19:23:chipyard.TestHarness.RocketConfig.fir@112794.4]
  reg [31:0] _RAND_1;
  reg  valid; // @[IDPool.scala 20:23:chipyard.TestHarness.RocketConfig.fir@112795.4]
  reg [31:0] _RAND_2;
  wire [7:0] _GEN_3; // @[IDPool.scala 25:32:chipyard.TestHarness.RocketConfig.fir@112798.4]
  wire [7:0] taken; // @[IDPool.scala 25:32:chipyard.TestHarness.RocketConfig.fir@112798.4]
  wire [7:0] _GEN_4; // @[IDPool.scala 26:32:chipyard.TestHarness.RocketConfig.fir@112800.4]
  wire [7:0] given; // @[IDPool.scala 26:32:chipyard.TestHarness.RocketConfig.fir@112800.4]
  wire [7:0] _T_3; // @[IDPool.scala 27:27:chipyard.TestHarness.RocketConfig.fir@112802.4]
  wire [7:0] _T_4; // @[IDPool.scala 27:25:chipyard.TestHarness.RocketConfig.fir@112803.4]
  wire [7:0] bitmap1; // @[IDPool.scala 27:35:chipyard.TestHarness.RocketConfig.fir@112804.4]
  wire [8:0] _T_5; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@112805.4]
  wire [7:0] _T_7; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@112807.4]
  wire [9:0] _T_8; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@112808.4]
  wire [7:0] _T_10; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@112810.4]
  wire [11:0] _T_11; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@112811.4]
  wire [7:0] _T_13; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@112813.4]
  wire [8:0] _T_15; // @[IDPool.scala 28:52:chipyard.TestHarness.RocketConfig.fir@112815.4]
  wire [8:0] _T_16; // @[IDPool.scala 28:26:chipyard.TestHarness.RocketConfig.fir@112816.4]
  wire [8:0] _GEN_5; // @[IDPool.scala 28:58:chipyard.TestHarness.RocketConfig.fir@112817.4]
  wire [8:0] _T_17; // @[IDPool.scala 28:58:chipyard.TestHarness.RocketConfig.fir@112817.4]
  wire  _T_20; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@112820.4]
  wire [3:0] _T_21; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@112821.4]
  wire  _T_24; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@112824.4]
  wire [1:0] _T_25; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@112825.4]
  wire [2:0] select1; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@112828.4]
  wire  valid1; // @[IDPool.scala 29:25:chipyard.TestHarness.RocketConfig.fir@112829.4]
  wire  _T_28; // @[IDPool.scala 32:24:chipyard.TestHarness.RocketConfig.fir@112830.4]
  wire  _GEN_1; // @[IDPool.scala 32:42:chipyard.TestHarness.RocketConfig.fir@112831.4]
  wire  _T_29; // @[IDPool.scala 38:28:chipyard.TestHarness.RocketConfig.fir@112835.4]
  wire  _T_30; // @[IDPool.scala 38:44:chipyard.TestHarness.RocketConfig.fir@112836.4]
  wire  _T_31; // @[IDPool.scala 38:24:chipyard.TestHarness.RocketConfig.fir@112837.4]
  wire  _T_32; // @[IDPool.scala 43:11:chipyard.TestHarness.RocketConfig.fir@112841.4]
  wire [7:0] _T_35; // @[IDPool.scala 43:47:chipyard.TestHarness.RocketConfig.fir@112844.4]
  wire  _T_37; // @[IDPool.scala 43:29:chipyard.TestHarness.RocketConfig.fir@112846.4]
  wire  _T_38; // @[IDPool.scala 43:26:chipyard.TestHarness.RocketConfig.fir@112847.4]
  wire  _T_40; // @[IDPool.scala 43:10:chipyard.TestHarness.RocketConfig.fir@112849.4]
  wire  _T_41; // @[IDPool.scala 43:10:chipyard.TestHarness.RocketConfig.fir@112850.4]
  assign _GEN_3 = {{7'd0}, io_alloc_ready}; // @[IDPool.scala 25:32:chipyard.TestHarness.RocketConfig.fir@112798.4]
  assign taken = _GEN_3 << io_alloc_bits; // @[IDPool.scala 25:32:chipyard.TestHarness.RocketConfig.fir@112798.4]
  assign _GEN_4 = {{7'd0}, io_free_valid}; // @[IDPool.scala 26:32:chipyard.TestHarness.RocketConfig.fir@112800.4]
  assign given = _GEN_4 << io_free_bits; // @[IDPool.scala 26:32:chipyard.TestHarness.RocketConfig.fir@112800.4]
  assign _T_3 = ~taken; // @[IDPool.scala 27:27:chipyard.TestHarness.RocketConfig.fir@112802.4]
  assign _T_4 = bitmap & _T_3; // @[IDPool.scala 27:25:chipyard.TestHarness.RocketConfig.fir@112803.4]
  assign bitmap1 = _T_4 | given; // @[IDPool.scala 27:35:chipyard.TestHarness.RocketConfig.fir@112804.4]
  assign _T_5 = {bitmap1, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@112805.4]
  assign _T_7 = bitmap1 | _T_5[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@112807.4]
  assign _T_8 = {_T_7, 2'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@112808.4]
  assign _T_10 = _T_7 | _T_8[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@112810.4]
  assign _T_11 = {_T_10, 4'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@112811.4]
  assign _T_13 = _T_10 | _T_11[7:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@112813.4]
  assign _T_15 = {_T_13, 1'h0}; // @[IDPool.scala 28:52:chipyard.TestHarness.RocketConfig.fir@112815.4]
  assign _T_16 = ~_T_15; // @[IDPool.scala 28:26:chipyard.TestHarness.RocketConfig.fir@112816.4]
  assign _GEN_5 = {{1'd0}, bitmap1}; // @[IDPool.scala 28:58:chipyard.TestHarness.RocketConfig.fir@112817.4]
  assign _T_17 = _T_16 & _GEN_5; // @[IDPool.scala 28:58:chipyard.TestHarness.RocketConfig.fir@112817.4]
  assign _T_20 = |_T_17[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@112820.4]
  assign _T_21 = _T_17[7:4] | _T_17[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@112821.4]
  assign _T_24 = |_T_21[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@112824.4]
  assign _T_25 = _T_21[3:2] | _T_21[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@112825.4]
  assign select1 = {_T_20,_T_24,_T_25[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@112828.4]
  assign valid1 = |bitmap1; // @[IDPool.scala 29:25:chipyard.TestHarness.RocketConfig.fir@112829.4]
  assign _T_28 = io_alloc_ready | io_free_valid; // @[IDPool.scala 32:24:chipyard.TestHarness.RocketConfig.fir@112830.4]
  assign _GEN_1 = _T_28 ? valid1 : valid; // @[IDPool.scala 32:42:chipyard.TestHarness.RocketConfig.fir@112831.4]
  assign _T_29 = ~io_alloc_valid; // @[IDPool.scala 38:28:chipyard.TestHarness.RocketConfig.fir@112835.4]
  assign _T_30 = _T_29 & io_free_valid; // @[IDPool.scala 38:44:chipyard.TestHarness.RocketConfig.fir@112836.4]
  assign _T_31 = io_alloc_ready | _T_30; // @[IDPool.scala 38:24:chipyard.TestHarness.RocketConfig.fir@112837.4]
  assign _T_32 = ~io_free_valid; // @[IDPool.scala 43:11:chipyard.TestHarness.RocketConfig.fir@112841.4]
  assign _T_35 = _T_4 >> io_free_bits; // @[IDPool.scala 43:47:chipyard.TestHarness.RocketConfig.fir@112844.4]
  assign _T_37 = ~_T_35[0]; // @[IDPool.scala 43:29:chipyard.TestHarness.RocketConfig.fir@112846.4]
  assign _T_38 = _T_32 | _T_37; // @[IDPool.scala 43:26:chipyard.TestHarness.RocketConfig.fir@112847.4]
  assign _T_40 = _T_38 | reset; // @[IDPool.scala 43:10:chipyard.TestHarness.RocketConfig.fir@112849.4]
  assign _T_41 = ~_T_40; // @[IDPool.scala 43:10:chipyard.TestHarness.RocketConfig.fir@112850.4]
  assign io_alloc_valid = valid; // @[IDPool.scala 22:18:chipyard.TestHarness.RocketConfig.fir@112796.4]
  assign io_alloc_bits = select; // @[IDPool.scala 23:18:chipyard.TestHarness.RocketConfig.fir@112797.4]
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
  bitmap = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  select = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      bitmap <= 8'hff;
    end else if (_T_28) begin
      bitmap <= bitmap1;
    end
    if (reset) begin
      select <= 3'h0;
    end else if (_T_31) begin
      select <= select1;
    end
    valid <= reset | _GEN_1;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_41) begin
          $fwrite(32'h80000002,"Assertion failed\n    at IDPool.scala:43 assert (!io.free.valid || !(bitmap & ~taken)(io.free.bits))\n"); // @[IDPool.scala 43:10:chipyard.TestHarness.RocketConfig.fir@112852.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_41) begin
          $fatal; // @[IDPool.scala 43:10:chipyard.TestHarness.RocketConfig.fir@112853.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
