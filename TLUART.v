module TLUART( // @[:chipyard.TestHarness.RocketConfig.fir@258435.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@258436.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@258437.4]
  output        auto_int_xing_out_sync_0, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  output        auto_control_xing_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input         auto_control_xing_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input  [2:0]  auto_control_xing_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input  [2:0]  auto_control_xing_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input  [1:0]  auto_control_xing_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input  [6:0]  auto_control_xing_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input  [30:0] auto_control_xing_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input  [7:0]  auto_control_xing_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input  [63:0] auto_control_xing_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input         auto_control_xing_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input         auto_control_xing_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  output        auto_control_xing_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  output [2:0]  auto_control_xing_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  output [1:0]  auto_control_xing_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  output [6:0]  auto_control_xing_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  output [63:0] auto_control_xing_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  output        auto_io_out_txd, // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
  input         auto_io_out_rxd // @[:chipyard.TestHarness.RocketConfig.fir@258438.4]
);
  wire  buffer_clock; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [1:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [6:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [30:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [1:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [6:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [1:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [6:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [30:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [1:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [6:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
  wire  intsource_clock; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@258449.4]
  wire  intsource_reset; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@258449.4]
  wire  intsource_auto_in_0; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@258449.4]
  wire  intsource_auto_out_sync_0; // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@258449.4]
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [6:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [30:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire [6:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
  wire  txm_clock; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire  txm_reset; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire  txm_io_en; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire  txm_io_in_ready; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire  txm_io_in_valid; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire [7:0] txm_io_in_bits; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire  txm_io_out; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire [15:0] txm_io_div; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire  txm_io_nstop; // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
  wire  txq_clock; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire  txq_reset; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire  txq_io_enq_ready; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire  txq_io_enq_valid; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire [7:0] txq_io_enq_bits; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire  txq_io_deq_ready; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire  txq_io_deq_valid; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire [7:0] txq_io_deq_bits; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire [8:0] txq_io_count; // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
  wire  rxm_clock; // @[UART.scala 79:19:chipyard.TestHarness.RocketConfig.fir@258509.4]
  wire  rxm_reset; // @[UART.scala 79:19:chipyard.TestHarness.RocketConfig.fir@258509.4]
  wire  rxm_io_en; // @[UART.scala 79:19:chipyard.TestHarness.RocketConfig.fir@258509.4]
  wire  rxm_io_in; // @[UART.scala 79:19:chipyard.TestHarness.RocketConfig.fir@258509.4]
  wire  rxm_io_out_valid; // @[UART.scala 79:19:chipyard.TestHarness.RocketConfig.fir@258509.4]
  wire [7:0] rxm_io_out_bits; // @[UART.scala 79:19:chipyard.TestHarness.RocketConfig.fir@258509.4]
  wire [15:0] rxm_io_div; // @[UART.scala 79:19:chipyard.TestHarness.RocketConfig.fir@258509.4]
  wire  rxq_clock; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  wire  rxq_reset; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  wire  rxq_io_enq_ready; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  wire  rxq_io_enq_valid; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  wire [7:0] rxq_io_enq_bits; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  wire  rxq_io_deq_ready; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  wire  rxq_io_deq_valid; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  wire [7:0] rxq_io_deq_bits; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  wire [8:0] rxq_io_count; // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
  reg [15:0] div; // @[UART.scala 82:16:chipyard.TestHarness.RocketConfig.fir@258517.4]
  reg [31:0] _RAND_0;
  reg  txen; // @[UART.scala 88:17:chipyard.TestHarness.RocketConfig.fir@258518.4]
  reg [31:0] _RAND_1;
  reg  rxen; // @[UART.scala 89:17:chipyard.TestHarness.RocketConfig.fir@258519.4]
  reg [31:0] _RAND_2;
  reg [8:0] txwm; // @[UART.scala 96:17:chipyard.TestHarness.RocketConfig.fir@258526.4]
  reg [31:0] _RAND_3;
  reg [8:0] rxwm; // @[UART.scala 97:17:chipyard.TestHarness.RocketConfig.fir@258527.4]
  reg [31:0] _RAND_4;
  reg  nstop; // @[UART.scala 98:18:chipyard.TestHarness.RocketConfig.fir@258528.4]
  reg [31:0] _RAND_5;
  reg  ie_rxwm; // @[UART.scala 132:15:chipyard.TestHarness.RocketConfig.fir@258546.4]
  reg [31:0] _RAND_6;
  reg  ie_txwm; // @[UART.scala 132:15:chipyard.TestHarness.RocketConfig.fir@258546.4]
  reg [31:0] _RAND_7;
  wire  ip_txwm; // @[UART.scala 135:28:chipyard.TestHarness.RocketConfig.fir@258549.4]
  wire  ip_rxwm; // @[UART.scala 136:28:chipyard.TestHarness.RocketConfig.fir@258551.4]
  wire  _T_12; // @[UART.scala 137:29:chipyard.TestHarness.RocketConfig.fir@258553.4]
  wire  _T_13; // @[UART.scala 137:53:chipyard.TestHarness.RocketConfig.fir@258554.4]
  wire  _T_16; // @[RegMapFIFO.scala 24:9:chipyard.TestHarness.RocketConfig.fir@258559.4]
  wire  _T_17; // @[RegMapFIFO.scala 45:21:chipyard.TestHarness.RocketConfig.fir@258560.4]
  wire [2:0] _T_2_a_bits_opcode; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  wire  _T_19; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@258563.4]
  wire [30:0] _T_2_a_bits_address; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  wire [8:0] _T_24; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258579.4]
  wire  _T_26; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258581.4]
  wire [7:0] _T_2_a_bits_mask; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  wire [7:0] _T_47; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258606.4]
  wire [7:0] _T_49; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258608.4]
  wire [7:0] _T_51; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258610.4]
  wire [7:0] _T_53; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258612.4]
  wire [7:0] _T_55; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258614.4]
  wire [7:0] _T_57; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258616.4]
  wire [7:0] _T_59; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258618.4]
  wire [7:0] _T_61; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258620.4]
  wire [63:0] _T_68; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258627.4]
  wire  _T_103; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258662.4]
  wire  _T_2_a_valid; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  wire  _T_2_d_ready; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  wire [1:0] _T_499; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@259086.4]
  wire  _T_510; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259097.4]
  wire  _T_511; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259098.4]
  wire [3:0] _T_500; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@259087.4]
  wire  _T_536; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259152.4]
  wire  _T_537; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259153.4]
  wire  _T_549; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259181.4]
  wire  _T_550; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259182.4]
  wire  _T_110; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258669.4]
  wire [63:0] _T_2_a_bits_data; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  wire  _T_126; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258688.4]
  wire  _T_133; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258695.4]
  wire [1:0] _T_145; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258710.4]
  wire  _T_151; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258716.4]
  wire [31:0] _T_167; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258732.4]
  wire [33:0] _T_191; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258756.4]
  wire  _T_544; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259169.4]
  wire  _T_545; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259170.4]
  wire  _T_204; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258769.4]
  wire  _T_227; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258795.4]
  wire [1:0] _T_239; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258810.4]
  wire  _T_245; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258816.4]
  wire  _T_252; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258823.4]
  wire [15:0] _T_263; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258837.4]
  wire [24:0] _T_264; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258838.4]
  wire  _T_277; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258851.4]
  wire [31:0] _T_288; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258865.4]
  wire [32:0] _T_289; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258866.4]
  wire  _T_295; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258872.4]
  wire  _T_302; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258879.4]
  wire [47:0] _T_313; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258893.4]
  wire [56:0] _T_314; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258894.4]
  wire  _T_320; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258900.4]
  wire  _T_554; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259192.4]
  wire  _T_555; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259193.4]
  wire  _T_327; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258907.4]
  wire  _T_343; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258926.4]
  wire  _T_513; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259101.4]
  wire  _T_514; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259102.4]
  wire  _T_539; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259156.4]
  wire  _T_540; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259157.4]
  wire  _T_350; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258933.4]
  wire  _T_393; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258978.4]
  wire  _T_397; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258982.4]
  wire  _T_400; // @[RegMapFIFO.scala 26:26:chipyard.TestHarness.RocketConfig.fir@258985.4]
  wire  _T_353; // @[RegMapFIFO.scala 18:33:chipyard.TestHarness.RocketConfig.fir@258936.4]
  wire  _T_412; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258998.4]
  wire [40:0] _T_454; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@259041.4]
  wire [62:0] _T_455; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259042.4]
  wire [63:0] _T_477; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@259064.4]
  wire  _GEN_25; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259333.4]
  wire  _GEN_26; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259333.4]
  wire  _GEN_27; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259333.4]
  wire [63:0] _T_622_1; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259335.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259338.4]
  wire [63:0] _GEN_29; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259341.4]
  wire [63:0] _T_622_2; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259335.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259339.4]
  wire [63:0] _GEN_30; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259341.4]
  wire [63:0] _T_622_3; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259335.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259340.4]
  wire [63:0] _GEN_31; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259341.4]
  TLBuffer_13 buffer ( // @[Buffer.scala 69:28:chipyard.TestHarness.RocketConfig.fir@258443.4]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data)
  );
  IntSyncCrossingSource_3 intsource ( // @[Crossing.scala 26:31:chipyard.TestHarness.RocketConfig.fir@258449.4]
    .clock(intsource_clock),
    .reset(intsource_reset),
    .auto_in_0(intsource_auto_in_0),
    .auto_out_sync_0(intsource_auto_out_sync_0)
  );
  TLMonitor_62 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@258461.4]
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
  UARTTx txm ( // @[UART.scala 76:19:chipyard.TestHarness.RocketConfig.fir@258501.4]
    .clock(txm_clock),
    .reset(txm_reset),
    .io_en(txm_io_en),
    .io_in_ready(txm_io_in_ready),
    .io_in_valid(txm_io_in_valid),
    .io_in_bits(txm_io_in_bits),
    .io_out(txm_io_out),
    .io_div(txm_io_div),
    .io_nstop(txm_io_nstop)
  );
  QueueCompatibility_22 txq ( // @[UART.scala 77:19:chipyard.TestHarness.RocketConfig.fir@258505.4]
    .clock(txq_clock),
    .reset(txq_reset),
    .io_enq_ready(txq_io_enq_ready),
    .io_enq_valid(txq_io_enq_valid),
    .io_enq_bits(txq_io_enq_bits),
    .io_deq_ready(txq_io_deq_ready),
    .io_deq_valid(txq_io_deq_valid),
    .io_deq_bits(txq_io_deq_bits),
    .io_count(txq_io_count)
  );
  UARTRx rxm ( // @[UART.scala 79:19:chipyard.TestHarness.RocketConfig.fir@258509.4]
    .clock(rxm_clock),
    .reset(rxm_reset),
    .io_en(rxm_io_en),
    .io_in(rxm_io_in),
    .io_out_valid(rxm_io_out_valid),
    .io_out_bits(rxm_io_out_bits),
    .io_div(rxm_io_div)
  );
  QueueCompatibility_22 rxq ( // @[UART.scala 80:19:chipyard.TestHarness.RocketConfig.fir@258513.4]
    .clock(rxq_clock),
    .reset(rxq_reset),
    .io_enq_ready(rxq_io_enq_ready),
    .io_enq_valid(rxq_io_enq_valid),
    .io_enq_bits(rxq_io_enq_bits),
    .io_deq_ready(rxq_io_deq_ready),
    .io_deq_valid(rxq_io_deq_valid),
    .io_deq_bits(rxq_io_deq_bits),
    .io_count(rxq_io_count)
  );
  assign ip_txwm = txq_io_count < txwm; // @[UART.scala 135:28:chipyard.TestHarness.RocketConfig.fir@258549.4]
  assign ip_rxwm = rxq_io_count > rxwm; // @[UART.scala 136:28:chipyard.TestHarness.RocketConfig.fir@258551.4]
  assign _T_12 = ip_txwm & ie_txwm; // @[UART.scala 137:29:chipyard.TestHarness.RocketConfig.fir@258553.4]
  assign _T_13 = ip_rxwm & ie_rxwm; // @[UART.scala 137:53:chipyard.TestHarness.RocketConfig.fir@258554.4]
  assign _T_16 = ~txq_io_enq_ready; // @[RegMapFIFO.scala 24:9:chipyard.TestHarness.RocketConfig.fir@258559.4]
  assign _T_17 = ~rxq_io_deq_valid; // @[RegMapFIFO.scala 45:21:chipyard.TestHarness.RocketConfig.fir@258560.4]
  assign _T_2_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign _T_19 = _T_2_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@258563.4]
  assign _T_2_a_bits_address = buffer_auto_out_a_bits_address; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign _T_24 = _T_2_a_bits_address[11:3] & 9'h1fc; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258579.4]
  assign _T_26 = _T_24 == 9'h0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258581.4]
  assign _T_2_a_bits_mask = buffer_auto_out_a_bits_mask; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign _T_47 = _T_2_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258606.4]
  assign _T_49 = _T_2_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258608.4]
  assign _T_51 = _T_2_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258610.4]
  assign _T_53 = _T_2_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258612.4]
  assign _T_55 = _T_2_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258614.4]
  assign _T_57 = _T_2_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258616.4]
  assign _T_59 = _T_2_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258618.4]
  assign _T_61 = _T_2_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@258620.4]
  assign _T_68 = {_T_61,_T_59,_T_57,_T_55,_T_53,_T_51,_T_49,_T_47}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258627.4]
  assign _T_103 = &_T_68[0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258662.4]
  assign _T_2_a_valid = buffer_auto_out_a_valid; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign _T_2_d_ready = buffer_auto_out_d_ready; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign _T_499 = {_T_2_a_bits_address[4],_T_2_a_bits_address[3]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@259086.4]
  assign _T_510 = _T_2_a_valid & _T_2_d_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259097.4]
  assign _T_511 = _T_510 & _T_19; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259098.4]
  assign _T_500 = 4'h1 << _T_499; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@259087.4]
  assign _T_536 = ~_T_19; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259152.4]
  assign _T_537 = _T_510 & _T_536; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259153.4]
  assign _T_549 = _T_537 & _T_500[2]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259181.4]
  assign _T_550 = _T_549 & _T_26; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259182.4]
  assign _T_110 = _T_550 & _T_103; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258669.4]
  assign _T_2_a_bits_data = buffer_auto_out_a_bits_data; // @[Nodes.scala 389:84:chipyard.TestHarness.RocketConfig.fir@258459.4 LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign _T_126 = &_T_68[1]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258688.4]
  assign _T_133 = _T_550 & _T_126; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258695.4]
  assign _T_145 = {ie_rxwm,ie_txwm}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258710.4]
  assign _T_151 = &_T_68[32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258716.4]
  assign _T_167 = {{30'd0}, _T_145}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258732.4]
  assign _T_191 = {ip_rxwm,ip_txwm,_T_167}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258756.4]
  assign _T_544 = _T_537 & _T_500[1]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259169.4]
  assign _T_545 = _T_544 & _T_26; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259170.4]
  assign _T_204 = _T_545 & _T_103; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258769.4]
  assign _T_227 = _T_545 & _T_126; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258795.4]
  assign _T_239 = {nstop,txen}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258810.4]
  assign _T_245 = &_T_68[24:16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258816.4]
  assign _T_252 = _T_545 & _T_245; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258823.4]
  assign _T_263 = {{14'd0}, _T_239}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258837.4]
  assign _T_264 = {txwm,_T_263}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258838.4]
  assign _T_277 = _T_545 & _T_151; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258851.4]
  assign _T_288 = {{7'd0}, _T_264}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258865.4]
  assign _T_289 = {rxen,_T_288}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258866.4]
  assign _T_295 = &_T_68[56:48]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258872.4]
  assign _T_302 = _T_545 & _T_295; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258879.4]
  assign _T_313 = {{15'd0}, _T_289}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258893.4]
  assign _T_314 = {rxwm,_T_313}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258894.4]
  assign _T_320 = &_T_68[15:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258900.4]
  assign _T_554 = _T_537 & _T_500[3]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259192.4]
  assign _T_555 = _T_554 & _T_26; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259193.4]
  assign _T_327 = _T_555 & _T_320; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258907.4]
  assign _T_343 = &_T_68[7:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258926.4]
  assign _T_513 = _T_511 & _T_500[0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259101.4]
  assign _T_514 = _T_513 & _T_26; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259102.4]
  assign _T_539 = _T_537 & _T_500[0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259156.4]
  assign _T_540 = _T_539 & _T_26; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259157.4]
  assign _T_350 = _T_540 & _T_343; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258933.4]
  assign _T_393 = &_T_68[31]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258978.4]
  assign _T_397 = _T_540 & _T_393; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258982.4]
  assign _T_400 = _T_397 & _T_2_a_bits_data[31]; // @[RegMapFIFO.scala 26:26:chipyard.TestHarness.RocketConfig.fir@258985.4]
  assign _T_353 = ~_T_400; // @[RegMapFIFO.scala 18:33:chipyard.TestHarness.RocketConfig.fir@258936.4]
  assign _T_412 = |_T_68[39:32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@258998.4]
  assign _T_454 = {1'h0,rxq_io_deq_bits,_T_16,31'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@259041.4]
  assign _T_455 = {{22'd0}, _T_454}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@259042.4]
  assign _T_477 = {_T_17,_T_455}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@259064.4]
  assign _GEN_25 = 2'h1 == _T_499 ? _T_26 : _T_26; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259333.4]
  assign _GEN_26 = 2'h2 == _T_499 ? _T_26 : _GEN_25; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259333.4]
  assign _GEN_27 = 2'h3 == _T_499 ? _T_26 : _GEN_26; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259333.4]
  assign _T_622_1 = {{7'd0}, _T_314}; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259335.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259338.4]
  assign _GEN_29 = 2'h1 == _T_499 ? _T_622_1 : _T_477; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259341.4]
  assign _T_622_2 = {{30'd0}, _T_191}; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259335.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259339.4]
  assign _GEN_30 = 2'h2 == _T_499 ? _T_622_2 : _GEN_29; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259341.4]
  assign _T_622_3 = {{48'd0}, div}; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259335.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@259340.4]
  assign _GEN_31 = 2'h3 == _T_499 ? _T_622_3 : _GEN_30; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@259341.4]
  assign auto_int_xing_out_sync_0 = intsource_auto_out_sync_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@258500.4]
  assign auto_control_xing_in_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@258499.4]
  assign auto_control_xing_in_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@258499.4]
  assign auto_control_xing_in_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@258499.4]
  assign auto_control_xing_in_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@258499.4]
  assign auto_control_xing_in_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@258499.4]
  assign auto_control_xing_in_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@258499.4]
  assign auto_io_out_txd = txm_io_out; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@258498.4]
  assign buffer_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@258447.4]
  assign buffer_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@258448.4]
  assign buffer_auto_in_a_valid = auto_control_xing_in_a_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_a_bits_opcode = auto_control_xing_in_a_bits_opcode; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_a_bits_param = auto_control_xing_in_a_bits_param; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_a_bits_size = auto_control_xing_in_a_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_a_bits_source = auto_control_xing_in_a_bits_source; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_a_bits_address = auto_control_xing_in_a_bits_address; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_a_bits_mask = auto_control_xing_in_a_bits_mask; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_a_bits_data = auto_control_xing_in_a_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_a_bits_corrupt = auto_control_xing_in_a_bits_corrupt; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_in_d_ready = auto_control_xing_in_d_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258496.4]
  assign buffer_auto_out_a_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign buffer_auto_out_d_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign buffer_auto_out_d_bits_opcode = {{2'd0}, _T_19}; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign buffer_auto_out_d_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign buffer_auto_out_d_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign buffer_auto_out_d_bits_data = _GEN_27 ? _GEN_31 : 64'h0; // @[LazyModule.scala 175:31:chipyard.TestHarness.RocketConfig.fir@258495.4]
  assign intsource_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@258453.4]
  assign intsource_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@258454.4]
  assign intsource_auto_in_0 = _T_12 | _T_13; // @[LazyModule.scala 175:57:chipyard.TestHarness.RocketConfig.fir@258494.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@258462.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@258463.4]
  assign TLMonitor_io_in_a_ready = buffer_auto_out_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258483.4]
  assign TLMonitor_io_in_a_valid = buffer_auto_out_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258482.4]
  assign TLMonitor_io_in_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258481.4]
  assign TLMonitor_io_in_a_bits_param = buffer_auto_out_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258480.4]
  assign TLMonitor_io_in_a_bits_size = buffer_auto_out_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258479.4]
  assign TLMonitor_io_in_a_bits_source = buffer_auto_out_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258478.4]
  assign TLMonitor_io_in_a_bits_address = buffer_auto_out_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258477.4]
  assign TLMonitor_io_in_a_bits_mask = buffer_auto_out_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258476.4]
  assign TLMonitor_io_in_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258474.4]
  assign TLMonitor_io_in_d_ready = buffer_auto_out_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258473.4]
  assign TLMonitor_io_in_d_valid = buffer_auto_out_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258472.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_19}; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258471.4]
  assign TLMonitor_io_in_d_bits_size = buffer_auto_out_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258469.4]
  assign TLMonitor_io_in_d_bits_source = buffer_auto_out_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@258468.4]
  assign txm_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@258503.4]
  assign txm_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@258504.4]
  assign txm_io_en = txen; // @[UART.scala 106:15:chipyard.TestHarness.RocketConfig.fir@258530.4]
  assign txm_io_in_valid = txq_io_deq_valid; // @[UART.scala 107:13:chipyard.TestHarness.RocketConfig.fir@258531.4]
  assign txm_io_in_bits = txq_io_deq_bits; // @[UART.scala 107:13:chipyard.TestHarness.RocketConfig.fir@258531.4]
  assign txm_io_div = div; // @[UART.scala 108:14:chipyard.TestHarness.RocketConfig.fir@258532.4]
  assign txm_io_nstop = nstop; // @[UART.scala 109:16:chipyard.TestHarness.RocketConfig.fir@258533.4]
  assign txq_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@258507.4]
  assign txq_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@258508.4]
  assign txq_io_enq_valid = _T_350 & _T_353; // @[RegMapFIFO.scala 18:21:chipyard.TestHarness.RocketConfig.fir@258938.4]
  assign txq_io_enq_bits = _T_2_a_bits_data[7:0]; // @[RegMapFIFO.scala 19:20:chipyard.TestHarness.RocketConfig.fir@258939.4]
  assign txq_io_deq_ready = txm_io_in_ready; // @[UART.scala 107:13:chipyard.TestHarness.RocketConfig.fir@258531.4]
  assign rxm_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@258511.4]
  assign rxm_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@258512.4]
  assign rxm_io_en = rxen; // @[UART.scala 117:13:chipyard.TestHarness.RocketConfig.fir@258535.4]
  assign rxm_io_in = auto_io_out_rxd; // @[UART.scala 118:13:chipyard.TestHarness.RocketConfig.fir@258536.4]
  assign rxm_io_div = div; // @[UART.scala 120:14:chipyard.TestHarness.RocketConfig.fir@258538.4]
  assign rxq_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@258515.4]
  assign rxq_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@258516.4]
  assign rxq_io_enq_valid = rxm_io_out_valid; // @[UART.scala 119:14:chipyard.TestHarness.RocketConfig.fir@258537.4]
  assign rxq_io_enq_bits = rxm_io_out_bits; // @[UART.scala 119:14:chipyard.TestHarness.RocketConfig.fir@258537.4]
  assign rxq_io_deq_ready = _T_514 & _T_412; // @[RegMapFIFO.scala 41:21:chipyard.TestHarness.RocketConfig.fir@259009.4]
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
  div = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  txen = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  rxen = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  txwm = _RAND_3[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  rxwm = _RAND_4[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  nstop = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ie_rxwm = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ie_txwm = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      div <= 16'h364;
    end else if (_T_327) begin
      div <= _T_2_a_bits_data[15:0];
    end
    if (reset) begin
      txen <= 1'h0;
    end else if (_T_204) begin
      txen <= _T_2_a_bits_data[0];
    end
    if (reset) begin
      rxen <= 1'h0;
    end else if (_T_277) begin
      rxen <= _T_2_a_bits_data[32];
    end
    if (reset) begin
      txwm <= 9'h0;
    end else if (_T_252) begin
      txwm <= _T_2_a_bits_data[24:16];
    end
    if (reset) begin
      rxwm <= 9'h0;
    end else if (_T_302) begin
      rxwm <= _T_2_a_bits_data[56:48];
    end
    if (reset) begin
      nstop <= 1'h0;
    end else if (_T_227) begin
      nstop <= _T_2_a_bits_data[1];
    end
    if (reset) begin
      ie_rxwm <= 1'h0;
    end else if (_T_133) begin
      ie_rxwm <= _T_2_a_bits_data[1];
    end
    if (reset) begin
      ie_txwm <= 1'h0;
    end else if (_T_110) begin
      ie_txwm <= _T_2_a_bits_data[0];
    end
  end
endmodule
