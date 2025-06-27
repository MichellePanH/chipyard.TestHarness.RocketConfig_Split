module TLXbar_7( // @[:chipyard.TestHarness.RocketConfig.fir@126116.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@126117.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@126118.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [8:0]  auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [31:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output        auto_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [31:0] auto_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output        auto_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_out_1_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output        auto_out_1_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [2:0]  auto_out_1_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [6:0]  auto_out_1_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [3:0]  auto_out_1_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [31:0] auto_out_1_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output        auto_out_1_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_out_1_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [2:0]  auto_out_1_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [31:0] auto_out_1_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_out_0_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output        auto_out_0_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [2:0]  auto_out_0_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [8:0]  auto_out_0_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [3:0]  auto_out_0_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output [31:0] auto_out_0_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  output        auto_out_0_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_out_0_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [2:0]  auto_out_0_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [1:0]  auto_out_0_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [1:0]  auto_out_0_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_out_0_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_out_0_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_out_0_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input  [31:0] auto_out_0_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
  input         auto_out_0_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@126119.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire [8:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire  TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
  wire [9:0] _T_28; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126284.4]
  wire [9:0] _T_30; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126286.4]
  wire  _T_31; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126287.4]
  wire [8:0] _T_32; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126288.4]
  wire [9:0] _T_33; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126289.4]
  wire [9:0] _T_35; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126291.4]
  wire  _T_36; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126292.4]
  wire [8:0] _T_37; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126293.4]
  wire [9:0] _T_38; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126294.4]
  wire [9:0] _T_40; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126296.4]
  wire  _T_41; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126297.4]
  wire [8:0] _T_42; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126298.4]
  wire [9:0] _T_43; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126299.4]
  wire [9:0] _T_45; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126301.4]
  wire  _T_46; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126302.4]
  wire [8:0] _T_47; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126303.4]
  wire [9:0] _T_48; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126304.4]
  wire [9:0] _T_50; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126306.4]
  wire  _T_51; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126307.4]
  wire [8:0] _T_52; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126308.4]
  wire [9:0] _T_53; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126309.4]
  wire [9:0] _T_55; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126311.4]
  wire  _T_56; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126312.4]
  wire  _T_57; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126313.4]
  wire  _T_58; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126314.4]
  wire  _T_59; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126315.4]
  wire  _T_60; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126316.4]
  wire  _T_61; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126317.4]
  wire [8:0] _T_63; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126319.4]
  wire [9:0] _T_64; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126320.4]
  wire [9:0] _T_66; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126322.4]
  wire  _T_67; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126323.4]
  wire [8:0] _T_68; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126324.4]
  wire [9:0] _T_69; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126325.4]
  wire [9:0] _T_71; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126327.4]
  wire  _T_72; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126328.4]
  wire  _T_73; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126329.4]
  wire  _T_149; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126418.4]
  wire  _T_150; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126419.4]
  reg  _T_192; // @[Arbiter.scala 54:30:chipyard.TestHarness.RocketConfig.fir@126527.4]
  reg [31:0] _RAND_0;
  wire  _T_193; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@126528.4]
  wire  _T_194; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@126529.4]
  wire [1:0] _T_195; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@126530.4]
  reg [1:0] _T_201; // @[Arbiter.scala 21:23:chipyard.TestHarness.RocketConfig.fir@126540.4]
  reg [31:0] _RAND_1;
  wire [1:0] _T_202; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@126541.4]
  wire [1:0] _T_203; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@126542.4]
  wire [3:0] _T_204; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@126543.4]
  wire [3:0] _GEN_1; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@126545.4]
  wire [3:0] _T_206; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@126545.4]
  wire [3:0] _T_209; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@126548.4]
  wire [3:0] _GEN_2; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@126549.4]
  wire [3:0] _T_210; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@126549.4]
  wire [1:0] _T_213; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@126552.4]
  wire [1:0] _T_214; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@126553.4]
  wire  _T_215; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@126554.4]
  wire  _T_216; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@126555.4]
  wire [1:0] _T_217; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@126557.6]
  wire [2:0] _T_218; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@126558.6]
  wire [1:0] _T_220; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@126560.6]
  wire  _T_226; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@126571.4]
  wire  _T_227; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@126572.4]
  wire  _T_230; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@126578.4]
  wire  _T_232; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@126580.4]
  wire  _T_235; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@126583.4]
  wire  _T_236; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@126584.4]
  wire  _T_239; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@126587.4]
  wire  _T_240; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@126588.4]
  wire  _T_241; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@126593.4]
  wire  _T_242; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@126594.4]
  wire  _T_244; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@126596.4]
  wire  _T_246; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@126598.4]
  wire  _T_247; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@126599.4]
  reg  _T_256_0; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@126616.4]
  reg [31:0] _RAND_2;
  wire  _T_262; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126625.4]
  reg  _T_256_1; // @[Arbiter.scala 79:26:chipyard.TestHarness.RocketConfig.fir@126616.4]
  reg [31:0] _RAND_3;
  wire  _T_263; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126626.4]
  wire  _T_264; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126627.4]
  wire  _T_266; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@126630.4]
  wire  _T_251; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@126607.4]
  wire  _T_253; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@126609.4]
  wire  _T_257_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@126617.4]
  wire  _T_257_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@126617.4]
  wire  _T_258_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@126619.4]
  wire  _T_258_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@126619.4]
  wire [42:0] _T_273; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126638.4]
  wire [42:0] _T_274; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126639.4]
  wire [42:0] _T_281; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126646.4]
  wire [42:0] _T_282; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126647.4]
  wire [42:0] _T_283; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126648.4]
  TLMonitor_50 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@126126.4]
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
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt)
  );
  assign _T_28 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126284.4]
  assign _T_30 = $signed(_T_28) & 10'sh1c0; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126286.4]
  assign _T_31 = $signed(_T_30) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126287.4]
  assign _T_32 = auto_in_a_bits_address ^ 9'h44; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126288.4]
  assign _T_33 = {1'b0,$signed(_T_32)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126289.4]
  assign _T_35 = $signed(_T_33) & 10'sh1fc; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126291.4]
  assign _T_36 = $signed(_T_35) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126292.4]
  assign _T_37 = auto_in_a_bits_address ^ 9'h48; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126293.4]
  assign _T_38 = {1'b0,$signed(_T_37)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126294.4]
  assign _T_40 = $signed(_T_38) & 10'sh1e8; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126296.4]
  assign _T_41 = $signed(_T_40) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126297.4]
  assign _T_42 = auto_in_a_bits_address ^ 9'h60; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126298.4]
  assign _T_43 = {1'b0,$signed(_T_42)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126299.4]
  assign _T_45 = $signed(_T_43) & 10'sh1e0; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126301.4]
  assign _T_46 = $signed(_T_45) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126302.4]
  assign _T_47 = auto_in_a_bits_address ^ 9'h80; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126303.4]
  assign _T_48 = {1'b0,$signed(_T_47)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126304.4]
  assign _T_50 = $signed(_T_48) & 10'sh180; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126306.4]
  assign _T_51 = $signed(_T_50) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126307.4]
  assign _T_52 = auto_in_a_bits_address ^ 9'h100; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126308.4]
  assign _T_53 = {1'b0,$signed(_T_52)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126309.4]
  assign _T_55 = $signed(_T_53) & 10'sh100; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126311.4]
  assign _T_56 = $signed(_T_55) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126312.4]
  assign _T_57 = _T_31 | _T_36; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126313.4]
  assign _T_58 = _T_57 | _T_41; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126314.4]
  assign _T_59 = _T_58 | _T_46; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126315.4]
  assign _T_60 = _T_59 | _T_51; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126316.4]
  assign _T_61 = _T_60 | _T_56; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126317.4]
  assign _T_63 = auto_in_a_bits_address ^ 9'h40; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126319.4]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126320.4]
  assign _T_66 = $signed(_T_64) & 10'sh1ec; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126322.4]
  assign _T_67 = $signed(_T_66) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126323.4]
  assign _T_68 = auto_in_a_bits_address ^ 9'h54; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126324.4]
  assign _T_69 = {1'b0,$signed(_T_68)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126325.4]
  assign _T_71 = $signed(_T_69) & 10'sh1fc; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126327.4]
  assign _T_72 = $signed(_T_71) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126328.4]
  assign _T_73 = _T_67 | _T_72; // @[Xbar.scala 230:92:chipyard.TestHarness.RocketConfig.fir@126329.4]
  assign _T_149 = _T_61 & auto_out_0_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126418.4]
  assign _T_150 = _T_73 & auto_out_1_a_ready; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126419.4]
  assign _T_193 = ~_T_192; // @[Arbiter.scala 55:28:chipyard.TestHarness.RocketConfig.fir@126528.4]
  assign _T_194 = _T_193 & auto_in_d_ready; // @[Arbiter.scala 56:24:chipyard.TestHarness.RocketConfig.fir@126529.4]
  assign _T_195 = {auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@126530.4]
  assign _T_202 = ~_T_201; // @[Arbiter.scala 22:30:chipyard.TestHarness.RocketConfig.fir@126541.4]
  assign _T_203 = _T_195 & _T_202; // @[Arbiter.scala 22:28:chipyard.TestHarness.RocketConfig.fir@126542.4]
  assign _T_204 = {_T_203,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@126543.4]
  assign _GEN_1 = {{1'd0}, _T_204[3:1]}; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@126545.4]
  assign _T_206 = _T_204 | _GEN_1; // @[package.scala 208:43:chipyard.TestHarness.RocketConfig.fir@126545.4]
  assign _T_209 = {_T_201, 2'h0}; // @[Arbiter.scala 23:66:chipyard.TestHarness.RocketConfig.fir@126548.4]
  assign _GEN_2 = {{1'd0}, _T_206[3:1]}; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@126549.4]
  assign _T_210 = _GEN_2 | _T_209; // @[Arbiter.scala 23:58:chipyard.TestHarness.RocketConfig.fir@126549.4]
  assign _T_213 = _T_210[3:2] & _T_210[1:0]; // @[Arbiter.scala 24:39:chipyard.TestHarness.RocketConfig.fir@126552.4]
  assign _T_214 = ~_T_213; // @[Arbiter.scala 24:18:chipyard.TestHarness.RocketConfig.fir@126553.4]
  assign _T_215 = |_T_195; // @[Arbiter.scala 25:27:chipyard.TestHarness.RocketConfig.fir@126554.4]
  assign _T_216 = _T_194 & _T_215; // @[Arbiter.scala 25:18:chipyard.TestHarness.RocketConfig.fir@126555.4]
  assign _T_217 = _T_214 & _T_195; // @[Arbiter.scala 26:29:chipyard.TestHarness.RocketConfig.fir@126557.6]
  assign _T_218 = {_T_217, 1'h0}; // @[package.scala 199:48:chipyard.TestHarness.RocketConfig.fir@126558.6]
  assign _T_220 = _T_217 | _T_218[1:0]; // @[package.scala 199:43:chipyard.TestHarness.RocketConfig.fir@126560.6]
  assign _T_226 = _T_214[0] & auto_out_0_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@126571.4]
  assign _T_227 = _T_214[1] & auto_out_1_d_valid; // @[Arbiter.scala 63:65:chipyard.TestHarness.RocketConfig.fir@126572.4]
  assign _T_230 = _T_226 | _T_227; // @[Arbiter.scala 68:52:chipyard.TestHarness.RocketConfig.fir@126578.4]
  assign _T_232 = ~_T_226; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@126580.4]
  assign _T_235 = ~_T_227; // @[Arbiter.scala 69:62:chipyard.TestHarness.RocketConfig.fir@126583.4]
  assign _T_236 = _T_232 | _T_235; // @[Arbiter.scala 69:59:chipyard.TestHarness.RocketConfig.fir@126584.4]
  assign _T_239 = _T_236 | reset; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@126587.4]
  assign _T_240 = ~_T_239; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@126588.4]
  assign _T_241 = auto_out_0_d_valid | auto_out_1_d_valid; // @[Arbiter.scala 71:31:chipyard.TestHarness.RocketConfig.fir@126593.4]
  assign _T_242 = ~_T_241; // @[Arbiter.scala 71:15:chipyard.TestHarness.RocketConfig.fir@126594.4]
  assign _T_244 = _T_242 | _T_230; // @[Arbiter.scala 71:36:chipyard.TestHarness.RocketConfig.fir@126596.4]
  assign _T_246 = _T_244 | reset; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@126598.4]
  assign _T_247 = ~_T_246; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@126599.4]
  assign _T_262 = _T_256_0 & auto_out_0_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126625.4]
  assign _T_263 = _T_256_1 & auto_out_1_d_valid; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126626.4]
  assign _T_264 = _T_262 | _T_263; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126627.4]
  assign _T_266 = _T_193 ? _T_241 : _T_264; // @[Arbiter.scala 87:24:chipyard.TestHarness.RocketConfig.fir@126630.4]
  assign _T_251 = auto_in_d_ready & _T_266; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@126607.4]
  assign _T_253 = _T_192 - _T_251; // @[Arbiter.scala 76:52:chipyard.TestHarness.RocketConfig.fir@126609.4]
  assign _T_257_0 = _T_193 ? _T_226 : _T_256_0; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@126617.4]
  assign _T_257_1 = _T_193 ? _T_227 : _T_256_1; // @[Arbiter.scala 80:25:chipyard.TestHarness.RocketConfig.fir@126617.4]
  assign _T_258_0 = _T_193 ? _T_214[0] : _T_256_0; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@126619.4]
  assign _T_258_1 = _T_193 ? _T_214[1] : _T_256_1; // @[Arbiter.scala 83:24:chipyard.TestHarness.RocketConfig.fir@126619.4]
  assign _T_273 = {auto_out_0_d_bits_opcode,auto_out_0_d_bits_param,auto_out_0_d_bits_size,auto_out_0_d_bits_source,auto_out_0_d_bits_sink,auto_out_0_d_bits_denied,auto_out_0_d_bits_data,auto_out_0_d_bits_corrupt}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126638.4]
  assign _T_274 = _T_257_0 ? _T_273 : 43'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126639.4]
  assign _T_281 = {auto_out_1_d_bits_opcode,2'h0,3'h4,2'h0,auto_out_1_d_bits_data,1'h0}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126646.4]
  assign _T_282 = _T_257_1 ? _T_281 : 43'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126647.4]
  assign _T_283 = _T_274 | _T_282; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@126648.4]
  assign auto_in_a_ready = _T_149 | _T_150; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@126155.4]
  assign auto_in_d_valid = _T_193 ? _T_241 : _T_264; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@126155.4]
  assign auto_in_d_bits_denied = _T_283[33]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@126155.4]
  assign auto_in_d_bits_data = _T_283[32:1]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@126155.4]
  assign auto_in_d_bits_corrupt = _T_283[0]; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@126155.4]
  assign auto_out_1_a_valid = auto_in_a_valid & _T_73; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126154.4]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126154.4]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address[6:0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126154.4]
  assign auto_out_1_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126154.4]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126154.4]
  assign auto_out_1_d_ready = auto_in_d_ready & _T_258_1; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126154.4]
  assign auto_out_0_a_valid = auto_in_a_valid & _T_61; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126153.4]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126153.4]
  assign auto_out_0_a_bits_address = auto_in_a_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126153.4]
  assign auto_out_0_a_bits_mask = auto_in_a_bits_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126153.4]
  assign auto_out_0_a_bits_data = auto_in_a_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126153.4]
  assign auto_out_0_d_ready = auto_in_d_ready & _T_258_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@126153.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@126127.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@126128.4]
  assign TLMonitor_io_in_a_ready = _T_149 | _T_150; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126148.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126147.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126146.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126142.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126141.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126138.4]
  assign TLMonitor_io_in_d_valid = _T_193 ? _T_241 : _T_264; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126137.4]
  assign TLMonitor_io_in_d_bits_opcode = _T_283[42:40]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126136.4]
  assign TLMonitor_io_in_d_bits_param = _T_283[39:38]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126135.4]
  assign TLMonitor_io_in_d_bits_size = _T_283[37:36]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126134.4]
  assign TLMonitor_io_in_d_bits_sink = _T_283[34]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126132.4]
  assign TLMonitor_io_in_d_bits_denied = _T_283[33]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126131.4]
  assign TLMonitor_io_in_d_bits_corrupt = _T_283[0]; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@126129.4]
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
  _T_192 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_201 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_256_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_256_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_192 <= 1'h0;
    end else if (_T_194) begin
      _T_192 <= 1'h0;
    end else begin
      _T_192 <= _T_253;
    end
    if (reset) begin
      _T_201 <= 2'h3;
    end else if (_T_216) begin
      _T_201 <= _T_220;
    end
    if (reset) begin
      _T_256_0 <= 1'h0;
    end else if (_T_193) begin
      _T_256_0 <= _T_226;
    end
    if (reset) begin
      _T_256_1 <= 1'h0;
    end else if (_T_193) begin
      _T_256_1 <= _T_227;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_240) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:69 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@126590.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_240) begin
          $fatal; // @[Arbiter.scala 69:13:chipyard.TestHarness.RocketConfig.fir@126591.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_247) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:71 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@126601.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_247) begin
          $fatal; // @[Arbiter.scala 71:14:chipyard.TestHarness.RocketConfig.fir@126602.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
