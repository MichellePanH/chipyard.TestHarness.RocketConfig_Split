module BankedStore( // @[:chipyard.TestHarness.RocketConfig.fir@88430.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@88431.4]
  output        io_sinkC_adr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sinkC_adr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sinkC_adr_bits_noop, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sinkC_adr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [9:0]  io_sinkC_adr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sinkC_adr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sinkC_adr_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [63:0] io_sinkC_dat_data, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  output        io_sinkD_adr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sinkD_adr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sinkD_adr_bits_noop, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sinkD_adr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [9:0]  io_sinkD_adr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sinkD_adr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [63:0] io_sinkD_dat_data, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  output        io_sourceC_adr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sourceC_adr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sourceC_adr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [9:0]  io_sourceC_adr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sourceC_adr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  output [63:0] io_sourceC_dat_data, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  output        io_sourceD_radr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sourceD_radr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sourceD_radr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [9:0]  io_sourceD_radr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sourceD_radr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sourceD_radr_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  output [63:0] io_sourceD_rdat_data, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  output        io_sourceD_wadr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sourceD_wadr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sourceD_wadr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [9:0]  io_sourceD_wadr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [2:0]  io_sourceD_wadr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input         io_sourceD_wadr_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
  input  [63:0] io_sourceD_wdat_data // @[:chipyard.TestHarness.RocketConfig.fir@88433.4]
);
  wire [13:0] cc_banks_0_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88438.4]
  wire  cc_banks_0_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88438.4]
  wire  cc_banks_0_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88438.4]
  wire  cc_banks_0_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88438.4]
  wire [63:0] cc_banks_0_RW0_wdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88438.4]
  wire [63:0] cc_banks_0_RW0_rdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88438.4]
  wire [13:0] cc_banks_1_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88439.4]
  wire  cc_banks_1_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88439.4]
  wire  cc_banks_1_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88439.4]
  wire  cc_banks_1_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88439.4]
  wire [63:0] cc_banks_1_RW0_wdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88439.4]
  wire [63:0] cc_banks_1_RW0_rdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88439.4]
  wire [13:0] cc_banks_2_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88440.4]
  wire  cc_banks_2_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88440.4]
  wire  cc_banks_2_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88440.4]
  wire  cc_banks_2_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88440.4]
  wire [63:0] cc_banks_2_RW0_wdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88440.4]
  wire [63:0] cc_banks_2_RW0_rdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88440.4]
  wire [13:0] cc_banks_3_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88441.4]
  wire  cc_banks_3_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88441.4]
  wire  cc_banks_3_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88441.4]
  wire  cc_banks_3_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88441.4]
  wire [63:0] cc_banks_3_RW0_wdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88441.4]
  wire [63:0] cc_banks_3_RW0_rdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88441.4]
  wire [15:0] _T_2; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88444.4]
  wire [3:0] _T_5; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88449.4]
  wire  _T_9; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88453.4]
  wire  _T_10; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88454.4]
  wire [3:0] _T_25; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88469.4]
  wire [3:0] _T_27; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88471.4]
  wire [13:0] reqs_0_index; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88475.4]
  wire [3:0] _T_36; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88483.4]
  wire [3:0] _T_38; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@88485.4]
  wire [3:0] _T_39; // @[BankedStore.scala 135:65:chipyard.TestHarness.RocketConfig.fir@88486.4]
  wire [3:0] reqs_0_bankSel; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88487.4]
  wire [3:0] _T_47; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88495.4]
  wire [3:0] _T_48; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88496.4]
  wire [3:0] reqs_0_bankEn; // @[BankedStore.scala 136:24:chipyard.TestHarness.RocketConfig.fir@88497.4]
  wire [15:0] _T_53; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88508.4]
  wire [3:0] _T_56; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88513.4]
  wire [15:0] _T_103; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88571.4]
  wire [3:0] _T_106; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88576.4]
  wire [3:0] _T_137; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88610.4]
  wire [3:0] reqs_1_bankSel; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88614.4]
  wire [3:0] reqs_2_bankSum; // @[BankedStore.scala 160:17:chipyard.TestHarness.RocketConfig.fir@88763.4]
  wire  _T_60; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88517.4]
  wire  _T_61; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88518.4]
  wire  _T_64; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88521.4]
  wire  _T_65; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88522.4]
  wire  _T_68; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88525.4]
  wire  _T_69; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88526.4]
  wire  _T_72; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88529.4]
  wire  _T_73; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88530.4]
  wire [3:0] _T_76; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88533.4]
  wire [3:0] _T_78; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88535.4]
  wire [13:0] reqs_2_index; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88539.4]
  wire [3:0] _T_87; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88547.4]
  wire [3:0] reqs_2_bankSel; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88551.4]
  wire [3:0] _T_98; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88559.4]
  wire [3:0] _T_99; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88560.4]
  wire [3:0] reqs_2_bankEn; // @[BankedStore.scala 136:24:chipyard.TestHarness.RocketConfig.fir@88561.4]
  wire  _T_110; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88580.4]
  wire  _T_111; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88581.4]
  wire  _T_114; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88584.4]
  wire  _T_115; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88585.4]
  wire  _T_118; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88588.4]
  wire  _T_119; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88589.4]
  wire  _T_122; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88592.4]
  wire  _T_123; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88593.4]
  wire [3:0] _T_126; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88596.4]
  wire [3:0] _T_128; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88598.4]
  wire [13:0] reqs_1_index; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88602.4]
  wire [3:0] _T_148; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88622.4]
  wire [3:0] reqs_1_bankEn; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88623.4]
  wire [15:0] _T_153; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88634.4]
  wire [3:0] _T_156; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88639.4]
  wire [15:0] _T_204; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88698.4]
  wire [3:0] _T_207; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88703.4]
  wire [3:0] _T_238; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88737.4]
  wire [3:0] _T_240; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@88739.4]
  wire [3:0] _T_241; // @[BankedStore.scala 135:65:chipyard.TestHarness.RocketConfig.fir@88740.4]
  wire [3:0] reqs_3_bankSel; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88741.4]
  wire [3:0] reqs_3_bankSum; // @[BankedStore.scala 160:17:chipyard.TestHarness.RocketConfig.fir@88765.4]
  wire [3:0] reqs_4_bankSum; // @[BankedStore.scala 160:17:chipyard.TestHarness.RocketConfig.fir@88767.4]
  wire  _T_159; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88642.4]
  wire  _T_160; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88643.4]
  wire  _T_161; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88644.4]
  wire  _T_163; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88646.4]
  wire  _T_164; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88647.4]
  wire  _T_165; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88648.4]
  wire  _T_167; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88650.4]
  wire  _T_168; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88651.4]
  wire  _T_169; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88652.4]
  wire  _T_171; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88654.4]
  wire  _T_172; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88655.4]
  wire  _T_173; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88656.4]
  wire [3:0] _T_176; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88659.4]
  wire [3:0] _T_178; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88661.4]
  wire [13:0] reqs_4_index; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88665.4]
  wire [3:0] _T_187; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88673.4]
  wire [3:0] _T_189; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@88675.4]
  wire [3:0] _T_190; // @[BankedStore.scala 135:65:chipyard.TestHarness.RocketConfig.fir@88676.4]
  wire [3:0] reqs_4_bankSel; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88677.4]
  wire [3:0] _T_198; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88685.4]
  wire [3:0] reqs_4_bankEn; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88686.4]
  wire  _T_210; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88706.4]
  wire  _T_211; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88707.4]
  wire  _T_212; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88708.4]
  wire  _T_214; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88710.4]
  wire  _T_215; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88711.4]
  wire  _T_216; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88712.4]
  wire  _T_218; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88714.4]
  wire  _T_219; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88715.4]
  wire  _T_220; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88716.4]
  wire  _T_222; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88718.4]
  wire  _T_223; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88719.4]
  wire  _T_224; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88720.4]
  wire [3:0] _T_227; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88723.4]
  wire [3:0] _T_229; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88725.4]
  wire [13:0] reqs_3_index; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88729.4]
  wire [3:0] _T_249; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88749.4]
  wire [3:0] reqs_3_bankEn; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88750.4]
  wire  _T_263; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88775.4]
  wire  _T_264; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88776.4]
  wire  _T_265; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88777.4]
  wire  _T_266; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88778.4]
  wire  _T_273; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88785.4]
  wire  _T_274; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88786.4]
  wire  _T_275; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88787.4]
  wire [13:0] _T_276; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88788.4]
  wire [13:0] _T_277; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88789.4]
  wire [13:0] _T_278; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88790.4]
  wire [63:0] _T_280; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88792.4]
  wire [63:0] _T_281; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88793.4]
  wire [63:0] _T_282; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88794.4]
  wire  _T_284; // @[BankedStore.scala 170:15:chipyard.TestHarness.RocketConfig.fir@88796.4]
  wire  _T_286; // @[BankedStore.scala 171:27:chipyard.TestHarness.RocketConfig.fir@88801.4]
  wire  _T_287; // @[BankedStore.scala 171:32:chipyard.TestHarness.RocketConfig.fir@88802.4]
  reg  _T_294; // @[BankedStore.scala 171:47:chipyard.TestHarness.RocketConfig.fir@88814.4]
  reg [31:0] _RAND_0;
  reg [63:0] regout_0; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@88816.4]
  reg [63:0] _RAND_1;
  wire  _T_301; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88825.4]
  wire  _T_302; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88826.4]
  wire  _T_303; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88827.4]
  wire  _T_304; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88828.4]
  wire  _T_311; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88835.4]
  wire  _T_312; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88836.4]
  wire  _T_313; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88837.4]
  wire [13:0] _T_314; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88838.4]
  wire [13:0] _T_315; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88839.4]
  wire [13:0] _T_316; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88840.4]
  wire [63:0] _T_318; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88842.4]
  wire [63:0] _T_319; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88843.4]
  wire [63:0] _T_320; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88844.4]
  wire  _T_322; // @[BankedStore.scala 170:15:chipyard.TestHarness.RocketConfig.fir@88846.4]
  wire  _T_324; // @[BankedStore.scala 171:27:chipyard.TestHarness.RocketConfig.fir@88851.4]
  wire  _T_325; // @[BankedStore.scala 171:32:chipyard.TestHarness.RocketConfig.fir@88852.4]
  reg  _T_332; // @[BankedStore.scala 171:47:chipyard.TestHarness.RocketConfig.fir@88864.4]
  reg [31:0] _RAND_2;
  reg [63:0] regout_1; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@88866.4]
  reg [63:0] _RAND_3;
  wire  _T_339; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88875.4]
  wire  _T_340; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88876.4]
  wire  _T_341; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88877.4]
  wire  _T_342; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88878.4]
  wire  _T_349; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88885.4]
  wire  _T_350; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88886.4]
  wire  _T_351; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88887.4]
  wire [13:0] _T_352; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88888.4]
  wire [13:0] _T_353; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88889.4]
  wire [13:0] _T_354; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88890.4]
  wire [63:0] _T_356; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88892.4]
  wire [63:0] _T_357; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88893.4]
  wire [63:0] _T_358; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88894.4]
  wire  _T_360; // @[BankedStore.scala 170:15:chipyard.TestHarness.RocketConfig.fir@88896.4]
  wire  _T_362; // @[BankedStore.scala 171:27:chipyard.TestHarness.RocketConfig.fir@88901.4]
  wire  _T_363; // @[BankedStore.scala 171:32:chipyard.TestHarness.RocketConfig.fir@88902.4]
  reg  _T_370; // @[BankedStore.scala 171:47:chipyard.TestHarness.RocketConfig.fir@88914.4]
  reg [31:0] _RAND_4;
  reg [63:0] regout_2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@88916.4]
  reg [63:0] _RAND_5;
  wire  _T_377; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88925.4]
  wire  _T_378; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88926.4]
  wire  _T_379; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88927.4]
  wire  _T_380; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88928.4]
  wire  _T_387; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88935.4]
  wire  _T_388; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88936.4]
  wire  _T_389; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88937.4]
  wire [13:0] _T_390; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88938.4]
  wire [13:0] _T_391; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88939.4]
  wire [13:0] _T_392; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88940.4]
  wire [63:0] _T_394; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88942.4]
  wire [63:0] _T_395; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88943.4]
  wire [63:0] _T_396; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88944.4]
  wire  _T_398; // @[BankedStore.scala 170:15:chipyard.TestHarness.RocketConfig.fir@88946.4]
  wire  _T_400; // @[BankedStore.scala 171:27:chipyard.TestHarness.RocketConfig.fir@88951.4]
  wire  _T_401; // @[BankedStore.scala 171:32:chipyard.TestHarness.RocketConfig.fir@88952.4]
  reg  _T_408; // @[BankedStore.scala 171:47:chipyard.TestHarness.RocketConfig.fir@88964.4]
  reg [31:0] _RAND_6;
  reg [63:0] regout_3; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@88966.4]
  reg [63:0] _RAND_7;
  reg [3:0] _T_410; // @[BankedStore.scala 174:39:chipyard.TestHarness.RocketConfig.fir@88976.4]
  reg [31:0] _RAND_8;
  reg [3:0] regsel_sourceC; // @[BankedStore.scala 174:31:chipyard.TestHarness.RocketConfig.fir@88978.4]
  reg [31:0] _RAND_9;
  reg [3:0] _T_411; // @[BankedStore.scala 175:39:chipyard.TestHarness.RocketConfig.fir@88980.4]
  reg [31:0] _RAND_10;
  reg [3:0] regsel_sourceD; // @[BankedStore.scala 175:31:chipyard.TestHarness.RocketConfig.fir@88982.4]
  reg [31:0] _RAND_11;
  wire [63:0] _T_413; // @[BankedStore.scala 178:23:chipyard.TestHarness.RocketConfig.fir@88985.4]
  wire [63:0] _T_415; // @[BankedStore.scala 178:23:chipyard.TestHarness.RocketConfig.fir@88987.4]
  wire [63:0] _T_417; // @[BankedStore.scala 178:23:chipyard.TestHarness.RocketConfig.fir@88989.4]
  wire [63:0] _T_419; // @[BankedStore.scala 178:23:chipyard.TestHarness.RocketConfig.fir@88991.4]
  wire [63:0] _T_420; // @[BankedStore.scala 179:85:chipyard.TestHarness.RocketConfig.fir@88992.4]
  wire [63:0] _T_421; // @[BankedStore.scala 179:85:chipyard.TestHarness.RocketConfig.fir@88993.4]
  wire [63:0] _T_423; // @[BankedStore.scala 185:23:chipyard.TestHarness.RocketConfig.fir@88997.4]
  wire [63:0] _T_425; // @[BankedStore.scala 185:23:chipyard.TestHarness.RocketConfig.fir@88999.4]
  wire [63:0] _T_427; // @[BankedStore.scala 185:23:chipyard.TestHarness.RocketConfig.fir@89001.4]
  wire [63:0] _T_429; // @[BankedStore.scala 185:23:chipyard.TestHarness.RocketConfig.fir@89003.4]
  wire [63:0] _T_430; // @[BankedStore.scala 186:85:chipyard.TestHarness.RocketConfig.fir@89004.4]
  wire [63:0] _T_431; // @[BankedStore.scala 186:85:chipyard.TestHarness.RocketConfig.fir@89005.4]
  cc_banks_0 cc_banks_0 ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88438.4]
    .RW0_addr(cc_banks_0_RW0_addr),
    .RW0_en(cc_banks_0_RW0_en),
    .RW0_clk(cc_banks_0_RW0_clk),
    .RW0_wmode(cc_banks_0_RW0_wmode),
    .RW0_wdata(cc_banks_0_RW0_wdata),
    .RW0_rdata(cc_banks_0_RW0_rdata)
  );
  cc_banks_0 cc_banks_1 ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88439.4]
    .RW0_addr(cc_banks_1_RW0_addr),
    .RW0_en(cc_banks_1_RW0_en),
    .RW0_clk(cc_banks_1_RW0_clk),
    .RW0_wmode(cc_banks_1_RW0_wmode),
    .RW0_wdata(cc_banks_1_RW0_wdata),
    .RW0_rdata(cc_banks_1_RW0_rdata)
  );
  cc_banks_0 cc_banks_2 ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88440.4]
    .RW0_addr(cc_banks_2_RW0_addr),
    .RW0_en(cc_banks_2_RW0_en),
    .RW0_clk(cc_banks_2_RW0_clk),
    .RW0_wmode(cc_banks_2_RW0_wmode),
    .RW0_wdata(cc_banks_2_RW0_wdata),
    .RW0_rdata(cc_banks_2_RW0_rdata)
  );
  cc_banks_0 cc_banks_3 ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@88441.4]
    .RW0_addr(cc_banks_3_RW0_addr),
    .RW0_en(cc_banks_3_RW0_en),
    .RW0_clk(cc_banks_3_RW0_clk),
    .RW0_wmode(cc_banks_3_RW0_wmode),
    .RW0_wdata(cc_banks_3_RW0_wdata),
    .RW0_rdata(cc_banks_3_RW0_rdata)
  );
  assign _T_2 = {io_sinkC_adr_bits_way,io_sinkC_adr_bits_set,io_sinkC_adr_bits_beat}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88444.4]
  assign _T_5 = 4'h1 << _T_2[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88449.4]
  assign _T_9 = |1'h0; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88453.4]
  assign _T_10 = ~_T_9; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88454.4]
  assign _T_25 = {_T_10,_T_10,_T_10,_T_10}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88469.4]
  assign _T_27 = _T_25 >> _T_2[1:0]; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88471.4]
  assign reqs_0_index = _T_2[15:2]; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88475.4]
  assign _T_36 = {_T_5[3],_T_5[2],_T_5[1],_T_5[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88483.4]
  assign _T_38 = io_sinkC_adr_bits_mask ? 4'hf : 4'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@88485.4]
  assign _T_39 = _T_36 & _T_38; // @[BankedStore.scala 135:65:chipyard.TestHarness.RocketConfig.fir@88486.4]
  assign reqs_0_bankSel = io_sinkC_adr_valid ? _T_39 : 4'h0; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88487.4]
  assign _T_47 = {_T_25[3],_T_25[2],_T_25[1],_T_25[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88495.4]
  assign _T_48 = reqs_0_bankSel & _T_47; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88496.4]
  assign reqs_0_bankEn = io_sinkC_adr_bits_noop ? 4'h0 : _T_48; // @[BankedStore.scala 136:24:chipyard.TestHarness.RocketConfig.fir@88497.4]
  assign _T_53 = {io_sinkD_adr_bits_way,io_sinkD_adr_bits_set,io_sinkD_adr_bits_beat}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88508.4]
  assign _T_56 = 4'h1 << _T_53[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88513.4]
  assign _T_103 = {io_sourceC_adr_bits_way,io_sourceC_adr_bits_set,io_sourceC_adr_bits_beat}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88571.4]
  assign _T_106 = 4'h1 << _T_103[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88576.4]
  assign _T_137 = {_T_106[3],_T_106[2],_T_106[1],_T_106[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88610.4]
  assign reqs_1_bankSel = io_sourceC_adr_valid ? _T_137 : 4'h0; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88614.4]
  assign reqs_2_bankSum = reqs_1_bankSel | reqs_0_bankSel; // @[BankedStore.scala 160:17:chipyard.TestHarness.RocketConfig.fir@88763.4]
  assign _T_60 = |reqs_2_bankSum[0]; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88517.4]
  assign _T_61 = ~_T_60; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88518.4]
  assign _T_64 = |reqs_2_bankSum[1]; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88521.4]
  assign _T_65 = ~_T_64; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88522.4]
  assign _T_68 = |reqs_2_bankSum[2]; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88525.4]
  assign _T_69 = ~_T_68; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88526.4]
  assign _T_72 = |reqs_2_bankSum[3]; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88529.4]
  assign _T_73 = ~_T_72; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88530.4]
  assign _T_76 = {_T_73,_T_69,_T_65,_T_61}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88533.4]
  assign _T_78 = _T_76 >> _T_53[1:0]; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88535.4]
  assign reqs_2_index = _T_53[15:2]; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88539.4]
  assign _T_87 = {_T_56[3],_T_56[2],_T_56[1],_T_56[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88547.4]
  assign reqs_2_bankSel = io_sinkD_adr_valid ? _T_87 : 4'h0; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88551.4]
  assign _T_98 = {_T_76[3],_T_76[2],_T_76[1],_T_76[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88559.4]
  assign _T_99 = reqs_2_bankSel & _T_98; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88560.4]
  assign reqs_2_bankEn = io_sinkD_adr_bits_noop ? 4'h0 : _T_99; // @[BankedStore.scala 136:24:chipyard.TestHarness.RocketConfig.fir@88561.4]
  assign _T_110 = |reqs_0_bankSel[0]; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88580.4]
  assign _T_111 = ~_T_110; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88581.4]
  assign _T_114 = |reqs_0_bankSel[1]; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88584.4]
  assign _T_115 = ~_T_114; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88585.4]
  assign _T_118 = |reqs_0_bankSel[2]; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88588.4]
  assign _T_119 = ~_T_118; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88589.4]
  assign _T_122 = |reqs_0_bankSel[3]; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88592.4]
  assign _T_123 = ~_T_122; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88593.4]
  assign _T_126 = {_T_123,_T_119,_T_115,_T_111}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88596.4]
  assign _T_128 = _T_126 >> _T_103[1:0]; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88598.4]
  assign reqs_1_index = _T_103[15:2]; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88602.4]
  assign _T_148 = {_T_126[3],_T_126[2],_T_126[1],_T_126[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88622.4]
  assign reqs_1_bankEn = reqs_1_bankSel & _T_148; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88623.4]
  assign _T_153 = {io_sourceD_radr_bits_way,io_sourceD_radr_bits_set,io_sourceD_radr_bits_beat}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88634.4]
  assign _T_156 = 4'h1 << _T_153[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88639.4]
  assign _T_204 = {io_sourceD_wadr_bits_way,io_sourceD_wadr_bits_set,io_sourceD_wadr_bits_beat}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88698.4]
  assign _T_207 = 4'h1 << _T_204[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@88703.4]
  assign _T_238 = {_T_207[3],_T_207[2],_T_207[1],_T_207[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88737.4]
  assign _T_240 = io_sourceD_wadr_bits_mask ? 4'hf : 4'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@88739.4]
  assign _T_241 = _T_238 & _T_240; // @[BankedStore.scala 135:65:chipyard.TestHarness.RocketConfig.fir@88740.4]
  assign reqs_3_bankSel = io_sourceD_wadr_valid ? _T_241 : 4'h0; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88741.4]
  assign reqs_3_bankSum = reqs_2_bankSel | reqs_2_bankSum; // @[BankedStore.scala 160:17:chipyard.TestHarness.RocketConfig.fir@88765.4]
  assign reqs_4_bankSum = reqs_3_bankSel | reqs_3_bankSum; // @[BankedStore.scala 160:17:chipyard.TestHarness.RocketConfig.fir@88767.4]
  assign _T_159 = reqs_4_bankSum[0] & io_sourceD_radr_bits_mask; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88642.4]
  assign _T_160 = |_T_159; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88643.4]
  assign _T_161 = ~_T_160; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88644.4]
  assign _T_163 = reqs_4_bankSum[1] & io_sourceD_radr_bits_mask; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88646.4]
  assign _T_164 = |_T_163; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88647.4]
  assign _T_165 = ~_T_164; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88648.4]
  assign _T_167 = reqs_4_bankSum[2] & io_sourceD_radr_bits_mask; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88650.4]
  assign _T_168 = |_T_167; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88651.4]
  assign _T_169 = ~_T_168; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88652.4]
  assign _T_171 = reqs_4_bankSum[3] & io_sourceD_radr_bits_mask; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88654.4]
  assign _T_172 = |_T_171; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88655.4]
  assign _T_173 = ~_T_172; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88656.4]
  assign _T_176 = {_T_173,_T_169,_T_165,_T_161}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88659.4]
  assign _T_178 = _T_176 >> _T_153[1:0]; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88661.4]
  assign reqs_4_index = _T_153[15:2]; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88665.4]
  assign _T_187 = {_T_156[3],_T_156[2],_T_156[1],_T_156[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88673.4]
  assign _T_189 = io_sourceD_radr_bits_mask ? 4'hf : 4'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@88675.4]
  assign _T_190 = _T_187 & _T_189; // @[BankedStore.scala 135:65:chipyard.TestHarness.RocketConfig.fir@88676.4]
  assign reqs_4_bankSel = io_sourceD_radr_valid ? _T_190 : 4'h0; // @[BankedStore.scala 135:24:chipyard.TestHarness.RocketConfig.fir@88677.4]
  assign _T_198 = {_T_176[3],_T_176[2],_T_176[1],_T_176[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88685.4]
  assign reqs_4_bankEn = reqs_4_bankSel & _T_198; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88686.4]
  assign _T_210 = reqs_3_bankSum[0] & io_sourceD_wadr_bits_mask; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88706.4]
  assign _T_211 = |_T_210; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88707.4]
  assign _T_212 = ~_T_211; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88708.4]
  assign _T_214 = reqs_3_bankSum[1] & io_sourceD_wadr_bits_mask; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88710.4]
  assign _T_215 = |_T_214; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88711.4]
  assign _T_216 = ~_T_215; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88712.4]
  assign _T_218 = reqs_3_bankSum[2] & io_sourceD_wadr_bits_mask; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88714.4]
  assign _T_219 = |_T_218; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88715.4]
  assign _T_220 = ~_T_219; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88716.4]
  assign _T_222 = reqs_3_bankSum[3] & io_sourceD_wadr_bits_mask; // @[BankedStore.scala 130:96:chipyard.TestHarness.RocketConfig.fir@88718.4]
  assign _T_223 = |_T_222; // @[BankedStore.scala 130:101:chipyard.TestHarness.RocketConfig.fir@88719.4]
  assign _T_224 = ~_T_223; // @[BankedStore.scala 130:58:chipyard.TestHarness.RocketConfig.fir@88720.4]
  assign _T_227 = {_T_224,_T_220,_T_216,_T_212}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88723.4]
  assign _T_229 = _T_227 >> _T_204[1:0]; // @[BankedStore.scala 131:21:chipyard.TestHarness.RocketConfig.fir@88725.4]
  assign reqs_3_index = _T_204[15:2]; // @[BankedStore.scala 134:23:chipyard.TestHarness.RocketConfig.fir@88729.4]
  assign _T_249 = {_T_227[3],_T_227[2],_T_227[1],_T_227[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@88749.4]
  assign reqs_3_bankEn = reqs_3_bankSel & _T_249; // @[BankedStore.scala 136:59:chipyard.TestHarness.RocketConfig.fir@88750.4]
  assign _T_263 = reqs_0_bankEn[0] | reqs_1_bankEn[0]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88775.4]
  assign _T_264 = _T_263 | reqs_2_bankEn[0]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88776.4]
  assign _T_265 = _T_264 | reqs_3_bankEn[0]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88777.4]
  assign _T_266 = _T_265 | reqs_4_bankEn[0]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88778.4]
  assign _T_273 = reqs_2_bankSel[0] | reqs_3_bankSel[0]; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88785.4]
  assign _T_274 = reqs_1_bankSel[0] ? 1'h0 : _T_273; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88786.4]
  assign _T_275 = reqs_0_bankSel[0] | _T_274; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88787.4]
  assign _T_276 = reqs_3_bankSel[0] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88788.4]
  assign _T_277 = reqs_2_bankSel[0] ? reqs_2_index : _T_276; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88789.4]
  assign _T_278 = reqs_1_bankSel[0] ? reqs_1_index : _T_277; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88790.4]
  assign _T_280 = reqs_3_bankSel[0] ? io_sourceD_wdat_data : 64'h0; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88792.4]
  assign _T_281 = reqs_2_bankSel[0] ? io_sinkD_dat_data : _T_280; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88793.4]
  assign _T_282 = reqs_1_bankSel[0] ? 64'h0 : _T_281; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88794.4]
  assign _T_284 = _T_275 & _T_266; // @[BankedStore.scala 170:15:chipyard.TestHarness.RocketConfig.fir@88796.4]
  assign _T_286 = ~_T_275; // @[BankedStore.scala 171:27:chipyard.TestHarness.RocketConfig.fir@88801.4]
  assign _T_287 = _T_286 & _T_266; // @[BankedStore.scala 171:32:chipyard.TestHarness.RocketConfig.fir@88802.4]
  assign _T_301 = reqs_0_bankEn[1] | reqs_1_bankEn[1]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88825.4]
  assign _T_302 = _T_301 | reqs_2_bankEn[1]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88826.4]
  assign _T_303 = _T_302 | reqs_3_bankEn[1]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88827.4]
  assign _T_304 = _T_303 | reqs_4_bankEn[1]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88828.4]
  assign _T_311 = reqs_2_bankSel[1] | reqs_3_bankSel[1]; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88835.4]
  assign _T_312 = reqs_1_bankSel[1] ? 1'h0 : _T_311; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88836.4]
  assign _T_313 = reqs_0_bankSel[1] | _T_312; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88837.4]
  assign _T_314 = reqs_3_bankSel[1] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88838.4]
  assign _T_315 = reqs_2_bankSel[1] ? reqs_2_index : _T_314; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88839.4]
  assign _T_316 = reqs_1_bankSel[1] ? reqs_1_index : _T_315; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88840.4]
  assign _T_318 = reqs_3_bankSel[1] ? io_sourceD_wdat_data : 64'h0; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88842.4]
  assign _T_319 = reqs_2_bankSel[1] ? io_sinkD_dat_data : _T_318; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88843.4]
  assign _T_320 = reqs_1_bankSel[1] ? 64'h0 : _T_319; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88844.4]
  assign _T_322 = _T_313 & _T_304; // @[BankedStore.scala 170:15:chipyard.TestHarness.RocketConfig.fir@88846.4]
  assign _T_324 = ~_T_313; // @[BankedStore.scala 171:27:chipyard.TestHarness.RocketConfig.fir@88851.4]
  assign _T_325 = _T_324 & _T_304; // @[BankedStore.scala 171:32:chipyard.TestHarness.RocketConfig.fir@88852.4]
  assign _T_339 = reqs_0_bankEn[2] | reqs_1_bankEn[2]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88875.4]
  assign _T_340 = _T_339 | reqs_2_bankEn[2]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88876.4]
  assign _T_341 = _T_340 | reqs_3_bankEn[2]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88877.4]
  assign _T_342 = _T_341 | reqs_4_bankEn[2]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88878.4]
  assign _T_349 = reqs_2_bankSel[2] | reqs_3_bankSel[2]; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88885.4]
  assign _T_350 = reqs_1_bankSel[2] ? 1'h0 : _T_349; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88886.4]
  assign _T_351 = reqs_0_bankSel[2] | _T_350; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88887.4]
  assign _T_352 = reqs_3_bankSel[2] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88888.4]
  assign _T_353 = reqs_2_bankSel[2] ? reqs_2_index : _T_352; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88889.4]
  assign _T_354 = reqs_1_bankSel[2] ? reqs_1_index : _T_353; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88890.4]
  assign _T_356 = reqs_3_bankSel[2] ? io_sourceD_wdat_data : 64'h0; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88892.4]
  assign _T_357 = reqs_2_bankSel[2] ? io_sinkD_dat_data : _T_356; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88893.4]
  assign _T_358 = reqs_1_bankSel[2] ? 64'h0 : _T_357; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88894.4]
  assign _T_360 = _T_351 & _T_342; // @[BankedStore.scala 170:15:chipyard.TestHarness.RocketConfig.fir@88896.4]
  assign _T_362 = ~_T_351; // @[BankedStore.scala 171:27:chipyard.TestHarness.RocketConfig.fir@88901.4]
  assign _T_363 = _T_362 & _T_342; // @[BankedStore.scala 171:32:chipyard.TestHarness.RocketConfig.fir@88902.4]
  assign _T_377 = reqs_0_bankEn[3] | reqs_1_bankEn[3]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88925.4]
  assign _T_378 = _T_377 | reqs_2_bankEn[3]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88926.4]
  assign _T_379 = _T_378 | reqs_3_bankEn[3]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88927.4]
  assign _T_380 = _T_379 | reqs_4_bankEn[3]; // @[BankedStore.scala 164:45:chipyard.TestHarness.RocketConfig.fir@88928.4]
  assign _T_387 = reqs_2_bankSel[3] | reqs_3_bankSel[3]; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88935.4]
  assign _T_388 = reqs_1_bankSel[3] ? 1'h0 : _T_387; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88936.4]
  assign _T_389 = reqs_0_bankSel[3] | _T_388; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88937.4]
  assign _T_390 = reqs_3_bankSel[3] ? reqs_3_index : reqs_4_index; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88938.4]
  assign _T_391 = reqs_2_bankSel[3] ? reqs_2_index : _T_390; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88939.4]
  assign _T_392 = reqs_1_bankSel[3] ? reqs_1_index : _T_391; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88940.4]
  assign _T_394 = reqs_3_bankSel[3] ? io_sourceD_wdat_data : 64'h0; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88942.4]
  assign _T_395 = reqs_2_bankSel[3] ? io_sinkD_dat_data : _T_394; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88943.4]
  assign _T_396 = reqs_1_bankSel[3] ? 64'h0 : _T_395; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@88944.4]
  assign _T_398 = _T_389 & _T_380; // @[BankedStore.scala 170:15:chipyard.TestHarness.RocketConfig.fir@88946.4]
  assign _T_400 = ~_T_389; // @[BankedStore.scala 171:27:chipyard.TestHarness.RocketConfig.fir@88951.4]
  assign _T_401 = _T_400 & _T_380; // @[BankedStore.scala 171:32:chipyard.TestHarness.RocketConfig.fir@88952.4]
  assign _T_413 = regsel_sourceC[0] ? regout_0 : 64'h0; // @[BankedStore.scala 178:23:chipyard.TestHarness.RocketConfig.fir@88985.4]
  assign _T_415 = regsel_sourceC[1] ? regout_1 : 64'h0; // @[BankedStore.scala 178:23:chipyard.TestHarness.RocketConfig.fir@88987.4]
  assign _T_417 = regsel_sourceC[2] ? regout_2 : 64'h0; // @[BankedStore.scala 178:23:chipyard.TestHarness.RocketConfig.fir@88989.4]
  assign _T_419 = regsel_sourceC[3] ? regout_3 : 64'h0; // @[BankedStore.scala 178:23:chipyard.TestHarness.RocketConfig.fir@88991.4]
  assign _T_420 = _T_413 | _T_415; // @[BankedStore.scala 179:85:chipyard.TestHarness.RocketConfig.fir@88992.4]
  assign _T_421 = _T_420 | _T_417; // @[BankedStore.scala 179:85:chipyard.TestHarness.RocketConfig.fir@88993.4]
  assign _T_423 = regsel_sourceD[0] ? regout_0 : 64'h0; // @[BankedStore.scala 185:23:chipyard.TestHarness.RocketConfig.fir@88997.4]
  assign _T_425 = regsel_sourceD[1] ? regout_1 : 64'h0; // @[BankedStore.scala 185:23:chipyard.TestHarness.RocketConfig.fir@88999.4]
  assign _T_427 = regsel_sourceD[2] ? regout_2 : 64'h0; // @[BankedStore.scala 185:23:chipyard.TestHarness.RocketConfig.fir@89001.4]
  assign _T_429 = regsel_sourceD[3] ? regout_3 : 64'h0; // @[BankedStore.scala 185:23:chipyard.TestHarness.RocketConfig.fir@89003.4]
  assign _T_430 = _T_423 | _T_425; // @[BankedStore.scala 186:85:chipyard.TestHarness.RocketConfig.fir@89004.4]
  assign _T_431 = _T_430 | _T_427; // @[BankedStore.scala 186:85:chipyard.TestHarness.RocketConfig.fir@89005.4]
  assign io_sinkC_adr_ready = _T_27[0]; // @[BankedStore.scala 131:13:chipyard.TestHarness.RocketConfig.fir@88473.4]
  assign io_sinkD_adr_ready = _T_78[0]; // @[BankedStore.scala 131:13:chipyard.TestHarness.RocketConfig.fir@88537.4]
  assign io_sourceC_adr_ready = _T_128[0]; // @[BankedStore.scala 131:13:chipyard.TestHarness.RocketConfig.fir@88600.4]
  assign io_sourceC_dat_data = _T_421 | _T_419; // @[BankedStore.scala 181:23:chipyard.TestHarness.RocketConfig.fir@88995.4]
  assign io_sourceD_radr_ready = _T_178[0]; // @[BankedStore.scala 131:13:chipyard.TestHarness.RocketConfig.fir@88663.4]
  assign io_sourceD_rdat_data = _T_431 | _T_429; // @[BankedStore.scala 188:24:chipyard.TestHarness.RocketConfig.fir@89007.4]
  assign io_sourceD_wadr_ready = _T_229[0]; // @[BankedStore.scala 131:13:chipyard.TestHarness.RocketConfig.fir@88727.4]
  assign cc_banks_0_RW0_wdata = reqs_0_bankSel[0] ? io_sinkC_dat_data : _T_282; // @[:chipyard.TestHarness.RocketConfig.fir@88799.6]
  assign cc_banks_1_RW0_wdata = reqs_0_bankSel[1] ? io_sinkC_dat_data : _T_320; // @[:chipyard.TestHarness.RocketConfig.fir@88849.6]
  assign cc_banks_2_RW0_wdata = reqs_0_bankSel[2] ? io_sinkC_dat_data : _T_358; // @[:chipyard.TestHarness.RocketConfig.fir@88899.6]
  assign cc_banks_3_RW0_wdata = reqs_0_bankSel[3] ? io_sinkC_dat_data : _T_396; // @[:chipyard.TestHarness.RocketConfig.fir@88949.6]
  assign cc_banks_0_RW0_wmode = reqs_0_bankSel[0] | _T_274;
  assign cc_banks_0_RW0_clk = clock;
  assign cc_banks_0_RW0_en = _T_287 | _T_284;
  assign cc_banks_0_RW0_addr = reqs_0_bankSel[0] ? reqs_0_index : _T_278;
  assign cc_banks_1_RW0_wmode = reqs_0_bankSel[1] | _T_312;
  assign cc_banks_1_RW0_clk = clock;
  assign cc_banks_1_RW0_en = _T_325 | _T_322;
  assign cc_banks_1_RW0_addr = reqs_0_bankSel[1] ? reqs_0_index : _T_316;
  assign cc_banks_2_RW0_wmode = reqs_0_bankSel[2] | _T_350;
  assign cc_banks_2_RW0_clk = clock;
  assign cc_banks_2_RW0_en = _T_363 | _T_360;
  assign cc_banks_2_RW0_addr = reqs_0_bankSel[2] ? reqs_0_index : _T_354;
  assign cc_banks_3_RW0_wmode = reqs_0_bankSel[3] | _T_388;
  assign cc_banks_3_RW0_clk = clock;
  assign cc_banks_3_RW0_en = _T_401 | _T_398;
  assign cc_banks_3_RW0_addr = reqs_0_bankSel[3] ? reqs_0_index : _T_392;
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
  _T_294 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  regout_0 = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_332 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  regout_1 = _RAND_3[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_370 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  regout_2 = _RAND_5[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_408 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {2{`RANDOM}};
  regout_3 = _RAND_7[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_410 = _RAND_8[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  regsel_sourceC = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_411 = _RAND_10[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  regsel_sourceD = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_294 <= _T_286 & _T_266;
    if (_T_294) begin
      regout_0 <= cc_banks_0_RW0_rdata;
    end
    _T_332 <= _T_324 & _T_304;
    if (_T_332) begin
      regout_1 <= cc_banks_1_RW0_rdata;
    end
    _T_370 <= _T_362 & _T_342;
    if (_T_370) begin
      regout_2 <= cc_banks_2_RW0_rdata;
    end
    _T_408 <= _T_400 & _T_380;
    if (_T_408) begin
      regout_3 <= cc_banks_3_RW0_rdata;
    end
    _T_410 <= reqs_1_bankSel & _T_148;
    regsel_sourceC <= _T_410;
    _T_411 <= reqs_4_bankSel & _T_198;
    regsel_sourceD <= _T_411;
  end
endmodule
