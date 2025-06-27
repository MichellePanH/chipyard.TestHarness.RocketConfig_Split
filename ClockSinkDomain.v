module ClockSinkDomain( // @[:chipyard.TestHarness.RocketConfig.fir@259373.2]
  output        auto_uart_0_int_xing_out_sync_0, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  output        auto_uart_0_control_xing_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input         auto_uart_0_control_xing_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input  [2:0]  auto_uart_0_control_xing_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input  [2:0]  auto_uart_0_control_xing_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input  [1:0]  auto_uart_0_control_xing_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input  [6:0]  auto_uart_0_control_xing_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input  [30:0] auto_uart_0_control_xing_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input  [7:0]  auto_uart_0_control_xing_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input  [63:0] auto_uart_0_control_xing_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input         auto_uart_0_control_xing_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input         auto_uart_0_control_xing_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  output        auto_uart_0_control_xing_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  output [2:0]  auto_uart_0_control_xing_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  output [1:0]  auto_uart_0_control_xing_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  output [6:0]  auto_uart_0_control_xing_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  output [63:0] auto_uart_0_control_xing_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  output        auto_uart_0_io_out_txd, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input         auto_uart_0_io_out_rxd, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input         auto_clock_in_clock, // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
  input         auto_clock_in_reset // @[:chipyard.TestHarness.RocketConfig.fir@259374.4]
);
  wire  uart_0_clock; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_reset; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_auto_int_xing_out_sync_0; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_auto_control_xing_in_a_ready; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_auto_control_xing_in_a_valid; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [2:0] uart_0_auto_control_xing_in_a_bits_opcode; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [2:0] uart_0_auto_control_xing_in_a_bits_param; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [1:0] uart_0_auto_control_xing_in_a_bits_size; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [6:0] uart_0_auto_control_xing_in_a_bits_source; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [30:0] uart_0_auto_control_xing_in_a_bits_address; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [7:0] uart_0_auto_control_xing_in_a_bits_mask; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [63:0] uart_0_auto_control_xing_in_a_bits_data; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_auto_control_xing_in_a_bits_corrupt; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_auto_control_xing_in_d_ready; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_auto_control_xing_in_d_valid; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [2:0] uart_0_auto_control_xing_in_d_bits_opcode; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [1:0] uart_0_auto_control_xing_in_d_bits_size; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [6:0] uart_0_auto_control_xing_in_d_bits_source; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire [63:0] uart_0_auto_control_xing_in_d_bits_data; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_auto_io_out_txd; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  wire  uart_0_auto_io_out_rxd; // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
  TLUART uart_0 ( // @[UART.scala 238:51:chipyard.TestHarness.RocketConfig.fir@259388.4]
    .clock(uart_0_clock),
    .reset(uart_0_reset),
    .auto_int_xing_out_sync_0(uart_0_auto_int_xing_out_sync_0),
    .auto_control_xing_in_a_ready(uart_0_auto_control_xing_in_a_ready),
    .auto_control_xing_in_a_valid(uart_0_auto_control_xing_in_a_valid),
    .auto_control_xing_in_a_bits_opcode(uart_0_auto_control_xing_in_a_bits_opcode),
    .auto_control_xing_in_a_bits_param(uart_0_auto_control_xing_in_a_bits_param),
    .auto_control_xing_in_a_bits_size(uart_0_auto_control_xing_in_a_bits_size),
    .auto_control_xing_in_a_bits_source(uart_0_auto_control_xing_in_a_bits_source),
    .auto_control_xing_in_a_bits_address(uart_0_auto_control_xing_in_a_bits_address),
    .auto_control_xing_in_a_bits_mask(uart_0_auto_control_xing_in_a_bits_mask),
    .auto_control_xing_in_a_bits_data(uart_0_auto_control_xing_in_a_bits_data),
    .auto_control_xing_in_a_bits_corrupt(uart_0_auto_control_xing_in_a_bits_corrupt),
    .auto_control_xing_in_d_ready(uart_0_auto_control_xing_in_d_ready),
    .auto_control_xing_in_d_valid(uart_0_auto_control_xing_in_d_valid),
    .auto_control_xing_in_d_bits_opcode(uart_0_auto_control_xing_in_d_bits_opcode),
    .auto_control_xing_in_d_bits_size(uart_0_auto_control_xing_in_d_bits_size),
    .auto_control_xing_in_d_bits_source(uart_0_auto_control_xing_in_d_bits_source),
    .auto_control_xing_in_d_bits_data(uart_0_auto_control_xing_in_d_bits_data),
    .auto_io_out_txd(uart_0_auto_io_out_txd),
    .auto_io_out_rxd(uart_0_auto_io_out_rxd)
  );
  assign auto_uart_0_int_xing_out_sync_0 = uart_0_auto_int_xing_out_sync_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@259399.4]
  assign auto_uart_0_control_xing_in_a_ready = uart_0_auto_control_xing_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign auto_uart_0_control_xing_in_d_valid = uart_0_auto_control_xing_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign auto_uart_0_control_xing_in_d_bits_opcode = uart_0_auto_control_xing_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign auto_uart_0_control_xing_in_d_bits_size = uart_0_auto_control_xing_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign auto_uart_0_control_xing_in_d_bits_source = uart_0_auto_control_xing_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign auto_uart_0_control_xing_in_d_bits_data = uart_0_auto_control_xing_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign auto_uart_0_io_out_txd = uart_0_auto_io_out_txd; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@259397.4]
  assign uart_0_clock = auto_clock_in_clock; // @[:chipyard.TestHarness.RocketConfig.fir@259392.4]
  assign uart_0_reset = auto_clock_in_reset; // @[:chipyard.TestHarness.RocketConfig.fir@259393.4]
  assign uart_0_auto_control_xing_in_a_valid = auto_uart_0_control_xing_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_a_bits_opcode = auto_uart_0_control_xing_in_a_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_a_bits_param = auto_uart_0_control_xing_in_a_bits_param; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_a_bits_size = auto_uart_0_control_xing_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_a_bits_source = auto_uart_0_control_xing_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_a_bits_address = auto_uart_0_control_xing_in_a_bits_address; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_a_bits_mask = auto_uart_0_control_xing_in_a_bits_mask; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_a_bits_data = auto_uart_0_control_xing_in_a_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_a_bits_corrupt = auto_uart_0_control_xing_in_a_bits_corrupt; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_control_xing_in_d_ready = auto_uart_0_control_xing_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@259398.4]
  assign uart_0_auto_io_out_rxd = auto_uart_0_io_out_rxd; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@259397.4]
endmodule
