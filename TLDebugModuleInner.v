module TLDebugModuleInner( // @[:chipyard.TestHarness.RocketConfig.fir@138207.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@138208.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@138209.4]
  output        auto_tl_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input         auto_tl_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [2:0]  auto_tl_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [2:0]  auto_tl_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [1:0]  auto_tl_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [6:0]  auto_tl_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [11:0] auto_tl_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [7:0]  auto_tl_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [63:0] auto_tl_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input         auto_tl_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input         auto_tl_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output        auto_tl_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output [2:0]  auto_tl_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output [1:0]  auto_tl_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output [6:0]  auto_tl_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output [63:0] auto_tl_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output        auto_dmi_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input         auto_dmi_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [2:0]  auto_dmi_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [2:0]  auto_dmi_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [1:0]  auto_dmi_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input         auto_dmi_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [8:0]  auto_dmi_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [3:0]  auto_dmi_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input  [31:0] auto_dmi_in_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input         auto_dmi_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input         auto_dmi_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output        auto_dmi_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output [2:0]  auto_dmi_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output [1:0]  auto_dmi_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output        auto_dmi_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  output [31:0] auto_dmi_in_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@138210.4]
  input         io_dmactive, // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
  output        io_innerCtrl_ready, // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
  input         io_innerCtrl_valid, // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
  input         io_innerCtrl_bits_resumereq, // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
  input  [9:0]  io_innerCtrl_bits_hartsel, // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
  input         io_innerCtrl_bits_ackhavereset, // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
  input         io_innerCtrl_bits_hrmask_0, // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
  output        io_hgDebugInt_0, // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
  input         io_hartIsInReset_0 // @[:chipyard.TestHarness.RocketConfig.fir@138211.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire [8:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
  wire  TLMonitor_1_clock; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire  TLMonitor_1_reset; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire  TLMonitor_1_io_in_a_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire  TLMonitor_1_io_in_a_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_param; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [1:0] TLMonitor_1_io_in_a_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [6:0] TLMonitor_1_io_in_a_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [11:0] TLMonitor_1_io_in_a_bits_address; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [7:0] TLMonitor_1_io_in_a_bits_mask; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire  TLMonitor_1_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire  TLMonitor_1_io_in_d_ready; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire  TLMonitor_1_io_in_d_valid; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_opcode; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_size; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire [6:0] TLMonitor_1_io_in_d_bits_source; // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
  wire  debug_hartReset_0_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@138608.4]
  wire  debug_hartReset_0_reset; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@138608.4]
  wire  debug_hartReset_0_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@138608.4]
  wire  debug_hartReset_0_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@138608.4]
  reg  haltedBitRegs_0; // @[Debug.scala 757:31:chipyard.TestHarness.RocketConfig.fir@138272.4]
  reg [31:0] _RAND_0;
  reg  resumeReqRegs_0; // @[Debug.scala 758:31:chipyard.TestHarness.RocketConfig.fir@138273.4]
  reg [31:0] _RAND_1;
  reg  haveResetBitRegs_0; // @[Debug.scala 759:31:chipyard.TestHarness.RocketConfig.fir@138274.4]
  reg [31:0] _RAND_2;
  wire  hamaskWrSel_0; // @[Debug.scala 820:61:chipyard.TestHarness.RocketConfig.fir@138598.4]
  reg  hrmaskReg_0; // @[Debug.scala 832:29:chipyard.TestHarness.RocketConfig.fir@138606.4]
  reg [31:0] _RAND_3;
  wire  _T_13; // @[Debug.scala 839:11:chipyard.TestHarness.RocketConfig.fir@138615.4]
  wire  _T_16; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@138622.6]
  reg  hrDebugInt_0; // @[Debug.scala 846:34:chipyard.TestHarness.RocketConfig.fir@138629.4]
  reg [31:0] _RAND_4;
  wire  _T_23; // @[package.scala 62:38:chipyard.TestHarness.RocketConfig.fir@138637.6]
  wire  _T_24; // @[package.scala 57:72:chipyard.TestHarness.RocketConfig.fir@138638.6]
  wire  hartIsInResetSync_0; // @[ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@138612.4 ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@138613.4]
  wire  _T_25; // @[package.scala 58:75:chipyard.TestHarness.RocketConfig.fir@138639.6]
  wire  _T_26; // @[package.scala 57:72:chipyard.TestHarness.RocketConfig.fir@138640.6]
  wire  resumereq; // @[Debug.scala 868:41:chipyard.TestHarness.RocketConfig.fir@138689.4]
  wire  _T_316; // @[Debug.scala 1227:32:chipyard.TestHarness.RocketConfig.fir@139631.4]
  wire  _T_317; // @[Debug.scala 1227:73:chipyard.TestHarness.RocketConfig.fir@139632.4]
  wire  _T_318; // @[Debug.scala 1227:61:chipyard.TestHarness.RocketConfig.fir@139633.4]
  wire  resumeAcks_0; // @[Debug.scala 1227:58:chipyard.TestHarness.RocketConfig.fir@139634.4]
  wire  _T_64; // @[Debug.scala 902:39:chipyard.TestHarness.RocketConfig.fir@138754.8]
  wire  _T_65; // @[Debug.scala 902:73:chipyard.TestHarness.RocketConfig.fir@138755.8]
  wire  _GEN_34; // @[Debug.scala 902:100:chipyard.TestHarness.RocketConfig.fir@138756.8]
  wire  _GEN_35; // @[Debug.scala 900:49:chipyard.TestHarness.RocketConfig.fir@138749.6]
  wire [31:0] haltedStatus_0; // @[Debug.scala 1051:30:chipyard.TestHarness.RocketConfig.fir@138817.4 Debug.scala 1055:26:chipyard.TestHarness.RocketConfig.fir@138819.6 Debug.scala 1057:26:chipyard.TestHarness.RocketConfig.fir@138822.6]
  wire  haltedSummary; // @[Debug.scala 1061:48:chipyard.TestHarness.RocketConfig.fir@138824.4]
  wire [31:0] HALTSUM1RdData_haltsum1; // @[:chipyard.TestHarness.RocketConfig.fir@138826.4 :chipyard.TestHarness.RocketConfig.fir@138827.4]
  reg [2:0] ABSTRACTCSReg_cmderr; // @[Debug.scala 1075:34:chipyard.TestHarness.RocketConfig.fir@138859.4]
  reg [31:0] _RAND_5;
  wire  _T_394; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@139715.4]
  wire [4:0] _T_3104; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142811.4]
  wire [6:0] _T_399; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139731.4]
  wire  _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139781.4]
  wire  _T_405; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139737.4]
  wire  _T_423; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139755.4]
  wire  _T_3678; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144003.4]
  wire  _T_3679; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144004.4]
  wire  _T_3680; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144005.4]
  wire [31:0] _T_3149; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@142856.4]
  wire  _T_3712; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144084.4]
  wire  _T_3713; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144085.4]
  wire [7:0] _T_481; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@139817.4]
  wire [7:0] _T_479; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@139815.4]
  wire [7:0] _T_477; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@139813.4]
  wire [7:0] _T_475; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@139811.4]
  wire [31:0] _T_484; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@139820.4]
  wire  _T_2043; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141583.4]
  wire  ABSTRACTCSWrEnMaybe; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141587.4]
  reg [1:0] ctrlStateReg; // @[Debug.scala 1559:27:chipyard.TestHarness.RocketConfig.fir@189106.4]
  reg [31:0] _RAND_6;
  wire  ABSTRACTCSWrEnLegal; // @[Debug.scala 1569:44:chipyard.TestHarness.RocketConfig.fir@189111.4]
  wire  ABSTRACTCSWrEn; // @[Debug.scala 1083:51:chipyard.TestHarness.RocketConfig.fir@138893.4]
  wire [2:0] ABSTRACTCSWrData_cmderr; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141588.4]
  wire [2:0] _T_83; // @[Debug.scala 1103:58:chipyard.TestHarness.RocketConfig.fir@138933.16]
  wire [2:0] _T_84; // @[Debug.scala 1103:56:chipyard.TestHarness.RocketConfig.fir@138934.16]
  wire  _T_39436; // @[Debug.scala 1623:30:chipyard.TestHarness.RocketConfig.fir@189189.6]
  reg [7:0] COMMANDRdData_cmdtype; // @[Debug.scala 1160:25:chipyard.TestHarness.RocketConfig.fir@139485.4]
  reg [31:0] _RAND_7;
  wire  commandRegIsAccessRegister; // @[Debug.scala 1584:58:chipyard.TestHarness.RocketConfig.fir@189140.4]
  reg [23:0] COMMANDRdData_control; // @[Debug.scala 1160:25:chipyard.TestHarness.RocketConfig.fir@139485.4]
  reg [31:0] _RAND_8;
  wire [31:0] _T_4082; // @[Debug.scala 1415:62:chipyard.TestHarness.RocketConfig.fir@145049.4]
  wire  accessRegisterCommandReg_transfer; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145057.4]
  wire  accessRegisterCommandReg_write; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145055.4]
  wire  _T_39426; // @[Debug.scala 1602:19:chipyard.TestHarness.RocketConfig.fir@189158.8]
  wire [15:0] accessRegisterCommandReg_regno; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145053.4]
  wire  _T_39421; // @[Debug.scala 1592:58:chipyard.TestHarness.RocketConfig.fir@189147.4]
  wire  _T_39422; // @[Debug.scala 1592:104:chipyard.TestHarness.RocketConfig.fir@189148.4]
  wire  accessRegIsGPR; // @[Debug.scala 1592:70:chipyard.TestHarness.RocketConfig.fir@189149.4]
  wire  _T_39427; // @[Debug.scala 1602:54:chipyard.TestHarness.RocketConfig.fir@189159.8]
  wire  _GEN_2103; // @[Debug.scala 1602:73:chipyard.TestHarness.RocketConfig.fir@189160.8]
  wire  commandRegIsUnsupported; // @[Debug.scala 1599:39:chipyard.TestHarness.RocketConfig.fir@189150.4]
  wire  _GEN_2104; // @[Debug.scala 1602:73:chipyard.TestHarness.RocketConfig.fir@189160.8]
  wire  commandRegBadHaltResume; // @[Debug.scala 1599:39:chipyard.TestHarness.RocketConfig.fir@189150.4]
  wire  _GEN_2120; // @[Debug.scala 1630:38:chipyard.TestHarness.RocketConfig.fir@189191.8]
  wire  _GEN_2133; // @[Debug.scala 1623:59:chipyard.TestHarness.RocketConfig.fir@189190.6]
  wire  errorHaltResume; // @[Debug.scala 1615:47:chipyard.TestHarness.RocketConfig.fir@189173.4]
  wire  _T_3717; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144098.4]
  wire  _T_3718; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144099.4]
  wire  _T_2763; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142405.4]
  wire  COMMANDWrEnMaybe; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142409.4]
  wire  COMMANDWrEn; // @[Debug.scala 1168:40:chipyard.TestHarness.RocketConfig.fir@139504.4]
  wire [31:0] COMMANDWrDataVal; // @[Debug.scala 265:24:chipyard.TestHarness.RocketConfig.fir@142413.4]
  wire [7:0] COMMANDWrData_cmdtype; // @[Debug.scala 1163:65:chipyard.TestHarness.RocketConfig.fir@139493.4]
  wire  commandWrIsAccessRegister; // @[Debug.scala 1583:60:chipyard.TestHarness.RocketConfig.fir@189139.4]
  wire  _T_39429; // @[Debug.scala 1608:48:chipyard.TestHarness.RocketConfig.fir@189166.4]
  wire  _T_39430; // @[Debug.scala 1608:103:chipyard.TestHarness.RocketConfig.fir@189167.4]
  wire  wrAccessRegisterCommand; // @[Debug.scala 1608:78:chipyard.TestHarness.RocketConfig.fir@189168.4]
  wire  _T_3702; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144062.4]
  wire  _T_3703; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144063.4]
  wire  _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142572.4]
  wire  dmiAbstractDataWrEnMaybe_0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142576.4]
  wire  _T_3514; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143633.4]
  wire  _T_3536; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143690.4]
  wire  _T_3537; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143691.4]
  wire  _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142570.4]
  wire  dmiAbstractDataRdEn_0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142574.4]
  wire  dmiAbstractDataAccessVec_0; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139014.4]
  reg [11:0] ABSTRACTAUTOReg_autoexecdata; // @[Debug.scala 1119:36:chipyard.TestHarness.RocketConfig.fir@138955.4]
  reg [31:0] _RAND_9;
  wire  autoexecData_0; // @[Debug.scala 1152:140:chipyard.TestHarness.RocketConfig.fir@139410.4]
  wire  _T_3707; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144073.4]
  wire  _T_3708; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144074.4]
  wire  dmiAbstractDataWrEnMaybe_4; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139832.4]
  wire  _T_3541; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143701.4]
  wire  _T_3542; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143702.4]
  wire  dmiAbstractDataRdEn_4; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139830.4]
  wire  dmiAbstractDataAccessVec_4; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139018.4]
  wire  autoexecData_1; // @[Debug.scala 1152:140:chipyard.TestHarness.RocketConfig.fir@139412.4]
  wire  _T_285; // @[Debug.scala 1155:42:chipyard.TestHarness.RocketConfig.fir@139462.4]
  wire  _T_3762; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144165.4]
  wire  _T_3763; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144166.4]
  wire  dmiProgramBufferWrEnMaybe_0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140733.4]
  wire  _T_3596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143793.4]
  wire  _T_3597; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143794.4]
  wire  dmiProgramBufferRdEn_0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140731.4]
  wire  dmiProgramBufferAccessVec_0; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139160.4]
  reg [15:0] ABSTRACTAUTOReg_autoexecprogbuf; // @[Debug.scala 1119:36:chipyard.TestHarness.RocketConfig.fir@138955.4]
  reg [31:0] _RAND_10;
  wire  autoexecProg_0; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139430.4]
  wire  _T_3767; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144176.4]
  wire  _T_3768; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144177.4]
  wire  dmiProgramBufferWrEnMaybe_4; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140497.4]
  wire  _T_3601; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143804.4]
  wire  _T_3602; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143805.4]
  wire  dmiProgramBufferRdEn_4; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140495.4]
  wire  dmiProgramBufferAccessVec_4; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139164.4]
  wire  autoexecProg_1; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139432.4]
  wire  _T_286; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139463.4]
  wire  _T_3772; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144187.4]
  wire  _T_3773; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144188.4]
  wire  dmiProgramBufferWrEnMaybe_8; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140851.4]
  wire  _T_3606; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143815.4]
  wire  _T_3607; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143816.4]
  wire  dmiProgramBufferRdEn_8; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140849.4]
  wire  dmiProgramBufferAccessVec_8; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139168.4]
  wire  autoexecProg_2; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139434.4]
  wire  _T_287; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139464.4]
  wire  _T_3777; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144198.4]
  wire  _T_3778; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144199.4]
  wire  dmiProgramBufferWrEnMaybe_12; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141942.4]
  wire  _T_3611; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143826.4]
  wire  _T_3612; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143827.4]
  wire  dmiProgramBufferRdEn_12; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141940.4]
  wire  dmiProgramBufferAccessVec_12; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139172.4]
  wire  autoexecProg_3; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139436.4]
  wire  _T_288; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139465.4]
  wire  _T_3782; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144209.4]
  wire  _T_3783; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144210.4]
  wire  dmiProgramBufferWrEnMaybe_16; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142437.4]
  wire  _T_3616; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143837.4]
  wire  _T_3617; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143838.4]
  wire  dmiProgramBufferRdEn_16; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142435.4]
  wire  dmiProgramBufferAccessVec_16; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139176.4]
  wire  autoexecProg_4; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139438.4]
  wire  _T_289; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139466.4]
  wire  _T_3787; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144220.4]
  wire  _T_3788; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144221.4]
  wire  dmiProgramBufferWrEnMaybe_20; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140143.4]
  wire  _T_3621; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143848.4]
  wire  _T_3622; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143849.4]
  wire  dmiProgramBufferRdEn_20; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140141.4]
  wire  dmiProgramBufferAccessVec_20; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139180.4]
  wire  autoexecProg_5; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139440.4]
  wire  _T_290; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139467.4]
  wire  _T_3792; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144231.4]
  wire  _T_3793; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144232.4]
  wire  dmiProgramBufferWrEnMaybe_24; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140379.4]
  wire  _T_3626; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143859.4]
  wire  _T_3627; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143860.4]
  wire  dmiProgramBufferRdEn_24; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140377.4]
  wire  dmiProgramBufferAccessVec_24; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139184.4]
  wire  autoexecProg_6; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139442.4]
  wire  _T_291; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139468.4]
  wire  _T_3797; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144242.4]
  wire  _T_3798; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144243.4]
  wire  dmiProgramBufferWrEnMaybe_28; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141824.4]
  wire  _T_3631; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143870.4]
  wire  _T_3632; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143871.4]
  wire  dmiProgramBufferRdEn_28; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141822.4]
  wire  dmiProgramBufferAccessVec_28; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139188.4]
  wire  autoexecProg_7; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139444.4]
  wire  _T_292; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139469.4]
  wire  _T_3802; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144253.4]
  wire  _T_3803; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144254.4]
  wire  dmiProgramBufferWrEnMaybe_32; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142291.4]
  wire  _T_3636; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143881.4]
  wire  _T_3637; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143882.4]
  wire  dmiProgramBufferRdEn_32; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142289.4]
  wire  dmiProgramBufferAccessVec_32; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139192.4]
  wire  autoexecProg_8; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139446.4]
  wire  _T_293; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139470.4]
  wire  _T_3807; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144264.4]
  wire  _T_3808; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144265.4]
  wire  dmiProgramBufferWrEnMaybe_36; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140615.4]
  wire  _T_3641; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143892.4]
  wire  _T_3642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143893.4]
  wire  dmiProgramBufferRdEn_36; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140613.4]
  wire  dmiProgramBufferAccessVec_36; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139196.4]
  wire  autoexecProg_9; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139448.4]
  wire  _T_294; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139471.4]
  wire  _T_3812; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144275.4]
  wire  _T_3813; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144276.4]
  wire  dmiProgramBufferWrEnMaybe_40; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139950.4]
  wire  _T_3646; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143903.4]
  wire  _T_3647; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143904.4]
  wire  dmiProgramBufferRdEn_40; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139948.4]
  wire  dmiProgramBufferAccessVec_40; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139200.4]
  wire  autoexecProg_10; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139450.4]
  wire  _T_295; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139472.4]
  wire  _T_3817; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144286.4]
  wire  _T_3818; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144287.4]
  wire  dmiProgramBufferWrEnMaybe_44; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142173.4]
  wire  _T_3651; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143914.4]
  wire  _T_3652; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143915.4]
  wire  dmiProgramBufferRdEn_44; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142171.4]
  wire  dmiProgramBufferAccessVec_44; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139204.4]
  wire  autoexecProg_11; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139452.4]
  wire  _T_296; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139473.4]
  wire  _T_3822; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144297.4]
  wire  _T_3823; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144298.4]
  wire  dmiProgramBufferWrEnMaybe_48; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141706.4]
  wire  _T_3656; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143925.4]
  wire  _T_3657; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143926.4]
  wire  dmiProgramBufferRdEn_48; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141704.4]
  wire  dmiProgramBufferAccessVec_48; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139208.4]
  wire  autoexecProg_12; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139454.4]
  wire  _T_297; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139474.4]
  wire  _T_3827; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144308.4]
  wire  _T_3828; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144309.4]
  wire  dmiProgramBufferWrEnMaybe_52; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140969.4]
  wire  _T_3661; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143936.4]
  wire  _T_3662; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143937.4]
  wire  dmiProgramBufferRdEn_52; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140967.4]
  wire  dmiProgramBufferAccessVec_52; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139212.4]
  wire  autoexecProg_13; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139456.4]
  wire  _T_298; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139475.4]
  wire  _T_3832; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144319.4]
  wire  _T_3833; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144320.4]
  wire  dmiProgramBufferWrEnMaybe_56; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140261.4]
  wire  _T_3666; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143947.4]
  wire  _T_3667; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143948.4]
  wire  dmiProgramBufferRdEn_56; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140259.4]
  wire  dmiProgramBufferAccessVec_56; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139216.4]
  wire  autoexecProg_14; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139458.4]
  wire  _T_299; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139476.4]
  wire  _T_3837; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144330.4]
  wire  _T_3838; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144331.4]
  wire  dmiProgramBufferWrEnMaybe_60; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142694.4]
  wire  _T_3671; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143958.4]
  wire  _T_3672; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143959.4]
  wire  dmiProgramBufferRdEn_60; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142692.4]
  wire  dmiProgramBufferAccessVec_60; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139220.4]
  wire  autoexecProg_15; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139460.4]
  wire  _T_300; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139477.4]
  wire  autoexec; // @[Debug.scala 1155:48:chipyard.TestHarness.RocketConfig.fir@139478.4]
  wire  _T_39431; // @[Debug.scala 1609:48:chipyard.TestHarness.RocketConfig.fir@189169.4]
  wire  regAccessRegisterCommand; // @[Debug.scala 1609:78:chipyard.TestHarness.RocketConfig.fir@189171.4]
  wire  _T_39434; // @[Debug.scala 1616:37:chipyard.TestHarness.RocketConfig.fir@189174.6]
  wire  _T_39420; // @[Debug.scala 1586:49:chipyard.TestHarness.RocketConfig.fir@189141.4]
  wire  commandWrIsUnsupported; // @[Debug.scala 1586:46:chipyard.TestHarness.RocketConfig.fir@189142.4]
  wire  _T_39435; // @[Debug.scala 1620:28:chipyard.TestHarness.RocketConfig.fir@189183.10]
  wire  _GEN_2110; // @[Debug.scala 1618:43:chipyard.TestHarness.RocketConfig.fir@189179.8]
  wire  _GEN_2112; // @[Debug.scala 1616:66:chipyard.TestHarness.RocketConfig.fir@189175.6]
  wire  _GEN_2131; // @[Debug.scala 1623:59:chipyard.TestHarness.RocketConfig.fir@189190.6]
  wire  errorUnsupported; // @[Debug.scala 1615:47:chipyard.TestHarness.RocketConfig.fir@189173.4]
  wire  _T_39437; // @[Debug.scala 1644:30:chipyard.TestHarness.RocketConfig.fir@189211.8]
  wire  _T_6172; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@147201.4]
  wire [7:0] _T_33705; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@174973.4]
  wire [8:0] _T_6177; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147217.4]
  wire  _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147425.4]
  wire  _T_6309; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147349.4]
  wire  _T_38092; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185228.4]
  wire  _T_38093; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185229.4]
  wire  _T_38094; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185230.4]
  wire [255:0] _T_33979; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@175247.4]
  wire  _T_38261; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185550.4]
  wire  _T_38262; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185551.4]
  wire [7:0] _T_6541; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147585.4]
  wire [7:0] _T_6539; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147583.4]
  wire [7:0] _T_6537; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147581.4]
  wire [7:0] _T_6535; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147579.4]
  wire [7:0] _T_6533; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147577.4]
  wire [7:0] _T_6531; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147575.4]
  wire [7:0] _T_6529; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147573.4]
  wire [7:0] _T_6527; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147571.4]
  wire [63:0] _T_6548; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@147592.4]
  wire  _T_14435; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@155529.4]
  wire  hartExceptionWrEn; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@155533.4]
  wire  _GEN_2129; // @[Debug.scala 1644:51:chipyard.TestHarness.RocketConfig.fir@189212.8]
  wire  _GEN_2135; // @[Debug.scala 1623:59:chipyard.TestHarness.RocketConfig.fir@189190.6]
  wire  errorException; // @[Debug.scala 1615:47:chipyard.TestHarness.RocketConfig.fir@189173.4]
  wire  _T_39403; // @[Debug.scala 1575:45:chipyard.TestHarness.RocketConfig.fir@189121.4]
  wire  _T_39404; // @[Debug.scala 1575:42:chipyard.TestHarness.RocketConfig.fir@189122.4]
  wire  _T_3722; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144106.4]
  wire  _T_3723; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144107.4]
  wire  _T_688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140064.4]
  wire  autoexecdataWrEnMaybe; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140068.4]
  wire  _T_39406; // @[Debug.scala 1576:42:chipyard.TestHarness.RocketConfig.fir@189124.4]
  wire  _T_39407; // @[Debug.scala 1575:74:chipyard.TestHarness.RocketConfig.fir@189125.4]
  wire  _T_734; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140112.4]
  wire  autoexecprogbufWrEnMaybe; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140116.4]
  wire  _T_39409; // @[Debug.scala 1577:44:chipyard.TestHarness.RocketConfig.fir@189127.4]
  wire  _T_39410; // @[Debug.scala 1576:74:chipyard.TestHarness.RocketConfig.fir@189128.4]
  wire  _T_39412; // @[Debug.scala 1578:42:chipyard.TestHarness.RocketConfig.fir@189130.4]
  wire  _T_39413; // @[Debug.scala 1577:74:chipyard.TestHarness.RocketConfig.fir@189131.4]
  wire  _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142600.4]
  wire  dmiAbstractDataWrEnMaybe_1; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142604.4]
  wire  _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142598.4]
  wire  dmiAbstractDataRdEn_1; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142602.4]
  wire  dmiAbstractDataAccessVec_1; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139015.4]
  wire  _T_169; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139288.4]
  wire  _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142630.4]
  wire  dmiAbstractDataWrEnMaybe_2; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142634.4]
  wire  _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142628.4]
  wire  dmiAbstractDataRdEn_2; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142632.4]
  wire  dmiAbstractDataAccessVec_2; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139016.4]
  wire  _T_170; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139289.4]
  wire  _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142660.4]
  wire  dmiAbstractDataWrEnMaybe_3; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142664.4]
  wire  _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142658.4]
  wire  dmiAbstractDataRdEn_3; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142662.4]
  wire  dmiAbstractDataAccessVec_3; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139017.4]
  wire  _T_171; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139290.4]
  wire  _T_172; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139291.4]
  wire  dmiAbstractDataWrEnMaybe_5; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139860.4]
  wire  dmiAbstractDataRdEn_5; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139858.4]
  wire  dmiAbstractDataAccessVec_5; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139019.4]
  wire  _T_173; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139292.4]
  wire  dmiAbstractDataWrEnMaybe_6; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139890.4]
  wire  dmiAbstractDataRdEn_6; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139888.4]
  wire  dmiAbstractDataAccessVec_6; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139020.4]
  wire  _T_174; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139293.4]
  wire  dmiAbstractDataWrEnMaybe_7; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139920.4]
  wire  dmiAbstractDataRdEn_7; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139918.4]
  wire  dmiAbstractDataAccessVec_7; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139021.4]
  wire  dmiAbstractDataAccess; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139294.4]
  wire  _T_39415; // @[Debug.scala 1579:42:chipyard.TestHarness.RocketConfig.fir@189133.4]
  wire  _T_39416; // @[Debug.scala 1578:74:chipyard.TestHarness.RocketConfig.fir@189134.4]
  wire  dmiProgramBufferWrEnMaybe_1; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140761.4]
  wire  dmiProgramBufferRdEn_1; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140759.4]
  wire  dmiProgramBufferAccessVec_1; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139161.4]
  wire  _T_175; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139295.4]
  wire  dmiProgramBufferWrEnMaybe_2; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140791.4]
  wire  dmiProgramBufferRdEn_2; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140789.4]
  wire  dmiProgramBufferAccessVec_2; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139162.4]
  wire  _T_176; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139296.4]
  wire  dmiProgramBufferWrEnMaybe_3; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140821.4]
  wire  dmiProgramBufferRdEn_3; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140819.4]
  wire  dmiProgramBufferAccessVec_3; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139163.4]
  wire  _T_177; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139297.4]
  wire  _T_178; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139298.4]
  wire  dmiProgramBufferWrEnMaybe_5; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140525.4]
  wire  dmiProgramBufferRdEn_5; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140523.4]
  wire  dmiProgramBufferAccessVec_5; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139165.4]
  wire  _T_179; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139299.4]
  wire  dmiProgramBufferWrEnMaybe_6; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140555.4]
  wire  dmiProgramBufferRdEn_6; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140553.4]
  wire  dmiProgramBufferAccessVec_6; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139166.4]
  wire  _T_180; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139300.4]
  wire  dmiProgramBufferWrEnMaybe_7; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140585.4]
  wire  dmiProgramBufferRdEn_7; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140583.4]
  wire  dmiProgramBufferAccessVec_7; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139167.4]
  wire  _T_181; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139301.4]
  wire  _T_182; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139302.4]
  wire  dmiProgramBufferWrEnMaybe_9; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140879.4]
  wire  dmiProgramBufferRdEn_9; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140877.4]
  wire  dmiProgramBufferAccessVec_9; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139169.4]
  wire  _T_183; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139303.4]
  wire  dmiProgramBufferWrEnMaybe_10; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140909.4]
  wire  dmiProgramBufferRdEn_10; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140907.4]
  wire  dmiProgramBufferAccessVec_10; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139170.4]
  wire  _T_184; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139304.4]
  wire  dmiProgramBufferWrEnMaybe_11; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140939.4]
  wire  dmiProgramBufferRdEn_11; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140937.4]
  wire  dmiProgramBufferAccessVec_11; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139171.4]
  wire  _T_185; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139305.4]
  wire  _T_186; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139306.4]
  wire  dmiProgramBufferWrEnMaybe_13; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141970.4]
  wire  dmiProgramBufferRdEn_13; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141968.4]
  wire  dmiProgramBufferAccessVec_13; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139173.4]
  wire  _T_187; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139307.4]
  wire  dmiProgramBufferWrEnMaybe_14; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142000.4]
  wire  dmiProgramBufferRdEn_14; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141998.4]
  wire  dmiProgramBufferAccessVec_14; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139174.4]
  wire  _T_188; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139308.4]
  wire  dmiProgramBufferWrEnMaybe_15; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142030.4]
  wire  dmiProgramBufferRdEn_15; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142028.4]
  wire  dmiProgramBufferAccessVec_15; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139175.4]
  wire  _T_189; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139309.4]
  wire  _T_190; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139310.4]
  wire  dmiProgramBufferWrEnMaybe_17; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142465.4]
  wire  dmiProgramBufferRdEn_17; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142463.4]
  wire  dmiProgramBufferAccessVec_17; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139177.4]
  wire  _T_191; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139311.4]
  wire  dmiProgramBufferWrEnMaybe_18; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142495.4]
  wire  dmiProgramBufferRdEn_18; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142493.4]
  wire  dmiProgramBufferAccessVec_18; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139178.4]
  wire  _T_192; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139312.4]
  wire  dmiProgramBufferWrEnMaybe_19; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142525.4]
  wire  dmiProgramBufferRdEn_19; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142523.4]
  wire  dmiProgramBufferAccessVec_19; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139179.4]
  wire  _T_193; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139313.4]
  wire  _T_194; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139314.4]
  wire  dmiProgramBufferWrEnMaybe_21; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140171.4]
  wire  dmiProgramBufferRdEn_21; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140169.4]
  wire  dmiProgramBufferAccessVec_21; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139181.4]
  wire  _T_195; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139315.4]
  wire  dmiProgramBufferWrEnMaybe_22; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140201.4]
  wire  dmiProgramBufferRdEn_22; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140199.4]
  wire  dmiProgramBufferAccessVec_22; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139182.4]
  wire  _T_196; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139316.4]
  wire  dmiProgramBufferWrEnMaybe_23; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140231.4]
  wire  dmiProgramBufferRdEn_23; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140229.4]
  wire  dmiProgramBufferAccessVec_23; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139183.4]
  wire  _T_197; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139317.4]
  wire  _T_198; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139318.4]
  wire  dmiProgramBufferWrEnMaybe_25; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140407.4]
  wire  dmiProgramBufferRdEn_25; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140405.4]
  wire  dmiProgramBufferAccessVec_25; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139185.4]
  wire  _T_199; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139319.4]
  wire  dmiProgramBufferWrEnMaybe_26; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140437.4]
  wire  dmiProgramBufferRdEn_26; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140435.4]
  wire  dmiProgramBufferAccessVec_26; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139186.4]
  wire  _T_200; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139320.4]
  wire  dmiProgramBufferWrEnMaybe_27; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140467.4]
  wire  dmiProgramBufferRdEn_27; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140465.4]
  wire  dmiProgramBufferAccessVec_27; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139187.4]
  wire  _T_201; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139321.4]
  wire  _T_202; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139322.4]
  wire  dmiProgramBufferWrEnMaybe_29; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141852.4]
  wire  dmiProgramBufferRdEn_29; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141850.4]
  wire  dmiProgramBufferAccessVec_29; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139189.4]
  wire  _T_203; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139323.4]
  wire  dmiProgramBufferWrEnMaybe_30; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141882.4]
  wire  dmiProgramBufferRdEn_30; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141880.4]
  wire  dmiProgramBufferAccessVec_30; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139190.4]
  wire  _T_204; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139324.4]
  wire  dmiProgramBufferWrEnMaybe_31; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141912.4]
  wire  dmiProgramBufferRdEn_31; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141910.4]
  wire  dmiProgramBufferAccessVec_31; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139191.4]
  wire  _T_205; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139325.4]
  wire  _T_206; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139326.4]
  wire  dmiProgramBufferWrEnMaybe_33; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142319.4]
  wire  dmiProgramBufferRdEn_33; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142317.4]
  wire  dmiProgramBufferAccessVec_33; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139193.4]
  wire  _T_207; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139327.4]
  wire  dmiProgramBufferWrEnMaybe_34; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142349.4]
  wire  dmiProgramBufferRdEn_34; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142347.4]
  wire  dmiProgramBufferAccessVec_34; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139194.4]
  wire  _T_208; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139328.4]
  wire  dmiProgramBufferWrEnMaybe_35; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142379.4]
  wire  dmiProgramBufferRdEn_35; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142377.4]
  wire  dmiProgramBufferAccessVec_35; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139195.4]
  wire  _T_209; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139329.4]
  wire  _T_210; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139330.4]
  wire  dmiProgramBufferWrEnMaybe_37; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140643.4]
  wire  dmiProgramBufferRdEn_37; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140641.4]
  wire  dmiProgramBufferAccessVec_37; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139197.4]
  wire  _T_211; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139331.4]
  wire  dmiProgramBufferWrEnMaybe_38; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140673.4]
  wire  dmiProgramBufferRdEn_38; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140671.4]
  wire  dmiProgramBufferAccessVec_38; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139198.4]
  wire  _T_212; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139332.4]
  wire  dmiProgramBufferWrEnMaybe_39; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140703.4]
  wire  dmiProgramBufferRdEn_39; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140701.4]
  wire  dmiProgramBufferAccessVec_39; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139199.4]
  wire  _T_213; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139333.4]
  wire  _T_214; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139334.4]
  wire  dmiProgramBufferWrEnMaybe_41; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139978.4]
  wire  dmiProgramBufferRdEn_41; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139976.4]
  wire  dmiProgramBufferAccessVec_41; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139201.4]
  wire  _T_215; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139335.4]
  wire  dmiProgramBufferWrEnMaybe_42; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140008.4]
  wire  dmiProgramBufferRdEn_42; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140006.4]
  wire  dmiProgramBufferAccessVec_42; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139202.4]
  wire  _T_216; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139336.4]
  wire  dmiProgramBufferWrEnMaybe_43; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140038.4]
  wire  dmiProgramBufferRdEn_43; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140036.4]
  wire  dmiProgramBufferAccessVec_43; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139203.4]
  wire  _T_217; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139337.4]
  wire  _T_218; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139338.4]
  wire  dmiProgramBufferWrEnMaybe_45; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142201.4]
  wire  dmiProgramBufferRdEn_45; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142199.4]
  wire  dmiProgramBufferAccessVec_45; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139205.4]
  wire  _T_219; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139339.4]
  wire  dmiProgramBufferWrEnMaybe_46; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142231.4]
  wire  dmiProgramBufferRdEn_46; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142229.4]
  wire  dmiProgramBufferAccessVec_46; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139206.4]
  wire  _T_220; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139340.4]
  wire  dmiProgramBufferWrEnMaybe_47; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142261.4]
  wire  dmiProgramBufferRdEn_47; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142259.4]
  wire  dmiProgramBufferAccessVec_47; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139207.4]
  wire  _T_221; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139341.4]
  wire  _T_222; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139342.4]
  wire  dmiProgramBufferWrEnMaybe_49; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141734.4]
  wire  dmiProgramBufferRdEn_49; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141732.4]
  wire  dmiProgramBufferAccessVec_49; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139209.4]
  wire  _T_223; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139343.4]
  wire  dmiProgramBufferWrEnMaybe_50; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141764.4]
  wire  dmiProgramBufferRdEn_50; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141762.4]
  wire  dmiProgramBufferAccessVec_50; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139210.4]
  wire  _T_224; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139344.4]
  wire  dmiProgramBufferWrEnMaybe_51; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141794.4]
  wire  dmiProgramBufferRdEn_51; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141792.4]
  wire  dmiProgramBufferAccessVec_51; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139211.4]
  wire  _T_225; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139345.4]
  wire  _T_226; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139346.4]
  wire  dmiProgramBufferWrEnMaybe_53; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140997.4]
  wire  dmiProgramBufferRdEn_53; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140995.4]
  wire  dmiProgramBufferAccessVec_53; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139213.4]
  wire  _T_227; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139347.4]
  wire  dmiProgramBufferWrEnMaybe_54; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141027.4]
  wire  dmiProgramBufferRdEn_54; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141025.4]
  wire  dmiProgramBufferAccessVec_54; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139214.4]
  wire  _T_228; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139348.4]
  wire  dmiProgramBufferWrEnMaybe_55; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141057.4]
  wire  dmiProgramBufferRdEn_55; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141055.4]
  wire  dmiProgramBufferAccessVec_55; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139215.4]
  wire  _T_229; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139349.4]
  wire  _T_230; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139350.4]
  wire  dmiProgramBufferWrEnMaybe_57; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140289.4]
  wire  dmiProgramBufferRdEn_57; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140287.4]
  wire  dmiProgramBufferAccessVec_57; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139217.4]
  wire  _T_231; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139351.4]
  wire  dmiProgramBufferWrEnMaybe_58; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140319.4]
  wire  dmiProgramBufferRdEn_58; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140317.4]
  wire  dmiProgramBufferAccessVec_58; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139218.4]
  wire  _T_232; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139352.4]
  wire  dmiProgramBufferWrEnMaybe_59; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140349.4]
  wire  dmiProgramBufferRdEn_59; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140347.4]
  wire  dmiProgramBufferAccessVec_59; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139219.4]
  wire  _T_233; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139353.4]
  wire  _T_234; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139354.4]
  wire  dmiProgramBufferWrEnMaybe_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142722.4]
  wire  dmiProgramBufferRdEn_61; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142720.4]
  wire  dmiProgramBufferAccessVec_61; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139221.4]
  wire  _T_235; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139355.4]
  wire  dmiProgramBufferWrEnMaybe_62; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142752.4]
  wire  dmiProgramBufferRdEn_62; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142750.4]
  wire  dmiProgramBufferAccessVec_62; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139222.4]
  wire  _T_236; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139356.4]
  wire  dmiProgramBufferWrEnMaybe_63; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142782.4]
  wire  dmiProgramBufferRdEn_63; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142780.4]
  wire  dmiProgramBufferAccessVec_63; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139223.4]
  wire  dmiProgramBufferAccess; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139357.4]
  wire  _T_39418; // @[Debug.scala 1580:42:chipyard.TestHarness.RocketConfig.fir@189136.4]
  wire  errorBusy; // @[Debug.scala 1579:74:chipyard.TestHarness.RocketConfig.fir@189137.4]
  wire  _T_91; // @[Debug.scala 1132:38:chipyard.TestHarness.RocketConfig.fir@138985.6]
  wire [15:0] ABSTRACTAUTOWrData_autoexecprogbuf; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140117.4]
  wire  _T_93; // @[Debug.scala 1135:35:chipyard.TestHarness.RocketConfig.fir@138990.6]
  wire [11:0] ABSTRACTAUTOWrData_autoexecdata; // @[:chipyard.TestHarness.RocketConfig.fir@138960.4 :chipyard.TestHarness.RocketConfig.fir@138961.4 Debug.scala 278:12:chipyard.TestHarness.RocketConfig.fir@140071.4]
  wire [11:0] _T_94; // @[Debug.scala 1136:73:chipyard.TestHarness.RocketConfig.fir@138992.8]
  wire [23:0] COMMANDWrData_control; // @[Debug.scala 1163:65:chipyard.TestHarness.RocketConfig.fir@139491.4]
  reg [7:0] abstractDataMem_0; // @[Debug.scala 1183:36:chipyard.TestHarness.RocketConfig.fir@139518.4]
  reg [31:0] _RAND_11;
  reg [7:0] abstractDataMem_1; // @[Debug.scala 1183:36:chipyard.TestHarness.RocketConfig.fir@139518.4]
  reg [31:0] _RAND_12;
  reg [7:0] abstractDataMem_2; // @[Debug.scala 1183:36:chipyard.TestHarness.RocketConfig.fir@139518.4]
  reg [31:0] _RAND_13;
  reg [7:0] abstractDataMem_3; // @[Debug.scala 1183:36:chipyard.TestHarness.RocketConfig.fir@139518.4]
  reg [31:0] _RAND_14;
  reg [7:0] abstractDataMem_4; // @[Debug.scala 1183:36:chipyard.TestHarness.RocketConfig.fir@139518.4]
  reg [31:0] _RAND_15;
  reg [7:0] abstractDataMem_5; // @[Debug.scala 1183:36:chipyard.TestHarness.RocketConfig.fir@139518.4]
  reg [31:0] _RAND_16;
  reg [7:0] abstractDataMem_6; // @[Debug.scala 1183:36:chipyard.TestHarness.RocketConfig.fir@139518.4]
  reg [31:0] _RAND_17;
  reg [7:0] abstractDataMem_7; // @[Debug.scala 1183:36:chipyard.TestHarness.RocketConfig.fir@139518.4]
  reg [31:0] _RAND_18;
  reg [7:0] programBufferMem_0; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_19;
  reg [7:0] programBufferMem_1; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_20;
  reg [7:0] programBufferMem_2; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_21;
  reg [7:0] programBufferMem_3; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_22;
  reg [7:0] programBufferMem_4; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_23;
  reg [7:0] programBufferMem_5; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_24;
  reg [7:0] programBufferMem_6; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_25;
  reg [7:0] programBufferMem_7; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_26;
  reg [7:0] programBufferMem_8; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_27;
  reg [7:0] programBufferMem_9; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_28;
  reg [7:0] programBufferMem_10; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_29;
  reg [7:0] programBufferMem_11; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_30;
  reg [7:0] programBufferMem_12; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_31;
  reg [7:0] programBufferMem_13; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_32;
  reg [7:0] programBufferMem_14; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_33;
  reg [7:0] programBufferMem_15; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_34;
  reg [7:0] programBufferMem_16; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_35;
  reg [7:0] programBufferMem_17; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_36;
  reg [7:0] programBufferMem_18; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_37;
  reg [7:0] programBufferMem_19; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_38;
  reg [7:0] programBufferMem_20; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_39;
  reg [7:0] programBufferMem_21; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_40;
  reg [7:0] programBufferMem_22; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_41;
  reg [7:0] programBufferMem_23; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_42;
  reg [7:0] programBufferMem_24; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_43;
  reg [7:0] programBufferMem_25; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_44;
  reg [7:0] programBufferMem_26; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_45;
  reg [7:0] programBufferMem_27; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_46;
  reg [7:0] programBufferMem_28; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_47;
  reg [7:0] programBufferMem_29; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_48;
  reg [7:0] programBufferMem_30; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_49;
  reg [7:0] programBufferMem_31; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_50;
  reg [7:0] programBufferMem_32; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_51;
  reg [7:0] programBufferMem_33; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_52;
  reg [7:0] programBufferMem_34; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_53;
  reg [7:0] programBufferMem_35; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_54;
  reg [7:0] programBufferMem_36; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_55;
  reg [7:0] programBufferMem_37; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_56;
  reg [7:0] programBufferMem_38; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_57;
  reg [7:0] programBufferMem_39; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_58;
  reg [7:0] programBufferMem_40; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_59;
  reg [7:0] programBufferMem_41; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_60;
  reg [7:0] programBufferMem_42; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_61;
  reg [7:0] programBufferMem_43; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_62;
  reg [7:0] programBufferMem_44; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_63;
  reg [7:0] programBufferMem_45; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_64;
  reg [7:0] programBufferMem_46; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_65;
  reg [7:0] programBufferMem_47; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_66;
  reg [7:0] programBufferMem_48; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_67;
  reg [7:0] programBufferMem_49; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_68;
  reg [7:0] programBufferMem_50; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_69;
  reg [7:0] programBufferMem_51; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_70;
  reg [7:0] programBufferMem_52; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_71;
  reg [7:0] programBufferMem_53; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_72;
  reg [7:0] programBufferMem_54; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_73;
  reg [7:0] programBufferMem_55; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_74;
  reg [7:0] programBufferMem_56; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_75;
  reg [7:0] programBufferMem_57; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_76;
  reg [7:0] programBufferMem_58; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_77;
  reg [7:0] programBufferMem_59; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_78;
  reg [7:0] programBufferMem_60; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_79;
  reg [7:0] programBufferMem_61; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_80;
  reg [7:0] programBufferMem_62; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_81;
  reg [7:0] programBufferMem_63; // @[Debug.scala 1187:34:chipyard.TestHarness.RocketConfig.fir@139528.4]
  reg [31:0] _RAND_82;
  wire  _T_14414; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@155506.4]
  wire  hartResumingWrEn; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@155510.4]
  wire  _GEN_68; // @[Debug.scala 1208:39:chipyard.TestHarness.RocketConfig.fir@139614.10]
  wire  _T_38256; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185541.4]
  wire  _T_38257; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185542.4]
  wire  hartHaltedWrEn; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159753.4]
  wire  _GEN_69; // @[Debug.scala 1204:37:chipyard.TestHarness.RocketConfig.fir@139607.8]
  wire  _GEN_71; // @[Debug.scala 1201:45:chipyard.TestHarness.RocketConfig.fir@139602.6]
  wire  _GEN_73; // @[Debug.scala 1218:33:chipyard.TestHarness.RocketConfig.fir@139620.6]
  wire  _GEN_74; // @[Debug.scala 1223:52:chipyard.TestHarness.RocketConfig.fir@139627.6]
  wire [31:0] _T_580; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@139936.4]
  wire [31:0] _T_678; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140054.4]
  wire [2:0] _T_724; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140102.4]
  wire [15:0] _T_725; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140103.4]
  wire [31:0] _T_749; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140129.4]
  wire [31:0] _T_847; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140247.4]
  wire [31:0] _T_945; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140365.4]
  wire [31:0] _T_1043; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140483.4]
  wire [31:0] _T_1141; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140601.4]
  wire [31:0] _T_1239; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140719.4]
  wire [31:0] _T_1337; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140837.4]
  wire [31:0] _T_1435; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140955.4]
  wire [31:0] _T_1533; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141073.4]
  wire [16:0] _T_1874; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141414.4]
  wire [20:0] _T_1966; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141506.4]
  wire [21:0] _T_1967; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141507.4]
  wire [22:0] _T_1989; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141529.4]
  wire  abstractCommandBusy; // @[Debug.scala 1567:42:chipyard.TestHarness.RocketConfig.fir@189109.4]
  wire [13:0] _T_2127; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141669.4]
  wire [23:0] _T_2128; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141670.4]
  wire [28:0] _T_2150; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141692.4]
  wire [31:0] _T_2248; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141810.4]
  wire [31:0] _T_2346; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141928.4]
  wire [31:0] _T_2444; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142046.4]
  wire [31:0] _T_2655; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142277.4]
  wire [31:0] _T_2753; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142395.4]
  wire [31:0] _T_2874; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142541.4]
  wire [31:0] _T_2993; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142680.4]
  wire [31:0] _T_3091; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142798.4]
  wire  _GEN_279; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_280; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_281; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_282; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_283; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_284; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_285; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_286; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_2144; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_287; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_2145; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_288; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_2146; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_289; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_2147; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_290; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_2148; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_291; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_2149; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_292; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_2150; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_293; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_294; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_295; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_296; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_297; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_298; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_299; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_300; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_301; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_302; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_303; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_304; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_305; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_306; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_307; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_308; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire  _GEN_309; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  wire [31:0] _T_3854_1; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@144423.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@144426.4]
  wire [31:0] _GEN_311; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_312; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_313; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_314; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_315; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _T_3854_6; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@144423.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@144431.4]
  wire [31:0] _GEN_316; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_317; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_318; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_319; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_320; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_321; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_322; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_323; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_324; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_325; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_326; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_327; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_328; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_329; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_330; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_331; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_332; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_333; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_334; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_335; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_336; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_337; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_338; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_339; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_340; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire [31:0] _GEN_341; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  wire  _T_3863; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144489.4]
  wire  _T_3865; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144494.4]
  wire  _T_3867; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144499.4]
  wire  _T_3869; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144504.4]
  wire  _T_3871; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144509.4]
  wire  _T_3873; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144514.4]
  wire  _T_3875; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144519.4]
  wire  _T_3877; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144524.4]
  wire  _T_3879; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144529.4]
  wire  _T_3881; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144534.4]
  wire  _T_3883; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144539.4]
  wire  _T_3885; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144544.4]
  wire  _T_3887; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144549.4]
  wire  _T_3889; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144554.4]
  wire  _T_3891; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144559.4]
  wire  _T_3893; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144564.4]
  wire  _T_3895; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144569.4]
  wire  _T_3897; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144574.4]
  wire  _T_3899; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144579.4]
  wire  _T_3901; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144584.4]
  wire  _T_3903; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144589.4]
  wire  _T_3905; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144594.4]
  wire  _T_3907; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144599.4]
  wire  _T_3909; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144604.4]
  wire  _T_3911; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144609.4]
  wire  _T_3913; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144614.4]
  wire  _T_3915; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144619.4]
  wire  _T_3917; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144624.4]
  wire  _T_3919; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144629.4]
  wire  _T_3921; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144634.4]
  wire  _T_3923; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144639.4]
  wire  _T_3925; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144644.4]
  wire  _T_3927; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144649.4]
  wire  _T_3929; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144654.4]
  wire  _T_3931; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144659.4]
  wire  _T_3933; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144664.4]
  wire  _T_3935; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144669.4]
  wire  _T_3937; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144674.4]
  wire  _T_3939; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144679.4]
  wire  _T_3941; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144684.4]
  wire  _T_3943; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144689.4]
  wire  _T_3945; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144694.4]
  wire  _T_3947; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144699.4]
  wire  _T_3949; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144704.4]
  wire  _T_3951; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144709.4]
  wire  _T_3953; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144714.4]
  wire  _T_3955; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144719.4]
  wire  _T_3957; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144724.4]
  wire  _T_3959; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144729.4]
  wire  _T_3961; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144734.4]
  wire  _T_3963; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144739.4]
  wire  _T_3965; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144744.4]
  wire  _T_3967; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144749.4]
  wire  _T_3969; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144754.4]
  wire  _T_3971; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144759.4]
  wire  _T_3973; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144764.4]
  wire  _T_3975; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144769.4]
  wire  _T_3977; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144774.4]
  wire  _T_3979; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144779.4]
  wire  _T_3981; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144784.4]
  wire  _T_3983; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144789.4]
  wire  _T_3985; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144794.4]
  wire  _T_3987; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144799.4]
  wire  _T_3989; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144804.4]
  wire  _T_3991; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144809.4]
  wire  _T_3993; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144814.4]
  wire  _T_3995; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144819.4]
  wire  _T_3997; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144824.4]
  wire  _T_3999; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144829.4]
  wire  _T_4001; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144834.4]
  wire  _T_4003; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144839.4]
  wire  _T_4005; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144844.4]
  reg  goReg; // @[Debug.scala 1377:27:chipyard.TestHarness.RocketConfig.fir@144848.4]
  reg [31:0] _RAND_83;
  wire [9:0] hartGoingId; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159777.4]
  wire  _T_4057; // @[Debug.scala 1389:28:chipyard.TestHarness.RocketConfig.fir@144973.10]
  wire  _T_4059; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144975.10]
  wire  _T_4060; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144976.10]
  wire  hartGoingWrEn; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159776.4]
  wire  _GEN_414; // @[Debug.scala 1388:33:chipyard.TestHarness.RocketConfig.fir@144972.8]
  wire  _GEN_2117; // @[Debug.scala 1633:43:chipyard.TestHarness.RocketConfig.fir@189196.10]
  wire  _GEN_2121; // @[Debug.scala 1630:38:chipyard.TestHarness.RocketConfig.fir@189191.8]
  wire  _GEN_2134; // @[Debug.scala 1623:59:chipyard.TestHarness.RocketConfig.fir@189190.6]
  wire  goAbstract; // @[Debug.scala 1615:47:chipyard.TestHarness.RocketConfig.fir@189173.4]
  wire  _GEN_415; // @[Debug.scala 1386:25:chipyard.TestHarness.RocketConfig.fir@144968.6]
  wire  accessRegisterCommandReg_postexec; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145059.4]
  wire [2:0] accessRegisterCommandReg_size; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145063.4]
  reg [31:0] abstractGeneratedMem_0; // @[Debug.scala 1458:35:chipyard.TestHarness.RocketConfig.fir@145078.4]
  reg [31:0] _RAND_84;
  reg [31:0] abstractGeneratedMem_1; // @[Debug.scala 1458:35:chipyard.TestHarness.RocketConfig.fir@145078.4]
  reg [31:0] _RAND_85;
  wire [15:0] _T_4094; // @[Debug.scala 1464:66:chipyard.TestHarness.RocketConfig.fir@145089.4]
  wire [4:0] abstractGeneratedI_rd; // @[Debug.scala 1459:34:chipyard.TestHarness.RocketConfig.fir@145079.4 Debug.scala 1464:31:chipyard.TestHarness.RocketConfig.fir@145090.4]
  wire [31:0] _T_4101; // @[Debug.scala 1485:36:chipyard.TestHarness.RocketConfig.fir@145126.6]
  wire [31:0] _T_4106; // @[Debug.scala 1487:36:chipyard.TestHarness.RocketConfig.fir@145131.6]
  wire  _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147596.4]
  wire  _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147617.4]
  wire  _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147640.4]
  wire [23:0] _T_6613; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@147657.4]
  wire  _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147663.4]
  wire  _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147686.4]
  wire  _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147709.4]
  wire [47:0] _T_6682; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@147726.4]
  wire  _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147732.4]
  wire  _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147755.4]
  wire [63:0] _T_6728; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@147772.4]
  wire  _T_36075; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179659.4]
  wire  _T_36076; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179660.4]
  wire  _T_8925; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@149969.4]
  wire  _T_8948; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@149995.4]
  wire  _T_8973; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150023.4]
  wire  _T_8998; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150051.4]
  wire  _T_9023; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150079.4]
  wire  _T_9048; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150107.4]
  wire  _T_9073; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150135.4]
  wire  _T_9098; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150163.4]
  wire [63:0] _T_9110; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@150178.4]
  wire  _T_36055; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179599.4]
  wire  _T_36056; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179600.4]
  wire  _T_11125; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152193.4]
  wire  _T_11148; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152219.4]
  wire  _T_11173; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152247.4]
  wire  _T_11198; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152275.4]
  wire  _T_11223; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152303.4]
  wire  _T_11248; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152331.4]
  wire  _T_11273; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152359.4]
  wire  _T_11298; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152387.4]
  wire [63:0] _T_11310; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@152402.4]
  wire  _T_36070; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179644.4]
  wire  _T_36071; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179645.4]
  wire  _T_15917; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157013.4]
  wire  _T_15940; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157039.4]
  wire  _T_15965; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157067.4]
  wire  _T_15990; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157095.4]
  wire  _T_16015; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157123.4]
  wire  _T_16040; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157151.4]
  wire  _T_16065; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157179.4]
  wire  _T_16090; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157207.4]
  wire [63:0] _T_16102; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@157222.4]
  wire  _T_36050; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179584.4]
  wire  _T_36051; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179585.4]
  wire  _T_17774; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@158894.4]
  wire  _T_17797; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@158920.4]
  wire  _T_17822; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@158948.4]
  wire  _T_17847; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@158976.4]
  wire  _T_17872; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159004.4]
  wire  _T_17897; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159032.4]
  wire  _T_17922; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159060.4]
  wire  _T_17947; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159088.4]
  wire [63:0] _T_17959; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@159103.4]
  wire [63:0] _T_22141; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@163289.4]
  wire  _T_36065; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179629.4]
  wire  _T_36066; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179630.4]
  wire  _T_23246; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164394.4]
  wire  _T_23269; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164420.4]
  wire  _T_23294; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164448.4]
  wire  _T_23319; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164476.4]
  wire  _T_23344; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164504.4]
  wire  _T_23369; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164532.4]
  wire  _T_23394; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164560.4]
  wire  _T_23419; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164588.4]
  wire [63:0] _T_23431; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@164603.4]
  wire  _T_36085; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179689.4]
  wire  _T_36086; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179690.4]
  wire  _T_25082; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166254.4]
  wire  _T_25105; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166280.4]
  wire  _T_25130; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166308.4]
  wire  _T_25155; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166336.4]
  wire  _T_25180; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166364.4]
  wire  _T_25205; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166392.4]
  wire  _T_25230; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166420.4]
  wire  _T_25255; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166448.4]
  wire [63:0] _T_25267; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@166463.4]
  wire  _T_36045; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179569.4]
  wire  _T_36046; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179570.4]
  wire  _T_27828; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169024.4]
  wire  _T_27851; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169050.4]
  wire  _T_27876; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169078.4]
  wire  _T_27901; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169106.4]
  wire  _T_27926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169134.4]
  wire  _T_27951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169162.4]
  wire  _T_27976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169190.4]
  wire  _T_28001; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169218.4]
  wire [63:0] _T_28013; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@169233.4]
  wire  _T_36060; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179614.4]
  wire  _T_36061; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179615.4]
  wire  _T_30938; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172158.4]
  wire  _T_30961; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172184.4]
  wire  _T_30986; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172212.4]
  wire  _T_31011; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172240.4]
  wire  _T_31036; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172268.4]
  wire  _T_31061; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172296.4]
  wire  _T_31086; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172324.4]
  wire  _T_31111; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172352.4]
  wire [63:0] _T_31123; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@172367.4]
  wire  _T_36080; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179674.4]
  wire  _T_36081; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179675.4]
  wire  _T_32592; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173836.4]
  wire  _T_32615; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173862.4]
  wire  _T_32640; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173890.4]
  wire  _T_32665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173918.4]
  wire  _T_32690; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173946.4]
  wire  _T_32715; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173974.4]
  wire  _T_32740; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@174002.4]
  wire  _T_32765; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@174030.4]
  wire [63:0] _T_32777; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@174045.4]
  wire  _GEN_1520; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1521; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1522; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1523; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1524; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1525; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1526; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1527; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1528; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1529; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2151; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1530; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2152; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1531; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2153; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1532; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2154; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1533; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2155; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1534; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2156; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1535; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2157; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1536; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2158; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1537; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2159; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1538; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2160; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1539; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2161; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1540; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2162; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1541; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2163; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1542; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2164; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1543; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2165; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1544; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2166; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1545; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2167; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1546; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2168; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1547; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2169; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1548; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2170; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1549; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2171; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1550; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1551; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1552; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2172; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1553; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2173; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1554; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2174; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1555; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2175; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1556; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2176; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1557; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2177; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1558; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2178; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1559; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2179; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1560; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2180; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1561; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2181; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1562; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2182; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1563; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2183; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1564; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2184; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1565; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2185; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1566; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2186; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1567; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2187; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1568; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2188; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1569; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2189; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1570; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2190; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1571; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2191; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1572; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2192; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1573; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2193; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1574; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2194; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1575; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2195; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1576; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2196; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1577; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2197; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1578; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2198; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1579; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2199; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1580; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2200; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1581; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2201; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1582; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2202; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1583; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2203; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1584; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2204; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1585; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2205; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1586; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2206; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1587; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2207; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1588; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2208; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1589; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2209; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1590; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2210; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1591; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2211; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1592; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2212; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1593; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2213; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1594; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2214; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1595; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2215; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1596; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2216; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1597; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2217; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1598; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2218; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1599; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2219; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1600; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2220; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1601; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2221; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1602; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2222; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1603; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2223; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1604; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2224; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1605; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2225; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1606; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2226; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1607; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2227; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1608; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2228; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1609; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2229; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1610; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2230; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1611; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2231; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1612; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2232; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1613; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2233; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1614; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1615; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2234; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1616; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2235; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1617; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2236; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1618; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2237; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1619; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2238; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1620; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2239; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1621; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1622; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1623; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1624; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1625; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1626; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1627; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1628; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1629; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1630; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1631; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2240; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1632; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2241; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1633; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2242; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1634; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2243; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1635; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2244; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1636; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2245; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1637; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2246; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1638; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2247; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1639; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2248; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1640; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2249; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1641; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2250; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1642; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2251; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1643; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2252; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1644; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2253; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1645; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_2254; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1646; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1647; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1648; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1649; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1650; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1651; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1652; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1653; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1654; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1655; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1656; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1657; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1658; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1659; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1660; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1661; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1662; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1663; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1664; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1665; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1666; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1667; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1668; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1669; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1670; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1671; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1672; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1673; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1674; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1675; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1676; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1677; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1678; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1679; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1680; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1681; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1682; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1683; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1684; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1685; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1686; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1687; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1688; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1689; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1690; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1691; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1692; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1693; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1694; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1695; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1696; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1697; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1698; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1699; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1700; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1701; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1702; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1703; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1704; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1706; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1707; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1708; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1709; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1710; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1711; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1712; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1713; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1714; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1715; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1716; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1717; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1718; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1719; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1720; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1721; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1722; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1723; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1724; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1725; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1726; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1727; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1728; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1729; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1730; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1731; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1732; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1733; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1734; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1735; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1736; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1737; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1738; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1739; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1740; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1741; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1742; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1743; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1744; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1745; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1746; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1747; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1748; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1749; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1750; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1751; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1752; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1753; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1754; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1755; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1756; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1757; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1758; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1759; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1760; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1761; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1762; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1763; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1764; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1765; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1766; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1767; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1768; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1769; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1770; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1771; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1772; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1773; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire  _GEN_1774; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  wire [63:0] _GEN_1776; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1777; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1778; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1779; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1780; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1781; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1782; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1783; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1784; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1785; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1786; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1787; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1788; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1789; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1790; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1791; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1792; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1793; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1794; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1795; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1796; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1797; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1798; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1799; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1800; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1801; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1802; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1803; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1804; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1805; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1806; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1807; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1808; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1809; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1810; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1811; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1812; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1813; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1814; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1815; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1816; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1817; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1818; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1819; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1820; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1821; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1822; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1823; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1824; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1825; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1826; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1827; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1828; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1829; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1830; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1831; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1832; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1833; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1834; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1835; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1836; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1837; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1838; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1839; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1840; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1841; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1842; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1843; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1844; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1845; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1846; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1847; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1848; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1849; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1850; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1851; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1852; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1853; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1854; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1855; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1856; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1857; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1858; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1859; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1860; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1861; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1862; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1863; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1864; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1865; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1866; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1867; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1868; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1869; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1870; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1871; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1872; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1873; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1874; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1875; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1876; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1877; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1878; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1879; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1880; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1881; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1882; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1883; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1884; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1885; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1886; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1887; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1888; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1889; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1890; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1891; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1892; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1893; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1894; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1895; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1896; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1897; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1898; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1899; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1900; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1901; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1902; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1903; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1904; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1905; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1906; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1907; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1908; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1909; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1910; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1911; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1912; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1913; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1914; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1915; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1916; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1917; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1918; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1919; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1920; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1921; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1922; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1923; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1924; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1925; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1926; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1927; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1928; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1929; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1930; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1931; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1932; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1933; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1934; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1935; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1936; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1937; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1938; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1939; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1940; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1941; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1942; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1943; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1944; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1945; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1946; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1947; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1948; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1949; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1950; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1951; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1952; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1953; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1954; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1955; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1956; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1957; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1958; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1959; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1960; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1961; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1962; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1963; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1964; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1965; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1966; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1967; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1968; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1969; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1970; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1971; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1972; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1973; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1974; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1975; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1976; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1977; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1978; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1979; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1980; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1981; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1982; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1983; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1984; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1985; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1986; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1987; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1988; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1989; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1990; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1991; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1992; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1993; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1994; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1995; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1996; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1997; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1998; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_1999; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2000; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2001; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2002; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2003; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2004; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2005; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2006; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2007; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2008; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2009; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2010; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2011; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2012; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2013; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2014; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2015; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2016; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2017; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2018; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2019; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2020; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2021; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2022; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2023; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2024; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2025; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2026; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2027; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2028; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2029; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire [63:0] _GEN_2030; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  wire  _T_39438; // @[Debug.scala 1649:18:chipyard.TestHarness.RocketConfig.fir@189213.10]
  wire  _T_39439; // @[Debug.scala 1649:30:chipyard.TestHarness.RocketConfig.fir@189214.10]
  wire  _T_39446; // @[Debug.scala 1657:30:chipyard.TestHarness.RocketConfig.fir@189234.10]
  wire  _T_39449; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189238.12]
  wire  _T_39455; // @[Debug.scala 1671:30:chipyard.TestHarness.RocketConfig.fir@189259.4]
  wire  _T_39456; // @[Debug.scala 1671:27:chipyard.TestHarness.RocketConfig.fir@189260.4]
  wire  _T_39458; // @[Debug.scala 1671:49:chipyard.TestHarness.RocketConfig.fir@189262.4]
  wire  _T_39460; // @[Debug.scala 1671:12:chipyard.TestHarness.RocketConfig.fir@189264.4]
  wire  _T_39461; // @[Debug.scala 1671:12:chipyard.TestHarness.RocketConfig.fir@189265.4]
  wire  _GEN_2255; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
  wire  _GEN_2256; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
  wire  _GEN_2257; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
  wire  _GEN_2258; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
  wire  _GEN_2264; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
  wire  _GEN_2265; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
  wire  _GEN_2266; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
  wire  _GEN_2267; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
  wire  _GEN_2276; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189240.14]
  wire  _GEN_2277; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189240.14]
  wire  _GEN_2278; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189240.14]
  TLMonitor_55 TLMonitor ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138219.4]
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
  TLMonitor_56 TLMonitor_1 ( // @[Nodes.scala 25:25:chipyard.TestHarness.RocketConfig.fir@138244.4]
    .clock(TLMonitor_1_clock),
    .reset(TLMonitor_1_reset),
    .io_in_a_ready(TLMonitor_1_io_in_a_ready),
    .io_in_a_valid(TLMonitor_1_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_1_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_1_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_1_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_1_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_1_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_1_io_in_a_bits_corrupt),
    .io_in_d_ready(TLMonitor_1_io_in_d_ready),
    .io_in_d_valid(TLMonitor_1_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_1_io_in_d_bits_opcode),
    .io_in_d_bits_size(TLMonitor_1_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_1_io_in_d_bits_source)
  );
  AsyncResetSynchronizerShiftReg_w1_d3_i0 debug_hartReset_0 ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@138608.4]
    .clock(debug_hartReset_0_clock),
    .reset(debug_hartReset_0_reset),
    .io_d(debug_hartReset_0_io_d),
    .io_q(debug_hartReset_0_io_q)
  );
  assign hamaskWrSel_0 = io_innerCtrl_bits_hartsel == 10'h0; // @[Debug.scala 820:61:chipyard.TestHarness.RocketConfig.fir@138598.4]
  assign _T_13 = ~io_dmactive; // @[Debug.scala 839:11:chipyard.TestHarness.RocketConfig.fir@138615.4]
  assign _T_16 = io_innerCtrl_ready & io_innerCtrl_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@138622.6]
  assign _T_23 = ~haltedBitRegs_0; // @[package.scala 62:38:chipyard.TestHarness.RocketConfig.fir@138637.6]
  assign _T_24 = hrDebugInt_0 & _T_23; // @[package.scala 57:72:chipyard.TestHarness.RocketConfig.fir@138638.6]
  assign hartIsInResetSync_0 = debug_hartReset_0_io_q; // @[ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@138612.4 ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@138613.4]
  assign _T_25 = hartIsInResetSync_0 | _T_24; // @[package.scala 58:75:chipyard.TestHarness.RocketConfig.fir@138639.6]
  assign _T_26 = hrmaskReg_0 & _T_25; // @[package.scala 57:72:chipyard.TestHarness.RocketConfig.fir@138640.6]
  assign resumereq = _T_16 & io_innerCtrl_bits_resumereq; // @[Debug.scala 868:41:chipyard.TestHarness.RocketConfig.fir@138689.4]
  assign _T_316 = ~resumeReqRegs_0; // @[Debug.scala 1227:32:chipyard.TestHarness.RocketConfig.fir@139631.4]
  assign _T_317 = resumereq & hamaskWrSel_0; // @[Debug.scala 1227:73:chipyard.TestHarness.RocketConfig.fir@139632.4]
  assign _T_318 = ~_T_317; // @[Debug.scala 1227:61:chipyard.TestHarness.RocketConfig.fir@139633.4]
  assign resumeAcks_0 = _T_316 & _T_318; // @[Debug.scala 1227:58:chipyard.TestHarness.RocketConfig.fir@139634.4]
  assign _T_64 = _T_16 & io_innerCtrl_bits_ackhavereset; // @[Debug.scala 902:39:chipyard.TestHarness.RocketConfig.fir@138754.8]
  assign _T_65 = _T_64 & hamaskWrSel_0; // @[Debug.scala 902:73:chipyard.TestHarness.RocketConfig.fir@138755.8]
  assign _GEN_34 = _T_65 ? 1'h0 : haveResetBitRegs_0; // @[Debug.scala 902:100:chipyard.TestHarness.RocketConfig.fir@138756.8]
  assign _GEN_35 = hartIsInResetSync_0 | _GEN_34; // @[Debug.scala 900:49:chipyard.TestHarness.RocketConfig.fir@138749.6]
  assign haltedStatus_0 = {{31'd0}, haltedBitRegs_0}; // @[Debug.scala 1051:30:chipyard.TestHarness.RocketConfig.fir@138817.4 Debug.scala 1055:26:chipyard.TestHarness.RocketConfig.fir@138819.6 Debug.scala 1057:26:chipyard.TestHarness.RocketConfig.fir@138822.6]
  assign haltedSummary = |haltedStatus_0; // @[Debug.scala 1061:48:chipyard.TestHarness.RocketConfig.fir@138824.4]
  assign HALTSUM1RdData_haltsum1 = {{31'd0}, haltedSummary}; // @[:chipyard.TestHarness.RocketConfig.fir@138826.4 :chipyard.TestHarness.RocketConfig.fir@138827.4]
  assign _T_394 = auto_dmi_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@139715.4]
  assign _T_3104 = {auto_dmi_in_a_bits_address[7],auto_dmi_in_a_bits_address[5],auto_dmi_in_a_bits_address[4],auto_dmi_in_a_bits_address[3],auto_dmi_in_a_bits_address[2]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142811.4]
  assign _T_399 = auto_dmi_in_a_bits_address[8:2] & 7'h50; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139731.4]
  assign _T_449 = _T_399 == 7'h0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139781.4]
  assign _T_405 = _T_399 == 7'h10; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139737.4]
  assign _T_423 = _T_399 == 7'h40; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139755.4]
  assign _T_3678 = auto_dmi_in_a_valid & auto_dmi_in_d_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144003.4]
  assign _T_3679 = ~_T_394; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144004.4]
  assign _T_3680 = _T_3678 & _T_3679; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144005.4]
  assign _T_3149 = 32'h1 << _T_3104; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@142856.4]
  assign _T_3712 = _T_3680 & _T_3149[6]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144084.4]
  assign _T_3713 = _T_3712 & _T_405; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144085.4]
  assign _T_481 = auto_dmi_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@139817.4]
  assign _T_479 = auto_dmi_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@139815.4]
  assign _T_477 = auto_dmi_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@139813.4]
  assign _T_475 = auto_dmi_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@139811.4]
  assign _T_484 = {_T_481,_T_479,_T_477,_T_475}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@139820.4]
  assign _T_2043 = &_T_484[10:8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141583.4]
  assign ABSTRACTCSWrEnMaybe = _T_3713 & _T_2043; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141587.4]
  assign ABSTRACTCSWrEnLegal = ctrlStateReg == 2'h0; // @[Debug.scala 1569:44:chipyard.TestHarness.RocketConfig.fir@189111.4]
  assign ABSTRACTCSWrEn = ABSTRACTCSWrEnMaybe & ABSTRACTCSWrEnLegal; // @[Debug.scala 1083:51:chipyard.TestHarness.RocketConfig.fir@138893.4]
  assign ABSTRACTCSWrData_cmderr = auto_dmi_in_a_bits_data[10:8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141588.4]
  assign _T_83 = ~ABSTRACTCSWrData_cmderr; // @[Debug.scala 1103:58:chipyard.TestHarness.RocketConfig.fir@138933.16]
  assign _T_84 = ABSTRACTCSReg_cmderr & _T_83; // @[Debug.scala 1103:56:chipyard.TestHarness.RocketConfig.fir@138934.16]
  assign _T_39436 = ctrlStateReg == 2'h1; // @[Debug.scala 1623:30:chipyard.TestHarness.RocketConfig.fir@189189.6]
  assign commandRegIsAccessRegister = COMMANDRdData_cmdtype == 8'h0; // @[Debug.scala 1584:58:chipyard.TestHarness.RocketConfig.fir@189140.4]
  assign _T_4082 = {COMMANDRdData_cmdtype,COMMANDRdData_control}; // @[Debug.scala 1415:62:chipyard.TestHarness.RocketConfig.fir@145049.4]
  assign accessRegisterCommandReg_transfer = _T_4082[17]; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145057.4]
  assign accessRegisterCommandReg_write = _T_4082[16]; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145055.4]
  assign _T_39426 = ~accessRegisterCommandReg_transfer; // @[Debug.scala 1602:19:chipyard.TestHarness.RocketConfig.fir@189158.8]
  assign accessRegisterCommandReg_regno = _T_4082[15:0]; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145053.4]
  assign _T_39421 = accessRegisterCommandReg_regno >= 16'h1000; // @[Debug.scala 1592:58:chipyard.TestHarness.RocketConfig.fir@189147.4]
  assign _T_39422 = accessRegisterCommandReg_regno <= 16'h101f; // @[Debug.scala 1592:104:chipyard.TestHarness.RocketConfig.fir@189148.4]
  assign accessRegIsGPR = _T_39421 & _T_39422; // @[Debug.scala 1592:70:chipyard.TestHarness.RocketConfig.fir@189149.4]
  assign _T_39427 = _T_39426 | accessRegIsGPR; // @[Debug.scala 1602:54:chipyard.TestHarness.RocketConfig.fir@189159.8]
  assign _GEN_2103 = _T_39427 ? 1'h0 : 1'h1; // @[Debug.scala 1602:73:chipyard.TestHarness.RocketConfig.fir@189160.8]
  assign commandRegIsUnsupported = commandRegIsAccessRegister ? _GEN_2103 : 1'h1; // @[Debug.scala 1599:39:chipyard.TestHarness.RocketConfig.fir@189150.4]
  assign _GEN_2104 = _T_39427 & _T_23; // @[Debug.scala 1602:73:chipyard.TestHarness.RocketConfig.fir@189160.8]
  assign commandRegBadHaltResume = commandRegIsAccessRegister & _GEN_2104; // @[Debug.scala 1599:39:chipyard.TestHarness.RocketConfig.fir@189150.4]
  assign _GEN_2120 = commandRegIsUnsupported ? 1'h0 : commandRegBadHaltResume; // @[Debug.scala 1630:38:chipyard.TestHarness.RocketConfig.fir@189191.8]
  assign _GEN_2133 = _T_39436 & _GEN_2120; // @[Debug.scala 1623:59:chipyard.TestHarness.RocketConfig.fir@189190.6]
  assign errorHaltResume = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2133; // @[Debug.scala 1615:47:chipyard.TestHarness.RocketConfig.fir@189173.4]
  assign _T_3717 = _T_3680 & _T_3149[7]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144098.4]
  assign _T_3718 = _T_3717 & _T_405; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144099.4]
  assign _T_2763 = &_T_484; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142405.4]
  assign COMMANDWrEnMaybe = _T_3718 & _T_2763; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142409.4]
  assign COMMANDWrEn = COMMANDWrEnMaybe & ABSTRACTCSWrEnLegal; // @[Debug.scala 1168:40:chipyard.TestHarness.RocketConfig.fir@139504.4]
  assign COMMANDWrDataVal = COMMANDWrEnMaybe ? auto_dmi_in_a_bits_data : 32'h0; // @[Debug.scala 265:24:chipyard.TestHarness.RocketConfig.fir@142413.4]
  assign COMMANDWrData_cmdtype = COMMANDWrDataVal[31:24]; // @[Debug.scala 1163:65:chipyard.TestHarness.RocketConfig.fir@139493.4]
  assign commandWrIsAccessRegister = COMMANDWrData_cmdtype == 8'h0; // @[Debug.scala 1583:60:chipyard.TestHarness.RocketConfig.fir@189139.4]
  assign _T_39429 = COMMANDWrEn & commandWrIsAccessRegister; // @[Debug.scala 1608:48:chipyard.TestHarness.RocketConfig.fir@189166.4]
  assign _T_39430 = ABSTRACTCSReg_cmderr == 3'h0; // @[Debug.scala 1608:103:chipyard.TestHarness.RocketConfig.fir@189167.4]
  assign wrAccessRegisterCommand = _T_39429 & _T_39430; // @[Debug.scala 1608:78:chipyard.TestHarness.RocketConfig.fir@189168.4]
  assign _T_3702 = _T_3680 & _T_3149[4]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144062.4]
  assign _T_3703 = _T_3702 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144063.4]
  assign _T_2905 = &_T_484[7:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142572.4]
  assign dmiAbstractDataWrEnMaybe_0 = _T_3703 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142576.4]
  assign _T_3514 = _T_3678 & _T_394; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143633.4]
  assign _T_3536 = _T_3514 & _T_3149[4]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143690.4]
  assign _T_3537 = _T_3536 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143691.4]
  assign _T_2903 = |_T_484[7:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142570.4]
  assign dmiAbstractDataRdEn_0 = _T_3537 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142574.4]
  assign dmiAbstractDataAccessVec_0 = dmiAbstractDataWrEnMaybe_0 | dmiAbstractDataRdEn_0; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139014.4]
  assign autoexecData_0 = dmiAbstractDataAccessVec_0 & ABSTRACTAUTOReg_autoexecdata[0]; // @[Debug.scala 1152:140:chipyard.TestHarness.RocketConfig.fir@139410.4]
  assign _T_3707 = _T_3680 & _T_3149[5]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144073.4]
  assign _T_3708 = _T_3707 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144074.4]
  assign dmiAbstractDataWrEnMaybe_4 = _T_3708 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139832.4]
  assign _T_3541 = _T_3514 & _T_3149[5]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143701.4]
  assign _T_3542 = _T_3541 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143702.4]
  assign dmiAbstractDataRdEn_4 = _T_3542 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139830.4]
  assign dmiAbstractDataAccessVec_4 = dmiAbstractDataWrEnMaybe_4 | dmiAbstractDataRdEn_4; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139018.4]
  assign autoexecData_1 = dmiAbstractDataAccessVec_4 & ABSTRACTAUTOReg_autoexecdata[1]; // @[Debug.scala 1152:140:chipyard.TestHarness.RocketConfig.fir@139412.4]
  assign _T_285 = autoexecData_0 | autoexecData_1; // @[Debug.scala 1155:42:chipyard.TestHarness.RocketConfig.fir@139462.4]
  assign _T_3762 = _T_3680 & _T_3149[16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144165.4]
  assign _T_3763 = _T_3762 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144166.4]
  assign dmiProgramBufferWrEnMaybe_0 = _T_3763 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140733.4]
  assign _T_3596 = _T_3514 & _T_3149[16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143793.4]
  assign _T_3597 = _T_3596 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143794.4]
  assign dmiProgramBufferRdEn_0 = _T_3597 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140731.4]
  assign dmiProgramBufferAccessVec_0 = dmiProgramBufferWrEnMaybe_0 | dmiProgramBufferRdEn_0; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139160.4]
  assign autoexecProg_0 = dmiProgramBufferAccessVec_0 & ABSTRACTAUTOReg_autoexecprogbuf[0]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139430.4]
  assign _T_3767 = _T_3680 & _T_3149[17]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144176.4]
  assign _T_3768 = _T_3767 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144177.4]
  assign dmiProgramBufferWrEnMaybe_4 = _T_3768 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140497.4]
  assign _T_3601 = _T_3514 & _T_3149[17]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143804.4]
  assign _T_3602 = _T_3601 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143805.4]
  assign dmiProgramBufferRdEn_4 = _T_3602 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140495.4]
  assign dmiProgramBufferAccessVec_4 = dmiProgramBufferWrEnMaybe_4 | dmiProgramBufferRdEn_4; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139164.4]
  assign autoexecProg_1 = dmiProgramBufferAccessVec_4 & ABSTRACTAUTOReg_autoexecprogbuf[1]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139432.4]
  assign _T_286 = autoexecProg_0 | autoexecProg_1; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139463.4]
  assign _T_3772 = _T_3680 & _T_3149[18]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144187.4]
  assign _T_3773 = _T_3772 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144188.4]
  assign dmiProgramBufferWrEnMaybe_8 = _T_3773 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140851.4]
  assign _T_3606 = _T_3514 & _T_3149[18]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143815.4]
  assign _T_3607 = _T_3606 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143816.4]
  assign dmiProgramBufferRdEn_8 = _T_3607 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140849.4]
  assign dmiProgramBufferAccessVec_8 = dmiProgramBufferWrEnMaybe_8 | dmiProgramBufferRdEn_8; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139168.4]
  assign autoexecProg_2 = dmiProgramBufferAccessVec_8 & ABSTRACTAUTOReg_autoexecprogbuf[2]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139434.4]
  assign _T_287 = _T_286 | autoexecProg_2; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139464.4]
  assign _T_3777 = _T_3680 & _T_3149[19]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144198.4]
  assign _T_3778 = _T_3777 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144199.4]
  assign dmiProgramBufferWrEnMaybe_12 = _T_3778 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141942.4]
  assign _T_3611 = _T_3514 & _T_3149[19]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143826.4]
  assign _T_3612 = _T_3611 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143827.4]
  assign dmiProgramBufferRdEn_12 = _T_3612 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141940.4]
  assign dmiProgramBufferAccessVec_12 = dmiProgramBufferWrEnMaybe_12 | dmiProgramBufferRdEn_12; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139172.4]
  assign autoexecProg_3 = dmiProgramBufferAccessVec_12 & ABSTRACTAUTOReg_autoexecprogbuf[3]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139436.4]
  assign _T_288 = _T_287 | autoexecProg_3; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139465.4]
  assign _T_3782 = _T_3680 & _T_3149[20]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144209.4]
  assign _T_3783 = _T_3782 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144210.4]
  assign dmiProgramBufferWrEnMaybe_16 = _T_3783 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142437.4]
  assign _T_3616 = _T_3514 & _T_3149[20]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143837.4]
  assign _T_3617 = _T_3616 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143838.4]
  assign dmiProgramBufferRdEn_16 = _T_3617 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142435.4]
  assign dmiProgramBufferAccessVec_16 = dmiProgramBufferWrEnMaybe_16 | dmiProgramBufferRdEn_16; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139176.4]
  assign autoexecProg_4 = dmiProgramBufferAccessVec_16 & ABSTRACTAUTOReg_autoexecprogbuf[4]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139438.4]
  assign _T_289 = _T_288 | autoexecProg_4; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139466.4]
  assign _T_3787 = _T_3680 & _T_3149[21]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144220.4]
  assign _T_3788 = _T_3787 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144221.4]
  assign dmiProgramBufferWrEnMaybe_20 = _T_3788 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140143.4]
  assign _T_3621 = _T_3514 & _T_3149[21]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143848.4]
  assign _T_3622 = _T_3621 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143849.4]
  assign dmiProgramBufferRdEn_20 = _T_3622 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140141.4]
  assign dmiProgramBufferAccessVec_20 = dmiProgramBufferWrEnMaybe_20 | dmiProgramBufferRdEn_20; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139180.4]
  assign autoexecProg_5 = dmiProgramBufferAccessVec_20 & ABSTRACTAUTOReg_autoexecprogbuf[5]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139440.4]
  assign _T_290 = _T_289 | autoexecProg_5; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139467.4]
  assign _T_3792 = _T_3680 & _T_3149[22]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144231.4]
  assign _T_3793 = _T_3792 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144232.4]
  assign dmiProgramBufferWrEnMaybe_24 = _T_3793 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140379.4]
  assign _T_3626 = _T_3514 & _T_3149[22]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143859.4]
  assign _T_3627 = _T_3626 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143860.4]
  assign dmiProgramBufferRdEn_24 = _T_3627 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140377.4]
  assign dmiProgramBufferAccessVec_24 = dmiProgramBufferWrEnMaybe_24 | dmiProgramBufferRdEn_24; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139184.4]
  assign autoexecProg_6 = dmiProgramBufferAccessVec_24 & ABSTRACTAUTOReg_autoexecprogbuf[6]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139442.4]
  assign _T_291 = _T_290 | autoexecProg_6; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139468.4]
  assign _T_3797 = _T_3680 & _T_3149[23]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144242.4]
  assign _T_3798 = _T_3797 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144243.4]
  assign dmiProgramBufferWrEnMaybe_28 = _T_3798 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141824.4]
  assign _T_3631 = _T_3514 & _T_3149[23]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143870.4]
  assign _T_3632 = _T_3631 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143871.4]
  assign dmiProgramBufferRdEn_28 = _T_3632 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141822.4]
  assign dmiProgramBufferAccessVec_28 = dmiProgramBufferWrEnMaybe_28 | dmiProgramBufferRdEn_28; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139188.4]
  assign autoexecProg_7 = dmiProgramBufferAccessVec_28 & ABSTRACTAUTOReg_autoexecprogbuf[7]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139444.4]
  assign _T_292 = _T_291 | autoexecProg_7; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139469.4]
  assign _T_3802 = _T_3680 & _T_3149[24]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144253.4]
  assign _T_3803 = _T_3802 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144254.4]
  assign dmiProgramBufferWrEnMaybe_32 = _T_3803 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142291.4]
  assign _T_3636 = _T_3514 & _T_3149[24]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143881.4]
  assign _T_3637 = _T_3636 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143882.4]
  assign dmiProgramBufferRdEn_32 = _T_3637 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142289.4]
  assign dmiProgramBufferAccessVec_32 = dmiProgramBufferWrEnMaybe_32 | dmiProgramBufferRdEn_32; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139192.4]
  assign autoexecProg_8 = dmiProgramBufferAccessVec_32 & ABSTRACTAUTOReg_autoexecprogbuf[8]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139446.4]
  assign _T_293 = _T_292 | autoexecProg_8; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139470.4]
  assign _T_3807 = _T_3680 & _T_3149[25]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144264.4]
  assign _T_3808 = _T_3807 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144265.4]
  assign dmiProgramBufferWrEnMaybe_36 = _T_3808 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140615.4]
  assign _T_3641 = _T_3514 & _T_3149[25]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143892.4]
  assign _T_3642 = _T_3641 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143893.4]
  assign dmiProgramBufferRdEn_36 = _T_3642 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140613.4]
  assign dmiProgramBufferAccessVec_36 = dmiProgramBufferWrEnMaybe_36 | dmiProgramBufferRdEn_36; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139196.4]
  assign autoexecProg_9 = dmiProgramBufferAccessVec_36 & ABSTRACTAUTOReg_autoexecprogbuf[9]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139448.4]
  assign _T_294 = _T_293 | autoexecProg_9; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139471.4]
  assign _T_3812 = _T_3680 & _T_3149[26]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144275.4]
  assign _T_3813 = _T_3812 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144276.4]
  assign dmiProgramBufferWrEnMaybe_40 = _T_3813 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139950.4]
  assign _T_3646 = _T_3514 & _T_3149[26]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143903.4]
  assign _T_3647 = _T_3646 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143904.4]
  assign dmiProgramBufferRdEn_40 = _T_3647 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139948.4]
  assign dmiProgramBufferAccessVec_40 = dmiProgramBufferWrEnMaybe_40 | dmiProgramBufferRdEn_40; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139200.4]
  assign autoexecProg_10 = dmiProgramBufferAccessVec_40 & ABSTRACTAUTOReg_autoexecprogbuf[10]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139450.4]
  assign _T_295 = _T_294 | autoexecProg_10; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139472.4]
  assign _T_3817 = _T_3680 & _T_3149[27]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144286.4]
  assign _T_3818 = _T_3817 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144287.4]
  assign dmiProgramBufferWrEnMaybe_44 = _T_3818 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142173.4]
  assign _T_3651 = _T_3514 & _T_3149[27]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143914.4]
  assign _T_3652 = _T_3651 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143915.4]
  assign dmiProgramBufferRdEn_44 = _T_3652 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142171.4]
  assign dmiProgramBufferAccessVec_44 = dmiProgramBufferWrEnMaybe_44 | dmiProgramBufferRdEn_44; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139204.4]
  assign autoexecProg_11 = dmiProgramBufferAccessVec_44 & ABSTRACTAUTOReg_autoexecprogbuf[11]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139452.4]
  assign _T_296 = _T_295 | autoexecProg_11; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139473.4]
  assign _T_3822 = _T_3680 & _T_3149[28]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144297.4]
  assign _T_3823 = _T_3822 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144298.4]
  assign dmiProgramBufferWrEnMaybe_48 = _T_3823 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141706.4]
  assign _T_3656 = _T_3514 & _T_3149[28]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143925.4]
  assign _T_3657 = _T_3656 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143926.4]
  assign dmiProgramBufferRdEn_48 = _T_3657 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141704.4]
  assign dmiProgramBufferAccessVec_48 = dmiProgramBufferWrEnMaybe_48 | dmiProgramBufferRdEn_48; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139208.4]
  assign autoexecProg_12 = dmiProgramBufferAccessVec_48 & ABSTRACTAUTOReg_autoexecprogbuf[12]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139454.4]
  assign _T_297 = _T_296 | autoexecProg_12; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139474.4]
  assign _T_3827 = _T_3680 & _T_3149[29]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144308.4]
  assign _T_3828 = _T_3827 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144309.4]
  assign dmiProgramBufferWrEnMaybe_52 = _T_3828 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140969.4]
  assign _T_3661 = _T_3514 & _T_3149[29]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143936.4]
  assign _T_3662 = _T_3661 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143937.4]
  assign dmiProgramBufferRdEn_52 = _T_3662 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140967.4]
  assign dmiProgramBufferAccessVec_52 = dmiProgramBufferWrEnMaybe_52 | dmiProgramBufferRdEn_52; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139212.4]
  assign autoexecProg_13 = dmiProgramBufferAccessVec_52 & ABSTRACTAUTOReg_autoexecprogbuf[13]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139456.4]
  assign _T_298 = _T_297 | autoexecProg_13; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139475.4]
  assign _T_3832 = _T_3680 & _T_3149[30]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144319.4]
  assign _T_3833 = _T_3832 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144320.4]
  assign dmiProgramBufferWrEnMaybe_56 = _T_3833 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140261.4]
  assign _T_3666 = _T_3514 & _T_3149[30]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143947.4]
  assign _T_3667 = _T_3666 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143948.4]
  assign dmiProgramBufferRdEn_56 = _T_3667 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140259.4]
  assign dmiProgramBufferAccessVec_56 = dmiProgramBufferWrEnMaybe_56 | dmiProgramBufferRdEn_56; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139216.4]
  assign autoexecProg_14 = dmiProgramBufferAccessVec_56 & ABSTRACTAUTOReg_autoexecprogbuf[14]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139458.4]
  assign _T_299 = _T_298 | autoexecProg_14; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139476.4]
  assign _T_3837 = _T_3680 & _T_3149[31]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144330.4]
  assign _T_3838 = _T_3837 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144331.4]
  assign dmiProgramBufferWrEnMaybe_60 = _T_3838 & _T_2905; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142694.4]
  assign _T_3671 = _T_3514 & _T_3149[31]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143958.4]
  assign _T_3672 = _T_3671 & _T_449; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@143959.4]
  assign dmiProgramBufferRdEn_60 = _T_3672 & _T_2903; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142692.4]
  assign dmiProgramBufferAccessVec_60 = dmiProgramBufferWrEnMaybe_60 | dmiProgramBufferRdEn_60; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139220.4]
  assign autoexecProg_15 = dmiProgramBufferAccessVec_60 & ABSTRACTAUTOReg_autoexecprogbuf[15]; // @[Debug.scala 1153:144:chipyard.TestHarness.RocketConfig.fir@139460.4]
  assign _T_300 = _T_299 | autoexecProg_15; // @[Debug.scala 1155:73:chipyard.TestHarness.RocketConfig.fir@139477.4]
  assign autoexec = _T_285 | _T_300; // @[Debug.scala 1155:48:chipyard.TestHarness.RocketConfig.fir@139478.4]
  assign _T_39431 = autoexec & commandRegIsAccessRegister; // @[Debug.scala 1609:48:chipyard.TestHarness.RocketConfig.fir@189169.4]
  assign regAccessRegisterCommand = _T_39431 & _T_39430; // @[Debug.scala 1609:78:chipyard.TestHarness.RocketConfig.fir@189171.4]
  assign _T_39434 = wrAccessRegisterCommand | regAccessRegisterCommand; // @[Debug.scala 1616:37:chipyard.TestHarness.RocketConfig.fir@189174.6]
  assign _T_39420 = ~commandWrIsAccessRegister; // @[Debug.scala 1586:49:chipyard.TestHarness.RocketConfig.fir@189141.4]
  assign commandWrIsUnsupported = COMMANDWrEn & _T_39420; // @[Debug.scala 1586:46:chipyard.TestHarness.RocketConfig.fir@189142.4]
  assign _T_39435 = autoexec & commandRegIsUnsupported; // @[Debug.scala 1620:28:chipyard.TestHarness.RocketConfig.fir@189183.10]
  assign _GEN_2110 = commandWrIsUnsupported | _T_39435; // @[Debug.scala 1618:43:chipyard.TestHarness.RocketConfig.fir@189179.8]
  assign _GEN_2112 = _T_39434 ? 1'h0 : _GEN_2110; // @[Debug.scala 1616:66:chipyard.TestHarness.RocketConfig.fir@189175.6]
  assign _GEN_2131 = _T_39436 & commandRegIsUnsupported; // @[Debug.scala 1623:59:chipyard.TestHarness.RocketConfig.fir@189190.6]
  assign errorUnsupported = ABSTRACTCSWrEnLegal ? _GEN_2112 : _GEN_2131; // @[Debug.scala 1615:47:chipyard.TestHarness.RocketConfig.fir@189173.4]
  assign _T_39437 = ctrlStateReg == 2'h2; // @[Debug.scala 1644:30:chipyard.TestHarness.RocketConfig.fir@189211.8]
  assign _T_6172 = auto_tl_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36:chipyard.TestHarness.RocketConfig.fir@147201.4]
  assign _T_33705 = {auto_tl_in_a_bits_address[10],auto_tl_in_a_bits_address[9],auto_tl_in_a_bits_address[8],auto_tl_in_a_bits_address[7],auto_tl_in_a_bits_address[6],auto_tl_in_a_bits_address[5],auto_tl_in_a_bits_address[4],auto_tl_in_a_bits_address[3]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@174973.4]
  assign _T_6177 = auto_tl_in_a_bits_address[11:3] & 9'h100; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147217.4]
  assign _T_6385 = _T_6177 == 9'h0; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147425.4]
  assign _T_6309 = _T_6177 == 9'h100; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147349.4]
  assign _T_38092 = auto_tl_in_a_valid & auto_tl_in_d_ready; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185228.4]
  assign _T_38093 = ~_T_6172; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185229.4]
  assign _T_38094 = _T_38092 & _T_38093; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185230.4]
  assign _T_33979 = 256'h1 << _T_33705; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@175247.4]
  assign _T_38261 = _T_38094 & _T_33979[33]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185550.4]
  assign _T_38262 = _T_38261 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185551.4]
  assign _T_6541 = auto_tl_in_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147585.4]
  assign _T_6539 = auto_tl_in_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147583.4]
  assign _T_6537 = auto_tl_in_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147581.4]
  assign _T_6535 = auto_tl_in_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147579.4]
  assign _T_6533 = auto_tl_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147577.4]
  assign _T_6531 = auto_tl_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147575.4]
  assign _T_6529 = auto_tl_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147573.4]
  assign _T_6527 = auto_tl_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@147571.4]
  assign _T_6548 = {_T_6541,_T_6539,_T_6537,_T_6535,_T_6533,_T_6531,_T_6529,_T_6527}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@147592.4]
  assign _T_14435 = &_T_6548[41:32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@155529.4]
  assign hartExceptionWrEn = _T_38262 & _T_14435; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@155533.4]
  assign _GEN_2129 = _T_39437 & hartExceptionWrEn; // @[Debug.scala 1644:51:chipyard.TestHarness.RocketConfig.fir@189212.8]
  assign _GEN_2135 = _T_39436 ? 1'h0 : _GEN_2129; // @[Debug.scala 1623:59:chipyard.TestHarness.RocketConfig.fir@189190.6]
  assign errorException = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2135; // @[Debug.scala 1615:47:chipyard.TestHarness.RocketConfig.fir@189173.4]
  assign _T_39403 = ~ABSTRACTCSWrEnLegal; // @[Debug.scala 1575:45:chipyard.TestHarness.RocketConfig.fir@189121.4]
  assign _T_39404 = ABSTRACTCSWrEnMaybe & _T_39403; // @[Debug.scala 1575:42:chipyard.TestHarness.RocketConfig.fir@189122.4]
  assign _T_3722 = _T_3680 & _T_3149[8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144106.4]
  assign _T_3723 = _T_3722 & _T_405; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@144107.4]
  assign _T_688 = &_T_484[1:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140064.4]
  assign autoexecdataWrEnMaybe = _T_3723 & _T_688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140068.4]
  assign _T_39406 = autoexecdataWrEnMaybe & _T_39403; // @[Debug.scala 1576:42:chipyard.TestHarness.RocketConfig.fir@189124.4]
  assign _T_39407 = _T_39404 | _T_39406; // @[Debug.scala 1575:74:chipyard.TestHarness.RocketConfig.fir@189125.4]
  assign _T_734 = &_T_484[31:16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140112.4]
  assign autoexecprogbufWrEnMaybe = _T_3723 & _T_734; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140116.4]
  assign _T_39409 = autoexecprogbufWrEnMaybe & _T_39403; // @[Debug.scala 1577:44:chipyard.TestHarness.RocketConfig.fir@189127.4]
  assign _T_39410 = _T_39407 | _T_39409; // @[Debug.scala 1576:74:chipyard.TestHarness.RocketConfig.fir@189128.4]
  assign _T_39412 = COMMANDWrEnMaybe & _T_39403; // @[Debug.scala 1578:42:chipyard.TestHarness.RocketConfig.fir@189130.4]
  assign _T_39413 = _T_39410 | _T_39412; // @[Debug.scala 1577:74:chipyard.TestHarness.RocketConfig.fir@189131.4]
  assign _T_2928 = &_T_484[15:8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142600.4]
  assign dmiAbstractDataWrEnMaybe_1 = _T_3703 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142604.4]
  assign _T_2926 = |_T_484[15:8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142598.4]
  assign dmiAbstractDataRdEn_1 = _T_3537 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142602.4]
  assign dmiAbstractDataAccessVec_1 = dmiAbstractDataWrEnMaybe_1 | dmiAbstractDataRdEn_1; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139015.4]
  assign _T_169 = dmiAbstractDataAccessVec_0 | dmiAbstractDataAccessVec_1; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139288.4]
  assign _T_2953 = &_T_484[23:16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142630.4]
  assign dmiAbstractDataWrEnMaybe_2 = _T_3703 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142634.4]
  assign _T_2951 = |_T_484[23:16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142628.4]
  assign dmiAbstractDataRdEn_2 = _T_3537 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142632.4]
  assign dmiAbstractDataAccessVec_2 = dmiAbstractDataWrEnMaybe_2 | dmiAbstractDataRdEn_2; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139016.4]
  assign _T_170 = _T_169 | dmiAbstractDataAccessVec_2; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139289.4]
  assign _T_2978 = &_T_484[31:24]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142660.4]
  assign dmiAbstractDataWrEnMaybe_3 = _T_3703 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142664.4]
  assign _T_2976 = |_T_484[31:24]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142658.4]
  assign dmiAbstractDataRdEn_3 = _T_3537 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142662.4]
  assign dmiAbstractDataAccessVec_3 = dmiAbstractDataWrEnMaybe_3 | dmiAbstractDataRdEn_3; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139017.4]
  assign _T_171 = _T_170 | dmiAbstractDataAccessVec_3; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139290.4]
  assign _T_172 = _T_171 | dmiAbstractDataAccessVec_4; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139291.4]
  assign dmiAbstractDataWrEnMaybe_5 = _T_3708 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139860.4]
  assign dmiAbstractDataRdEn_5 = _T_3542 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139858.4]
  assign dmiAbstractDataAccessVec_5 = dmiAbstractDataWrEnMaybe_5 | dmiAbstractDataRdEn_5; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139019.4]
  assign _T_173 = _T_172 | dmiAbstractDataAccessVec_5; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139292.4]
  assign dmiAbstractDataWrEnMaybe_6 = _T_3708 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139890.4]
  assign dmiAbstractDataRdEn_6 = _T_3542 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139888.4]
  assign dmiAbstractDataAccessVec_6 = dmiAbstractDataWrEnMaybe_6 | dmiAbstractDataRdEn_6; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139020.4]
  assign _T_174 = _T_173 | dmiAbstractDataAccessVec_6; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139293.4]
  assign dmiAbstractDataWrEnMaybe_7 = _T_3708 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139920.4]
  assign dmiAbstractDataRdEn_7 = _T_3542 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139918.4]
  assign dmiAbstractDataAccessVec_7 = dmiAbstractDataWrEnMaybe_7 | dmiAbstractDataRdEn_7; // @[Debug.scala 1141:105:chipyard.TestHarness.RocketConfig.fir@139021.4]
  assign dmiAbstractDataAccess = _T_174 | dmiAbstractDataAccessVec_7; // @[Debug.scala 1146:68:chipyard.TestHarness.RocketConfig.fir@139294.4]
  assign _T_39415 = dmiAbstractDataAccess & _T_39403; // @[Debug.scala 1579:42:chipyard.TestHarness.RocketConfig.fir@189133.4]
  assign _T_39416 = _T_39413 | _T_39415; // @[Debug.scala 1578:74:chipyard.TestHarness.RocketConfig.fir@189134.4]
  assign dmiProgramBufferWrEnMaybe_1 = _T_3763 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140761.4]
  assign dmiProgramBufferRdEn_1 = _T_3597 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140759.4]
  assign dmiProgramBufferAccessVec_1 = dmiProgramBufferWrEnMaybe_1 | dmiProgramBufferRdEn_1; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139161.4]
  assign _T_175 = dmiProgramBufferAccessVec_0 | dmiProgramBufferAccessVec_1; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139295.4]
  assign dmiProgramBufferWrEnMaybe_2 = _T_3763 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140791.4]
  assign dmiProgramBufferRdEn_2 = _T_3597 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140789.4]
  assign dmiProgramBufferAccessVec_2 = dmiProgramBufferWrEnMaybe_2 | dmiProgramBufferRdEn_2; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139162.4]
  assign _T_176 = _T_175 | dmiProgramBufferAccessVec_2; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139296.4]
  assign dmiProgramBufferWrEnMaybe_3 = _T_3763 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140821.4]
  assign dmiProgramBufferRdEn_3 = _T_3597 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140819.4]
  assign dmiProgramBufferAccessVec_3 = dmiProgramBufferWrEnMaybe_3 | dmiProgramBufferRdEn_3; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139163.4]
  assign _T_177 = _T_176 | dmiProgramBufferAccessVec_3; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139297.4]
  assign _T_178 = _T_177 | dmiProgramBufferAccessVec_4; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139298.4]
  assign dmiProgramBufferWrEnMaybe_5 = _T_3768 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140525.4]
  assign dmiProgramBufferRdEn_5 = _T_3602 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140523.4]
  assign dmiProgramBufferAccessVec_5 = dmiProgramBufferWrEnMaybe_5 | dmiProgramBufferRdEn_5; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139165.4]
  assign _T_179 = _T_178 | dmiProgramBufferAccessVec_5; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139299.4]
  assign dmiProgramBufferWrEnMaybe_6 = _T_3768 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140555.4]
  assign dmiProgramBufferRdEn_6 = _T_3602 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140553.4]
  assign dmiProgramBufferAccessVec_6 = dmiProgramBufferWrEnMaybe_6 | dmiProgramBufferRdEn_6; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139166.4]
  assign _T_180 = _T_179 | dmiProgramBufferAccessVec_6; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139300.4]
  assign dmiProgramBufferWrEnMaybe_7 = _T_3768 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140585.4]
  assign dmiProgramBufferRdEn_7 = _T_3602 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140583.4]
  assign dmiProgramBufferAccessVec_7 = dmiProgramBufferWrEnMaybe_7 | dmiProgramBufferRdEn_7; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139167.4]
  assign _T_181 = _T_180 | dmiProgramBufferAccessVec_7; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139301.4]
  assign _T_182 = _T_181 | dmiProgramBufferAccessVec_8; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139302.4]
  assign dmiProgramBufferWrEnMaybe_9 = _T_3773 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140879.4]
  assign dmiProgramBufferRdEn_9 = _T_3607 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140877.4]
  assign dmiProgramBufferAccessVec_9 = dmiProgramBufferWrEnMaybe_9 | dmiProgramBufferRdEn_9; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139169.4]
  assign _T_183 = _T_182 | dmiProgramBufferAccessVec_9; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139303.4]
  assign dmiProgramBufferWrEnMaybe_10 = _T_3773 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140909.4]
  assign dmiProgramBufferRdEn_10 = _T_3607 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140907.4]
  assign dmiProgramBufferAccessVec_10 = dmiProgramBufferWrEnMaybe_10 | dmiProgramBufferRdEn_10; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139170.4]
  assign _T_184 = _T_183 | dmiProgramBufferAccessVec_10; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139304.4]
  assign dmiProgramBufferWrEnMaybe_11 = _T_3773 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140939.4]
  assign dmiProgramBufferRdEn_11 = _T_3607 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140937.4]
  assign dmiProgramBufferAccessVec_11 = dmiProgramBufferWrEnMaybe_11 | dmiProgramBufferRdEn_11; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139171.4]
  assign _T_185 = _T_184 | dmiProgramBufferAccessVec_11; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139305.4]
  assign _T_186 = _T_185 | dmiProgramBufferAccessVec_12; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139306.4]
  assign dmiProgramBufferWrEnMaybe_13 = _T_3778 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141970.4]
  assign dmiProgramBufferRdEn_13 = _T_3612 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141968.4]
  assign dmiProgramBufferAccessVec_13 = dmiProgramBufferWrEnMaybe_13 | dmiProgramBufferRdEn_13; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139173.4]
  assign _T_187 = _T_186 | dmiProgramBufferAccessVec_13; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139307.4]
  assign dmiProgramBufferWrEnMaybe_14 = _T_3778 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142000.4]
  assign dmiProgramBufferRdEn_14 = _T_3612 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141998.4]
  assign dmiProgramBufferAccessVec_14 = dmiProgramBufferWrEnMaybe_14 | dmiProgramBufferRdEn_14; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139174.4]
  assign _T_188 = _T_187 | dmiProgramBufferAccessVec_14; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139308.4]
  assign dmiProgramBufferWrEnMaybe_15 = _T_3778 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142030.4]
  assign dmiProgramBufferRdEn_15 = _T_3612 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142028.4]
  assign dmiProgramBufferAccessVec_15 = dmiProgramBufferWrEnMaybe_15 | dmiProgramBufferRdEn_15; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139175.4]
  assign _T_189 = _T_188 | dmiProgramBufferAccessVec_15; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139309.4]
  assign _T_190 = _T_189 | dmiProgramBufferAccessVec_16; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139310.4]
  assign dmiProgramBufferWrEnMaybe_17 = _T_3783 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142465.4]
  assign dmiProgramBufferRdEn_17 = _T_3617 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142463.4]
  assign dmiProgramBufferAccessVec_17 = dmiProgramBufferWrEnMaybe_17 | dmiProgramBufferRdEn_17; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139177.4]
  assign _T_191 = _T_190 | dmiProgramBufferAccessVec_17; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139311.4]
  assign dmiProgramBufferWrEnMaybe_18 = _T_3783 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142495.4]
  assign dmiProgramBufferRdEn_18 = _T_3617 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142493.4]
  assign dmiProgramBufferAccessVec_18 = dmiProgramBufferWrEnMaybe_18 | dmiProgramBufferRdEn_18; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139178.4]
  assign _T_192 = _T_191 | dmiProgramBufferAccessVec_18; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139312.4]
  assign dmiProgramBufferWrEnMaybe_19 = _T_3783 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142525.4]
  assign dmiProgramBufferRdEn_19 = _T_3617 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142523.4]
  assign dmiProgramBufferAccessVec_19 = dmiProgramBufferWrEnMaybe_19 | dmiProgramBufferRdEn_19; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139179.4]
  assign _T_193 = _T_192 | dmiProgramBufferAccessVec_19; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139313.4]
  assign _T_194 = _T_193 | dmiProgramBufferAccessVec_20; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139314.4]
  assign dmiProgramBufferWrEnMaybe_21 = _T_3788 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140171.4]
  assign dmiProgramBufferRdEn_21 = _T_3622 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140169.4]
  assign dmiProgramBufferAccessVec_21 = dmiProgramBufferWrEnMaybe_21 | dmiProgramBufferRdEn_21; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139181.4]
  assign _T_195 = _T_194 | dmiProgramBufferAccessVec_21; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139315.4]
  assign dmiProgramBufferWrEnMaybe_22 = _T_3788 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140201.4]
  assign dmiProgramBufferRdEn_22 = _T_3622 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140199.4]
  assign dmiProgramBufferAccessVec_22 = dmiProgramBufferWrEnMaybe_22 | dmiProgramBufferRdEn_22; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139182.4]
  assign _T_196 = _T_195 | dmiProgramBufferAccessVec_22; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139316.4]
  assign dmiProgramBufferWrEnMaybe_23 = _T_3788 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140231.4]
  assign dmiProgramBufferRdEn_23 = _T_3622 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140229.4]
  assign dmiProgramBufferAccessVec_23 = dmiProgramBufferWrEnMaybe_23 | dmiProgramBufferRdEn_23; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139183.4]
  assign _T_197 = _T_196 | dmiProgramBufferAccessVec_23; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139317.4]
  assign _T_198 = _T_197 | dmiProgramBufferAccessVec_24; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139318.4]
  assign dmiProgramBufferWrEnMaybe_25 = _T_3793 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140407.4]
  assign dmiProgramBufferRdEn_25 = _T_3627 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140405.4]
  assign dmiProgramBufferAccessVec_25 = dmiProgramBufferWrEnMaybe_25 | dmiProgramBufferRdEn_25; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139185.4]
  assign _T_199 = _T_198 | dmiProgramBufferAccessVec_25; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139319.4]
  assign dmiProgramBufferWrEnMaybe_26 = _T_3793 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140437.4]
  assign dmiProgramBufferRdEn_26 = _T_3627 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140435.4]
  assign dmiProgramBufferAccessVec_26 = dmiProgramBufferWrEnMaybe_26 | dmiProgramBufferRdEn_26; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139186.4]
  assign _T_200 = _T_199 | dmiProgramBufferAccessVec_26; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139320.4]
  assign dmiProgramBufferWrEnMaybe_27 = _T_3793 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140467.4]
  assign dmiProgramBufferRdEn_27 = _T_3627 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140465.4]
  assign dmiProgramBufferAccessVec_27 = dmiProgramBufferWrEnMaybe_27 | dmiProgramBufferRdEn_27; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139187.4]
  assign _T_201 = _T_200 | dmiProgramBufferAccessVec_27; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139321.4]
  assign _T_202 = _T_201 | dmiProgramBufferAccessVec_28; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139322.4]
  assign dmiProgramBufferWrEnMaybe_29 = _T_3798 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141852.4]
  assign dmiProgramBufferRdEn_29 = _T_3632 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141850.4]
  assign dmiProgramBufferAccessVec_29 = dmiProgramBufferWrEnMaybe_29 | dmiProgramBufferRdEn_29; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139189.4]
  assign _T_203 = _T_202 | dmiProgramBufferAccessVec_29; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139323.4]
  assign dmiProgramBufferWrEnMaybe_30 = _T_3798 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141882.4]
  assign dmiProgramBufferRdEn_30 = _T_3632 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141880.4]
  assign dmiProgramBufferAccessVec_30 = dmiProgramBufferWrEnMaybe_30 | dmiProgramBufferRdEn_30; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139190.4]
  assign _T_204 = _T_203 | dmiProgramBufferAccessVec_30; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139324.4]
  assign dmiProgramBufferWrEnMaybe_31 = _T_3798 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141912.4]
  assign dmiProgramBufferRdEn_31 = _T_3632 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141910.4]
  assign dmiProgramBufferAccessVec_31 = dmiProgramBufferWrEnMaybe_31 | dmiProgramBufferRdEn_31; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139191.4]
  assign _T_205 = _T_204 | dmiProgramBufferAccessVec_31; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139325.4]
  assign _T_206 = _T_205 | dmiProgramBufferAccessVec_32; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139326.4]
  assign dmiProgramBufferWrEnMaybe_33 = _T_3803 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142319.4]
  assign dmiProgramBufferRdEn_33 = _T_3637 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142317.4]
  assign dmiProgramBufferAccessVec_33 = dmiProgramBufferWrEnMaybe_33 | dmiProgramBufferRdEn_33; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139193.4]
  assign _T_207 = _T_206 | dmiProgramBufferAccessVec_33; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139327.4]
  assign dmiProgramBufferWrEnMaybe_34 = _T_3803 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142349.4]
  assign dmiProgramBufferRdEn_34 = _T_3637 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142347.4]
  assign dmiProgramBufferAccessVec_34 = dmiProgramBufferWrEnMaybe_34 | dmiProgramBufferRdEn_34; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139194.4]
  assign _T_208 = _T_207 | dmiProgramBufferAccessVec_34; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139328.4]
  assign dmiProgramBufferWrEnMaybe_35 = _T_3803 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142379.4]
  assign dmiProgramBufferRdEn_35 = _T_3637 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142377.4]
  assign dmiProgramBufferAccessVec_35 = dmiProgramBufferWrEnMaybe_35 | dmiProgramBufferRdEn_35; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139195.4]
  assign _T_209 = _T_208 | dmiProgramBufferAccessVec_35; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139329.4]
  assign _T_210 = _T_209 | dmiProgramBufferAccessVec_36; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139330.4]
  assign dmiProgramBufferWrEnMaybe_37 = _T_3808 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140643.4]
  assign dmiProgramBufferRdEn_37 = _T_3642 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140641.4]
  assign dmiProgramBufferAccessVec_37 = dmiProgramBufferWrEnMaybe_37 | dmiProgramBufferRdEn_37; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139197.4]
  assign _T_211 = _T_210 | dmiProgramBufferAccessVec_37; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139331.4]
  assign dmiProgramBufferWrEnMaybe_38 = _T_3808 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140673.4]
  assign dmiProgramBufferRdEn_38 = _T_3642 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140671.4]
  assign dmiProgramBufferAccessVec_38 = dmiProgramBufferWrEnMaybe_38 | dmiProgramBufferRdEn_38; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139198.4]
  assign _T_212 = _T_211 | dmiProgramBufferAccessVec_38; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139332.4]
  assign dmiProgramBufferWrEnMaybe_39 = _T_3808 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140703.4]
  assign dmiProgramBufferRdEn_39 = _T_3642 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140701.4]
  assign dmiProgramBufferAccessVec_39 = dmiProgramBufferWrEnMaybe_39 | dmiProgramBufferRdEn_39; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139199.4]
  assign _T_213 = _T_212 | dmiProgramBufferAccessVec_39; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139333.4]
  assign _T_214 = _T_213 | dmiProgramBufferAccessVec_40; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139334.4]
  assign dmiProgramBufferWrEnMaybe_41 = _T_3813 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139978.4]
  assign dmiProgramBufferRdEn_41 = _T_3647 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@139976.4]
  assign dmiProgramBufferAccessVec_41 = dmiProgramBufferWrEnMaybe_41 | dmiProgramBufferRdEn_41; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139201.4]
  assign _T_215 = _T_214 | dmiProgramBufferAccessVec_41; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139335.4]
  assign dmiProgramBufferWrEnMaybe_42 = _T_3813 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140008.4]
  assign dmiProgramBufferRdEn_42 = _T_3647 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140006.4]
  assign dmiProgramBufferAccessVec_42 = dmiProgramBufferWrEnMaybe_42 | dmiProgramBufferRdEn_42; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139202.4]
  assign _T_216 = _T_215 | dmiProgramBufferAccessVec_42; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139336.4]
  assign dmiProgramBufferWrEnMaybe_43 = _T_3813 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140038.4]
  assign dmiProgramBufferRdEn_43 = _T_3647 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140036.4]
  assign dmiProgramBufferAccessVec_43 = dmiProgramBufferWrEnMaybe_43 | dmiProgramBufferRdEn_43; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139203.4]
  assign _T_217 = _T_216 | dmiProgramBufferAccessVec_43; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139337.4]
  assign _T_218 = _T_217 | dmiProgramBufferAccessVec_44; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139338.4]
  assign dmiProgramBufferWrEnMaybe_45 = _T_3818 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142201.4]
  assign dmiProgramBufferRdEn_45 = _T_3652 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142199.4]
  assign dmiProgramBufferAccessVec_45 = dmiProgramBufferWrEnMaybe_45 | dmiProgramBufferRdEn_45; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139205.4]
  assign _T_219 = _T_218 | dmiProgramBufferAccessVec_45; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139339.4]
  assign dmiProgramBufferWrEnMaybe_46 = _T_3818 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142231.4]
  assign dmiProgramBufferRdEn_46 = _T_3652 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142229.4]
  assign dmiProgramBufferAccessVec_46 = dmiProgramBufferWrEnMaybe_46 | dmiProgramBufferRdEn_46; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139206.4]
  assign _T_220 = _T_219 | dmiProgramBufferAccessVec_46; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139340.4]
  assign dmiProgramBufferWrEnMaybe_47 = _T_3818 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142261.4]
  assign dmiProgramBufferRdEn_47 = _T_3652 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142259.4]
  assign dmiProgramBufferAccessVec_47 = dmiProgramBufferWrEnMaybe_47 | dmiProgramBufferRdEn_47; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139207.4]
  assign _T_221 = _T_220 | dmiProgramBufferAccessVec_47; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139341.4]
  assign _T_222 = _T_221 | dmiProgramBufferAccessVec_48; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139342.4]
  assign dmiProgramBufferWrEnMaybe_49 = _T_3823 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141734.4]
  assign dmiProgramBufferRdEn_49 = _T_3657 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141732.4]
  assign dmiProgramBufferAccessVec_49 = dmiProgramBufferWrEnMaybe_49 | dmiProgramBufferRdEn_49; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139209.4]
  assign _T_223 = _T_222 | dmiProgramBufferAccessVec_49; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139343.4]
  assign dmiProgramBufferWrEnMaybe_50 = _T_3823 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141764.4]
  assign dmiProgramBufferRdEn_50 = _T_3657 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141762.4]
  assign dmiProgramBufferAccessVec_50 = dmiProgramBufferWrEnMaybe_50 | dmiProgramBufferRdEn_50; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139210.4]
  assign _T_224 = _T_223 | dmiProgramBufferAccessVec_50; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139344.4]
  assign dmiProgramBufferWrEnMaybe_51 = _T_3823 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141794.4]
  assign dmiProgramBufferRdEn_51 = _T_3657 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141792.4]
  assign dmiProgramBufferAccessVec_51 = dmiProgramBufferWrEnMaybe_51 | dmiProgramBufferRdEn_51; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139211.4]
  assign _T_225 = _T_224 | dmiProgramBufferAccessVec_51; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139345.4]
  assign _T_226 = _T_225 | dmiProgramBufferAccessVec_52; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139346.4]
  assign dmiProgramBufferWrEnMaybe_53 = _T_3828 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140997.4]
  assign dmiProgramBufferRdEn_53 = _T_3662 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140995.4]
  assign dmiProgramBufferAccessVec_53 = dmiProgramBufferWrEnMaybe_53 | dmiProgramBufferRdEn_53; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139213.4]
  assign _T_227 = _T_226 | dmiProgramBufferAccessVec_53; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139347.4]
  assign dmiProgramBufferWrEnMaybe_54 = _T_3828 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141027.4]
  assign dmiProgramBufferRdEn_54 = _T_3662 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141025.4]
  assign dmiProgramBufferAccessVec_54 = dmiProgramBufferWrEnMaybe_54 | dmiProgramBufferRdEn_54; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139214.4]
  assign _T_228 = _T_227 | dmiProgramBufferAccessVec_54; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139348.4]
  assign dmiProgramBufferWrEnMaybe_55 = _T_3828 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141057.4]
  assign dmiProgramBufferRdEn_55 = _T_3662 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141055.4]
  assign dmiProgramBufferAccessVec_55 = dmiProgramBufferWrEnMaybe_55 | dmiProgramBufferRdEn_55; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139215.4]
  assign _T_229 = _T_228 | dmiProgramBufferAccessVec_55; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139349.4]
  assign _T_230 = _T_229 | dmiProgramBufferAccessVec_56; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139350.4]
  assign dmiProgramBufferWrEnMaybe_57 = _T_3833 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140289.4]
  assign dmiProgramBufferRdEn_57 = _T_3667 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140287.4]
  assign dmiProgramBufferAccessVec_57 = dmiProgramBufferWrEnMaybe_57 | dmiProgramBufferRdEn_57; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139217.4]
  assign _T_231 = _T_230 | dmiProgramBufferAccessVec_57; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139351.4]
  assign dmiProgramBufferWrEnMaybe_58 = _T_3833 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140319.4]
  assign dmiProgramBufferRdEn_58 = _T_3667 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140317.4]
  assign dmiProgramBufferAccessVec_58 = dmiProgramBufferWrEnMaybe_58 | dmiProgramBufferRdEn_58; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139218.4]
  assign _T_232 = _T_231 | dmiProgramBufferAccessVec_58; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139352.4]
  assign dmiProgramBufferWrEnMaybe_59 = _T_3833 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140349.4]
  assign dmiProgramBufferRdEn_59 = _T_3667 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140347.4]
  assign dmiProgramBufferAccessVec_59 = dmiProgramBufferWrEnMaybe_59 | dmiProgramBufferRdEn_59; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139219.4]
  assign _T_233 = _T_232 | dmiProgramBufferAccessVec_59; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139353.4]
  assign _T_234 = _T_233 | dmiProgramBufferAccessVec_60; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139354.4]
  assign dmiProgramBufferWrEnMaybe_61 = _T_3838 & _T_2928; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142722.4]
  assign dmiProgramBufferRdEn_61 = _T_3672 & _T_2926; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142720.4]
  assign dmiProgramBufferAccessVec_61 = dmiProgramBufferWrEnMaybe_61 | dmiProgramBufferRdEn_61; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139221.4]
  assign _T_235 = _T_234 | dmiProgramBufferAccessVec_61; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139355.4]
  assign dmiProgramBufferWrEnMaybe_62 = _T_3838 & _T_2953; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142752.4]
  assign dmiProgramBufferRdEn_62 = _T_3672 & _T_2951; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142750.4]
  assign dmiProgramBufferAccessVec_62 = dmiProgramBufferWrEnMaybe_62 | dmiProgramBufferRdEn_62; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139222.4]
  assign _T_236 = _T_235 | dmiProgramBufferAccessVec_62; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139356.4]
  assign dmiProgramBufferWrEnMaybe_63 = _T_3838 & _T_2978; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142782.4]
  assign dmiProgramBufferRdEn_63 = _T_3672 & _T_2976; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@142780.4]
  assign dmiProgramBufferAccessVec_63 = dmiProgramBufferWrEnMaybe_63 | dmiProgramBufferRdEn_63; // @[Debug.scala 1144:108:chipyard.TestHarness.RocketConfig.fir@139223.4]
  assign dmiProgramBufferAccess = _T_236 | dmiProgramBufferAccessVec_63; // @[Debug.scala 1147:69:chipyard.TestHarness.RocketConfig.fir@139357.4]
  assign _T_39418 = dmiProgramBufferAccess & _T_39403; // @[Debug.scala 1580:42:chipyard.TestHarness.RocketConfig.fir@189136.4]
  assign errorBusy = _T_39416 | _T_39418; // @[Debug.scala 1579:74:chipyard.TestHarness.RocketConfig.fir@189137.4]
  assign _T_91 = autoexecprogbufWrEnMaybe & ABSTRACTCSWrEnLegal; // @[Debug.scala 1132:38:chipyard.TestHarness.RocketConfig.fir@138985.6]
  assign ABSTRACTAUTOWrData_autoexecprogbuf = auto_dmi_in_a_bits_data[31:16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140117.4]
  assign _T_93 = autoexecdataWrEnMaybe & ABSTRACTCSWrEnLegal; // @[Debug.scala 1135:35:chipyard.TestHarness.RocketConfig.fir@138990.6]
  assign ABSTRACTAUTOWrData_autoexecdata = {{10'd0}, auto_dmi_in_a_bits_data[1:0]}; // @[:chipyard.TestHarness.RocketConfig.fir@138960.4 :chipyard.TestHarness.RocketConfig.fir@138961.4 Debug.scala 278:12:chipyard.TestHarness.RocketConfig.fir@140071.4]
  assign _T_94 = ABSTRACTAUTOWrData_autoexecdata & 12'h3; // @[Debug.scala 1136:73:chipyard.TestHarness.RocketConfig.fir@138992.8]
  assign COMMANDWrData_control = COMMANDWrDataVal[23:0]; // @[Debug.scala 1163:65:chipyard.TestHarness.RocketConfig.fir@139491.4]
  assign _T_14414 = &_T_6548[9:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@155506.4]
  assign hartResumingWrEn = _T_38262 & _T_14414; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@155510.4]
  assign _GEN_68 = hartResumingWrEn ? 1'h0 : haltedBitRegs_0; // @[Debug.scala 1208:39:chipyard.TestHarness.RocketConfig.fir@139614.10]
  assign _T_38256 = _T_38094 & _T_33979[32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185541.4]
  assign _T_38257 = _T_38256 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@185542.4]
  assign hartHaltedWrEn = _T_38257 & _T_14414; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159753.4]
  assign _GEN_69 = hartHaltedWrEn | _GEN_68; // @[Debug.scala 1204:37:chipyard.TestHarness.RocketConfig.fir@139607.8]
  assign _GEN_71 = hartIsInResetSync_0 ? 1'h0 : resumeReqRegs_0; // @[Debug.scala 1201:45:chipyard.TestHarness.RocketConfig.fir@139602.6]
  assign _GEN_73 = hartResumingWrEn ? 1'h0 : _GEN_71; // @[Debug.scala 1218:33:chipyard.TestHarness.RocketConfig.fir@139620.6]
  assign _GEN_74 = _T_317 | _GEN_73; // @[Debug.scala 1223:52:chipyard.TestHarness.RocketConfig.fir@139627.6]
  assign _T_580 = {abstractDataMem_7,abstractDataMem_6,abstractDataMem_5,abstractDataMem_4}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@139936.4]
  assign _T_678 = {programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140054.4]
  assign _T_724 = {1'h0,ABSTRACTAUTOReg_autoexecdata[1:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140102.4]
  assign _T_725 = {{13'd0}, _T_724}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@140103.4]
  assign _T_749 = {ABSTRACTAUTOReg_autoexecprogbuf,_T_725}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140129.4]
  assign _T_847 = {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140247.4]
  assign _T_945 = {programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140365.4]
  assign _T_1043 = {programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140483.4]
  assign _T_1141 = {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140601.4]
  assign _T_1239 = {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140719.4]
  assign _T_1337 = {programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140837.4]
  assign _T_1435 = {programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@140955.4]
  assign _T_1533 = {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141073.4]
  assign _T_1874 = {resumeAcks_0,1'h0,1'h0,1'h0,1'h0,_T_23,_T_23,haltedBitRegs_0,haltedBitRegs_0,8'ha2}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141414.4]
  assign _T_1966 = {1'h0,haveResetBitRegs_0,haveResetBitRegs_0,resumeAcks_0,_T_1874}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141506.4]
  assign _T_1967 = {{1'd0}, _T_1966}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141507.4]
  assign _T_1989 = {1'h0,_T_1967}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141529.4]
  assign abstractCommandBusy = ctrlStateReg != 2'h0; // @[Debug.scala 1567:42:chipyard.TestHarness.RocketConfig.fir@189109.4]
  assign _T_2127 = {1'h0,abstractCommandBusy,1'h0,ABSTRACTCSReg_cmderr,8'h2}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141669.4]
  assign _T_2128 = {{10'd0}, _T_2127}; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@141670.4]
  assign _T_2150 = {5'h10,_T_2128}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141692.4]
  assign _T_2248 = {programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141810.4]
  assign _T_2346 = {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@141928.4]
  assign _T_2444 = {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142046.4]
  assign _T_2655 = {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142277.4]
  assign _T_2753 = {programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142395.4]
  assign _T_2874 = {programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142541.4]
  assign _T_2993 = {abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142680.4]
  assign _T_3091 = {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@142798.4]
  assign _GEN_279 = 5'h1 == _T_3104 ? _T_405 : _T_423; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_280 = 5'h2 == _T_3104 ? _T_405 : _GEN_279; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_281 = 5'h3 == _T_3104 ? _T_405 : _GEN_280; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_282 = 5'h4 == _T_3104 ? _T_449 : _GEN_281; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_283 = 5'h5 == _T_3104 ? _T_449 : _GEN_282; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_284 = 5'h6 == _T_3104 ? _T_405 : _GEN_283; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_285 = 5'h7 == _T_3104 ? _T_405 : _GEN_284; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_286 = 5'h8 == _T_3104 ? _T_405 : _GEN_285; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_2144 = 5'h9 == _T_3104; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_287 = _GEN_2144 | _GEN_286; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_2145 = 5'ha == _T_3104; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_288 = _GEN_2145 | _GEN_287; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_2146 = 5'hb == _T_3104; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_289 = _GEN_2146 | _GEN_288; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_2147 = 5'hc == _T_3104; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_290 = _GEN_2147 | _GEN_289; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_2148 = 5'hd == _T_3104; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_291 = _GEN_2148 | _GEN_290; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_2149 = 5'he == _T_3104; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_292 = _GEN_2149 | _GEN_291; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_2150 = 5'hf == _T_3104; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_293 = _GEN_2150 | _GEN_292; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_294 = 5'h10 == _T_3104 ? _T_449 : _GEN_293; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_295 = 5'h11 == _T_3104 ? _T_449 : _GEN_294; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_296 = 5'h12 == _T_3104 ? _T_449 : _GEN_295; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_297 = 5'h13 == _T_3104 ? _T_449 : _GEN_296; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_298 = 5'h14 == _T_3104 ? _T_449 : _GEN_297; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_299 = 5'h15 == _T_3104 ? _T_449 : _GEN_298; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_300 = 5'h16 == _T_3104 ? _T_449 : _GEN_299; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_301 = 5'h17 == _T_3104 ? _T_449 : _GEN_300; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_302 = 5'h18 == _T_3104 ? _T_449 : _GEN_301; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_303 = 5'h19 == _T_3104 ? _T_449 : _GEN_302; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_304 = 5'h1a == _T_3104 ? _T_449 : _GEN_303; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_305 = 5'h1b == _T_3104 ? _T_449 : _GEN_304; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_306 = 5'h1c == _T_3104 ? _T_449 : _GEN_305; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_307 = 5'h1d == _T_3104 ? _T_449 : _GEN_306; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_308 = 5'h1e == _T_3104 ? _T_449 : _GEN_307; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _GEN_309 = 5'h1f == _T_3104 ? _T_449 : _GEN_308; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144421.4]
  assign _T_3854_1 = {{9'd0}, _T_1989}; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@144423.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@144426.4]
  assign _GEN_311 = 5'h1 == _T_3104 ? _T_3854_1 : haltedStatus_0; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_312 = 5'h2 == _T_3104 ? 32'h112380 : _GEN_311; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_313 = 5'h3 == _T_3104 ? HALTSUM1RdData_haltsum1 : _GEN_312; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_314 = 5'h4 == _T_3104 ? _T_2993 : _GEN_313; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_315 = 5'h5 == _T_3104 ? _T_580 : _GEN_314; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _T_3854_6 = {{3'd0}, _T_2150}; // @[MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@144423.4 MuxLiteral.scala 48:48:chipyard.TestHarness.RocketConfig.fir@144431.4]
  assign _GEN_316 = 5'h6 == _T_3104 ? _T_3854_6 : _GEN_315; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_317 = 5'h7 == _T_3104 ? _T_4082 : _GEN_316; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_318 = 5'h8 == _T_3104 ? _T_749 : _GEN_317; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_319 = 5'h9 == _T_3104 ? 32'h0 : _GEN_318; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_320 = 5'ha == _T_3104 ? 32'h0 : _GEN_319; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_321 = 5'hb == _T_3104 ? 32'h0 : _GEN_320; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_322 = 5'hc == _T_3104 ? 32'h0 : _GEN_321; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_323 = 5'hd == _T_3104 ? 32'h0 : _GEN_322; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_324 = 5'he == _T_3104 ? 32'h0 : _GEN_323; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_325 = 5'hf == _T_3104 ? 32'h0 : _GEN_324; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_326 = 5'h10 == _T_3104 ? _T_1337 : _GEN_325; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_327 = 5'h11 == _T_3104 ? _T_1141 : _GEN_326; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_328 = 5'h12 == _T_3104 ? _T_1435 : _GEN_327; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_329 = 5'h13 == _T_3104 ? _T_2444 : _GEN_328; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_330 = 5'h14 == _T_3104 ? _T_2874 : _GEN_329; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_331 = 5'h15 == _T_3104 ? _T_847 : _GEN_330; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_332 = 5'h16 == _T_3104 ? _T_1043 : _GEN_331; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_333 = 5'h17 == _T_3104 ? _T_2346 : _GEN_332; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_334 = 5'h18 == _T_3104 ? _T_2753 : _GEN_333; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_335 = 5'h19 == _T_3104 ? _T_1239 : _GEN_334; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_336 = 5'h1a == _T_3104 ? _T_678 : _GEN_335; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_337 = 5'h1b == _T_3104 ? _T_2655 : _GEN_336; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_338 = 5'h1c == _T_3104 ? _T_2248 : _GEN_337; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_339 = 5'h1d == _T_3104 ? _T_1533 : _GEN_338; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_340 = 5'h1e == _T_3104 ? _T_945 : _GEN_339; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _GEN_341 = 5'h1f == _T_3104 ? _T_3091 : _GEN_340; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@144457.4]
  assign _T_3863 = dmiAbstractDataWrEnMaybe_0 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144489.4]
  assign _T_3865 = dmiAbstractDataWrEnMaybe_1 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144494.4]
  assign _T_3867 = dmiAbstractDataWrEnMaybe_2 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144499.4]
  assign _T_3869 = dmiAbstractDataWrEnMaybe_3 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144504.4]
  assign _T_3871 = dmiAbstractDataWrEnMaybe_4 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144509.4]
  assign _T_3873 = dmiAbstractDataWrEnMaybe_5 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144514.4]
  assign _T_3875 = dmiAbstractDataWrEnMaybe_6 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144519.4]
  assign _T_3877 = dmiAbstractDataWrEnMaybe_7 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1346:60:chipyard.TestHarness.RocketConfig.fir@144524.4]
  assign _T_3879 = dmiProgramBufferWrEnMaybe_0 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144529.4]
  assign _T_3881 = dmiProgramBufferWrEnMaybe_1 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144534.4]
  assign _T_3883 = dmiProgramBufferWrEnMaybe_2 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144539.4]
  assign _T_3885 = dmiProgramBufferWrEnMaybe_3 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144544.4]
  assign _T_3887 = dmiProgramBufferWrEnMaybe_4 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144549.4]
  assign _T_3889 = dmiProgramBufferWrEnMaybe_5 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144554.4]
  assign _T_3891 = dmiProgramBufferWrEnMaybe_6 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144559.4]
  assign _T_3893 = dmiProgramBufferWrEnMaybe_7 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144564.4]
  assign _T_3895 = dmiProgramBufferWrEnMaybe_8 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144569.4]
  assign _T_3897 = dmiProgramBufferWrEnMaybe_9 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144574.4]
  assign _T_3899 = dmiProgramBufferWrEnMaybe_10 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144579.4]
  assign _T_3901 = dmiProgramBufferWrEnMaybe_11 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144584.4]
  assign _T_3903 = dmiProgramBufferWrEnMaybe_12 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144589.4]
  assign _T_3905 = dmiProgramBufferWrEnMaybe_13 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144594.4]
  assign _T_3907 = dmiProgramBufferWrEnMaybe_14 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144599.4]
  assign _T_3909 = dmiProgramBufferWrEnMaybe_15 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144604.4]
  assign _T_3911 = dmiProgramBufferWrEnMaybe_16 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144609.4]
  assign _T_3913 = dmiProgramBufferWrEnMaybe_17 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144614.4]
  assign _T_3915 = dmiProgramBufferWrEnMaybe_18 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144619.4]
  assign _T_3917 = dmiProgramBufferWrEnMaybe_19 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144624.4]
  assign _T_3919 = dmiProgramBufferWrEnMaybe_20 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144629.4]
  assign _T_3921 = dmiProgramBufferWrEnMaybe_21 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144634.4]
  assign _T_3923 = dmiProgramBufferWrEnMaybe_22 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144639.4]
  assign _T_3925 = dmiProgramBufferWrEnMaybe_23 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144644.4]
  assign _T_3927 = dmiProgramBufferWrEnMaybe_24 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144649.4]
  assign _T_3929 = dmiProgramBufferWrEnMaybe_25 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144654.4]
  assign _T_3931 = dmiProgramBufferWrEnMaybe_26 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144659.4]
  assign _T_3933 = dmiProgramBufferWrEnMaybe_27 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144664.4]
  assign _T_3935 = dmiProgramBufferWrEnMaybe_28 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144669.4]
  assign _T_3937 = dmiProgramBufferWrEnMaybe_29 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144674.4]
  assign _T_3939 = dmiProgramBufferWrEnMaybe_30 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144679.4]
  assign _T_3941 = dmiProgramBufferWrEnMaybe_31 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144684.4]
  assign _T_3943 = dmiProgramBufferWrEnMaybe_32 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144689.4]
  assign _T_3945 = dmiProgramBufferWrEnMaybe_33 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144694.4]
  assign _T_3947 = dmiProgramBufferWrEnMaybe_34 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144699.4]
  assign _T_3949 = dmiProgramBufferWrEnMaybe_35 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144704.4]
  assign _T_3951 = dmiProgramBufferWrEnMaybe_36 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144709.4]
  assign _T_3953 = dmiProgramBufferWrEnMaybe_37 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144714.4]
  assign _T_3955 = dmiProgramBufferWrEnMaybe_38 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144719.4]
  assign _T_3957 = dmiProgramBufferWrEnMaybe_39 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144724.4]
  assign _T_3959 = dmiProgramBufferWrEnMaybe_40 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144729.4]
  assign _T_3961 = dmiProgramBufferWrEnMaybe_41 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144734.4]
  assign _T_3963 = dmiProgramBufferWrEnMaybe_42 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144739.4]
  assign _T_3965 = dmiProgramBufferWrEnMaybe_43 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144744.4]
  assign _T_3967 = dmiProgramBufferWrEnMaybe_44 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144749.4]
  assign _T_3969 = dmiProgramBufferWrEnMaybe_45 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144754.4]
  assign _T_3971 = dmiProgramBufferWrEnMaybe_46 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144759.4]
  assign _T_3973 = dmiProgramBufferWrEnMaybe_47 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144764.4]
  assign _T_3975 = dmiProgramBufferWrEnMaybe_48 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144769.4]
  assign _T_3977 = dmiProgramBufferWrEnMaybe_49 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144774.4]
  assign _T_3979 = dmiProgramBufferWrEnMaybe_50 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144779.4]
  assign _T_3981 = dmiProgramBufferWrEnMaybe_51 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144784.4]
  assign _T_3983 = dmiProgramBufferWrEnMaybe_52 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144789.4]
  assign _T_3985 = dmiProgramBufferWrEnMaybe_53 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144794.4]
  assign _T_3987 = dmiProgramBufferWrEnMaybe_54 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144799.4]
  assign _T_3989 = dmiProgramBufferWrEnMaybe_55 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144804.4]
  assign _T_3991 = dmiProgramBufferWrEnMaybe_56 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144809.4]
  assign _T_3993 = dmiProgramBufferWrEnMaybe_57 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144814.4]
  assign _T_3995 = dmiProgramBufferWrEnMaybe_58 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144819.4]
  assign _T_3997 = dmiProgramBufferWrEnMaybe_59 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144824.4]
  assign _T_3999 = dmiProgramBufferWrEnMaybe_60 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144829.4]
  assign _T_4001 = dmiProgramBufferWrEnMaybe_61 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144834.4]
  assign _T_4003 = dmiProgramBufferWrEnMaybe_62 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144839.4]
  assign _T_4005 = dmiProgramBufferWrEnMaybe_63 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1368:61:chipyard.TestHarness.RocketConfig.fir@144844.4]
  assign hartGoingId = auto_tl_in_a_bits_data[41:32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159777.4]
  assign _T_4057 = hartGoingId == 10'h0; // @[Debug.scala 1389:28:chipyard.TestHarness.RocketConfig.fir@144973.10]
  assign _T_4059 = _T_4057 | reset; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144975.10]
  assign _T_4060 = ~_T_4059; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144976.10]
  assign hartGoingWrEn = _T_38257 & _T_14435; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159776.4]
  assign _GEN_414 = hartGoingWrEn ? 1'h0 : goReg; // @[Debug.scala 1388:33:chipyard.TestHarness.RocketConfig.fir@144972.8]
  assign _GEN_2117 = commandRegBadHaltResume ? 1'h0 : 1'h1; // @[Debug.scala 1633:43:chipyard.TestHarness.RocketConfig.fir@189196.10]
  assign _GEN_2121 = commandRegIsUnsupported ? 1'h0 : _GEN_2117; // @[Debug.scala 1630:38:chipyard.TestHarness.RocketConfig.fir@189191.8]
  assign _GEN_2134 = _T_39436 & _GEN_2121; // @[Debug.scala 1623:59:chipyard.TestHarness.RocketConfig.fir@189190.6]
  assign goAbstract = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2134; // @[Debug.scala 1615:47:chipyard.TestHarness.RocketConfig.fir@189173.4]
  assign _GEN_415 = goAbstract | _GEN_414; // @[Debug.scala 1386:25:chipyard.TestHarness.RocketConfig.fir@144968.6]
  assign accessRegisterCommandReg_postexec = _T_4082[18]; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145059.4]
  assign accessRegisterCommandReg_size = _T_4082[22:20]; // @[Debug.scala 1415:73:chipyard.TestHarness.RocketConfig.fir@145063.4]
  assign _T_4094 = accessRegisterCommandReg_regno & 16'h1f; // @[Debug.scala 1464:66:chipyard.TestHarness.RocketConfig.fir@145089.4]
  assign abstractGeneratedI_rd = _T_4094[4:0]; // @[Debug.scala 1459:34:chipyard.TestHarness.RocketConfig.fir@145079.4 Debug.scala 1464:31:chipyard.TestHarness.RocketConfig.fir@145090.4]
  assign _T_4101 = {17'h7000,accessRegisterCommandReg_size,abstractGeneratedI_rd,7'h3}; // @[Debug.scala 1485:36:chipyard.TestHarness.RocketConfig.fir@145126.6]
  assign _T_4106 = {7'h1c,abstractGeneratedI_rd,5'h0,accessRegisterCommandReg_size,5'h0,7'h23}; // @[Debug.scala 1487:36:chipyard.TestHarness.RocketConfig.fir@145131.6]
  assign _T_6552 = &_T_6548[7:0]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147596.4]
  assign _T_6573 = &_T_6548[15:8]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147617.4]
  assign _T_6596 = &_T_6548[23:16]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147640.4]
  assign _T_6613 = {6'h0,resumeReqRegs_0,goReg,6'h0,resumeReqRegs_0,goReg,6'h0,resumeReqRegs_0,goReg}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@147657.4]
  assign _T_6619 = &_T_6548[31:24]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147663.4]
  assign _T_6642 = &_T_6548[39:32]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147686.4]
  assign _T_6665 = &_T_6548[47:40]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147709.4]
  assign _T_6682 = {6'h0,resumeReqRegs_0,goReg,6'h0,resumeReqRegs_0,goReg,6'h0,resumeReqRegs_0,goReg,_T_6613}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@147726.4]
  assign _T_6688 = &_T_6548[55:48]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147732.4]
  assign _T_6711 = &_T_6548[63:56]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@147755.4]
  assign _T_6728 = {6'h0,resumeReqRegs_0,goReg,6'h0,resumeReqRegs_0,goReg,_T_6682}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@147772.4]
  assign _T_36075 = _T_38094 & _T_33979[110]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179659.4]
  assign _T_36076 = _T_36075 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179660.4]
  assign _T_8925 = _T_36076 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@149969.4]
  assign _T_8948 = _T_36076 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@149995.4]
  assign _T_8973 = _T_36076 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150023.4]
  assign _T_8998 = _T_36076 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150051.4]
  assign _T_9023 = _T_36076 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150079.4]
  assign _T_9048 = _T_36076 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150107.4]
  assign _T_9073 = _T_36076 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150135.4]
  assign _T_9098 = _T_36076 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@150163.4]
  assign _T_9110 = {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52,programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@150178.4]
  assign _T_36055 = _T_38094 & _T_33979[106]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179599.4]
  assign _T_36056 = _T_36055 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179600.4]
  assign _T_11125 = _T_36056 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152193.4]
  assign _T_11148 = _T_36056 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152219.4]
  assign _T_11173 = _T_36056 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152247.4]
  assign _T_11198 = _T_36056 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152275.4]
  assign _T_11223 = _T_36056 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152303.4]
  assign _T_11248 = _T_36056 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152331.4]
  assign _T_11273 = _T_36056 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152359.4]
  assign _T_11298 = _T_36056 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@152387.4]
  assign _T_11310 = {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20,programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@152402.4]
  assign _T_36070 = _T_38094 & _T_33979[109]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179644.4]
  assign _T_36071 = _T_36070 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179645.4]
  assign _T_15917 = _T_36071 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157013.4]
  assign _T_15940 = _T_36071 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157039.4]
  assign _T_15965 = _T_36071 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157067.4]
  assign _T_15990 = _T_36071 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157095.4]
  assign _T_16015 = _T_36071 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157123.4]
  assign _T_16040 = _T_36071 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157151.4]
  assign _T_16065 = _T_36071 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157179.4]
  assign _T_16090 = _T_36071 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@157207.4]
  assign _T_16102 = {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44,programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@157222.4]
  assign _T_36050 = _T_38094 & _T_33979[105]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179584.4]
  assign _T_36051 = _T_36050 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179585.4]
  assign _T_17774 = _T_36051 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@158894.4]
  assign _T_17797 = _T_36051 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@158920.4]
  assign _T_17822 = _T_36051 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@158948.4]
  assign _T_17847 = _T_36051 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@158976.4]
  assign _T_17872 = _T_36051 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159004.4]
  assign _T_17897 = _T_36051 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159032.4]
  assign _T_17922 = _T_36051 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159060.4]
  assign _T_17947 = _T_36051 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@159088.4]
  assign _T_17959 = {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12,programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@159103.4]
  assign _T_22141 = {abstractGeneratedMem_1,abstractGeneratedMem_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@163289.4]
  assign _T_36065 = _T_38094 & _T_33979[108]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179629.4]
  assign _T_36066 = _T_36065 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179630.4]
  assign _T_23246 = _T_36066 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164394.4]
  assign _T_23269 = _T_36066 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164420.4]
  assign _T_23294 = _T_36066 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164448.4]
  assign _T_23319 = _T_36066 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164476.4]
  assign _T_23344 = _T_36066 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164504.4]
  assign _T_23369 = _T_36066 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164532.4]
  assign _T_23394 = _T_36066 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164560.4]
  assign _T_23419 = _T_36066 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@164588.4]
  assign _T_23431 = {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36,programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@164603.4]
  assign _T_36085 = _T_38094 & _T_33979[112]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179689.4]
  assign _T_36086 = _T_36085 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179690.4]
  assign _T_25082 = _T_36086 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166254.4]
  assign _T_25105 = _T_36086 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166280.4]
  assign _T_25130 = _T_36086 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166308.4]
  assign _T_25155 = _T_36086 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166336.4]
  assign _T_25180 = _T_36086 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166364.4]
  assign _T_25205 = _T_36086 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166392.4]
  assign _T_25230 = _T_36086 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166420.4]
  assign _T_25255 = _T_36086 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@166448.4]
  assign _T_25267 = {abstractDataMem_7,abstractDataMem_6,abstractDataMem_5,abstractDataMem_4,abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@166463.4]
  assign _T_36045 = _T_38094 & _T_33979[104]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179569.4]
  assign _T_36046 = _T_36045 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179570.4]
  assign _T_27828 = _T_36046 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169024.4]
  assign _T_27851 = _T_36046 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169050.4]
  assign _T_27876 = _T_36046 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169078.4]
  assign _T_27901 = _T_36046 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169106.4]
  assign _T_27926 = _T_36046 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169134.4]
  assign _T_27951 = _T_36046 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169162.4]
  assign _T_27976 = _T_36046 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169190.4]
  assign _T_28001 = _T_36046 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@169218.4]
  assign _T_28013 = {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4,programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@169233.4]
  assign _T_36060 = _T_38094 & _T_33979[107]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179614.4]
  assign _T_36061 = _T_36060 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179615.4]
  assign _T_30938 = _T_36061 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172158.4]
  assign _T_30961 = _T_36061 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172184.4]
  assign _T_30986 = _T_36061 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172212.4]
  assign _T_31011 = _T_36061 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172240.4]
  assign _T_31036 = _T_36061 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172268.4]
  assign _T_31061 = _T_36061 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172296.4]
  assign _T_31086 = _T_36061 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172324.4]
  assign _T_31111 = _T_36061 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@172352.4]
  assign _T_31123 = {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28,programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@172367.4]
  assign _T_36080 = _T_38094 & _T_33979[111]; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179674.4]
  assign _T_36081 = _T_36080 & _T_6385; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@179675.4]
  assign _T_32592 = _T_36081 & _T_6552; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173836.4]
  assign _T_32615 = _T_36081 & _T_6573; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173862.4]
  assign _T_32640 = _T_36081 & _T_6596; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173890.4]
  assign _T_32665 = _T_36081 & _T_6619; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173918.4]
  assign _T_32690 = _T_36081 & _T_6642; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173946.4]
  assign _T_32715 = _T_36081 & _T_6665; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@173974.4]
  assign _T_32740 = _T_36081 & _T_6688; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@174002.4]
  assign _T_32765 = _T_36081 & _T_6711; // @[RegisterRouter.scala 80:24:chipyard.TestHarness.RocketConfig.fir@174030.4]
  assign _T_32777 = {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60,programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@174045.4]
  assign _GEN_1520 = 8'h1 == _T_33705 ? _T_6309 : _T_6309; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1521 = 8'h2 == _T_33705 ? _T_6309 : _GEN_1520; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1522 = 8'h3 == _T_33705 ? _T_6309 : _GEN_1521; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1523 = 8'h4 == _T_33705 ? _T_6309 : _GEN_1522; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1524 = 8'h5 == _T_33705 ? _T_6309 : _GEN_1523; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1525 = 8'h6 == _T_33705 ? _T_6309 : _GEN_1524; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1526 = 8'h7 == _T_33705 ? _T_6309 : _GEN_1525; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1527 = 8'h8 == _T_33705 ? _T_6309 : _GEN_1526; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1528 = 8'h9 == _T_33705 ? _T_6309 : _GEN_1527; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1529 = 8'ha == _T_33705 ? _T_6309 : _GEN_1528; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2151 = 8'hb == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1530 = _GEN_2151 | _GEN_1529; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2152 = 8'hc == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1531 = _GEN_2152 | _GEN_1530; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2153 = 8'hd == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1532 = _GEN_2153 | _GEN_1531; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2154 = 8'he == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1533 = _GEN_2154 | _GEN_1532; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2155 = 8'hf == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1534 = _GEN_2155 | _GEN_1533; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2156 = 8'h10 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1535 = _GEN_2156 | _GEN_1534; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2157 = 8'h11 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1536 = _GEN_2157 | _GEN_1535; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2158 = 8'h12 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1537 = _GEN_2158 | _GEN_1536; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2159 = 8'h13 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1538 = _GEN_2159 | _GEN_1537; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2160 = 8'h14 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1539 = _GEN_2160 | _GEN_1538; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2161 = 8'h15 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1540 = _GEN_2161 | _GEN_1539; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2162 = 8'h16 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1541 = _GEN_2162 | _GEN_1540; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2163 = 8'h17 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1542 = _GEN_2163 | _GEN_1541; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2164 = 8'h18 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1543 = _GEN_2164 | _GEN_1542; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2165 = 8'h19 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1544 = _GEN_2165 | _GEN_1543; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2166 = 8'h1a == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1545 = _GEN_2166 | _GEN_1544; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2167 = 8'h1b == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1546 = _GEN_2167 | _GEN_1545; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2168 = 8'h1c == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1547 = _GEN_2168 | _GEN_1546; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2169 = 8'h1d == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1548 = _GEN_2169 | _GEN_1547; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2170 = 8'h1e == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1549 = _GEN_2170 | _GEN_1548; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2171 = 8'h1f == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1550 = _GEN_2171 | _GEN_1549; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1551 = 8'h20 == _T_33705 ? _T_6385 : _GEN_1550; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1552 = 8'h21 == _T_33705 ? _T_6385 : _GEN_1551; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2172 = 8'h22 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1553 = _GEN_2172 | _GEN_1552; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2173 = 8'h23 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1554 = _GEN_2173 | _GEN_1553; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2174 = 8'h24 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1555 = _GEN_2174 | _GEN_1554; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2175 = 8'h25 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1556 = _GEN_2175 | _GEN_1555; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2176 = 8'h26 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1557 = _GEN_2176 | _GEN_1556; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2177 = 8'h27 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1558 = _GEN_2177 | _GEN_1557; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2178 = 8'h28 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1559 = _GEN_2178 | _GEN_1558; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2179 = 8'h29 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1560 = _GEN_2179 | _GEN_1559; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2180 = 8'h2a == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1561 = _GEN_2180 | _GEN_1560; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2181 = 8'h2b == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1562 = _GEN_2181 | _GEN_1561; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2182 = 8'h2c == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1563 = _GEN_2182 | _GEN_1562; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2183 = 8'h2d == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1564 = _GEN_2183 | _GEN_1563; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2184 = 8'h2e == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1565 = _GEN_2184 | _GEN_1564; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2185 = 8'h2f == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1566 = _GEN_2185 | _GEN_1565; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2186 = 8'h30 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1567 = _GEN_2186 | _GEN_1566; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2187 = 8'h31 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1568 = _GEN_2187 | _GEN_1567; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2188 = 8'h32 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1569 = _GEN_2188 | _GEN_1568; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2189 = 8'h33 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1570 = _GEN_2189 | _GEN_1569; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2190 = 8'h34 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1571 = _GEN_2190 | _GEN_1570; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2191 = 8'h35 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1572 = _GEN_2191 | _GEN_1571; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2192 = 8'h36 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1573 = _GEN_2192 | _GEN_1572; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2193 = 8'h37 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1574 = _GEN_2193 | _GEN_1573; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2194 = 8'h38 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1575 = _GEN_2194 | _GEN_1574; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2195 = 8'h39 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1576 = _GEN_2195 | _GEN_1575; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2196 = 8'h3a == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1577 = _GEN_2196 | _GEN_1576; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2197 = 8'h3b == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1578 = _GEN_2197 | _GEN_1577; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2198 = 8'h3c == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1579 = _GEN_2198 | _GEN_1578; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2199 = 8'h3d == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1580 = _GEN_2199 | _GEN_1579; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2200 = 8'h3e == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1581 = _GEN_2200 | _GEN_1580; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2201 = 8'h3f == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1582 = _GEN_2201 | _GEN_1581; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2202 = 8'h40 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1583 = _GEN_2202 | _GEN_1582; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2203 = 8'h41 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1584 = _GEN_2203 | _GEN_1583; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2204 = 8'h42 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1585 = _GEN_2204 | _GEN_1584; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2205 = 8'h43 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1586 = _GEN_2205 | _GEN_1585; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2206 = 8'h44 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1587 = _GEN_2206 | _GEN_1586; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2207 = 8'h45 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1588 = _GEN_2207 | _GEN_1587; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2208 = 8'h46 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1589 = _GEN_2208 | _GEN_1588; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2209 = 8'h47 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1590 = _GEN_2209 | _GEN_1589; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2210 = 8'h48 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1591 = _GEN_2210 | _GEN_1590; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2211 = 8'h49 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1592 = _GEN_2211 | _GEN_1591; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2212 = 8'h4a == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1593 = _GEN_2212 | _GEN_1592; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2213 = 8'h4b == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1594 = _GEN_2213 | _GEN_1593; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2214 = 8'h4c == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1595 = _GEN_2214 | _GEN_1594; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2215 = 8'h4d == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1596 = _GEN_2215 | _GEN_1595; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2216 = 8'h4e == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1597 = _GEN_2216 | _GEN_1596; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2217 = 8'h4f == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1598 = _GEN_2217 | _GEN_1597; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2218 = 8'h50 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1599 = _GEN_2218 | _GEN_1598; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2219 = 8'h51 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1600 = _GEN_2219 | _GEN_1599; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2220 = 8'h52 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1601 = _GEN_2220 | _GEN_1600; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2221 = 8'h53 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1602 = _GEN_2221 | _GEN_1601; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2222 = 8'h54 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1603 = _GEN_2222 | _GEN_1602; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2223 = 8'h55 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1604 = _GEN_2223 | _GEN_1603; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2224 = 8'h56 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1605 = _GEN_2224 | _GEN_1604; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2225 = 8'h57 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1606 = _GEN_2225 | _GEN_1605; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2226 = 8'h58 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1607 = _GEN_2226 | _GEN_1606; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2227 = 8'h59 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1608 = _GEN_2227 | _GEN_1607; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2228 = 8'h5a == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1609 = _GEN_2228 | _GEN_1608; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2229 = 8'h5b == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1610 = _GEN_2229 | _GEN_1609; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2230 = 8'h5c == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1611 = _GEN_2230 | _GEN_1610; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2231 = 8'h5d == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1612 = _GEN_2231 | _GEN_1611; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2232 = 8'h5e == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1613 = _GEN_2232 | _GEN_1612; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2233 = 8'h5f == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1614 = _GEN_2233 | _GEN_1613; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1615 = 8'h60 == _T_33705 ? _T_6385 : _GEN_1614; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2234 = 8'h61 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1616 = _GEN_2234 | _GEN_1615; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2235 = 8'h62 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1617 = _GEN_2235 | _GEN_1616; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2236 = 8'h63 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1618 = _GEN_2236 | _GEN_1617; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2237 = 8'h64 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1619 = _GEN_2237 | _GEN_1618; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2238 = 8'h65 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1620 = _GEN_2238 | _GEN_1619; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2239 = 8'h66 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1621 = _GEN_2239 | _GEN_1620; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1622 = 8'h67 == _T_33705 ? _T_6385 : _GEN_1621; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1623 = 8'h68 == _T_33705 ? _T_6385 : _GEN_1622; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1624 = 8'h69 == _T_33705 ? _T_6385 : _GEN_1623; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1625 = 8'h6a == _T_33705 ? _T_6385 : _GEN_1624; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1626 = 8'h6b == _T_33705 ? _T_6385 : _GEN_1625; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1627 = 8'h6c == _T_33705 ? _T_6385 : _GEN_1626; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1628 = 8'h6d == _T_33705 ? _T_6385 : _GEN_1627; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1629 = 8'h6e == _T_33705 ? _T_6385 : _GEN_1628; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1630 = 8'h6f == _T_33705 ? _T_6385 : _GEN_1629; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1631 = 8'h70 == _T_33705 ? _T_6385 : _GEN_1630; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2240 = 8'h71 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1632 = _GEN_2240 | _GEN_1631; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2241 = 8'h72 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1633 = _GEN_2241 | _GEN_1632; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2242 = 8'h73 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1634 = _GEN_2242 | _GEN_1633; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2243 = 8'h74 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1635 = _GEN_2243 | _GEN_1634; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2244 = 8'h75 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1636 = _GEN_2244 | _GEN_1635; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2245 = 8'h76 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1637 = _GEN_2245 | _GEN_1636; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2246 = 8'h77 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1638 = _GEN_2246 | _GEN_1637; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2247 = 8'h78 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1639 = _GEN_2247 | _GEN_1638; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2248 = 8'h79 == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1640 = _GEN_2248 | _GEN_1639; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2249 = 8'h7a == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1641 = _GEN_2249 | _GEN_1640; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2250 = 8'h7b == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1642 = _GEN_2250 | _GEN_1641; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2251 = 8'h7c == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1643 = _GEN_2251 | _GEN_1642; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2252 = 8'h7d == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1644 = _GEN_2252 | _GEN_1643; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2253 = 8'h7e == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1645 = _GEN_2253 | _GEN_1644; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_2254 = 8'h7f == _T_33705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1646 = _GEN_2254 | _GEN_1645; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1647 = 8'h80 == _T_33705 ? _T_6385 : _GEN_1646; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1648 = 8'h81 == _T_33705 ? _T_6385 : _GEN_1647; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1649 = 8'h82 == _T_33705 ? _T_6385 : _GEN_1648; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1650 = 8'h83 == _T_33705 ? _T_6385 : _GEN_1649; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1651 = 8'h84 == _T_33705 ? _T_6385 : _GEN_1650; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1652 = 8'h85 == _T_33705 ? _T_6385 : _GEN_1651; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1653 = 8'h86 == _T_33705 ? _T_6385 : _GEN_1652; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1654 = 8'h87 == _T_33705 ? _T_6385 : _GEN_1653; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1655 = 8'h88 == _T_33705 ? _T_6385 : _GEN_1654; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1656 = 8'h89 == _T_33705 ? _T_6385 : _GEN_1655; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1657 = 8'h8a == _T_33705 ? _T_6385 : _GEN_1656; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1658 = 8'h8b == _T_33705 ? _T_6385 : _GEN_1657; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1659 = 8'h8c == _T_33705 ? _T_6385 : _GEN_1658; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1660 = 8'h8d == _T_33705 ? _T_6385 : _GEN_1659; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1661 = 8'h8e == _T_33705 ? _T_6385 : _GEN_1660; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1662 = 8'h8f == _T_33705 ? _T_6385 : _GEN_1661; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1663 = 8'h90 == _T_33705 ? _T_6385 : _GEN_1662; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1664 = 8'h91 == _T_33705 ? _T_6385 : _GEN_1663; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1665 = 8'h92 == _T_33705 ? _T_6385 : _GEN_1664; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1666 = 8'h93 == _T_33705 ? _T_6385 : _GEN_1665; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1667 = 8'h94 == _T_33705 ? _T_6385 : _GEN_1666; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1668 = 8'h95 == _T_33705 ? _T_6385 : _GEN_1667; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1669 = 8'h96 == _T_33705 ? _T_6385 : _GEN_1668; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1670 = 8'h97 == _T_33705 ? _T_6385 : _GEN_1669; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1671 = 8'h98 == _T_33705 ? _T_6385 : _GEN_1670; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1672 = 8'h99 == _T_33705 ? _T_6385 : _GEN_1671; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1673 = 8'h9a == _T_33705 ? _T_6385 : _GEN_1672; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1674 = 8'h9b == _T_33705 ? _T_6385 : _GEN_1673; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1675 = 8'h9c == _T_33705 ? _T_6385 : _GEN_1674; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1676 = 8'h9d == _T_33705 ? _T_6385 : _GEN_1675; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1677 = 8'h9e == _T_33705 ? _T_6385 : _GEN_1676; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1678 = 8'h9f == _T_33705 ? _T_6385 : _GEN_1677; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1679 = 8'ha0 == _T_33705 ? _T_6385 : _GEN_1678; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1680 = 8'ha1 == _T_33705 ? _T_6385 : _GEN_1679; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1681 = 8'ha2 == _T_33705 ? _T_6385 : _GEN_1680; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1682 = 8'ha3 == _T_33705 ? _T_6385 : _GEN_1681; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1683 = 8'ha4 == _T_33705 ? _T_6385 : _GEN_1682; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1684 = 8'ha5 == _T_33705 ? _T_6385 : _GEN_1683; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1685 = 8'ha6 == _T_33705 ? _T_6385 : _GEN_1684; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1686 = 8'ha7 == _T_33705 ? _T_6385 : _GEN_1685; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1687 = 8'ha8 == _T_33705 ? _T_6385 : _GEN_1686; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1688 = 8'ha9 == _T_33705 ? _T_6385 : _GEN_1687; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1689 = 8'haa == _T_33705 ? _T_6385 : _GEN_1688; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1690 = 8'hab == _T_33705 ? _T_6385 : _GEN_1689; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1691 = 8'hac == _T_33705 ? _T_6385 : _GEN_1690; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1692 = 8'had == _T_33705 ? _T_6385 : _GEN_1691; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1693 = 8'hae == _T_33705 ? _T_6385 : _GEN_1692; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1694 = 8'haf == _T_33705 ? _T_6385 : _GEN_1693; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1695 = 8'hb0 == _T_33705 ? _T_6385 : _GEN_1694; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1696 = 8'hb1 == _T_33705 ? _T_6385 : _GEN_1695; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1697 = 8'hb2 == _T_33705 ? _T_6385 : _GEN_1696; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1698 = 8'hb3 == _T_33705 ? _T_6385 : _GEN_1697; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1699 = 8'hb4 == _T_33705 ? _T_6385 : _GEN_1698; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1700 = 8'hb5 == _T_33705 ? _T_6385 : _GEN_1699; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1701 = 8'hb6 == _T_33705 ? _T_6385 : _GEN_1700; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1702 = 8'hb7 == _T_33705 ? _T_6385 : _GEN_1701; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1703 = 8'hb8 == _T_33705 ? _T_6385 : _GEN_1702; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1704 = 8'hb9 == _T_33705 ? _T_6385 : _GEN_1703; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1705 = 8'hba == _T_33705 ? _T_6385 : _GEN_1704; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1706 = 8'hbb == _T_33705 ? _T_6385 : _GEN_1705; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1707 = 8'hbc == _T_33705 ? _T_6385 : _GEN_1706; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1708 = 8'hbd == _T_33705 ? _T_6385 : _GEN_1707; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1709 = 8'hbe == _T_33705 ? _T_6385 : _GEN_1708; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1710 = 8'hbf == _T_33705 ? _T_6385 : _GEN_1709; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1711 = 8'hc0 == _T_33705 ? _T_6385 : _GEN_1710; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1712 = 8'hc1 == _T_33705 ? _T_6385 : _GEN_1711; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1713 = 8'hc2 == _T_33705 ? _T_6385 : _GEN_1712; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1714 = 8'hc3 == _T_33705 ? _T_6385 : _GEN_1713; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1715 = 8'hc4 == _T_33705 ? _T_6385 : _GEN_1714; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1716 = 8'hc5 == _T_33705 ? _T_6385 : _GEN_1715; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1717 = 8'hc6 == _T_33705 ? _T_6385 : _GEN_1716; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1718 = 8'hc7 == _T_33705 ? _T_6385 : _GEN_1717; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1719 = 8'hc8 == _T_33705 ? _T_6385 : _GEN_1718; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1720 = 8'hc9 == _T_33705 ? _T_6385 : _GEN_1719; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1721 = 8'hca == _T_33705 ? _T_6385 : _GEN_1720; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1722 = 8'hcb == _T_33705 ? _T_6385 : _GEN_1721; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1723 = 8'hcc == _T_33705 ? _T_6385 : _GEN_1722; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1724 = 8'hcd == _T_33705 ? _T_6385 : _GEN_1723; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1725 = 8'hce == _T_33705 ? _T_6385 : _GEN_1724; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1726 = 8'hcf == _T_33705 ? _T_6385 : _GEN_1725; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1727 = 8'hd0 == _T_33705 ? _T_6385 : _GEN_1726; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1728 = 8'hd1 == _T_33705 ? _T_6385 : _GEN_1727; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1729 = 8'hd2 == _T_33705 ? _T_6385 : _GEN_1728; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1730 = 8'hd3 == _T_33705 ? _T_6385 : _GEN_1729; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1731 = 8'hd4 == _T_33705 ? _T_6385 : _GEN_1730; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1732 = 8'hd5 == _T_33705 ? _T_6385 : _GEN_1731; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1733 = 8'hd6 == _T_33705 ? _T_6385 : _GEN_1732; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1734 = 8'hd7 == _T_33705 ? _T_6385 : _GEN_1733; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1735 = 8'hd8 == _T_33705 ? _T_6385 : _GEN_1734; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1736 = 8'hd9 == _T_33705 ? _T_6385 : _GEN_1735; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1737 = 8'hda == _T_33705 ? _T_6385 : _GEN_1736; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1738 = 8'hdb == _T_33705 ? _T_6385 : _GEN_1737; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1739 = 8'hdc == _T_33705 ? _T_6385 : _GEN_1738; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1740 = 8'hdd == _T_33705 ? _T_6385 : _GEN_1739; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1741 = 8'hde == _T_33705 ? _T_6385 : _GEN_1740; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1742 = 8'hdf == _T_33705 ? _T_6385 : _GEN_1741; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1743 = 8'he0 == _T_33705 ? _T_6385 : _GEN_1742; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1744 = 8'he1 == _T_33705 ? _T_6385 : _GEN_1743; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1745 = 8'he2 == _T_33705 ? _T_6385 : _GEN_1744; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1746 = 8'he3 == _T_33705 ? _T_6385 : _GEN_1745; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1747 = 8'he4 == _T_33705 ? _T_6385 : _GEN_1746; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1748 = 8'he5 == _T_33705 ? _T_6385 : _GEN_1747; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1749 = 8'he6 == _T_33705 ? _T_6385 : _GEN_1748; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1750 = 8'he7 == _T_33705 ? _T_6385 : _GEN_1749; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1751 = 8'he8 == _T_33705 ? _T_6385 : _GEN_1750; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1752 = 8'he9 == _T_33705 ? _T_6385 : _GEN_1751; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1753 = 8'hea == _T_33705 ? _T_6385 : _GEN_1752; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1754 = 8'heb == _T_33705 ? _T_6385 : _GEN_1753; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1755 = 8'hec == _T_33705 ? _T_6385 : _GEN_1754; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1756 = 8'hed == _T_33705 ? _T_6385 : _GEN_1755; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1757 = 8'hee == _T_33705 ? _T_6385 : _GEN_1756; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1758 = 8'hef == _T_33705 ? _T_6385 : _GEN_1757; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1759 = 8'hf0 == _T_33705 ? _T_6385 : _GEN_1758; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1760 = 8'hf1 == _T_33705 ? _T_6385 : _GEN_1759; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1761 = 8'hf2 == _T_33705 ? _T_6385 : _GEN_1760; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1762 = 8'hf3 == _T_33705 ? _T_6385 : _GEN_1761; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1763 = 8'hf4 == _T_33705 ? _T_6385 : _GEN_1762; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1764 = 8'hf5 == _T_33705 ? _T_6385 : _GEN_1763; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1765 = 8'hf6 == _T_33705 ? _T_6385 : _GEN_1764; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1766 = 8'hf7 == _T_33705 ? _T_6385 : _GEN_1765; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1767 = 8'hf8 == _T_33705 ? _T_6385 : _GEN_1766; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1768 = 8'hf9 == _T_33705 ? _T_6385 : _GEN_1767; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1769 = 8'hfa == _T_33705 ? _T_6385 : _GEN_1768; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1770 = 8'hfb == _T_33705 ? _T_6385 : _GEN_1769; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1771 = 8'hfc == _T_33705 ? _T_6385 : _GEN_1770; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1772 = 8'hfd == _T_33705 ? _T_6385 : _GEN_1771; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1773 = 8'hfe == _T_33705 ? _T_6385 : _GEN_1772; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1774 = 8'hff == _T_33705 ? _T_6385 : _GEN_1773; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@188740.4]
  assign _GEN_1776 = 8'h1 == _T_33705 ? 64'hff0000f0440006f : 64'h380006f00c0006f; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1777 = 8'h2 == _T_33705 ? 64'hf14024737b241073 : _GEN_1776; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1778 = 8'h3 == _T_33705 ? 64'h4004440310802023 : _GEN_1777; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1779 = 8'h4 == _T_33705 ? 64'hfe0408e300347413 : _GEN_1778; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1780 = 8'h5 == _T_33705 ? 64'h4086300147413 : _GEN_1779; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1781 = 8'h6 == _T_33705 ? 64'h100022237b202473 : _GEN_1780; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1782 = 8'h7 == _T_33705 ? 64'hf140247330000067 : _GEN_1781; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1783 = 8'h8 == _T_33705 ? 64'h7b20247310802423 : _GEN_1782; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1784 = 8'h9 == _T_33705 ? 64'h100026237b200073 : _GEN_1783; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1785 = 8'ha == _T_33705 ? 64'h100073 : _GEN_1784; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1786 = 8'hb == _T_33705 ? 64'h0 : _GEN_1785; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1787 = 8'hc == _T_33705 ? 64'h0 : _GEN_1786; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1788 = 8'hd == _T_33705 ? 64'h0 : _GEN_1787; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1789 = 8'he == _T_33705 ? 64'h0 : _GEN_1788; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1790 = 8'hf == _T_33705 ? 64'h0 : _GEN_1789; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1791 = 8'h10 == _T_33705 ? 64'h0 : _GEN_1790; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1792 = 8'h11 == _T_33705 ? 64'h0 : _GEN_1791; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1793 = 8'h12 == _T_33705 ? 64'h0 : _GEN_1792; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1794 = 8'h13 == _T_33705 ? 64'h0 : _GEN_1793; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1795 = 8'h14 == _T_33705 ? 64'h0 : _GEN_1794; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1796 = 8'h15 == _T_33705 ? 64'h0 : _GEN_1795; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1797 = 8'h16 == _T_33705 ? 64'h0 : _GEN_1796; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1798 = 8'h17 == _T_33705 ? 64'h0 : _GEN_1797; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1799 = 8'h18 == _T_33705 ? 64'h0 : _GEN_1798; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1800 = 8'h19 == _T_33705 ? 64'h0 : _GEN_1799; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1801 = 8'h1a == _T_33705 ? 64'h0 : _GEN_1800; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1802 = 8'h1b == _T_33705 ? 64'h0 : _GEN_1801; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1803 = 8'h1c == _T_33705 ? 64'h0 : _GEN_1802; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1804 = 8'h1d == _T_33705 ? 64'h0 : _GEN_1803; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1805 = 8'h1e == _T_33705 ? 64'h0 : _GEN_1804; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1806 = 8'h1f == _T_33705 ? 64'h0 : _GEN_1805; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1807 = 8'h20 == _T_33705 ? 64'h0 : _GEN_1806; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1808 = 8'h21 == _T_33705 ? 64'h0 : _GEN_1807; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1809 = 8'h22 == _T_33705 ? 64'h0 : _GEN_1808; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1810 = 8'h23 == _T_33705 ? 64'h0 : _GEN_1809; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1811 = 8'h24 == _T_33705 ? 64'h0 : _GEN_1810; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1812 = 8'h25 == _T_33705 ? 64'h0 : _GEN_1811; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1813 = 8'h26 == _T_33705 ? 64'h0 : _GEN_1812; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1814 = 8'h27 == _T_33705 ? 64'h0 : _GEN_1813; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1815 = 8'h28 == _T_33705 ? 64'h0 : _GEN_1814; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1816 = 8'h29 == _T_33705 ? 64'h0 : _GEN_1815; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1817 = 8'h2a == _T_33705 ? 64'h0 : _GEN_1816; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1818 = 8'h2b == _T_33705 ? 64'h0 : _GEN_1817; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1819 = 8'h2c == _T_33705 ? 64'h0 : _GEN_1818; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1820 = 8'h2d == _T_33705 ? 64'h0 : _GEN_1819; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1821 = 8'h2e == _T_33705 ? 64'h0 : _GEN_1820; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1822 = 8'h2f == _T_33705 ? 64'h0 : _GEN_1821; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1823 = 8'h30 == _T_33705 ? 64'h0 : _GEN_1822; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1824 = 8'h31 == _T_33705 ? 64'h0 : _GEN_1823; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1825 = 8'h32 == _T_33705 ? 64'h0 : _GEN_1824; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1826 = 8'h33 == _T_33705 ? 64'h0 : _GEN_1825; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1827 = 8'h34 == _T_33705 ? 64'h0 : _GEN_1826; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1828 = 8'h35 == _T_33705 ? 64'h0 : _GEN_1827; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1829 = 8'h36 == _T_33705 ? 64'h0 : _GEN_1828; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1830 = 8'h37 == _T_33705 ? 64'h0 : _GEN_1829; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1831 = 8'h38 == _T_33705 ? 64'h0 : _GEN_1830; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1832 = 8'h39 == _T_33705 ? 64'h0 : _GEN_1831; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1833 = 8'h3a == _T_33705 ? 64'h0 : _GEN_1832; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1834 = 8'h3b == _T_33705 ? 64'h0 : _GEN_1833; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1835 = 8'h3c == _T_33705 ? 64'h0 : _GEN_1834; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1836 = 8'h3d == _T_33705 ? 64'h0 : _GEN_1835; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1837 = 8'h3e == _T_33705 ? 64'h0 : _GEN_1836; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1838 = 8'h3f == _T_33705 ? 64'h0 : _GEN_1837; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1839 = 8'h40 == _T_33705 ? 64'h0 : _GEN_1838; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1840 = 8'h41 == _T_33705 ? 64'h0 : _GEN_1839; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1841 = 8'h42 == _T_33705 ? 64'h0 : _GEN_1840; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1842 = 8'h43 == _T_33705 ? 64'h0 : _GEN_1841; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1843 = 8'h44 == _T_33705 ? 64'h0 : _GEN_1842; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1844 = 8'h45 == _T_33705 ? 64'h0 : _GEN_1843; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1845 = 8'h46 == _T_33705 ? 64'h0 : _GEN_1844; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1846 = 8'h47 == _T_33705 ? 64'h0 : _GEN_1845; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1847 = 8'h48 == _T_33705 ? 64'h0 : _GEN_1846; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1848 = 8'h49 == _T_33705 ? 64'h0 : _GEN_1847; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1849 = 8'h4a == _T_33705 ? 64'h0 : _GEN_1848; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1850 = 8'h4b == _T_33705 ? 64'h0 : _GEN_1849; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1851 = 8'h4c == _T_33705 ? 64'h0 : _GEN_1850; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1852 = 8'h4d == _T_33705 ? 64'h0 : _GEN_1851; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1853 = 8'h4e == _T_33705 ? 64'h0 : _GEN_1852; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1854 = 8'h4f == _T_33705 ? 64'h0 : _GEN_1853; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1855 = 8'h50 == _T_33705 ? 64'h0 : _GEN_1854; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1856 = 8'h51 == _T_33705 ? 64'h0 : _GEN_1855; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1857 = 8'h52 == _T_33705 ? 64'h0 : _GEN_1856; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1858 = 8'h53 == _T_33705 ? 64'h0 : _GEN_1857; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1859 = 8'h54 == _T_33705 ? 64'h0 : _GEN_1858; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1860 = 8'h55 == _T_33705 ? 64'h0 : _GEN_1859; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1861 = 8'h56 == _T_33705 ? 64'h0 : _GEN_1860; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1862 = 8'h57 == _T_33705 ? 64'h0 : _GEN_1861; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1863 = 8'h58 == _T_33705 ? 64'h0 : _GEN_1862; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1864 = 8'h59 == _T_33705 ? 64'h0 : _GEN_1863; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1865 = 8'h5a == _T_33705 ? 64'h0 : _GEN_1864; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1866 = 8'h5b == _T_33705 ? 64'h0 : _GEN_1865; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1867 = 8'h5c == _T_33705 ? 64'h0 : _GEN_1866; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1868 = 8'h5d == _T_33705 ? 64'h0 : _GEN_1867; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1869 = 8'h5e == _T_33705 ? 64'h0 : _GEN_1868; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1870 = 8'h5f == _T_33705 ? 64'h0 : _GEN_1869; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1871 = 8'h60 == _T_33705 ? 64'h380006f : _GEN_1870; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1872 = 8'h61 == _T_33705 ? 64'h0 : _GEN_1871; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1873 = 8'h62 == _T_33705 ? 64'h0 : _GEN_1872; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1874 = 8'h63 == _T_33705 ? 64'h0 : _GEN_1873; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1875 = 8'h64 == _T_33705 ? 64'h0 : _GEN_1874; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1876 = 8'h65 == _T_33705 ? 64'h0 : _GEN_1875; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1877 = 8'h66 == _T_33705 ? 64'h0 : _GEN_1876; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1878 = 8'h67 == _T_33705 ? _T_22141 : _GEN_1877; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1879 = 8'h68 == _T_33705 ? _T_28013 : _GEN_1878; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1880 = 8'h69 == _T_33705 ? _T_17959 : _GEN_1879; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1881 = 8'h6a == _T_33705 ? _T_11310 : _GEN_1880; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1882 = 8'h6b == _T_33705 ? _T_31123 : _GEN_1881; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1883 = 8'h6c == _T_33705 ? _T_23431 : _GEN_1882; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1884 = 8'h6d == _T_33705 ? _T_16102 : _GEN_1883; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1885 = 8'h6e == _T_33705 ? _T_9110 : _GEN_1884; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1886 = 8'h6f == _T_33705 ? _T_32777 : _GEN_1885; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1887 = 8'h70 == _T_33705 ? _T_25267 : _GEN_1886; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1888 = 8'h71 == _T_33705 ? 64'h0 : _GEN_1887; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1889 = 8'h72 == _T_33705 ? 64'h0 : _GEN_1888; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1890 = 8'h73 == _T_33705 ? 64'h0 : _GEN_1889; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1891 = 8'h74 == _T_33705 ? 64'h0 : _GEN_1890; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1892 = 8'h75 == _T_33705 ? 64'h0 : _GEN_1891; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1893 = 8'h76 == _T_33705 ? 64'h0 : _GEN_1892; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1894 = 8'h77 == _T_33705 ? 64'h0 : _GEN_1893; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1895 = 8'h78 == _T_33705 ? 64'h0 : _GEN_1894; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1896 = 8'h79 == _T_33705 ? 64'h0 : _GEN_1895; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1897 = 8'h7a == _T_33705 ? 64'h0 : _GEN_1896; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1898 = 8'h7b == _T_33705 ? 64'h0 : _GEN_1897; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1899 = 8'h7c == _T_33705 ? 64'h0 : _GEN_1898; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1900 = 8'h7d == _T_33705 ? 64'h0 : _GEN_1899; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1901 = 8'h7e == _T_33705 ? 64'h0 : _GEN_1900; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1902 = 8'h7f == _T_33705 ? 64'h0 : _GEN_1901; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1903 = 8'h80 == _T_33705 ? _T_6728 : _GEN_1902; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1904 = 8'h81 == _T_33705 ? _T_6728 : _GEN_1903; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1905 = 8'h82 == _T_33705 ? _T_6728 : _GEN_1904; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1906 = 8'h83 == _T_33705 ? _T_6728 : _GEN_1905; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1907 = 8'h84 == _T_33705 ? _T_6728 : _GEN_1906; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1908 = 8'h85 == _T_33705 ? _T_6728 : _GEN_1907; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1909 = 8'h86 == _T_33705 ? _T_6728 : _GEN_1908; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1910 = 8'h87 == _T_33705 ? _T_6728 : _GEN_1909; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1911 = 8'h88 == _T_33705 ? _T_6728 : _GEN_1910; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1912 = 8'h89 == _T_33705 ? _T_6728 : _GEN_1911; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1913 = 8'h8a == _T_33705 ? _T_6728 : _GEN_1912; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1914 = 8'h8b == _T_33705 ? _T_6728 : _GEN_1913; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1915 = 8'h8c == _T_33705 ? _T_6728 : _GEN_1914; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1916 = 8'h8d == _T_33705 ? _T_6728 : _GEN_1915; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1917 = 8'h8e == _T_33705 ? _T_6728 : _GEN_1916; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1918 = 8'h8f == _T_33705 ? _T_6728 : _GEN_1917; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1919 = 8'h90 == _T_33705 ? _T_6728 : _GEN_1918; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1920 = 8'h91 == _T_33705 ? _T_6728 : _GEN_1919; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1921 = 8'h92 == _T_33705 ? _T_6728 : _GEN_1920; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1922 = 8'h93 == _T_33705 ? _T_6728 : _GEN_1921; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1923 = 8'h94 == _T_33705 ? _T_6728 : _GEN_1922; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1924 = 8'h95 == _T_33705 ? _T_6728 : _GEN_1923; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1925 = 8'h96 == _T_33705 ? _T_6728 : _GEN_1924; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1926 = 8'h97 == _T_33705 ? _T_6728 : _GEN_1925; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1927 = 8'h98 == _T_33705 ? _T_6728 : _GEN_1926; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1928 = 8'h99 == _T_33705 ? _T_6728 : _GEN_1927; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1929 = 8'h9a == _T_33705 ? _T_6728 : _GEN_1928; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1930 = 8'h9b == _T_33705 ? _T_6728 : _GEN_1929; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1931 = 8'h9c == _T_33705 ? _T_6728 : _GEN_1930; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1932 = 8'h9d == _T_33705 ? _T_6728 : _GEN_1931; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1933 = 8'h9e == _T_33705 ? _T_6728 : _GEN_1932; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1934 = 8'h9f == _T_33705 ? _T_6728 : _GEN_1933; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1935 = 8'ha0 == _T_33705 ? _T_6728 : _GEN_1934; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1936 = 8'ha1 == _T_33705 ? _T_6728 : _GEN_1935; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1937 = 8'ha2 == _T_33705 ? _T_6728 : _GEN_1936; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1938 = 8'ha3 == _T_33705 ? _T_6728 : _GEN_1937; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1939 = 8'ha4 == _T_33705 ? _T_6728 : _GEN_1938; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1940 = 8'ha5 == _T_33705 ? _T_6728 : _GEN_1939; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1941 = 8'ha6 == _T_33705 ? _T_6728 : _GEN_1940; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1942 = 8'ha7 == _T_33705 ? _T_6728 : _GEN_1941; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1943 = 8'ha8 == _T_33705 ? _T_6728 : _GEN_1942; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1944 = 8'ha9 == _T_33705 ? _T_6728 : _GEN_1943; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1945 = 8'haa == _T_33705 ? _T_6728 : _GEN_1944; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1946 = 8'hab == _T_33705 ? _T_6728 : _GEN_1945; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1947 = 8'hac == _T_33705 ? _T_6728 : _GEN_1946; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1948 = 8'had == _T_33705 ? _T_6728 : _GEN_1947; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1949 = 8'hae == _T_33705 ? _T_6728 : _GEN_1948; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1950 = 8'haf == _T_33705 ? _T_6728 : _GEN_1949; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1951 = 8'hb0 == _T_33705 ? _T_6728 : _GEN_1950; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1952 = 8'hb1 == _T_33705 ? _T_6728 : _GEN_1951; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1953 = 8'hb2 == _T_33705 ? _T_6728 : _GEN_1952; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1954 = 8'hb3 == _T_33705 ? _T_6728 : _GEN_1953; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1955 = 8'hb4 == _T_33705 ? _T_6728 : _GEN_1954; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1956 = 8'hb5 == _T_33705 ? _T_6728 : _GEN_1955; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1957 = 8'hb6 == _T_33705 ? _T_6728 : _GEN_1956; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1958 = 8'hb7 == _T_33705 ? _T_6728 : _GEN_1957; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1959 = 8'hb8 == _T_33705 ? _T_6728 : _GEN_1958; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1960 = 8'hb9 == _T_33705 ? _T_6728 : _GEN_1959; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1961 = 8'hba == _T_33705 ? _T_6728 : _GEN_1960; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1962 = 8'hbb == _T_33705 ? _T_6728 : _GEN_1961; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1963 = 8'hbc == _T_33705 ? _T_6728 : _GEN_1962; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1964 = 8'hbd == _T_33705 ? _T_6728 : _GEN_1963; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1965 = 8'hbe == _T_33705 ? _T_6728 : _GEN_1964; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1966 = 8'hbf == _T_33705 ? _T_6728 : _GEN_1965; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1967 = 8'hc0 == _T_33705 ? _T_6728 : _GEN_1966; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1968 = 8'hc1 == _T_33705 ? _T_6728 : _GEN_1967; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1969 = 8'hc2 == _T_33705 ? _T_6728 : _GEN_1968; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1970 = 8'hc3 == _T_33705 ? _T_6728 : _GEN_1969; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1971 = 8'hc4 == _T_33705 ? _T_6728 : _GEN_1970; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1972 = 8'hc5 == _T_33705 ? _T_6728 : _GEN_1971; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1973 = 8'hc6 == _T_33705 ? _T_6728 : _GEN_1972; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1974 = 8'hc7 == _T_33705 ? _T_6728 : _GEN_1973; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1975 = 8'hc8 == _T_33705 ? _T_6728 : _GEN_1974; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1976 = 8'hc9 == _T_33705 ? _T_6728 : _GEN_1975; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1977 = 8'hca == _T_33705 ? _T_6728 : _GEN_1976; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1978 = 8'hcb == _T_33705 ? _T_6728 : _GEN_1977; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1979 = 8'hcc == _T_33705 ? _T_6728 : _GEN_1978; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1980 = 8'hcd == _T_33705 ? _T_6728 : _GEN_1979; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1981 = 8'hce == _T_33705 ? _T_6728 : _GEN_1980; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1982 = 8'hcf == _T_33705 ? _T_6728 : _GEN_1981; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1983 = 8'hd0 == _T_33705 ? _T_6728 : _GEN_1982; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1984 = 8'hd1 == _T_33705 ? _T_6728 : _GEN_1983; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1985 = 8'hd2 == _T_33705 ? _T_6728 : _GEN_1984; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1986 = 8'hd3 == _T_33705 ? _T_6728 : _GEN_1985; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1987 = 8'hd4 == _T_33705 ? _T_6728 : _GEN_1986; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1988 = 8'hd5 == _T_33705 ? _T_6728 : _GEN_1987; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1989 = 8'hd6 == _T_33705 ? _T_6728 : _GEN_1988; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1990 = 8'hd7 == _T_33705 ? _T_6728 : _GEN_1989; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1991 = 8'hd8 == _T_33705 ? _T_6728 : _GEN_1990; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1992 = 8'hd9 == _T_33705 ? _T_6728 : _GEN_1991; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1993 = 8'hda == _T_33705 ? _T_6728 : _GEN_1992; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1994 = 8'hdb == _T_33705 ? _T_6728 : _GEN_1993; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1995 = 8'hdc == _T_33705 ? _T_6728 : _GEN_1994; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1996 = 8'hdd == _T_33705 ? _T_6728 : _GEN_1995; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1997 = 8'hde == _T_33705 ? _T_6728 : _GEN_1996; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1998 = 8'hdf == _T_33705 ? _T_6728 : _GEN_1997; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_1999 = 8'he0 == _T_33705 ? _T_6728 : _GEN_1998; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2000 = 8'he1 == _T_33705 ? _T_6728 : _GEN_1999; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2001 = 8'he2 == _T_33705 ? _T_6728 : _GEN_2000; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2002 = 8'he3 == _T_33705 ? _T_6728 : _GEN_2001; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2003 = 8'he4 == _T_33705 ? _T_6728 : _GEN_2002; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2004 = 8'he5 == _T_33705 ? _T_6728 : _GEN_2003; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2005 = 8'he6 == _T_33705 ? _T_6728 : _GEN_2004; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2006 = 8'he7 == _T_33705 ? _T_6728 : _GEN_2005; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2007 = 8'he8 == _T_33705 ? _T_6728 : _GEN_2006; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2008 = 8'he9 == _T_33705 ? _T_6728 : _GEN_2007; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2009 = 8'hea == _T_33705 ? _T_6728 : _GEN_2008; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2010 = 8'heb == _T_33705 ? _T_6728 : _GEN_2009; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2011 = 8'hec == _T_33705 ? _T_6728 : _GEN_2010; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2012 = 8'hed == _T_33705 ? _T_6728 : _GEN_2011; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2013 = 8'hee == _T_33705 ? _T_6728 : _GEN_2012; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2014 = 8'hef == _T_33705 ? _T_6728 : _GEN_2013; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2015 = 8'hf0 == _T_33705 ? _T_6728 : _GEN_2014; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2016 = 8'hf1 == _T_33705 ? _T_6728 : _GEN_2015; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2017 = 8'hf2 == _T_33705 ? _T_6728 : _GEN_2016; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2018 = 8'hf3 == _T_33705 ? _T_6728 : _GEN_2017; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2019 = 8'hf4 == _T_33705 ? _T_6728 : _GEN_2018; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2020 = 8'hf5 == _T_33705 ? _T_6728 : _GEN_2019; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2021 = 8'hf6 == _T_33705 ? _T_6728 : _GEN_2020; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2022 = 8'hf7 == _T_33705 ? _T_6728 : _GEN_2021; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2023 = 8'hf8 == _T_33705 ? _T_6728 : _GEN_2022; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2024 = 8'hf9 == _T_33705 ? _T_6728 : _GEN_2023; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2025 = 8'hfa == _T_33705 ? _T_6728 : _GEN_2024; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2026 = 8'hfb == _T_33705 ? _T_6728 : _GEN_2025; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2027 = 8'hfc == _T_33705 ? _T_6728 : _GEN_2026; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2028 = 8'hfd == _T_33705 ? _T_6728 : _GEN_2027; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2029 = 8'hfe == _T_33705 ? _T_6728 : _GEN_2028; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _GEN_2030 = 8'hff == _T_33705 ? _T_6728 : _GEN_2029; // @[MuxLiteral.scala 48:10:chipyard.TestHarness.RocketConfig.fir@189000.4]
  assign _T_39438 = ~goReg; // @[Debug.scala 1649:18:chipyard.TestHarness.RocketConfig.fir@189213.10]
  assign _T_39439 = _T_39438 & hartHaltedWrEn; // @[Debug.scala 1649:30:chipyard.TestHarness.RocketConfig.fir@189214.10]
  assign _T_39446 = ctrlStateReg == 2'h3; // @[Debug.scala 1657:30:chipyard.TestHarness.RocketConfig.fir@189234.10]
  assign _T_39449 = ~reset; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189238.12]
  assign _T_39455 = ~hartExceptionWrEn; // @[Debug.scala 1671:30:chipyard.TestHarness.RocketConfig.fir@189259.4]
  assign _T_39456 = _T_13 | _T_39455; // @[Debug.scala 1671:27:chipyard.TestHarness.RocketConfig.fir@189260.4]
  assign _T_39458 = _T_39456 | _T_39437; // @[Debug.scala 1671:49:chipyard.TestHarness.RocketConfig.fir@189262.4]
  assign _T_39460 = _T_39458 | reset; // @[Debug.scala 1671:12:chipyard.TestHarness.RocketConfig.fir@189264.4]
  assign _T_39461 = ~_T_39460; // @[Debug.scala 1671:12:chipyard.TestHarness.RocketConfig.fir@189265.4]
  assign auto_tl_in_a_ready = auto_tl_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138270.4]
  assign auto_tl_in_d_valid = auto_tl_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138270.4]
  assign auto_tl_in_d_bits_opcode = {{2'd0}, _T_6172}; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138270.4]
  assign auto_tl_in_d_bits_size = auto_tl_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138270.4]
  assign auto_tl_in_d_bits_source = auto_tl_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138270.4]
  assign auto_tl_in_d_bits_data = _GEN_1774 ? _GEN_2030 : 64'h0; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138270.4]
  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138269.4]
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138269.4]
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, _T_394}; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138269.4]
  assign auto_dmi_in_d_bits_size = auto_dmi_in_a_bits_size; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138269.4]
  assign auto_dmi_in_d_bits_source = auto_dmi_in_a_bits_source; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138269.4]
  assign auto_dmi_in_d_bits_data = _GEN_309 ? _GEN_341 : 32'h0; // @[LazyModule.scala 181:31:chipyard.TestHarness.RocketConfig.fir@138269.4]
  assign io_innerCtrl_ready = 1'h1; // @[Debug.scala 814:24:chipyard.TestHarness.RocketConfig.fir@138593.4]
  assign io_hgDebugInt_0 = hrDebugInt_0; // @[Debug.scala 1036:19:chipyard.TestHarness.RocketConfig.fir@138796.4]
  assign TLMonitor_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@138220.4]
  assign TLMonitor_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@138221.4]
  assign TLMonitor_io_in_a_ready = auto_dmi_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138241.4]
  assign TLMonitor_io_in_a_valid = auto_dmi_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138240.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_dmi_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138239.4]
  assign TLMonitor_io_in_a_bits_param = auto_dmi_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138238.4]
  assign TLMonitor_io_in_a_bits_size = auto_dmi_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138237.4]
  assign TLMonitor_io_in_a_bits_source = auto_dmi_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138236.4]
  assign TLMonitor_io_in_a_bits_address = auto_dmi_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138235.4]
  assign TLMonitor_io_in_a_bits_mask = auto_dmi_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138234.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_dmi_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138232.4]
  assign TLMonitor_io_in_d_ready = auto_dmi_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138231.4]
  assign TLMonitor_io_in_d_valid = auto_dmi_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138230.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_394}; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138229.4]
  assign TLMonitor_io_in_d_bits_size = auto_dmi_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138227.4]
  assign TLMonitor_io_in_d_bits_source = auto_dmi_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138226.4]
  assign TLMonitor_1_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@138245.4]
  assign TLMonitor_1_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@138246.4]
  assign TLMonitor_1_io_in_a_ready = auto_tl_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138266.4]
  assign TLMonitor_1_io_in_a_valid = auto_tl_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138265.4]
  assign TLMonitor_1_io_in_a_bits_opcode = auto_tl_in_a_bits_opcode; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138264.4]
  assign TLMonitor_1_io_in_a_bits_param = auto_tl_in_a_bits_param; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138263.4]
  assign TLMonitor_1_io_in_a_bits_size = auto_tl_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138262.4]
  assign TLMonitor_1_io_in_a_bits_source = auto_tl_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138261.4]
  assign TLMonitor_1_io_in_a_bits_address = auto_tl_in_a_bits_address; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138260.4]
  assign TLMonitor_1_io_in_a_bits_mask = auto_tl_in_a_bits_mask; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138259.4]
  assign TLMonitor_1_io_in_a_bits_corrupt = auto_tl_in_a_bits_corrupt; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138257.4]
  assign TLMonitor_1_io_in_d_ready = auto_tl_in_d_ready; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138256.4]
  assign TLMonitor_1_io_in_d_valid = auto_tl_in_a_valid; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138255.4]
  assign TLMonitor_1_io_in_d_bits_opcode = {{2'd0}, _T_6172}; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138254.4]
  assign TLMonitor_1_io_in_d_bits_size = auto_tl_in_a_bits_size; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138252.4]
  assign TLMonitor_1_io_in_d_bits_source = auto_tl_in_a_bits_source; // @[Nodes.scala 26:19:chipyard.TestHarness.RocketConfig.fir@138251.4]
  assign debug_hartReset_0_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@138609.4]
  assign debug_hartReset_0_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@138610.4]
  assign debug_hartReset_0_io_d = io_hartIsInReset_0; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@138611.4]
  assign _GEN_2255 = ~_T_13; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
  assign _GEN_2256 = ~goAbstract; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
  assign _GEN_2257 = _GEN_2255 & _GEN_2256; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
  assign _GEN_2258 = _GEN_2257 & hartGoingWrEn; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
  assign _GEN_2264 = ~_T_39436; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
  assign _GEN_2265 = _T_39403 & _GEN_2264; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
  assign _GEN_2266 = _GEN_2265 & _T_39437; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
  assign _GEN_2267 = _GEN_2266 & hartExceptionWrEn; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
  assign _GEN_2276 = ~_T_39437; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189240.14]
  assign _GEN_2277 = _GEN_2265 & _GEN_2276; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189240.14]
  assign _GEN_2278 = _GEN_2277 & _T_39446; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189240.14]
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
  haltedBitRegs_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  resumeReqRegs_0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  haveResetBitRegs_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  hrmaskReg_0 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  hrDebugInt_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  ABSTRACTCSReg_cmderr = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ctrlStateReg = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  COMMANDRdData_cmdtype = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  COMMANDRdData_control = _RAND_8[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  ABSTRACTAUTOReg_autoexecdata = _RAND_9[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  ABSTRACTAUTOReg_autoexecprogbuf = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  abstractDataMem_0 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  abstractDataMem_1 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  abstractDataMem_2 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  abstractDataMem_3 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  abstractDataMem_4 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  abstractDataMem_5 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  abstractDataMem_6 = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  abstractDataMem_7 = _RAND_18[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  programBufferMem_0 = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  programBufferMem_1 = _RAND_20[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  programBufferMem_2 = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  programBufferMem_3 = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  programBufferMem_4 = _RAND_23[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  programBufferMem_5 = _RAND_24[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  programBufferMem_6 = _RAND_25[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  programBufferMem_7 = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  programBufferMem_8 = _RAND_27[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  programBufferMem_9 = _RAND_28[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  programBufferMem_10 = _RAND_29[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  programBufferMem_11 = _RAND_30[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  programBufferMem_12 = _RAND_31[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  programBufferMem_13 = _RAND_32[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  programBufferMem_14 = _RAND_33[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  programBufferMem_15 = _RAND_34[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  programBufferMem_16 = _RAND_35[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  programBufferMem_17 = _RAND_36[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  programBufferMem_18 = _RAND_37[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  programBufferMem_19 = _RAND_38[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  programBufferMem_20 = _RAND_39[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  programBufferMem_21 = _RAND_40[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  programBufferMem_22 = _RAND_41[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  programBufferMem_23 = _RAND_42[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  programBufferMem_24 = _RAND_43[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  programBufferMem_25 = _RAND_44[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  programBufferMem_26 = _RAND_45[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  programBufferMem_27 = _RAND_46[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  programBufferMem_28 = _RAND_47[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  programBufferMem_29 = _RAND_48[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  programBufferMem_30 = _RAND_49[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  programBufferMem_31 = _RAND_50[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  programBufferMem_32 = _RAND_51[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  programBufferMem_33 = _RAND_52[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  programBufferMem_34 = _RAND_53[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  programBufferMem_35 = _RAND_54[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  programBufferMem_36 = _RAND_55[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  programBufferMem_37 = _RAND_56[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  programBufferMem_38 = _RAND_57[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  programBufferMem_39 = _RAND_58[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  programBufferMem_40 = _RAND_59[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  programBufferMem_41 = _RAND_60[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  programBufferMem_42 = _RAND_61[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  programBufferMem_43 = _RAND_62[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  programBufferMem_44 = _RAND_63[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  programBufferMem_45 = _RAND_64[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  programBufferMem_46 = _RAND_65[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  programBufferMem_47 = _RAND_66[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  programBufferMem_48 = _RAND_67[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  programBufferMem_49 = _RAND_68[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  programBufferMem_50 = _RAND_69[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  programBufferMem_51 = _RAND_70[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  programBufferMem_52 = _RAND_71[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  programBufferMem_53 = _RAND_72[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  programBufferMem_54 = _RAND_73[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  programBufferMem_55 = _RAND_74[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  programBufferMem_56 = _RAND_75[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  programBufferMem_57 = _RAND_76[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  programBufferMem_58 = _RAND_77[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  programBufferMem_59 = _RAND_78[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  programBufferMem_60 = _RAND_79[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  programBufferMem_61 = _RAND_80[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  programBufferMem_62 = _RAND_81[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  programBufferMem_63 = _RAND_82[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  goReg = _RAND_83[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  abstractGeneratedMem_0 = _RAND_84[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  abstractGeneratedMem_1 = _RAND_85[31:0];
  `endif // RANDOMIZE_REG_INIT
  if (reset) begin
    hrDebugInt_0 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_13) begin
      haltedBitRegs_0 <= 1'h0;
    end else if (hartIsInResetSync_0) begin
      haltedBitRegs_0 <= 1'h0;
    end else begin
      haltedBitRegs_0 <= _GEN_69;
    end
    if (_T_13) begin
      resumeReqRegs_0 <= 1'h0;
    end else begin
      resumeReqRegs_0 <= _GEN_74;
    end
    if (_T_13) begin
      haveResetBitRegs_0 <= 1'h0;
    end else begin
      haveResetBitRegs_0 <= _GEN_35;
    end
    if (reset) begin
      hrmaskReg_0 <= 1'h0;
    end else if (_T_13) begin
      hrmaskReg_0 <= 1'h0;
    end else if (_T_16) begin
      hrmaskReg_0 <= io_innerCtrl_bits_hrmask_0;
    end
    if (_T_13) begin
      ABSTRACTCSReg_cmderr <= 3'h0;
    end else if (errorBusy) begin
      ABSTRACTCSReg_cmderr <= 3'h1;
    end else if (errorException) begin
      ABSTRACTCSReg_cmderr <= 3'h3;
    end else if (errorUnsupported) begin
      ABSTRACTCSReg_cmderr <= 3'h2;
    end else if (errorHaltResume) begin
      ABSTRACTCSReg_cmderr <= 3'h4;
    end else if (ABSTRACTCSWrEn) begin
      ABSTRACTCSReg_cmderr <= _T_84;
    end
    if (_T_13) begin
      ctrlStateReg <= 2'h0;
    end else if (ABSTRACTCSWrEnLegal) begin
      if (_T_39434) begin
        ctrlStateReg <= 2'h1;
      end
    end else if (_T_39436) begin
      if (commandRegIsUnsupported) begin
        ctrlStateReg <= 2'h0;
      end else if (commandRegBadHaltResume) begin
        ctrlStateReg <= 2'h0;
      end else begin
        ctrlStateReg <= 2'h2;
      end
    end else if (_T_39437) begin
      if (hartExceptionWrEn) begin
        ctrlStateReg <= 2'h0;
      end else if (_T_39439) begin
        ctrlStateReg <= 2'h0;
      end
    end
    if (_T_13) begin
      COMMANDRdData_cmdtype <= 8'h0;
    end else if (COMMANDWrEn) begin
      COMMANDRdData_cmdtype <= COMMANDWrData_cmdtype;
    end
    if (_T_13) begin
      COMMANDRdData_control <= 24'h0;
    end else if (COMMANDWrEn) begin
      COMMANDRdData_control <= COMMANDWrData_control;
    end
    if (_T_13) begin
      ABSTRACTAUTOReg_autoexecdata <= 12'h0;
    end else if (_T_93) begin
      ABSTRACTAUTOReg_autoexecdata <= _T_94;
    end
    if (_T_13) begin
      ABSTRACTAUTOReg_autoexecprogbuf <= 16'h0;
    end else if (_T_91) begin
      ABSTRACTAUTOReg_autoexecprogbuf <= ABSTRACTAUTOWrData_autoexecprogbuf;
    end
    if (_T_13) begin
      abstractDataMem_0 <= 8'h0;
    end else if (_T_25082) begin
      abstractDataMem_0 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3863) begin
      if (dmiAbstractDataWrEnMaybe_0) begin
        abstractDataMem_0 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      abstractDataMem_1 <= 8'h0;
    end else if (_T_25105) begin
      abstractDataMem_1 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3865) begin
      if (dmiAbstractDataWrEnMaybe_1) begin
        abstractDataMem_1 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      abstractDataMem_2 <= 8'h0;
    end else if (_T_25130) begin
      abstractDataMem_2 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3867) begin
      if (dmiAbstractDataWrEnMaybe_2) begin
        abstractDataMem_2 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      abstractDataMem_3 <= 8'h0;
    end else if (_T_25155) begin
      abstractDataMem_3 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3869) begin
      if (dmiAbstractDataWrEnMaybe_3) begin
        abstractDataMem_3 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      abstractDataMem_4 <= 8'h0;
    end else if (_T_25180) begin
      abstractDataMem_4 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3871) begin
      if (dmiAbstractDataWrEnMaybe_4) begin
        abstractDataMem_4 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      abstractDataMem_5 <= 8'h0;
    end else if (_T_25205) begin
      abstractDataMem_5 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_3873) begin
      if (dmiAbstractDataWrEnMaybe_5) begin
        abstractDataMem_5 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      abstractDataMem_6 <= 8'h0;
    end else if (_T_25230) begin
      abstractDataMem_6 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_3875) begin
      if (dmiAbstractDataWrEnMaybe_6) begin
        abstractDataMem_6 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      abstractDataMem_7 <= 8'h0;
    end else if (_T_25255) begin
      abstractDataMem_7 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_3877) begin
      if (dmiAbstractDataWrEnMaybe_7) begin
        abstractDataMem_7 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_0 <= 8'h0;
    end else if (_T_27828) begin
      programBufferMem_0 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3879) begin
      if (dmiProgramBufferWrEnMaybe_0) begin
        programBufferMem_0 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_1 <= 8'h0;
    end else if (_T_27851) begin
      programBufferMem_1 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3881) begin
      if (dmiProgramBufferWrEnMaybe_1) begin
        programBufferMem_1 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_2 <= 8'h0;
    end else if (_T_27876) begin
      programBufferMem_2 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3883) begin
      if (dmiProgramBufferWrEnMaybe_2) begin
        programBufferMem_2 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_3 <= 8'h0;
    end else if (_T_27901) begin
      programBufferMem_3 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3885) begin
      if (dmiProgramBufferWrEnMaybe_3) begin
        programBufferMem_3 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_4 <= 8'h0;
    end else if (_T_27926) begin
      programBufferMem_4 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3887) begin
      if (dmiProgramBufferWrEnMaybe_4) begin
        programBufferMem_4 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_5 <= 8'h0;
    end else if (_T_27951) begin
      programBufferMem_5 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_3889) begin
      if (dmiProgramBufferWrEnMaybe_5) begin
        programBufferMem_5 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_6 <= 8'h0;
    end else if (_T_27976) begin
      programBufferMem_6 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_3891) begin
      if (dmiProgramBufferWrEnMaybe_6) begin
        programBufferMem_6 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_7 <= 8'h0;
    end else if (_T_28001) begin
      programBufferMem_7 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_3893) begin
      if (dmiProgramBufferWrEnMaybe_7) begin
        programBufferMem_7 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_8 <= 8'h0;
    end else if (_T_17774) begin
      programBufferMem_8 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3895) begin
      if (dmiProgramBufferWrEnMaybe_8) begin
        programBufferMem_8 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_9 <= 8'h0;
    end else if (_T_17797) begin
      programBufferMem_9 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3897) begin
      if (dmiProgramBufferWrEnMaybe_9) begin
        programBufferMem_9 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_10 <= 8'h0;
    end else if (_T_17822) begin
      programBufferMem_10 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3899) begin
      if (dmiProgramBufferWrEnMaybe_10) begin
        programBufferMem_10 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_11 <= 8'h0;
    end else if (_T_17847) begin
      programBufferMem_11 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3901) begin
      if (dmiProgramBufferWrEnMaybe_11) begin
        programBufferMem_11 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_12 <= 8'h0;
    end else if (_T_17872) begin
      programBufferMem_12 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3903) begin
      if (dmiProgramBufferWrEnMaybe_12) begin
        programBufferMem_12 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_13 <= 8'h0;
    end else if (_T_17897) begin
      programBufferMem_13 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_3905) begin
      if (dmiProgramBufferWrEnMaybe_13) begin
        programBufferMem_13 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_14 <= 8'h0;
    end else if (_T_17922) begin
      programBufferMem_14 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_3907) begin
      if (dmiProgramBufferWrEnMaybe_14) begin
        programBufferMem_14 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_15 <= 8'h0;
    end else if (_T_17947) begin
      programBufferMem_15 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_3909) begin
      if (dmiProgramBufferWrEnMaybe_15) begin
        programBufferMem_15 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_16 <= 8'h0;
    end else if (_T_11125) begin
      programBufferMem_16 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3911) begin
      if (dmiProgramBufferWrEnMaybe_16) begin
        programBufferMem_16 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_17 <= 8'h0;
    end else if (_T_11148) begin
      programBufferMem_17 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3913) begin
      if (dmiProgramBufferWrEnMaybe_17) begin
        programBufferMem_17 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_18 <= 8'h0;
    end else if (_T_11173) begin
      programBufferMem_18 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3915) begin
      if (dmiProgramBufferWrEnMaybe_18) begin
        programBufferMem_18 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_19 <= 8'h0;
    end else if (_T_11198) begin
      programBufferMem_19 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3917) begin
      if (dmiProgramBufferWrEnMaybe_19) begin
        programBufferMem_19 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_20 <= 8'h0;
    end else if (_T_11223) begin
      programBufferMem_20 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3919) begin
      if (dmiProgramBufferWrEnMaybe_20) begin
        programBufferMem_20 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_21 <= 8'h0;
    end else if (_T_11248) begin
      programBufferMem_21 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_3921) begin
      if (dmiProgramBufferWrEnMaybe_21) begin
        programBufferMem_21 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_22 <= 8'h0;
    end else if (_T_11273) begin
      programBufferMem_22 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_3923) begin
      if (dmiProgramBufferWrEnMaybe_22) begin
        programBufferMem_22 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_23 <= 8'h0;
    end else if (_T_11298) begin
      programBufferMem_23 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_3925) begin
      if (dmiProgramBufferWrEnMaybe_23) begin
        programBufferMem_23 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_24 <= 8'h0;
    end else if (_T_30938) begin
      programBufferMem_24 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3927) begin
      if (dmiProgramBufferWrEnMaybe_24) begin
        programBufferMem_24 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_25 <= 8'h0;
    end else if (_T_30961) begin
      programBufferMem_25 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3929) begin
      if (dmiProgramBufferWrEnMaybe_25) begin
        programBufferMem_25 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_26 <= 8'h0;
    end else if (_T_30986) begin
      programBufferMem_26 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3931) begin
      if (dmiProgramBufferWrEnMaybe_26) begin
        programBufferMem_26 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_27 <= 8'h0;
    end else if (_T_31011) begin
      programBufferMem_27 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3933) begin
      if (dmiProgramBufferWrEnMaybe_27) begin
        programBufferMem_27 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_28 <= 8'h0;
    end else if (_T_31036) begin
      programBufferMem_28 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3935) begin
      if (dmiProgramBufferWrEnMaybe_28) begin
        programBufferMem_28 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_29 <= 8'h0;
    end else if (_T_31061) begin
      programBufferMem_29 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_3937) begin
      if (dmiProgramBufferWrEnMaybe_29) begin
        programBufferMem_29 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_30 <= 8'h0;
    end else if (_T_31086) begin
      programBufferMem_30 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_3939) begin
      if (dmiProgramBufferWrEnMaybe_30) begin
        programBufferMem_30 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_31 <= 8'h0;
    end else if (_T_31111) begin
      programBufferMem_31 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_3941) begin
      if (dmiProgramBufferWrEnMaybe_31) begin
        programBufferMem_31 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_32 <= 8'h0;
    end else if (_T_23246) begin
      programBufferMem_32 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3943) begin
      if (dmiProgramBufferWrEnMaybe_32) begin
        programBufferMem_32 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_33 <= 8'h0;
    end else if (_T_23269) begin
      programBufferMem_33 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3945) begin
      if (dmiProgramBufferWrEnMaybe_33) begin
        programBufferMem_33 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_34 <= 8'h0;
    end else if (_T_23294) begin
      programBufferMem_34 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3947) begin
      if (dmiProgramBufferWrEnMaybe_34) begin
        programBufferMem_34 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_35 <= 8'h0;
    end else if (_T_23319) begin
      programBufferMem_35 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3949) begin
      if (dmiProgramBufferWrEnMaybe_35) begin
        programBufferMem_35 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_36 <= 8'h0;
    end else if (_T_23344) begin
      programBufferMem_36 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3951) begin
      if (dmiProgramBufferWrEnMaybe_36) begin
        programBufferMem_36 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_37 <= 8'h0;
    end else if (_T_23369) begin
      programBufferMem_37 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_3953) begin
      if (dmiProgramBufferWrEnMaybe_37) begin
        programBufferMem_37 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_38 <= 8'h0;
    end else if (_T_23394) begin
      programBufferMem_38 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_3955) begin
      if (dmiProgramBufferWrEnMaybe_38) begin
        programBufferMem_38 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_39 <= 8'h0;
    end else if (_T_23419) begin
      programBufferMem_39 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_3957) begin
      if (dmiProgramBufferWrEnMaybe_39) begin
        programBufferMem_39 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_40 <= 8'h0;
    end else if (_T_15917) begin
      programBufferMem_40 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3959) begin
      if (dmiProgramBufferWrEnMaybe_40) begin
        programBufferMem_40 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_41 <= 8'h0;
    end else if (_T_15940) begin
      programBufferMem_41 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3961) begin
      if (dmiProgramBufferWrEnMaybe_41) begin
        programBufferMem_41 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_42 <= 8'h0;
    end else if (_T_15965) begin
      programBufferMem_42 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3963) begin
      if (dmiProgramBufferWrEnMaybe_42) begin
        programBufferMem_42 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_43 <= 8'h0;
    end else if (_T_15990) begin
      programBufferMem_43 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3965) begin
      if (dmiProgramBufferWrEnMaybe_43) begin
        programBufferMem_43 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_44 <= 8'h0;
    end else if (_T_16015) begin
      programBufferMem_44 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3967) begin
      if (dmiProgramBufferWrEnMaybe_44) begin
        programBufferMem_44 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_45 <= 8'h0;
    end else if (_T_16040) begin
      programBufferMem_45 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_3969) begin
      if (dmiProgramBufferWrEnMaybe_45) begin
        programBufferMem_45 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_46 <= 8'h0;
    end else if (_T_16065) begin
      programBufferMem_46 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_3971) begin
      if (dmiProgramBufferWrEnMaybe_46) begin
        programBufferMem_46 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_47 <= 8'h0;
    end else if (_T_16090) begin
      programBufferMem_47 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_3973) begin
      if (dmiProgramBufferWrEnMaybe_47) begin
        programBufferMem_47 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_48 <= 8'h0;
    end else if (_T_8925) begin
      programBufferMem_48 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3975) begin
      if (dmiProgramBufferWrEnMaybe_48) begin
        programBufferMem_48 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_49 <= 8'h0;
    end else if (_T_8948) begin
      programBufferMem_49 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3977) begin
      if (dmiProgramBufferWrEnMaybe_49) begin
        programBufferMem_49 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_50 <= 8'h0;
    end else if (_T_8973) begin
      programBufferMem_50 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3979) begin
      if (dmiProgramBufferWrEnMaybe_50) begin
        programBufferMem_50 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_51 <= 8'h0;
    end else if (_T_8998) begin
      programBufferMem_51 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3981) begin
      if (dmiProgramBufferWrEnMaybe_51) begin
        programBufferMem_51 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_52 <= 8'h0;
    end else if (_T_9023) begin
      programBufferMem_52 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3983) begin
      if (dmiProgramBufferWrEnMaybe_52) begin
        programBufferMem_52 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_53 <= 8'h0;
    end else if (_T_9048) begin
      programBufferMem_53 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_3985) begin
      if (dmiProgramBufferWrEnMaybe_53) begin
        programBufferMem_53 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_54 <= 8'h0;
    end else if (_T_9073) begin
      programBufferMem_54 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_3987) begin
      if (dmiProgramBufferWrEnMaybe_54) begin
        programBufferMem_54 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_55 <= 8'h0;
    end else if (_T_9098) begin
      programBufferMem_55 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_3989) begin
      if (dmiProgramBufferWrEnMaybe_55) begin
        programBufferMem_55 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_56 <= 8'h0;
    end else if (_T_32592) begin
      programBufferMem_56 <= auto_tl_in_a_bits_data[7:0];
    end else if (_T_3991) begin
      if (dmiProgramBufferWrEnMaybe_56) begin
        programBufferMem_56 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_57 <= 8'h0;
    end else if (_T_32615) begin
      programBufferMem_57 <= auto_tl_in_a_bits_data[15:8];
    end else if (_T_3993) begin
      if (dmiProgramBufferWrEnMaybe_57) begin
        programBufferMem_57 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_58 <= 8'h0;
    end else if (_T_32640) begin
      programBufferMem_58 <= auto_tl_in_a_bits_data[23:16];
    end else if (_T_3995) begin
      if (dmiProgramBufferWrEnMaybe_58) begin
        programBufferMem_58 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_59 <= 8'h0;
    end else if (_T_32665) begin
      programBufferMem_59 <= auto_tl_in_a_bits_data[31:24];
    end else if (_T_3997) begin
      if (dmiProgramBufferWrEnMaybe_59) begin
        programBufferMem_59 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      programBufferMem_60 <= 8'h0;
    end else if (_T_32690) begin
      programBufferMem_60 <= auto_tl_in_a_bits_data[39:32];
    end else if (_T_3999) begin
      if (dmiProgramBufferWrEnMaybe_60) begin
        programBufferMem_60 <= auto_dmi_in_a_bits_data[7:0];
      end
    end
    if (_T_13) begin
      programBufferMem_61 <= 8'h0;
    end else if (_T_32715) begin
      programBufferMem_61 <= auto_tl_in_a_bits_data[47:40];
    end else if (_T_4001) begin
      if (dmiProgramBufferWrEnMaybe_61) begin
        programBufferMem_61 <= auto_dmi_in_a_bits_data[15:8];
      end
    end
    if (_T_13) begin
      programBufferMem_62 <= 8'h0;
    end else if (_T_32740) begin
      programBufferMem_62 <= auto_tl_in_a_bits_data[55:48];
    end else if (_T_4003) begin
      if (dmiProgramBufferWrEnMaybe_62) begin
        programBufferMem_62 <= auto_dmi_in_a_bits_data[23:16];
      end
    end
    if (_T_13) begin
      programBufferMem_63 <= 8'h0;
    end else if (_T_32765) begin
      programBufferMem_63 <= auto_tl_in_a_bits_data[63:56];
    end else if (_T_4005) begin
      if (dmiProgramBufferWrEnMaybe_63) begin
        programBufferMem_63 <= auto_dmi_in_a_bits_data[31:24];
      end
    end
    if (_T_13) begin
      goReg <= 1'h0;
    end else begin
      goReg <= _GEN_415;
    end
    if (goAbstract) begin
      if (accessRegisterCommandReg_transfer) begin
        if (accessRegisterCommandReg_write) begin
          abstractGeneratedMem_0 <= _T_4101;
        end else begin
          abstractGeneratedMem_0 <= _T_4106;
        end
      end else begin
        abstractGeneratedMem_0 <= 32'h13;
      end
    end
    if (goAbstract) begin
      if (accessRegisterCommandReg_postexec) begin
        abstractGeneratedMem_1 <= 32'h13;
      end else begin
        abstractGeneratedMem_1 <= 32'h100073;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_2258 & _T_4060) begin
          $fwrite(32'h80000002,"Assertion failed: Unexpected 'GOING' hart.\n    at Debug.scala:1389 assert(hartGoingId === 0.U, \"Unexpected 'GOING' hart.\")//Chisel3 #540 %%x, expected %%x\", hartGoingId, 0.U)\n"); // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144978.12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_2258 & _T_4060) begin
          $fatal; // @[Debug.scala 1389:15:chipyard.TestHarness.RocketConfig.fir@144979.12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_2267 & _T_4060) begin
          $fwrite(32'h80000002,"Assertion failed: Unexpected 'EXCEPTION' hart\n    at Debug.scala:1653 assert(hartExceptionId === 0.U, \"Unexpected 'EXCEPTION' hart\")//Chisel3 #540, %%x, expected %%x\", hartExceptionId, 0.U)\n"); // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189226.14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_2267 & _T_4060) begin
          $fatal; // @[Debug.scala 1653:15:chipyard.TestHarness.RocketConfig.fir@189227.14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_2278 & _T_39449) begin
          $fwrite(32'h80000002,"Assertion failed: Should not be in custom state unless we need it.\n    at Debug.scala:1658 assert(needCustom.B, \"Should not be in custom state unless we need it.\")\n"); // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189240.14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_2278 & _T_39449) begin
          $fatal; // @[Debug.scala 1658:13:chipyard.TestHarness.RocketConfig.fir@189241.14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_39461) begin
          $fwrite(32'h80000002,"Assertion failed: Unexpected EXCEPTION write: should only get it in Debug Module EXEC state\n    at Debug.scala:1671 assert ((!io.dmactive || !hartExceptionWrEn || ctrlStateReg === CtrlState(Exec)),\n"); // @[Debug.scala 1671:12:chipyard.TestHarness.RocketConfig.fir@189267.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_39461) begin
          $fatal; // @[Debug.scala 1671:12:chipyard.TestHarness.RocketConfig.fir@189268.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      hrDebugInt_0 <= 1'h0;
    end else if (_T_13) begin
      hrDebugInt_0 <= 1'h0;
    end else begin
      hrDebugInt_0 <= _T_26;
    end
  end
endmodule
