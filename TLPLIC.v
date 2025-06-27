module TLPLIC( // @[:chipyard.TestHarness.RocketConfig.fir@120991.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@120992.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@120993.4]
  input         auto_int_in_0, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  output        auto_int_out_1_0, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  output        auto_int_out_0_0, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  output        auto_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input         auto_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input  [2:0]  auto_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input  [1:0]  auto_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input  [6:0]  auto_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input  [27:0] auto_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input  [7:0]  auto_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input  [63:0] auto_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input         auto_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  input         auto_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  output        auto_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  output [1:0]  auto_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  output [6:0]  auto_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
  output [63:0] auto_in_d_bits_data // @[:chipyard.TestHarness.RocketConfig.fir@120994.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [6:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [27:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [7:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire [6:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
  wire  LevelGateway_clock; // @[Plic.scala 155:27:chipyard.TestHarness.RocketConfig.fir@121034.4]
  wire  LevelGateway_reset; // @[Plic.scala 155:27:chipyard.TestHarness.RocketConfig.fir@121034.4]
  wire  LevelGateway_io_interrupt; // @[Plic.scala 155:27:chipyard.TestHarness.RocketConfig.fir@121034.4]
  wire  LevelGateway_io_plic_valid; // @[Plic.scala 155:27:chipyard.TestHarness.RocketConfig.fir@121034.4]
  wire  LevelGateway_io_plic_ready; // @[Plic.scala 155:27:chipyard.TestHarness.RocketConfig.fir@121034.4]
  wire  LevelGateway_io_plic_complete; // @[Plic.scala 155:27:chipyard.TestHarness.RocketConfig.fir@121034.4]
  wire  PLICFanIn_io_prio_0; // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121058.4]
  wire  PLICFanIn_io_ip; // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121058.4]
  wire  PLICFanIn_io_dev; // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121058.4]
  wire  PLICFanIn_io_max; // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121058.4]
  wire  PLICFanIn_1_io_prio_0; // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121070.4]
  wire  PLICFanIn_1_io_ip; // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121070.4]
  wire  PLICFanIn_1_io_dev; // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121070.4]
  wire  PLICFanIn_1_io_max; // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121070.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire  Queue_io_enq_bits_read; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [22:0] Queue_io_enq_bits_index; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [63:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [7:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [6:0] Queue_io_enq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [1:0] Queue_io_enq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire  Queue_io_deq_bits_read; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [22:0] Queue_io_deq_bits_index; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [63:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [7:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [6:0] Queue_io_deq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  wire [1:0] Queue_io_deq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
  reg  priority_0; // @[Plic.scala 162:31:chipyard.TestHarness.RocketConfig.fir@121039.4]
  reg [31:0] _RAND_0;
  reg  threshold_0; // @[Plic.scala 165:31:chipyard.TestHarness.RocketConfig.fir@121040.4]
  reg [31:0] _RAND_1;
  reg  threshold_1; // @[Plic.scala 165:31:chipyard.TestHarness.RocketConfig.fir@121040.4]
  reg [31:0] _RAND_2;
  reg  pending_0; // @[Plic.scala 167:22:chipyard.TestHarness.RocketConfig.fir@121044.4]
  reg [31:0] _RAND_3;
  reg  enables_0_0; // @[Plic.scala 173:26:chipyard.TestHarness.RocketConfig.fir@121045.4]
  reg [31:0] _RAND_4;
  reg  enables_1_0; // @[Plic.scala 173:26:chipyard.TestHarness.RocketConfig.fir@121046.4]
  reg [31:0] _RAND_5;
  wire [1:0] enableVec0_0; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121051.4]
  wire [1:0] enableVec0_1; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121052.4]
  reg  maxDevs_0; // @[Plic.scala 180:22:chipyard.TestHarness.RocketConfig.fir@121057.4]
  reg [31:0] _RAND_6;
  reg  maxDevs_1; // @[Plic.scala 180:22:chipyard.TestHarness.RocketConfig.fir@121057.4]
  reg [31:0] _RAND_7;
  reg  _T_5; // @[Plic.scala 187:41:chipyard.TestHarness.RocketConfig.fir@121066.4]
  reg [31:0] _RAND_8;
  reg  _T_8; // @[Plic.scala 187:41:chipyard.TestHarness.RocketConfig.fir@121078.4]
  reg [31:0] _RAND_9;
  wire  _T_708; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121985.4]
  wire  _T_709; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121986.4]
  wire [3:0] _T_502; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121655.4]
  wire [15:0] _T_520; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@121673.4]
  wire  _T_761; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122069.4]
  wire [22:0] _T_51; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121171.4]
  wire  _T_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121181.4]
  wire  _T_762; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122070.4]
  wire [7:0] _T_122; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121246.4]
  wire [7:0] _T_120; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121244.4]
  wire [7:0] _T_118; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121242.4]
  wire [7:0] _T_116; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121240.4]
  wire [7:0] _T_114; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121238.4]
  wire [7:0] _T_112; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121236.4]
  wire [7:0] _T_110; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121234.4]
  wire [7:0] _T_108; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121232.4]
  wire [63:0] _T_129; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121253.4]
  wire  _T_342; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121478.4]
  wire  claimer_1; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121482.4]
  wire  _T_751; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122052.4]
  wire  _T_752; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122053.4]
  wire  claimer_0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121572.4]
  wire [1:0] _T_10; // @[Plic.scala 238:21:chipyard.TestHarness.RocketConfig.fir@121084.4]
  wire [1:0] _T_13; // @[Plic.scala 238:46:chipyard.TestHarness.RocketConfig.fir@121087.4]
  wire [1:0] _T_14; // @[Plic.scala 238:28:chipyard.TestHarness.RocketConfig.fir@121088.4]
  wire  _T_15; // @[Plic.scala 238:58:chipyard.TestHarness.RocketConfig.fir@121089.4]
  wire  _T_17; // @[Plic.scala 238:11:chipyard.TestHarness.RocketConfig.fir@121091.4]
  wire  _T_18; // @[Plic.scala 238:11:chipyard.TestHarness.RocketConfig.fir@121092.4]
  wire  _T_19; // @[Plic.scala 239:49:chipyard.TestHarness.RocketConfig.fir@121097.4]
  wire  _T_20; // @[Plic.scala 239:49:chipyard.TestHarness.RocketConfig.fir@121098.4]
  wire  claiming; // @[Plic.scala 239:96:chipyard.TestHarness.RocketConfig.fir@121099.4]
  wire [1:0] _T_22; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@121101.4]
  wire  claimedDevs_1; // @[Plic.scala 240:58:chipyard.TestHarness.RocketConfig.fir@121104.4]
  wire  _T_27; // @[Plic.scala 244:15:chipyard.TestHarness.RocketConfig.fir@121111.4]
  wire  _T_28; // @[Plic.scala 244:34:chipyard.TestHarness.RocketConfig.fir@121113.6]
  wire  _T_794; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122133.4]
  wire  _T_795; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122134.4]
  wire  _T_847; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122217.4]
  wire  _T_848; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122218.4]
  wire  _T_344; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121480.4]
  wire  _T_348; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121484.4]
  wire  completerDev; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@121586.4]
  wire [1:0] _T_356; // @[Plic.scala 288:51:chipyard.TestHarness.RocketConfig.fir@121498.4]
  wire  completer_1; // @[Plic.scala 288:35:chipyard.TestHarness.RocketConfig.fir@121500.4]
  wire  _T_837; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122200.4]
  wire  _T_838; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122201.4]
  wire  _T_428; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121574.4]
  wire [1:0] _T_436; // @[Plic.scala 288:51:chipyard.TestHarness.RocketConfig.fir@121588.4]
  wire  completer_0; // @[Plic.scala 288:35:chipyard.TestHarness.RocketConfig.fir@121590.4]
  wire [1:0] _T_29; // @[Plic.scala 255:23:chipyard.TestHarness.RocketConfig.fir@121118.4]
  wire [1:0] _T_32; // @[Plic.scala 255:50:chipyard.TestHarness.RocketConfig.fir@121121.4]
  wire [1:0] _T_33; // @[Plic.scala 255:30:chipyard.TestHarness.RocketConfig.fir@121122.4]
  wire  _T_34; // @[Plic.scala 255:62:chipyard.TestHarness.RocketConfig.fir@121123.4]
  wire  _T_36; // @[Plic.scala 255:11:chipyard.TestHarness.RocketConfig.fir@121125.4]
  wire  _T_37; // @[Plic.scala 255:11:chipyard.TestHarness.RocketConfig.fir@121126.4]
  wire  _T_38; // @[Plic.scala 257:48:chipyard.TestHarness.RocketConfig.fir@121133.4]
  wire [1:0] _T_40; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@121135.4]
  wire [1:0] completedDevs; // @[Plic.scala 257:28:chipyard.TestHarness.RocketConfig.fir@121137.4]
  wire  _T_137; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121261.4]
  wire  _T_817; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122168.4]
  wire  _T_818; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122169.4]
  wire  _T_158; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121282.4]
  wire  _T_162; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121286.4]
  wire  _T_183; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121310.4]
  wire  _T_797; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122137.4]
  wire  _T_798; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122138.4]
  wire  _T_187; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121314.4]
  wire [32:0] _T_198; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121328.4]
  wire  _T_822; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122177.4]
  wire  _T_823; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122178.4]
  wire  _T_233; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121363.4]
  wire [1:0] _T_288; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121421.4]
  wire  _T_302; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121435.4]
  wire [1:0] _T_334; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121470.4]
  wire [31:0] _T_335; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121471.4]
  wire  _T_351; // @[Plic.scala 285:33:chipyard.TestHarness.RocketConfig.fir@121488.4]
  wire  _T_353; // @[Plic.scala 285:19:chipyard.TestHarness.RocketConfig.fir@121490.4]
  wire  _T_354; // @[Plic.scala 285:19:chipyard.TestHarness.RocketConfig.fir@121491.4]
  wire [32:0] _T_368; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121511.4]
  wire [63:0] _T_369; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121512.4]
  wire  _T_382; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121525.4]
  wire [1:0] _T_414; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121560.4]
  wire [31:0] _T_415; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121561.4]
  wire [32:0] _T_448; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121601.4]
  wire [63:0] _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121602.4]
  wire  _T_886; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122294.4]
  wire  _T_887; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122299.6]
  wire  _T_888; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122304.8]
  wire  _T_889; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122309.10]
  wire  _T_890; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122314.12]
  wire  _T_891; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122319.14]
  wire  _GEN_70; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122320.14]
  wire  _GEN_71; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122315.12]
  wire  _GEN_72; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122310.10]
  wire  _GEN_73; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122305.8]
  wire  _GEN_74; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122300.6]
  wire  _GEN_75; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@122295.4]
  wire [63:0] _GEN_76; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122352.14]
  wire [63:0] _GEN_77; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122347.12]
  wire [63:0] _GEN_78; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122342.10]
  wire [63:0] _GEN_79; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122337.8]
  wire [63:0] _GEN_80; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122332.6]
  wire [63:0] _GEN_81; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@122327.4]
  wire  _T_47_bits_read; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121153.4 RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122290.4]
  TLMonitor_48 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@121001.4]
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
  LevelGateway LevelGateway ( // @[Plic.scala 155:27:chipyard.TestHarness.RocketConfig.fir@121034.4]
    .clock(LevelGateway_clock),
    .reset(LevelGateway_reset),
    .io_interrupt(LevelGateway_io_interrupt),
    .io_plic_valid(LevelGateway_io_plic_valid),
    .io_plic_ready(LevelGateway_io_plic_ready),
    .io_plic_complete(LevelGateway_io_plic_complete)
  );
  PLICFanIn PLICFanIn ( // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121058.4]
    .io_prio_0(PLICFanIn_io_prio_0),
    .io_ip(PLICFanIn_io_ip),
    .io_dev(PLICFanIn_io_dev),
    .io_max(PLICFanIn_io_max)
  );
  PLICFanIn PLICFanIn_1 ( // @[Plic.scala 183:25:chipyard.TestHarness.RocketConfig.fir@121070.4]
    .io_prio_0(PLICFanIn_1_io_prio_0),
    .io_ip(PLICFanIn_1_io_ip),
    .io_dev(PLICFanIn_1_io_dev),
    .io_max(PLICFanIn_1_io_max)
  );
  Queue_28 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@121158.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_read(Queue_io_enq_bits_read),
    .io_enq_bits_index(Queue_io_enq_bits_index),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_mask(Queue_io_enq_bits_mask),
    .io_enq_bits_extra_tlrr_extra_source(Queue_io_enq_bits_extra_tlrr_extra_source),
    .io_enq_bits_extra_tlrr_extra_size(Queue_io_enq_bits_extra_tlrr_extra_size),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_read(Queue_io_deq_bits_read),
    .io_deq_bits_index(Queue_io_deq_bits_index),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_extra_tlrr_extra_source(Queue_io_deq_bits_extra_tlrr_extra_source),
    .io_deq_bits_extra_tlrr_extra_size(Queue_io_deq_bits_extra_tlrr_extra_size)
  );
  assign enableVec0_0 = {enables_0_0,1'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121051.4]
  assign enableVec0_1 = {enables_1_0,1'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121052.4]
  assign _T_708 = Queue_io_deq_valid & auto_in_d_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121985.4]
  assign _T_709 = _T_708 & Queue_io_deq_bits_read; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121986.4]
  assign _T_502 = {Queue_io_deq_bits_index[18],Queue_io_deq_bits_index[10],Queue_io_deq_bits_index[9],Queue_io_deq_bits_index[4]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121655.4]
  assign _T_520 = 16'h1 << _T_502; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@121673.4]
  assign _T_761 = _T_709 & _T_520[10]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122069.4]
  assign _T_51 = Queue_io_deq_bits_index & 23'h7bf9ef; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121171.4]
  assign _T_61 = _T_51 == 23'h0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121181.4]
  assign _T_762 = _T_761 & _T_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122070.4]
  assign _T_122 = Queue_io_deq_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121246.4]
  assign _T_120 = Queue_io_deq_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121244.4]
  assign _T_118 = Queue_io_deq_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121242.4]
  assign _T_116 = Queue_io_deq_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121240.4]
  assign _T_114 = Queue_io_deq_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121238.4]
  assign _T_112 = Queue_io_deq_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121236.4]
  assign _T_110 = Queue_io_deq_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121234.4]
  assign _T_108 = Queue_io_deq_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@121232.4]
  assign _T_129 = {_T_122,_T_120,_T_118,_T_116,_T_114,_T_112,_T_110,_T_108}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121253.4]
  assign _T_342 = |_T_129[63:32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121478.4]
  assign claimer_1 = _T_762 & _T_342; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121482.4]
  assign _T_751 = _T_709 & _T_520[8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122052.4]
  assign _T_752 = _T_751 & _T_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122053.4]
  assign claimer_0 = _T_752 & _T_342; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121572.4]
  assign _T_10 = {claimer_1,claimer_0}; // @[Plic.scala 238:21:chipyard.TestHarness.RocketConfig.fir@121084.4]
  assign _T_13 = _T_10 - 2'h1; // @[Plic.scala 238:46:chipyard.TestHarness.RocketConfig.fir@121087.4]
  assign _T_14 = _T_10 & _T_13; // @[Plic.scala 238:28:chipyard.TestHarness.RocketConfig.fir@121088.4]
  assign _T_15 = _T_14 == 2'h0; // @[Plic.scala 238:58:chipyard.TestHarness.RocketConfig.fir@121089.4]
  assign _T_17 = _T_15 | reset; // @[Plic.scala 238:11:chipyard.TestHarness.RocketConfig.fir@121091.4]
  assign _T_18 = ~_T_17; // @[Plic.scala 238:11:chipyard.TestHarness.RocketConfig.fir@121092.4]
  assign _T_19 = claimer_0 & maxDevs_0; // @[Plic.scala 239:49:chipyard.TestHarness.RocketConfig.fir@121097.4]
  assign _T_20 = claimer_1 & maxDevs_1; // @[Plic.scala 239:49:chipyard.TestHarness.RocketConfig.fir@121098.4]
  assign claiming = _T_19 | _T_20; // @[Plic.scala 239:96:chipyard.TestHarness.RocketConfig.fir@121099.4]
  assign _T_22 = 2'h1 << claiming; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@121101.4]
  assign claimedDevs_1 = _T_22[1]; // @[Plic.scala 240:58:chipyard.TestHarness.RocketConfig.fir@121104.4]
  assign _T_27 = claimedDevs_1 | LevelGateway_io_plic_valid; // @[Plic.scala 244:15:chipyard.TestHarness.RocketConfig.fir@121111.4]
  assign _T_28 = ~claimedDevs_1; // @[Plic.scala 244:34:chipyard.TestHarness.RocketConfig.fir@121113.6]
  assign _T_794 = ~Queue_io_deq_bits_read; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122133.4]
  assign _T_795 = _T_708 & _T_794; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122134.4]
  assign _T_847 = _T_795 & _T_520[10]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122217.4]
  assign _T_848 = _T_847 & _T_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122218.4]
  assign _T_344 = &_T_129[63:32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121480.4]
  assign _T_348 = _T_848 & _T_344; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121484.4]
  assign completerDev = Queue_io_deq_bits_data[32]; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@121586.4]
  assign _T_356 = enableVec0_1 >> completerDev; // @[Plic.scala 288:51:chipyard.TestHarness.RocketConfig.fir@121498.4]
  assign completer_1 = _T_348 & _T_356[0]; // @[Plic.scala 288:35:chipyard.TestHarness.RocketConfig.fir@121500.4]
  assign _T_837 = _T_795 & _T_520[8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122200.4]
  assign _T_838 = _T_837 & _T_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122201.4]
  assign _T_428 = _T_838 & _T_344; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121574.4]
  assign _T_436 = enableVec0_0 >> completerDev; // @[Plic.scala 288:51:chipyard.TestHarness.RocketConfig.fir@121588.4]
  assign completer_0 = _T_428 & _T_436[0]; // @[Plic.scala 288:35:chipyard.TestHarness.RocketConfig.fir@121590.4]
  assign _T_29 = {completer_1,completer_0}; // @[Plic.scala 255:23:chipyard.TestHarness.RocketConfig.fir@121118.4]
  assign _T_32 = _T_29 - 2'h1; // @[Plic.scala 255:50:chipyard.TestHarness.RocketConfig.fir@121121.4]
  assign _T_33 = _T_29 & _T_32; // @[Plic.scala 255:30:chipyard.TestHarness.RocketConfig.fir@121122.4]
  assign _T_34 = _T_33 == 2'h0; // @[Plic.scala 255:62:chipyard.TestHarness.RocketConfig.fir@121123.4]
  assign _T_36 = _T_34 | reset; // @[Plic.scala 255:11:chipyard.TestHarness.RocketConfig.fir@121125.4]
  assign _T_37 = ~_T_36; // @[Plic.scala 255:11:chipyard.TestHarness.RocketConfig.fir@121126.4]
  assign _T_38 = completer_0 | completer_1; // @[Plic.scala 257:48:chipyard.TestHarness.RocketConfig.fir@121133.4]
  assign _T_40 = 2'h1 << completerDev; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@121135.4]
  assign completedDevs = _T_38 ? _T_40 : 2'h0; // @[Plic.scala 257:28:chipyard.TestHarness.RocketConfig.fir@121137.4]
  assign _T_137 = &_T_129[0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121261.4]
  assign _T_817 = _T_795 & _T_520[4]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122168.4]
  assign _T_818 = _T_817 & _T_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122169.4]
  assign _T_158 = &_T_129[1]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121282.4]
  assign _T_162 = _T_818 & _T_158; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121286.4]
  assign _T_183 = &_T_129[32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121310.4]
  assign _T_797 = _T_795 & _T_520[0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122137.4]
  assign _T_798 = _T_797 & _T_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122138.4]
  assign _T_187 = _T_798 & _T_183; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121314.4]
  assign _T_198 = {priority_0,32'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121328.4]
  assign _T_822 = _T_795 & _T_520[5]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122177.4]
  assign _T_823 = _T_822 & _T_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122178.4]
  assign _T_233 = _T_823 & _T_158; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121363.4]
  assign _T_288 = {pending_0,1'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121421.4]
  assign _T_302 = _T_848 & _T_137; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121435.4]
  assign _T_334 = {1'h0,threshold_1}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121470.4]
  assign _T_335 = {{30'd0}, _T_334}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121471.4]
  assign _T_351 = completerDev == completerDev; // @[Plic.scala 285:33:chipyard.TestHarness.RocketConfig.fir@121488.4]
  assign _T_353 = _T_351 | reset; // @[Plic.scala 285:19:chipyard.TestHarness.RocketConfig.fir@121490.4]
  assign _T_354 = ~_T_353; // @[Plic.scala 285:19:chipyard.TestHarness.RocketConfig.fir@121491.4]
  assign _T_368 = {maxDevs_1,_T_335}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121511.4]
  assign _T_369 = {{31'd0}, _T_368}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121512.4]
  assign _T_382 = _T_838 & _T_137; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121525.4]
  assign _T_414 = {1'h0,threshold_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121560.4]
  assign _T_415 = {{30'd0}, _T_414}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121561.4]
  assign _T_448 = {maxDevs_0,_T_415}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@121601.4]
  assign _T_449 = {{31'd0}, _T_448}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121602.4]
  assign _T_886 = 4'h0 == _T_502; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122294.4]
  assign _T_887 = 4'h2 == _T_502; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122299.6]
  assign _T_888 = 4'h4 == _T_502; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122304.8]
  assign _T_889 = 4'h5 == _T_502; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122309.10]
  assign _T_890 = 4'h8 == _T_502; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122314.12]
  assign _T_891 = 4'ha == _T_502; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@122319.14]
  assign _GEN_70 = _T_891 ? _T_61 : 1'h1; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122320.14]
  assign _GEN_71 = _T_890 ? _T_61 : _GEN_70; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122315.12]
  assign _GEN_72 = _T_889 ? _T_61 : _GEN_71; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122310.10]
  assign _GEN_73 = _T_888 ? _T_61 : _GEN_72; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122305.8]
  assign _GEN_74 = _T_887 ? _T_61 : _GEN_73; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122300.6]
  assign _GEN_75 = _T_886 ? _T_61 : _GEN_74; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@122295.4]
  assign _GEN_76 = _T_891 ? _T_369 : 64'h0; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122352.14]
  assign _GEN_77 = _T_890 ? _T_449 : _GEN_76; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122347.12]
  assign _GEN_78 = _T_889 ? {{62'd0}, enableVec0_1} : _GEN_77; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122342.10]
  assign _GEN_79 = _T_888 ? {{62'd0}, enableVec0_0} : _GEN_78; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122337.8]
  assign _GEN_80 = _T_887 ? {{62'd0}, _T_288} : _GEN_79; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@122332.6]
  assign _GEN_81 = _T_886 ? {{31'd0}, _T_198} : _GEN_80; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@122327.4]
  assign _T_47_bits_read = Queue_io_deq_bits_read; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@121153.4 RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122290.4]
  assign auto_int_out_1_0 = _T_8 > threshold_1; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@121032.4]
  assign auto_int_out_0_0 = _T_5 > threshold_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@121031.4]
  assign auto_in_a_ready = Queue_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@121030.4]
  assign auto_in_d_valid = Queue_io_deq_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@121030.4]
  assign auto_in_d_bits_opcode = {{2'd0}, _T_47_bits_read}; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@121030.4]
  assign auto_in_d_bits_size = Queue_io_deq_bits_extra_tlrr_extra_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@121030.4]
  assign auto_in_d_bits_source = Queue_io_deq_bits_extra_tlrr_extra_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@121030.4]
  assign auto_in_d_bits_data = _GEN_75 ? _GEN_81 : 64'h0; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@121030.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@121002.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@121003.4]
  assign TLMonitor_io_in_a_ready = Queue_io_enq_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121023.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121022.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121021.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121020.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121019.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121018.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121017.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121016.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121014.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121013.4]
  assign TLMonitor_io_in_d_valid = Queue_io_deq_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121012.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_47_bits_read}; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121011.4]
  assign TLMonitor_io_in_d_bits_size = Queue_io_deq_bits_extra_tlrr_extra_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121009.4]
  assign TLMonitor_io_in_d_bits_source = Queue_io_deq_bits_extra_tlrr_extra_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@121008.4]
  assign LevelGateway_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@121036.4]
  assign LevelGateway_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@121037.4]
  assign LevelGateway_io_interrupt = auto_int_in_0; // @[Plic.scala 156:28:chipyard.TestHarness.RocketConfig.fir@121038.4]
  assign LevelGateway_io_plic_ready = ~pending_0; // @[Plic.scala 243:15:chipyard.TestHarness.RocketConfig.fir@121110.4]
  assign LevelGateway_io_plic_complete = completedDevs[1]; // @[Plic.scala 259:19:chipyard.TestHarness.RocketConfig.fir@121140.4]
  assign PLICFanIn_io_prio_0 = priority_0; // @[Plic.scala 184:21:chipyard.TestHarness.RocketConfig.fir@121062.4]
  assign PLICFanIn_io_ip = enables_0_0 & pending_0; // @[Plic.scala 185:21:chipyard.TestHarness.RocketConfig.fir@121064.4]
  assign PLICFanIn_1_io_prio_0 = priority_0; // @[Plic.scala 184:21:chipyard.TestHarness.RocketConfig.fir@121074.4]
  assign PLICFanIn_1_io_ip = enables_1_0 & pending_0; // @[Plic.scala 185:21:chipyard.TestHarness.RocketConfig.fir@121076.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@121159.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@121160.4]
  assign Queue_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@121161.4]
  assign Queue_io_enq_bits_read = auto_in_a_bits_opcode == 3'h4; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@121167.4]
  assign Queue_io_enq_bits_index = auto_in_a_bits_address[25:3]; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@121166.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@121165.4]
  assign Queue_io_enq_bits_mask = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@121164.4]
  assign Queue_io_enq_bits_extra_tlrr_extra_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@121163.4]
  assign Queue_io_enq_bits_extra_tlrr_extra_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@121162.4]
  assign Queue_io_deq_ready = auto_in_d_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@122287.4]
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
  priority_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  threshold_0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  threshold_1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  pending_0 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  enables_0_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  enables_1_0 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  maxDevs_0 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  maxDevs_1 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_5 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_8 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_187) begin
      priority_0 <= Queue_io_deq_bits_data[32];
    end
    if (_T_382) begin
      threshold_0 <= Queue_io_deq_bits_data[0];
    end
    if (_T_302) begin
      threshold_1 <= Queue_io_deq_bits_data[0];
    end
    if (reset) begin
      pending_0 <= 1'h0;
    end else if (_T_27) begin
      pending_0 <= _T_28;
    end
    if (_T_162) begin
      enables_0_0 <= Queue_io_deq_bits_data[1];
    end
    if (_T_233) begin
      enables_1_0 <= Queue_io_deq_bits_data[1];
    end
    maxDevs_0 <= PLICFanIn_io_dev;
    maxDevs_1 <= PLICFanIn_1_io_dev;
    _T_5 <= PLICFanIn_io_max;
    _T_8 <= PLICFanIn_1_io_max;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_18) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Plic.scala:238 assert((claimer.asUInt & (claimer.asUInt - UInt(1))) === UInt(0)) // One-Hot\n"); // @[Plic.scala 238:11:chipyard.TestHarness.RocketConfig.fir@121094.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_18) begin
          $fatal; // @[Plic.scala 238:11:chipyard.TestHarness.RocketConfig.fir@121095.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_37) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Plic.scala:255 assert((completer.asUInt & (completer.asUInt - UInt(1))) === UInt(0)) // One-Hot\n"); // @[Plic.scala 255:11:chipyard.TestHarness.RocketConfig.fir@121128.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_37) begin
          $fatal; // @[Plic.scala 255:11:chipyard.TestHarness.RocketConfig.fir@121129.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_354) begin
          $fwrite(32'h80000002,"Assertion failed: completerDev should be consistent for all harts\n    at Plic.scala:285 assert(completerDev === data.extract(log2Ceil(nDevices+1)-1, 0),\n"); // @[Plic.scala 285:19:chipyard.TestHarness.RocketConfig.fir@121493.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_354) begin
          $fatal; // @[Plic.scala 285:19:chipyard.TestHarness.RocketConfig.fir@121494.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_354) begin
          $fwrite(32'h80000002,"Assertion failed: completerDev should be consistent for all harts\n    at Plic.scala:285 assert(completerDev === data.extract(log2Ceil(nDevices+1)-1, 0),\n"); // @[Plic.scala 285:19:chipyard.TestHarness.RocketConfig.fir@121583.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_354) begin
          $fatal; // @[Plic.scala 285:19:chipyard.TestHarness.RocketConfig.fir@121584.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
