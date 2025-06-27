module cc_banks_0(
  input  [13:0] RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata
);
  wire [13:0] cc_banks_0_ext_RW0_addr;
  wire  cc_banks_0_ext_RW0_en;
  wire  cc_banks_0_ext_RW0_clk;
  wire  cc_banks_0_ext_RW0_wmode;
  wire [63:0] cc_banks_0_ext_RW0_wdata;
  wire [63:0] cc_banks_0_ext_RW0_rdata;
  cc_banks_0_ext cc_banks_0_ext (
    .RW0_addr(cc_banks_0_ext_RW0_addr),
    .RW0_en(cc_banks_0_ext_RW0_en),
    .RW0_clk(cc_banks_0_ext_RW0_clk),
    .RW0_wmode(cc_banks_0_ext_RW0_wmode),
    .RW0_wdata(cc_banks_0_ext_RW0_wdata),
    .RW0_rdata(cc_banks_0_ext_RW0_rdata)
  );
  assign cc_banks_0_ext_RW0_clk = RW0_clk;
  assign cc_banks_0_ext_RW0_en = RW0_en;
  assign cc_banks_0_ext_RW0_addr = RW0_addr;
  assign RW0_rdata = cc_banks_0_ext_RW0_rdata;
  assign cc_banks_0_ext_RW0_wmode = RW0_wmode;
  assign cc_banks_0_ext_RW0_wdata = RW0_wdata;
endmodule
