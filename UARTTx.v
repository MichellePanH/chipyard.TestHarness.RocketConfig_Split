module UARTTx( // @[:chipyard.TestHarness.RocketConfig.fir@258150.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@258151.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@258152.4]
  input         io_en, // @[:chipyard.TestHarness.RocketConfig.fir@258153.4]
  output        io_in_ready, // @[:chipyard.TestHarness.RocketConfig.fir@258153.4]
  input         io_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@258153.4]
  input  [7:0]  io_in_bits, // @[:chipyard.TestHarness.RocketConfig.fir@258153.4]
  output        io_out, // @[:chipyard.TestHarness.RocketConfig.fir@258153.4]
  input  [15:0] io_div, // @[:chipyard.TestHarness.RocketConfig.fir@258153.4]
  input         io_nstop // @[:chipyard.TestHarness.RocketConfig.fir@258153.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@258164.4]
  reg [15:0] prescaler; // @[UARTTx.scala 22:22:chipyard.TestHarness.RocketConfig.fir@258158.4]
  reg [31:0] _RAND_0;
  wire  pulse; // @[UARTTx.scala 23:26:chipyard.TestHarness.RocketConfig.fir@258159.4]
  reg [3:0] counter; // @[UARTTx.scala 26:20:chipyard.TestHarness.RocketConfig.fir@258160.4]
  reg [31:0] _RAND_1;
  reg [8:0] shifter; // @[UARTTx.scala 27:20:chipyard.TestHarness.RocketConfig.fir@258161.4]
  reg [31:0] _RAND_2;
  reg  out; // @[UARTTx.scala 28:16:chipyard.TestHarness.RocketConfig.fir@258162.4]
  reg [31:0] _RAND_3;
  wire  plusarg_tx; // @[UARTTx.scala 31:90:chipyard.TestHarness.RocketConfig.fir@258166.4]
  wire  busy; // @[UARTTx.scala 33:23:chipyard.TestHarness.RocketConfig.fir@258167.4]
  wire  _T; // @[UARTTx.scala 34:27:chipyard.TestHarness.RocketConfig.fir@258168.4]
  wire  _T_2; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@258172.4]
  wire  _T_4; // @[UARTTx.scala 37:11:chipyard.TestHarness.RocketConfig.fir@258175.6]
  wire  _T_6; // @[UARTTx.scala 39:22:chipyard.TestHarness.RocketConfig.fir@258181.4]
  wire [9:0] _T_9; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258185.6]
  wire  _T_10; // @[UARTTx.scala 56:19:chipyard.TestHarness.RocketConfig.fir@258187.6]
  wire [3:0] _T_12; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@258189.6]
  wire [3:0] _T_13; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@258190.6]
  wire [3:0] _T_14; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@258191.6]
  wire [3:0] _T_17; // @[UARTTx.scala 56:53:chipyard.TestHarness.RocketConfig.fir@258195.6]
  wire [9:0] _GEN_0; // @[UARTTx.scala 39:37:chipyard.TestHarness.RocketConfig.fir@258182.4]
  wire [15:0] _T_20; // @[UARTTx.scala 60:78:chipyard.TestHarness.RocketConfig.fir@258201.6]
  wire  _T_22; // @[UARTTx.scala 62:15:chipyard.TestHarness.RocketConfig.fir@258205.4]
  wire [3:0] _T_24; // @[UARTTx.scala 63:24:chipyard.TestHarness.RocketConfig.fir@258208.6]
  wire [8:0] _T_26; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258211.6]
  wire [9:0] _GEN_4; // @[UARTTx.scala 62:24:chipyard.TestHarness.RocketConfig.fir@258206.4]
  wire  _GEN_5; // @[UARTTx.scala 62:24:chipyard.TestHarness.RocketConfig.fir@258206.4]
  plusarg_reader #(.FORMAT("uart_tx=%d"), .DEFAULT(1), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@258164.4]
    .out(plusarg_reader_out)
  );
  assign pulse = prescaler == 16'h0; // @[UARTTx.scala 23:26:chipyard.TestHarness.RocketConfig.fir@258159.4]
  assign plusarg_tx = |plusarg_reader_out; // @[UARTTx.scala 31:90:chipyard.TestHarness.RocketConfig.fir@258166.4]
  assign busy = counter != 4'h0; // @[UARTTx.scala 33:23:chipyard.TestHarness.RocketConfig.fir@258167.4]
  assign _T = ~busy; // @[UARTTx.scala 34:27:chipyard.TestHarness.RocketConfig.fir@258168.4]
  assign _T_2 = io_in_ready & io_in_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@258172.4]
  assign _T_4 = ~reset; // @[UARTTx.scala 37:11:chipyard.TestHarness.RocketConfig.fir@258175.6]
  assign _T_6 = _T_2 & plusarg_tx; // @[UARTTx.scala 39:22:chipyard.TestHarness.RocketConfig.fir@258181.4]
  assign _T_9 = {1'h1,io_in_bits,1'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258185.6]
  assign _T_10 = ~io_nstop; // @[UARTTx.scala 56:19:chipyard.TestHarness.RocketConfig.fir@258187.6]
  assign _T_12 = _T_10 ? 4'ha : 4'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@258189.6]
  assign _T_13 = io_nstop ? 4'hb : 4'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@258190.6]
  assign _T_14 = _T_12 | _T_13; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@258191.6]
  assign _T_17 = _T_14 - 4'h0; // @[UARTTx.scala 56:53:chipyard.TestHarness.RocketConfig.fir@258195.6]
  assign _GEN_0 = _T_6 ? _T_9 : {{1'd0}, shifter}; // @[UARTTx.scala 39:37:chipyard.TestHarness.RocketConfig.fir@258182.4]
  assign _T_20 = prescaler - 16'h1; // @[UARTTx.scala 60:78:chipyard.TestHarness.RocketConfig.fir@258201.6]
  assign _T_22 = pulse & busy; // @[UARTTx.scala 62:15:chipyard.TestHarness.RocketConfig.fir@258205.4]
  assign _T_24 = counter - 4'h1; // @[UARTTx.scala 63:24:chipyard.TestHarness.RocketConfig.fir@258208.6]
  assign _T_26 = {1'h1,shifter[8:1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258211.6]
  assign _GEN_4 = _T_22 ? {{1'd0}, _T_26} : _GEN_0; // @[UARTTx.scala 62:24:chipyard.TestHarness.RocketConfig.fir@258206.4]
  assign _GEN_5 = _T_22 ? shifter[0] : out; // @[UARTTx.scala 62:24:chipyard.TestHarness.RocketConfig.fir@258206.4]
  assign io_in_ready = io_en & _T; // @[UARTTx.scala 34:15:chipyard.TestHarness.RocketConfig.fir@258170.4]
  assign io_out = out; // @[UARTTx.scala 29:10:chipyard.TestHarness.RocketConfig.fir@258163.4]
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
  prescaler = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  counter = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  shifter = _RAND_2[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  out = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      prescaler <= 16'h0;
    end else if (busy) begin
      if (pulse) begin
        prescaler <= io_div;
      end else begin
        prescaler <= _T_20;
      end
    end
    if (reset) begin
      counter <= 4'h0;
    end else if (_T_22) begin
      counter <= _T_24;
    end else if (_T_6) begin
      counter <= _T_17;
    end
    shifter <= _GEN_4[8:0];
    out <= reset | _GEN_5;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2 & _T_4) begin
          $fwrite(32'h80000002,"UART TX (%x): %c\n",io_in_bits,io_in_bits); // @[UARTTx.scala 37:11:chipyard.TestHarness.RocketConfig.fir@258177.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
