module AMOALU( // @[:chipyard.TestHarness.RocketConfig.fir@213794.2]
  input  [7:0]  io_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213797.4]
  input  [4:0]  io_cmd, // @[:chipyard.TestHarness.RocketConfig.fir@213797.4]
  input  [63:0] io_lhs, // @[:chipyard.TestHarness.RocketConfig.fir@213797.4]
  input  [63:0] io_rhs, // @[:chipyard.TestHarness.RocketConfig.fir@213797.4]
  output [63:0] io_out // @[:chipyard.TestHarness.RocketConfig.fir@213797.4]
);
  wire  _T; // @[AMOALU.scala 64:20:chipyard.TestHarness.RocketConfig.fir@213802.4]
  wire  _T_1; // @[AMOALU.scala 64:43:chipyard.TestHarness.RocketConfig.fir@213803.4]
  wire  max; // @[AMOALU.scala 64:33:chipyard.TestHarness.RocketConfig.fir@213804.4]
  wire  _T_2; // @[AMOALU.scala 65:20:chipyard.TestHarness.RocketConfig.fir@213805.4]
  wire  _T_3; // @[AMOALU.scala 65:43:chipyard.TestHarness.RocketConfig.fir@213806.4]
  wire  min; // @[AMOALU.scala 65:33:chipyard.TestHarness.RocketConfig.fir@213807.4]
  wire  add; // @[AMOALU.scala 66:20:chipyard.TestHarness.RocketConfig.fir@213808.4]
  wire  _T_4; // @[AMOALU.scala 67:26:chipyard.TestHarness.RocketConfig.fir@213809.4]
  wire  _T_5; // @[AMOALU.scala 67:48:chipyard.TestHarness.RocketConfig.fir@213810.4]
  wire  logic_and; // @[AMOALU.scala 67:38:chipyard.TestHarness.RocketConfig.fir@213811.4]
  wire  _T_6; // @[AMOALU.scala 68:26:chipyard.TestHarness.RocketConfig.fir@213812.4]
  wire  logic_xor; // @[AMOALU.scala 68:39:chipyard.TestHarness.RocketConfig.fir@213814.4]
  wire  _T_9; // @[AMOALU.scala 72:63:chipyard.TestHarness.RocketConfig.fir@213816.4]
  wire [31:0] _T_10; // @[AMOALU.scala 72:79:chipyard.TestHarness.RocketConfig.fir@213817.4]
  wire [63:0] _T_11; // @[AMOALU.scala 72:98:chipyard.TestHarness.RocketConfig.fir@213818.4]
  wire [63:0] _T_12; // @[AMOALU.scala 72:16:chipyard.TestHarness.RocketConfig.fir@213819.4]
  wire [63:0] _T_13; // @[AMOALU.scala 73:13:chipyard.TestHarness.RocketConfig.fir@213820.4]
  wire [63:0] _T_14; // @[AMOALU.scala 73:31:chipyard.TestHarness.RocketConfig.fir@213821.4]
  wire [63:0] adder_out; // @[AMOALU.scala 73:21:chipyard.TestHarness.RocketConfig.fir@213823.4]
  wire [4:0] _T_18; // @[AMOALU.scala 86:17:chipyard.TestHarness.RocketConfig.fir@213826.4]
  wire  _T_20; // @[AMOALU.scala 86:25:chipyard.TestHarness.RocketConfig.fir@213828.4]
  wire  _T_23; // @[AMOALU.scala 88:18:chipyard.TestHarness.RocketConfig.fir@213831.4]
  wire  _T_26; // @[AMOALU.scala 80:24:chipyard.TestHarness.RocketConfig.fir@213834.4]
  wire  _T_29; // @[AMOALU.scala 80:53:chipyard.TestHarness.RocketConfig.fir@213837.4]
  wire  _T_32; // @[AMOALU.scala 79:35:chipyard.TestHarness.RocketConfig.fir@213840.4]
  wire  _T_33; // @[AMOALU.scala 80:69:chipyard.TestHarness.RocketConfig.fir@213841.4]
  wire  _T_34; // @[AMOALU.scala 80:38:chipyard.TestHarness.RocketConfig.fir@213842.4]
  wire  _T_37; // @[AMOALU.scala 88:58:chipyard.TestHarness.RocketConfig.fir@213845.4]
  wire  _T_38; // @[AMOALU.scala 88:10:chipyard.TestHarness.RocketConfig.fir@213846.4]
  wire  _T_46; // @[AMOALU.scala 88:18:chipyard.TestHarness.RocketConfig.fir@213854.4]
  wire  _T_52; // @[AMOALU.scala 88:58:chipyard.TestHarness.RocketConfig.fir@213860.4]
  wire  _T_53; // @[AMOALU.scala 88:10:chipyard.TestHarness.RocketConfig.fir@213861.4]
  wire  less; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@213862.4]
  wire  _T_54; // @[AMOALU.scala 94:23:chipyard.TestHarness.RocketConfig.fir@213863.4]
  wire [63:0] minmax; // @[AMOALU.scala 94:19:chipyard.TestHarness.RocketConfig.fir@213864.4]
  wire [63:0] _T_55; // @[AMOALU.scala 96:27:chipyard.TestHarness.RocketConfig.fir@213865.4]
  wire [63:0] _T_56; // @[AMOALU.scala 96:8:chipyard.TestHarness.RocketConfig.fir@213866.4]
  wire [63:0] _T_57; // @[AMOALU.scala 97:27:chipyard.TestHarness.RocketConfig.fir@213867.4]
  wire [63:0] _T_58; // @[AMOALU.scala 97:8:chipyard.TestHarness.RocketConfig.fir@213868.4]
  wire [63:0] logic_; // @[AMOALU.scala 96:42:chipyard.TestHarness.RocketConfig.fir@213869.4]
  wire  _T_59; // @[AMOALU.scala 100:19:chipyard.TestHarness.RocketConfig.fir@213870.4]
  wire [63:0] _T_60; // @[AMOALU.scala 100:8:chipyard.TestHarness.RocketConfig.fir@213871.4]
  wire [63:0] out; // @[AMOALU.scala 99:8:chipyard.TestHarness.RocketConfig.fir@213872.4]
  wire [7:0] _T_70; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213882.4]
  wire [7:0] _T_72; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213884.4]
  wire [7:0] _T_74; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213886.4]
  wire [7:0] _T_76; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213888.4]
  wire [7:0] _T_78; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213890.4]
  wire [7:0] _T_80; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213892.4]
  wire [7:0] _T_82; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213894.4]
  wire [7:0] _T_84; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213896.4]
  wire [63:0] wmask; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213903.4]
  wire [63:0] _T_91; // @[AMOALU.scala 104:19:chipyard.TestHarness.RocketConfig.fir@213904.4]
  wire [63:0] _T_92; // @[AMOALU.scala 104:27:chipyard.TestHarness.RocketConfig.fir@213905.4]
  wire [63:0] _T_93; // @[AMOALU.scala 104:34:chipyard.TestHarness.RocketConfig.fir@213906.4]
  assign _T = io_cmd == 5'hd; // @[AMOALU.scala 64:20:chipyard.TestHarness.RocketConfig.fir@213802.4]
  assign _T_1 = io_cmd == 5'hf; // @[AMOALU.scala 64:43:chipyard.TestHarness.RocketConfig.fir@213803.4]
  assign max = _T | _T_1; // @[AMOALU.scala 64:33:chipyard.TestHarness.RocketConfig.fir@213804.4]
  assign _T_2 = io_cmd == 5'hc; // @[AMOALU.scala 65:20:chipyard.TestHarness.RocketConfig.fir@213805.4]
  assign _T_3 = io_cmd == 5'he; // @[AMOALU.scala 65:43:chipyard.TestHarness.RocketConfig.fir@213806.4]
  assign min = _T_2 | _T_3; // @[AMOALU.scala 65:33:chipyard.TestHarness.RocketConfig.fir@213807.4]
  assign add = io_cmd == 5'h8; // @[AMOALU.scala 66:20:chipyard.TestHarness.RocketConfig.fir@213808.4]
  assign _T_4 = io_cmd == 5'ha; // @[AMOALU.scala 67:26:chipyard.TestHarness.RocketConfig.fir@213809.4]
  assign _T_5 = io_cmd == 5'hb; // @[AMOALU.scala 67:48:chipyard.TestHarness.RocketConfig.fir@213810.4]
  assign logic_and = _T_4 | _T_5; // @[AMOALU.scala 67:38:chipyard.TestHarness.RocketConfig.fir@213811.4]
  assign _T_6 = io_cmd == 5'h9; // @[AMOALU.scala 68:26:chipyard.TestHarness.RocketConfig.fir@213812.4]
  assign logic_xor = _T_6 | _T_4; // @[AMOALU.scala 68:39:chipyard.TestHarness.RocketConfig.fir@213814.4]
  assign _T_9 = ~io_mask[3]; // @[AMOALU.scala 72:63:chipyard.TestHarness.RocketConfig.fir@213816.4]
  assign _T_10 = {_T_9, 31'h0}; // @[AMOALU.scala 72:79:chipyard.TestHarness.RocketConfig.fir@213817.4]
  assign _T_11 = {{32'd0}, _T_10}; // @[AMOALU.scala 72:98:chipyard.TestHarness.RocketConfig.fir@213818.4]
  assign _T_12 = ~_T_11; // @[AMOALU.scala 72:16:chipyard.TestHarness.RocketConfig.fir@213819.4]
  assign _T_13 = io_lhs & _T_12; // @[AMOALU.scala 73:13:chipyard.TestHarness.RocketConfig.fir@213820.4]
  assign _T_14 = io_rhs & _T_12; // @[AMOALU.scala 73:31:chipyard.TestHarness.RocketConfig.fir@213821.4]
  assign adder_out = _T_13 + _T_14; // @[AMOALU.scala 73:21:chipyard.TestHarness.RocketConfig.fir@213823.4]
  assign _T_18 = io_cmd & 5'h2; // @[AMOALU.scala 86:17:chipyard.TestHarness.RocketConfig.fir@213826.4]
  assign _T_20 = _T_18 == 5'h0; // @[AMOALU.scala 86:25:chipyard.TestHarness.RocketConfig.fir@213828.4]
  assign _T_23 = io_lhs[63] == io_rhs[63]; // @[AMOALU.scala 88:18:chipyard.TestHarness.RocketConfig.fir@213831.4]
  assign _T_26 = io_lhs[63:32] < io_rhs[63:32]; // @[AMOALU.scala 80:24:chipyard.TestHarness.RocketConfig.fir@213834.4]
  assign _T_29 = io_lhs[63:32] == io_rhs[63:32]; // @[AMOALU.scala 80:53:chipyard.TestHarness.RocketConfig.fir@213837.4]
  assign _T_32 = io_lhs[31:0] < io_rhs[31:0]; // @[AMOALU.scala 79:35:chipyard.TestHarness.RocketConfig.fir@213840.4]
  assign _T_33 = _T_29 & _T_32; // @[AMOALU.scala 80:69:chipyard.TestHarness.RocketConfig.fir@213841.4]
  assign _T_34 = _T_26 | _T_33; // @[AMOALU.scala 80:38:chipyard.TestHarness.RocketConfig.fir@213842.4]
  assign _T_37 = _T_20 ? io_lhs[63] : io_rhs[63]; // @[AMOALU.scala 88:58:chipyard.TestHarness.RocketConfig.fir@213845.4]
  assign _T_38 = _T_23 ? _T_34 : _T_37; // @[AMOALU.scala 88:10:chipyard.TestHarness.RocketConfig.fir@213846.4]
  assign _T_46 = io_lhs[31] == io_rhs[31]; // @[AMOALU.scala 88:18:chipyard.TestHarness.RocketConfig.fir@213854.4]
  assign _T_52 = _T_20 ? io_lhs[31] : io_rhs[31]; // @[AMOALU.scala 88:58:chipyard.TestHarness.RocketConfig.fir@213860.4]
  assign _T_53 = _T_46 ? _T_32 : _T_52; // @[AMOALU.scala 88:10:chipyard.TestHarness.RocketConfig.fir@213861.4]
  assign less = io_mask[4] ? _T_38 : _T_53; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@213862.4]
  assign _T_54 = less ? min : max; // @[AMOALU.scala 94:23:chipyard.TestHarness.RocketConfig.fir@213863.4]
  assign minmax = _T_54 ? io_lhs : io_rhs; // @[AMOALU.scala 94:19:chipyard.TestHarness.RocketConfig.fir@213864.4]
  assign _T_55 = io_lhs & io_rhs; // @[AMOALU.scala 96:27:chipyard.TestHarness.RocketConfig.fir@213865.4]
  assign _T_56 = logic_and ? _T_55 : 64'h0; // @[AMOALU.scala 96:8:chipyard.TestHarness.RocketConfig.fir@213866.4]
  assign _T_57 = io_lhs ^ io_rhs; // @[AMOALU.scala 97:27:chipyard.TestHarness.RocketConfig.fir@213867.4]
  assign _T_58 = logic_xor ? _T_57 : 64'h0; // @[AMOALU.scala 97:8:chipyard.TestHarness.RocketConfig.fir@213868.4]
  assign logic_ = _T_56 | _T_58; // @[AMOALU.scala 96:42:chipyard.TestHarness.RocketConfig.fir@213869.4]
  assign _T_59 = logic_and | logic_xor; // @[AMOALU.scala 100:19:chipyard.TestHarness.RocketConfig.fir@213870.4]
  assign _T_60 = _T_59 ? logic_ : minmax; // @[AMOALU.scala 100:8:chipyard.TestHarness.RocketConfig.fir@213871.4]
  assign out = add ? adder_out : _T_60; // @[AMOALU.scala 99:8:chipyard.TestHarness.RocketConfig.fir@213872.4]
  assign _T_70 = io_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213882.4]
  assign _T_72 = io_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213884.4]
  assign _T_74 = io_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213886.4]
  assign _T_76 = io_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213888.4]
  assign _T_78 = io_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213890.4]
  assign _T_80 = io_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213892.4]
  assign _T_82 = io_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213894.4]
  assign _T_84 = io_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@213896.4]
  assign wmask = {_T_84,_T_82,_T_80,_T_78,_T_76,_T_74,_T_72,_T_70}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@213903.4]
  assign _T_91 = wmask & out; // @[AMOALU.scala 104:19:chipyard.TestHarness.RocketConfig.fir@213904.4]
  assign _T_92 = ~wmask; // @[AMOALU.scala 104:27:chipyard.TestHarness.RocketConfig.fir@213905.4]
  assign _T_93 = _T_92 & io_lhs; // @[AMOALU.scala 104:34:chipyard.TestHarness.RocketConfig.fir@213906.4]
  assign io_out = _T_91 | _T_93; // @[AMOALU.scala 104:10:chipyard.TestHarness.RocketConfig.fir@213908.4]
endmodule
