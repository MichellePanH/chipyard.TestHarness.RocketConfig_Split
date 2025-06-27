module l2_tlb_ram(
  input  [9:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [43:0] RW0_wdata,
  output [43:0] RW0_rdata
);
  wire [9:0] l2_tlb_ram_ext_RW0_addr;
  wire  l2_tlb_ram_ext_RW0_en;
  wire  l2_tlb_ram_ext_RW0_clk;
  wire  l2_tlb_ram_ext_RW0_wmode;
  wire [43:0] l2_tlb_ram_ext_RW0_wdata;
  wire [43:0] l2_tlb_ram_ext_RW0_rdata;
  l2_tlb_ram_ext l2_tlb_ram_ext (
    .RW0_addr(l2_tlb_ram_ext_RW0_addr),
    .RW0_en(l2_tlb_ram_ext_RW0_en),
    .RW0_clk(l2_tlb_ram_ext_RW0_clk),
    .RW0_wmode(l2_tlb_ram_ext_RW0_wmode),
    .RW0_wdata(l2_tlb_ram_ext_RW0_wdata),
    .RW0_rdata(l2_tlb_ram_ext_RW0_rdata)
  );
  assign l2_tlb_ram_ext_RW0_clk = RW0_clk;
  assign l2_tlb_ram_ext_RW0_en = RW0_en;
  assign l2_tlb_ram_ext_RW0_addr = RW0_addr;
  assign RW0_rdata = l2_tlb_ram_ext_RW0_rdata;
  assign l2_tlb_ram_ext_RW0_wmode = RW0_wmode;
  assign l2_tlb_ram_ext_RW0_wdata = RW0_wdata;
endmodule
