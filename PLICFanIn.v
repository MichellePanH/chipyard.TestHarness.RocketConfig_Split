module PLICFanIn( // @[:chipyard.TestHarness.RocketConfig.fir@120905.2]
  input   io_prio_0, // @[:chipyard.TestHarness.RocketConfig.fir@120908.4]
  input   io_ip, // @[:chipyard.TestHarness.RocketConfig.fir@120908.4]
  output  io_dev, // @[:chipyard.TestHarness.RocketConfig.fir@120908.4]
  output  io_max // @[:chipyard.TestHarness.RocketConfig.fir@120908.4]
);
  wire [1:0] effectivePriority_1; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@120915.4]
  wire  _T_1; // @[Plic.scala 338:20:chipyard.TestHarness.RocketConfig.fir@120916.4]
  wire [1:0] maxPri; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@120918.4]
  assign effectivePriority_1 = {io_ip,io_prio_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@120915.4]
  assign _T_1 = 2'h2 >= effectivePriority_1; // @[Plic.scala 338:20:chipyard.TestHarness.RocketConfig.fir@120916.4]
  assign maxPri = _T_1 ? 2'h2 : effectivePriority_1; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@120918.4]
  assign io_dev = _T_1 ? 1'h0 : 1'h1; // @[Plic.scala 345:10:chipyard.TestHarness.RocketConfig.fir@120921.4]
  assign io_max = maxPri[0]; // @[Plic.scala 344:10:chipyard.TestHarness.RocketConfig.fir@120920.4]
endmodule
