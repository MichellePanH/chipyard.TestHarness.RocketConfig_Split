module cc_dir(
  input  [9:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [15:0] RW0_wdata_0,
  input  [15:0] RW0_wdata_1,
  input  [15:0] RW0_wdata_2,
  input  [15:0] RW0_wdata_3,
  input  [15:0] RW0_wdata_4,
  input  [15:0] RW0_wdata_5,
  input  [15:0] RW0_wdata_6,
  input  [15:0] RW0_wdata_7,
  output [15:0] RW0_rdata_0,
  output [15:0] RW0_rdata_1,
  output [15:0] RW0_rdata_2,
  output [15:0] RW0_rdata_3,
  output [15:0] RW0_rdata_4,
  output [15:0] RW0_rdata_5,
  output [15:0] RW0_rdata_6,
  output [15:0] RW0_rdata_7,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3,
  input         RW0_wmask_4,
  input         RW0_wmask_5,
  input         RW0_wmask_6,
  input         RW0_wmask_7
);
  wire [9:0] cc_dir_ext_RW0_addr;
  wire  cc_dir_ext_RW0_en;
  wire  cc_dir_ext_RW0_clk;
  wire  cc_dir_ext_RW0_wmode;
  wire [127:0] cc_dir_ext_RW0_wdata;
  wire [127:0] cc_dir_ext_RW0_rdata;
  wire [7:0] cc_dir_ext_RW0_wmask;
  wire [63:0] _GEN_4;
  wire [63:0] _GEN_5;
  wire [3:0] _GEN_10;
  wire [3:0] _GEN_11;
  cc_dir_ext cc_dir_ext (
    .RW0_addr(cc_dir_ext_RW0_addr),
    .RW0_en(cc_dir_ext_RW0_en),
    .RW0_clk(cc_dir_ext_RW0_clk),
    .RW0_wmode(cc_dir_ext_RW0_wmode),
    .RW0_wdata(cc_dir_ext_RW0_wdata),
    .RW0_rdata(cc_dir_ext_RW0_rdata),
    .RW0_wmask(cc_dir_ext_RW0_wmask)
  );
  assign cc_dir_ext_RW0_clk = RW0_clk;
  assign cc_dir_ext_RW0_en = RW0_en;
  assign cc_dir_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = cc_dir_ext_RW0_rdata[15:0];
  assign RW0_rdata_1 = cc_dir_ext_RW0_rdata[31:16];
  assign RW0_rdata_2 = cc_dir_ext_RW0_rdata[47:32];
  assign RW0_rdata_3 = cc_dir_ext_RW0_rdata[63:48];
  assign RW0_rdata_4 = cc_dir_ext_RW0_rdata[79:64];
  assign RW0_rdata_5 = cc_dir_ext_RW0_rdata[95:80];
  assign RW0_rdata_6 = cc_dir_ext_RW0_rdata[111:96];
  assign RW0_rdata_7 = cc_dir_ext_RW0_rdata[127:112];
  assign cc_dir_ext_RW0_wmode = RW0_wmode;
  assign _GEN_4 = {RW0_wdata_7,RW0_wdata_6,RW0_wdata_5,RW0_wdata_4};
  assign _GEN_5 = {RW0_wdata_3,RW0_wdata_2,RW0_wdata_1,RW0_wdata_0};
  assign cc_dir_ext_RW0_wdata = {_GEN_4,_GEN_5};
  assign _GEN_10 = {RW0_wmask_7,RW0_wmask_6,RW0_wmask_5,RW0_wmask_4};
  assign _GEN_11 = {RW0_wmask_3,RW0_wmask_2,RW0_wmask_1,RW0_wmask_0};
  assign cc_dir_ext_RW0_wmask = {_GEN_10,_GEN_11};
endmodule
