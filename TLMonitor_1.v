module TLMonitor_1( // @[:chipyard.TestHarness.RocketConfig.fir@1844.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@1845.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@1846.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [1:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [1:0]  io_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [31:0] io_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [3:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [1:0]  io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [1:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@1847.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4833.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@1858.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@1859.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@1860.6]
  wire  _T_8; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@1866.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@1867.6]
  wire [26:0] _T_11; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@1869.6]
  wire [11:0] _T_13; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@1871.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@1872.6]
  wire [31:0] _T_14; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@1872.6]
  wire  _T_15; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@1873.6]
  wire [3:0] _T_18; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@1876.6]
  wire [2:0] _T_20; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@1878.6]
  wire  _T_21; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@1879.6]
  wire  _T_24; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@1882.6]
  wire  _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1884.6]
  wire  _T_27; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1885.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1887.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1888.6]
  wire  _T_33; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@1891.6]
  wire  _T_34; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1892.6]
  wire  _T_35; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1893.6]
  wire  _T_36; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1894.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1895.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1896.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1897.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1898.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1899.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1900.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1901.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1902.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1903.6]
  wire  _T_48; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@1906.6]
  wire  _T_49; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1907.6]
  wire  _T_50; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1908.6]
  wire  _T_51; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1909.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1910.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1911.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1912.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1913.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1914.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1915.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1916.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1917.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1918.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1919.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1920.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1921.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1922.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1923.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1924.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1925.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1926.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1927.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1928.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1929.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1930.6]
  wire [7:0] _T_79; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@1937.6]
  wire [32:0] _T_83; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1941.6]
  wire  _T_109; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@1971.6]
  wire [31:0] _T_111; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1974.8]
  wire [32:0] _T_112; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1975.8]
  wire [32:0] _T_114; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1977.8]
  wire  _T_115; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1978.8]
  wire [31:0] _T_116; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1979.8]
  wire [32:0] _T_117; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1980.8]
  wire [32:0] _T_119; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1982.8]
  wire  _T_120; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1983.8]
  wire [31:0] _T_121; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1984.8]
  wire [32:0] _T_122; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1985.8]
  wire [32:0] _T_124; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1987.8]
  wire  _T_125; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1988.8]
  wire [31:0] _T_126; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1989.8]
  wire [32:0] _T_127; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1990.8]
  wire [32:0] _T_129; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1992.8]
  wire  _T_130; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1993.8]
  wire [31:0] _T_131; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1994.8]
  wire [32:0] _T_132; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1995.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1997.8]
  wire  _T_135; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1998.8]
  wire [32:0] _T_139; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@2002.8]
  wire  _T_140; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@2003.8]
  wire [31:0] _T_141; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@2004.8]
  wire [32:0] _T_142; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@2005.8]
  wire [32:0] _T_144; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@2007.8]
  wire  _T_145; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@2008.8]
  wire  _T_146; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2009.8]
  wire  _T_147; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2010.8]
  wire  _T_148; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2011.8]
  wire  _T_149; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2012.8]
  wire  _T_150; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2013.8]
  wire  _T_153; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@2016.8]
  wire [31:0] _T_155; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@2018.8]
  wire [32:0] _T_156; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@2019.8]
  wire [32:0] _T_158; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@2021.8]
  wire  _T_159; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@2022.8]
  wire  _T_160; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2023.8]
  wire  _T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2027.8]
  wire  _T_165; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2028.8]
  wire  _T_171; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@2042.8]
  wire  _T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2050.8]
  wire  _T_179; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2051.8]
  wire  _T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2057.8]
  wire  _T_182; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2058.8]
  wire  _T_185; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2065.8]
  wire  _T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2066.8]
  wire  _T_188; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2072.8]
  wire  _T_189; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2073.8]
  wire  _T_190; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@2078.8]
  wire  _T_192; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2080.8]
  wire  _T_193; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2081.8]
  wire [7:0] _T_194; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@2086.8]
  wire  _T_195; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@2087.8]
  wire  _T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2089.8]
  wire  _T_198; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2090.8]
  wire  _T_199; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@2095.8]
  wire  _T_201; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2097.8]
  wire  _T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2098.8]
  wire  _T_203; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@2104.6]
  wire  _T_288; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@2219.8]
  wire  _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2221.8]
  wire  _T_291; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2222.8]
  wire  _T_301; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@2245.6]
  wire  _T_303; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@2248.8]
  wire  _T_311; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2256.8]
  wire  _T_313; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@2258.8]
  wire  _T_351; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2296.8]
  wire  _T_352; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2297.8]
  wire  _T_353; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2298.8]
  wire  _T_354; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2299.8]
  wire  _T_355; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2300.8]
  wire  _T_356; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2301.8]
  wire  _T_357; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2302.8]
  wire  _T_359; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@2304.8]
  wire  _T_361; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2306.8]
  wire  _T_362; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2307.8]
  wire  _T_369; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@2326.8]
  wire  _T_371; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2328.8]
  wire  _T_372; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2329.8]
  wire  _T_373; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@2334.8]
  wire  _T_375; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2336.8]
  wire  _T_376; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2337.8]
  wire  _T_381; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@2351.6]
  wire  _T_430; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2401.8]
  wire  _T_431; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2402.8]
  wire  _T_440; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@2411.8]
  wire  _T_443; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2414.8]
  wire  _T_444; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2415.8]
  wire  _T_459; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@2451.6]
  wire [7:0] _T_533; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@2542.8]
  wire [7:0] _T_534; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@2543.8]
  wire  _T_535; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@2544.8]
  wire  _T_537; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2546.8]
  wire  _T_538; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2547.8]
  wire  _T_539; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@2553.6]
  wire  _T_541; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@2556.8]
  wire  _T_584; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2599.8]
  wire  _T_585; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2600.8]
  wire  _T_596; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2611.8]
  wire  _T_597; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2612.8]
  wire  _T_604; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@2631.8]
  wire  _T_606; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2633.8]
  wire  _T_607; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2634.8]
  wire  _T_612; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@2648.6]
  wire  _T_677; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@2726.8]
  wire  _T_679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2728.8]
  wire  _T_680; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2729.8]
  wire  _T_685; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@2743.6]
  wire  _T_742; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2801.8]
  wire  _T_745; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@2804.8]
  wire  _T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2806.8]
  wire  _T_748; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2807.8]
  wire  _T_755; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@2826.8]
  wire  _T_757; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2828.8]
  wire  _T_758; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2829.8]
  wire  _T_767; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@2853.6]
  wire  _T_769; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2855.6]
  wire  _T_770; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2856.6]
  wire  _T_771; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@2861.6]
  wire  _T_772; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@2862.6]
  wire  _T_773; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@2863.6]
  wire  _T_775; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@2869.6]
  wire  _T_776; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@2870.6]
  wire  _T_778; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@2872.6]
  wire  _T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2875.8]
  wire  _T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2876.8]
  wire  _T_782; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@2881.8]
  wire  _T_784; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2883.8]
  wire  _T_785; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2884.8]
  wire  _T_786; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@2889.8]
  wire  _T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2891.8]
  wire  _T_789; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2892.8]
  wire  _T_790; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@2897.8]
  wire  _T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2899.8]
  wire  _T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2900.8]
  wire  _T_794; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@2905.8]
  wire  _T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2907.8]
  wire  _T_797; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2908.8]
  wire  _T_798; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@2914.6]
  wire  _T_809; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@2938.8]
  wire  _T_811; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2940.8]
  wire  _T_812; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2941.8]
  wire  _T_813; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@2946.8]
  wire  _T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2948.8]
  wire  _T_816; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2949.8]
  wire  _T_826; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@2972.6]
  wire  _T_846; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@3013.8]
  wire  _T_848; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3015.8]
  wire  _T_849; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3016.8]
  wire  _T_855; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@3031.6]
  wire  _T_872; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@3066.6]
  wire  _T_890; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@3102.6]
  wire [32:0] _T_914; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3150.6]
  wire [31:0] _T_940; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3180.6]
  wire [32:0] _T_941; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3181.6]
  wire [32:0] _T_943; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3183.6]
  wire  _T_944; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3184.6]
  wire [31:0] _T_945; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3185.6]
  wire [32:0] _T_946; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3186.6]
  wire [32:0] _T_948; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3188.6]
  wire  _T_949; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3189.6]
  wire [31:0] _T_950; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3190.6]
  wire [32:0] _T_951; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3191.6]
  wire [32:0] _T_953; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3193.6]
  wire  _T_954; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3194.6]
  wire [31:0] _T_955; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3195.6]
  wire [32:0] _T_956; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3196.6]
  wire [32:0] _T_958; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3198.6]
  wire  _T_959; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3199.6]
  wire [31:0] _T_960; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3200.6]
  wire [32:0] _T_961; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3201.6]
  wire [32:0] _T_963; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3203.6]
  wire  _T_964; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3204.6]
  wire [32:0] _T_968; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3208.6]
  wire  _T_969; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3209.6]
  wire [31:0] _T_970; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3210.6]
  wire [32:0] _T_971; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3211.6]
  wire [32:0] _T_973; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3213.6]
  wire  _T_974; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3214.6]
  wire [31:0] _T_975; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3215.6]
  wire [32:0] _T_976; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3216.6]
  wire [32:0] _T_978; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3218.6]
  wire  _T_979; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3219.6]
  wire  _T_981; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3230.6]
  wire  _T_982; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3231.6]
  wire  _T_983; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3232.6]
  wire  _T_984; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3233.6]
  wire  _T_985; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3234.6]
  wire  _T_986; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3235.6]
  wire  _T_987; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3236.6]
  wire [31:0] _T_992; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@3241.6]
  wire  _T_993; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@3242.6]
  wire  _T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3349.8]
  wire  _T_1086; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3350.8]
  wire  _T_1091; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3363.8]
  wire  _T_1092; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3364.8]
  wire  _T_1093; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@3369.8]
  wire  _T_1095; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3371.8]
  wire  _T_1096; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3372.8]
  wire  _T_1241; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@3696.6]
  wire  _T_1242; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@3697.6]
  wire  _T_1243; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@3698.6]
  wire  _T_1245; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@3704.6]
  wire  _T_1246; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@3705.6]
  wire [26:0] _T_1248; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@3707.6]
  wire [11:0] _T_1250; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@3709.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@3710.6]
  wire [31:0] _T_1251; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@3710.6]
  wire  _T_1252; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@3711.6]
  wire [31:0] _T_1253; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3712.6]
  wire [32:0] _T_1254; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3713.6]
  wire [32:0] _T_1256; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3715.6]
  wire  _T_1257; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3716.6]
  wire [31:0] _T_1258; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3717.6]
  wire [32:0] _T_1259; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3718.6]
  wire [32:0] _T_1261; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3720.6]
  wire  _T_1262; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3721.6]
  wire [31:0] _T_1263; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3722.6]
  wire [32:0] _T_1264; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3723.6]
  wire [32:0] _T_1266; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3725.6]
  wire  _T_1267; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3726.6]
  wire [31:0] _T_1268; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3727.6]
  wire [32:0] _T_1269; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3728.6]
  wire [32:0] _T_1271; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3730.6]
  wire  _T_1272; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3731.6]
  wire [31:0] _T_1273; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3732.6]
  wire [32:0] _T_1274; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3733.6]
  wire [32:0] _T_1276; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3735.6]
  wire  _T_1277; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3736.6]
  wire [32:0] _T_1279; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3738.6]
  wire [32:0] _T_1281; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3740.6]
  wire  _T_1282; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3741.6]
  wire [31:0] _T_1283; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3742.6]
  wire [32:0] _T_1284; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3743.6]
  wire [32:0] _T_1286; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3745.6]
  wire  _T_1287; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3746.6]
  wire [31:0] _T_1288; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3747.6]
  wire [32:0] _T_1289; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3748.6]
  wire [32:0] _T_1291; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3750.6]
  wire  _T_1292; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3751.6]
  wire  _T_1294; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3762.6]
  wire  _T_1295; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3763.6]
  wire  _T_1296; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3764.6]
  wire  _T_1297; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3765.6]
  wire  _T_1298; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3766.6]
  wire  _T_1299; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3767.6]
  wire  _T_1300; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3768.6]
  wire  _T_1330; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@3802.6]
  wire  _T_1332; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3805.8]
  wire  _T_1333; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3806.8]
  wire  _T_1335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3812.8]
  wire  _T_1336; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3813.8]
  wire  _T_1337; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@3818.8]
  wire  _T_1339; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3820.8]
  wire  _T_1340; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3821.8]
  wire  _T_1342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3827.8]
  wire  _T_1343; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3828.8]
  wire  _T_1344; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@3833.8]
  wire  _T_1346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3835.8]
  wire  _T_1347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3836.8]
  wire  _T_1348; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@3841.8]
  wire  _T_1350; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3843.8]
  wire  _T_1351; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3844.8]
  wire  _T_1352; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@3850.6]
  wire  _T_1370; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@3890.6]
  wire  _T_1414; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@3935.8]
  wire  _T_1421; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@3942.8]
  wire  _T_1425; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3946.8]
  wire  _T_1426; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3947.8]
  wire  _T_1432; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@3961.8]
  wire  _T_1439; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3969.8]
  wire  _T_1440; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3970.8]
  wire  _T_1451; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@3997.8]
  wire  _T_1453; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3999.8]
  wire  _T_1454; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4000.8]
  wire  _T_1459; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@4014.6]
  wire  _T_1544; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@4130.6]
  wire  _T_1554; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@4153.8]
  wire  _T_1556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4155.8]
  wire  _T_1557; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4156.8]
  wire  _T_1562; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@4170.6]
  wire  _T_1576; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@4202.6]
  wire  _T_1598; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@4253.4]
  wire  _T_1605; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@4260.4]
  reg [8:0] _T_1607; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@4262.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_1609; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4264.4]
  wire  _T_1610; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4265.4]
  reg [2:0] _T_1618; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@4276.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1619; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@4277.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_1620; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@4278.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_1621; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@4279.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1622; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@4280.4]
  reg [31:0] _RAND_5;
  wire  _T_1623; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@4281.4]
  wire  _T_1624; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@4282.4]
  wire  _T_1625; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@4284.6]
  wire  _T_1627; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4286.6]
  wire  _T_1628; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4287.6]
  wire  _T_1629; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@4292.6]
  wire  _T_1631; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4294.6]
  wire  _T_1632; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4295.6]
  wire  _T_1633; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@4300.6]
  wire  _T_1635; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4302.6]
  wire  _T_1636; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4303.6]
  wire  _T_1637; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@4308.6]
  wire  _T_1639; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4310.6]
  wire  _T_1640; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4311.6]
  wire  _T_1641; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@4316.6]
  wire  _T_1643; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4318.6]
  wire  _T_1644; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4319.6]
  wire  _T_1646; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@4326.4]
  wire  _T_1647; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@4334.4]
  wire [26:0] _T_1649; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@4336.4]
  wire [11:0] _T_1651; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@4338.4]
  reg [8:0] _T_1655; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@4342.4]
  reg [31:0] _RAND_6;
  wire [8:0] _T_1657; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4344.4]
  wire  _T_1658; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4345.4]
  reg [2:0] _T_1666; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@4356.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1667; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@4357.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_1668; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@4358.4]
  reg [31:0] _RAND_9;
  reg [1:0] _T_1669; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@4359.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1670; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@4360.4]
  reg [31:0] _RAND_11;
  reg  _T_1671; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@4361.4]
  reg [31:0] _RAND_12;
  wire  _T_1672; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@4362.4]
  wire  _T_1673; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@4363.4]
  wire  _T_1674; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@4365.6]
  wire  _T_1676; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4367.6]
  wire  _T_1677; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4368.6]
  wire  _T_1678; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@4373.6]
  wire  _T_1680; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4375.6]
  wire  _T_1681; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4376.6]
  wire  _T_1682; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@4381.6]
  wire  _T_1684; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4383.6]
  wire  _T_1685; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4384.6]
  wire  _T_1686; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@4389.6]
  wire  _T_1688; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4391.6]
  wire  _T_1689; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4392.6]
  wire  _T_1690; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@4397.6]
  wire  _T_1692; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4399.6]
  wire  _T_1693; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4400.6]
  wire  _T_1694; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@4405.6]
  wire  _T_1696; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4407.6]
  wire  _T_1697; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4408.6]
  wire  _T_1699; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@4415.4]
  wire  _T_1700; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@4424.4]
  reg [8:0] _T_1709; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@4433.4]
  reg [31:0] _RAND_13;
  wire [8:0] _T_1711; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4435.4]
  wire  _T_1712; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4436.4]
  reg [1:0] _T_1721; // @[Monitor.scala 405:22:chipyard.TestHarness.RocketConfig.fir@4448.4]
  reg [31:0] _RAND_14;
  reg [31:0] _T_1724; // @[Monitor.scala 408:22:chipyard.TestHarness.RocketConfig.fir@4451.4]
  reg [31:0] _RAND_15;
  wire  _T_1725; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@4452.4]
  wire  _T_1726; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@4453.4]
  wire  _T_1731; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@4463.6]
  wire  _T_1733; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4465.6]
  wire  _T_1734; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4466.6]
  wire  _T_1743; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@4487.6]
  wire  _T_1745; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4489.6]
  wire  _T_1746; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4490.6]
  wire  _T_1748; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@4497.4]
  wire  _T_1749; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@4505.4]
  reg [8:0] _T_1757; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@4513.4]
  reg [31:0] _RAND_16;
  wire [8:0] _T_1759; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4515.4]
  wire  _T_1760; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4516.4]
  reg [2:0] _T_1768; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@4527.4]
  reg [31:0] _RAND_17;
  reg [2:0] _T_1769; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@4528.4]
  reg [31:0] _RAND_18;
  reg [3:0] _T_1770; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@4529.4]
  reg [31:0] _RAND_19;
  reg [1:0] _T_1771; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@4530.4]
  reg [31:0] _RAND_20;
  reg [31:0] _T_1772; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@4531.4]
  reg [31:0] _RAND_21;
  wire  _T_1773; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@4532.4]
  wire  _T_1774; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@4533.4]
  wire  _T_1775; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@4535.6]
  wire  _T_1777; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4537.6]
  wire  _T_1778; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4538.6]
  wire  _T_1779; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@4543.6]
  wire  _T_1781; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4545.6]
  wire  _T_1782; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4546.6]
  wire  _T_1783; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@4551.6]
  wire  _T_1785; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4553.6]
  wire  _T_1786; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4554.6]
  wire  _T_1787; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@4559.6]
  wire  _T_1789; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4561.6]
  wire  _T_1790; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4562.6]
  wire  _T_1791; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@4567.6]
  wire  _T_1793; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4569.6]
  wire  _T_1794; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4570.6]
  wire  _T_1796; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@4577.4]
  reg [2:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@4585.4]
  reg [31:0] _RAND_22;
  reg [11:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@4586.4]
  reg [31:0] _RAND_23;
  reg [23:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@4587.4]
  reg [31:0] _RAND_24;
  reg [8:0] _T_1806; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@4597.4]
  reg [31:0] _RAND_25;
  wire [8:0] _T_1808; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4599.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4600.4]
  reg [8:0] _T_1824; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@4619.4]
  reg [31:0] _RAND_26;
  wire [8:0] _T_1826; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4621.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4622.4]
  wire [3:0] _GEN_73; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@4641.4]
  wire [4:0] _T_1834; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@4641.4]
  wire [11:0] _T_1835; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@4642.4]
  wire [15:0] _T_1839; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@4646.4]
  wire [15:0] _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@4647.4]
  wire [15:0] _T_1840; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@4647.4]
  wire [15:0] _T_1841; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@4648.4]
  wire [4:0] _T_1842; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@4652.4]
  wire [23:0] _T_1843; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@4653.4]
  wire [15:0] _T_1847; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@4657.4]
  wire [23:0] _GEN_76; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@4658.4]
  wire [23:0] _T_1848; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@4658.4]
  wire [23:0] _T_1849; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@4659.4]
  wire  _T_1853; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@4684.4]
  wire [3:0] _T_1855; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@4687.6]
  wire [3:0] _T_1856; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@4689.6]
  wire [3:0] _T_1857; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@4690.6]
  wire [4:0] _T_1858; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@4692.6]
  wire [4:0] _T_1859; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@4693.6]
  wire [3:0] _GEN_78; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@4695.6]
  wire [4:0] _T_1860; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@4695.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  wire [34:0] _GEN_79; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@4696.6]
  wire [34:0] _T_1861; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@4696.6]
  wire [4:0] _T_1862; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@4698.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  wire [35:0] _GEN_80; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@4699.6]
  wire [35:0] _T_1863; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@4699.6]
  wire [2:0] _T_1864; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@4701.6]
  wire  _T_1866; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@4703.6]
  wire  _T_1868; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4705.6]
  wire  _T_1869; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4706.6]
  wire [3:0] _GEN_27; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  wire [34:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  wire [35:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  wire  _T_1872; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@4720.4]
  wire  _T_1874; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@4722.4]
  wire  _T_1875; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@4723.4]
  wire [3:0] _T_1876; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@4725.6]
  wire [46:0] _GEN_82; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@4732.6]
  wire [46:0] _T_1882; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@4732.6]
  wire [46:0] _GEN_83; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@4739.6]
  wire [46:0] _T_1888; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@4739.6]
  wire [3:0] _GEN_32; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@4724.4]
  wire [46:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@4724.4]
  wire [46:0] _GEN_34; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@4724.4]
  wire  _T_1889; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@4742.4]
  wire  _T_1892; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@4745.4]
  wire [2:0] _T_1893; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@4747.6]
  wire  _T_1895; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@4749.6]
  wire  _T_1896; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@4750.6]
  wire  _T_1897; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@4751.6]
  wire  _T_1898; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@4752.6]
  wire  _T_1899; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@4753.6]
  wire  _T_1900; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@4754.6]
  wire  _T_1902; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4756.6]
  wire  _T_1903; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4757.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@4639.4 :chipyard.TestHarness.RocketConfig.fir@4640.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@4649.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  wire  _T_1905; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@4765.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@4765.6]
  wire  _T_1907; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@4765.6]
  wire  _T_1908; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@4766.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  wire  _T_1909; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@4768.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@4768.6]
  wire  _T_1910; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@4768.6]
  wire  _T_1911; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@4769.6]
  wire  _T_1912; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@4770.6]
  wire  _T_1913; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@4771.6]
  wire  _T_1915; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4773.6]
  wire  _T_1916; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4774.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@4650.4 :chipyard.TestHarness.RocketConfig.fir@4651.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@4660.4]
  wire [7:0] _GEN_84; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@4779.6]
  wire  _T_1917; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@4779.6]
  wire  _T_1919; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@4781.6]
  wire  _T_1920; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@4782.6]
  wire  _T_1922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4784.6]
  wire  _T_1923; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4785.6]
  wire  _T_1925; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@4792.4]
  wire  _T_1926; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@4793.4]
  wire  _T_1928; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@4795.4]
  wire  _T_1930; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@4797.4]
  wire  _T_1931; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@4799.6]
  wire  _T_1932; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@4800.6]
  wire  _T_1934; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4802.6]
  wire  _T_1935; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4803.6]
  wire [2:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@4633.4 :chipyard.TestHarness.RocketConfig.fir@4634.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@4688.6]
  wire [2:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@4712.4 :chipyard.TestHarness.RocketConfig.fir@4713.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@4726.6]
  wire  _T_1936; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@4809.4]
  wire  _T_1937; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@4810.4]
  wire  _T_1938; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@4811.4]
  wire  _T_1939; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@4812.4]
  wire  _T_1941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4814.4]
  wire  _T_1942; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4815.4]
  wire [2:0] _T_1943; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@4820.4]
  wire [2:0] _T_1944; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@4821.4]
  wire [2:0] _T_1945; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@4822.4]
  wire [11:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@4635.4 :chipyard.TestHarness.RocketConfig.fir@4636.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@4697.6]
  wire [11:0] _T_1946; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@4824.4]
  wire [11:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@4714.4 :chipyard.TestHarness.RocketConfig.fir@4715.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@4733.6]
  wire [11:0] _T_1947; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@4825.4]
  wire [11:0] _T_1948; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@4826.4]
  wire [23:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@4637.4 :chipyard.TestHarness.RocketConfig.fir@4638.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@4700.6]
  wire [23:0] _T_1949; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@4828.4]
  wire [23:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@4716.4 :chipyard.TestHarness.RocketConfig.fir@4717.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@4740.6]
  wire [23:0] _T_1950; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@4829.4]
  wire [23:0] _T_1951; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@4830.4]
  reg [31:0] _T_1952; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@4832.4]
  reg [31:0] _RAND_27;
  wire  _T_1953; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@4835.4]
  wire  _T_1954; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@4836.4]
  wire  _T_1955; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@4837.4]
  wire  _T_1956; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@4838.4]
  wire  _T_1957; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@4839.4]
  wire  _T_1958; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@4840.4]
  wire  _T_1960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4842.4]
  wire  _T_1961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4843.4]
  wire [31:0] _T_1963; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@4849.4]
  wire  _T_1966; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@4853.4]
  reg [7:0] _T_1967; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@4857.4]
  reg [31:0] _RAND_28;
  reg [8:0] _T_1976; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@4866.4]
  reg [31:0] _RAND_29;
  wire [8:0] _T_1978; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4868.4]
  wire  _T_1979; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4869.4]
  wire  _T_1989; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@4883.4]
  wire  _T_1992; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@4886.4]
  wire  _T_1993; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@4887.4]
  wire  _T_1994; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@4888.4]
  wire [7:0] _T_1995; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@4890.6]
  wire [7:0] _T_1996; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@4892.6]
  wire  _T_1998; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@4894.6]
  wire  _T_2000; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4896.6]
  wire  _T_2001; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4897.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@4889.4]
  wire [7:0] _T_2006; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@4909.6]
  wire [7:0] _T_2007; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@4911.6]
  wire [7:0] _T_2008; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@4912.6]
  wire  _T_2011; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4915.6]
  wire  _T_2012; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4916.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@4908.4]
  wire [7:0] _T_2013; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@4922.4]
  wire [7:0] _T_2014; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@4923.4]
  wire [7:0] _T_2015; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@4924.4]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2030.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2163.10]
  wire  _GEN_119; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2309.10]
  wire  _GEN_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2417.10]
  wire  _GEN_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2517.10]
  wire  _GEN_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2614.10]
  wire  _GEN_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2709.10]
  wire  _GEN_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2809.10]
  wire  _GEN_183; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2878.10]
  wire  _GEN_193; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2920.10]
  wire  _GEN_203; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2978.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3037.10]
  wire  _GEN_219; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3072.10]
  wire  _GEN_225; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3108.10]
  wire  _GEN_231; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3808.10]
  wire  _GEN_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3856.10]
  wire  _GEN_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3949.10]
  wire  _GEN_267; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4073.10]
  wire  _GEN_279; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4136.10]
  wire  _GEN_289; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4176.10]
  wire  _GEN_297; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4208.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4833.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 2'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@1858.6]
  assign _T_5 = io_in_a_bits_source == 2'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@1859.6]
  assign _T_6 = io_in_a_bits_source == 2'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@1860.6]
  assign _T_8 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@1866.6]
  assign _T_9 = _T_8 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@1867.6]
  assign _T_11 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@1869.6]
  assign _T_13 = ~_T_11[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@1871.6]
  assign _GEN_71 = {{20'd0}, _T_13}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@1872.6]
  assign _T_14 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@1872.6]
  assign _T_15 = _T_14 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@1873.6]
  assign _T_18 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@1876.6]
  assign _T_20 = _T_18[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@1878.6]
  assign _T_21 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@1879.6]
  assign _T_24 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@1882.6]
  assign _T_26 = _T_20[2] & _T_24; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1884.6]
  assign _T_27 = _T_21 | _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1885.6]
  assign _T_29 = _T_20[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1887.6]
  assign _T_30 = _T_21 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1888.6]
  assign _T_33 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@1891.6]
  assign _T_34 = _T_24 & _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1892.6]
  assign _T_35 = _T_20[1] & _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1893.6]
  assign _T_36 = _T_27 | _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1894.6]
  assign _T_37 = _T_24 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1895.6]
  assign _T_38 = _T_20[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1896.6]
  assign _T_39 = _T_27 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1897.6]
  assign _T_40 = io_in_a_bits_address[2] & _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1898.6]
  assign _T_41 = _T_20[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1899.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1900.6]
  assign _T_43 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1901.6]
  assign _T_44 = _T_20[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1902.6]
  assign _T_45 = _T_30 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1903.6]
  assign _T_48 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@1906.6]
  assign _T_49 = _T_34 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1907.6]
  assign _T_50 = _T_20[0] & _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1908.6]
  assign _T_51 = _T_36 | _T_50; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1909.6]
  assign _T_52 = _T_34 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1910.6]
  assign _T_53 = _T_20[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1911.6]
  assign _T_54 = _T_36 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1912.6]
  assign _T_55 = _T_37 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1913.6]
  assign _T_56 = _T_20[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1914.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1915.6]
  assign _T_58 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1916.6]
  assign _T_59 = _T_20[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1917.6]
  assign _T_60 = _T_39 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1918.6]
  assign _T_61 = _T_40 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1919.6]
  assign _T_62 = _T_20[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1920.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1921.6]
  assign _T_64 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1922.6]
  assign _T_65 = _T_20[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1923.6]
  assign _T_66 = _T_42 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1924.6]
  assign _T_67 = _T_43 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1925.6]
  assign _T_68 = _T_20[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1926.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1927.6]
  assign _T_70 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@1928.6]
  assign _T_71 = _T_20[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@1929.6]
  assign _T_72 = _T_45 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@1930.6]
  assign _T_79 = {_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54,_T_51}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@1937.6]
  assign _T_83 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1941.6]
  assign _T_109 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@1971.6]
  assign _T_111 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1974.8]
  assign _T_112 = {1'b0,$signed(_T_111)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1975.8]
  assign _T_114 = $signed(_T_112) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1977.8]
  assign _T_115 = $signed(_T_114) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1978.8]
  assign _T_116 = io_in_a_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1979.8]
  assign _T_117 = {1'b0,$signed(_T_116)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1980.8]
  assign _T_119 = $signed(_T_117) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1982.8]
  assign _T_120 = $signed(_T_119) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1983.8]
  assign _T_121 = io_in_a_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1984.8]
  assign _T_122 = {1'b0,$signed(_T_121)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1985.8]
  assign _T_124 = $signed(_T_122) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1987.8]
  assign _T_125 = $signed(_T_124) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1988.8]
  assign _T_126 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1989.8]
  assign _T_127 = {1'b0,$signed(_T_126)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1990.8]
  assign _T_129 = $signed(_T_127) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1992.8]
  assign _T_130 = $signed(_T_129) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1993.8]
  assign _T_131 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@1994.8]
  assign _T_132 = {1'b0,$signed(_T_131)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@1995.8]
  assign _T_134 = $signed(_T_132) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@1997.8]
  assign _T_135 = $signed(_T_134) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@1998.8]
  assign _T_139 = $signed(_T_83) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@2002.8]
  assign _T_140 = $signed(_T_139) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@2003.8]
  assign _T_141 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@2004.8]
  assign _T_142 = {1'b0,$signed(_T_141)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@2005.8]
  assign _T_144 = $signed(_T_142) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@2007.8]
  assign _T_145 = $signed(_T_144) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@2008.8]
  assign _T_146 = _T_115 | _T_120; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2009.8]
  assign _T_147 = _T_146 | _T_125; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2010.8]
  assign _T_148 = _T_147 | _T_130; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2011.8]
  assign _T_149 = _T_148 | _T_135; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2012.8]
  assign _T_150 = _T_149 | _T_140; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2013.8]
  assign _T_153 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@2016.8]
  assign _T_155 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@2018.8]
  assign _T_156 = {1'b0,$signed(_T_155)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@2019.8]
  assign _T_158 = $signed(_T_156) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@2021.8]
  assign _T_159 = $signed(_T_158) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@2022.8]
  assign _T_160 = _T_153 & _T_159; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2023.8]
  assign _T_164 = _T_160 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2027.8]
  assign _T_165 = ~_T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2028.8]
  assign _T_171 = _T_4 & _T_153; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@2042.8]
  assign _T_178 = _T_171 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2050.8]
  assign _T_179 = ~_T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2051.8]
  assign _T_181 = _T_9 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2057.8]
  assign _T_182 = ~_T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2058.8]
  assign _T_185 = _T_21 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2065.8]
  assign _T_186 = ~_T_185; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2066.8]
  assign _T_188 = _T_15 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2072.8]
  assign _T_189 = ~_T_188; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2073.8]
  assign _T_190 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@2078.8]
  assign _T_192 = _T_190 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2080.8]
  assign _T_193 = ~_T_192; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2081.8]
  assign _T_194 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@2086.8]
  assign _T_195 = _T_194 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@2087.8]
  assign _T_197 = _T_195 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2089.8]
  assign _T_198 = ~_T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2090.8]
  assign _T_199 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@2095.8]
  assign _T_201 = _T_199 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2097.8]
  assign _T_202 = ~_T_201; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2098.8]
  assign _T_203 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@2104.6]
  assign _T_288 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@2219.8]
  assign _T_290 = _T_288 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2221.8]
  assign _T_291 = ~_T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2222.8]
  assign _T_301 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@2245.6]
  assign _T_303 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@2248.8]
  assign _T_311 = _T_303 & _T_115; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2256.8]
  assign _T_313 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@2258.8]
  assign _T_351 = _T_120 | _T_125; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2296.8]
  assign _T_352 = _T_351 | _T_130; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2297.8]
  assign _T_353 = _T_352 | _T_135; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2298.8]
  assign _T_354 = _T_353 | _T_140; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2299.8]
  assign _T_355 = _T_354 | _T_145; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2300.8]
  assign _T_356 = _T_355 | _T_159; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2301.8]
  assign _T_357 = _T_313 & _T_356; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2302.8]
  assign _T_359 = _T_311 | _T_357; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@2304.8]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2306.8]
  assign _T_362 = ~_T_361; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2307.8]
  assign _T_369 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@2326.8]
  assign _T_371 = _T_369 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2328.8]
  assign _T_372 = ~_T_371; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2329.8]
  assign _T_373 = io_in_a_bits_mask == _T_79; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@2334.8]
  assign _T_375 = _T_373 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2336.8]
  assign _T_376 = ~_T_375; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2337.8]
  assign _T_381 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@2351.6]
  assign _T_430 = _T_354 | _T_159; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2401.8]
  assign _T_431 = _T_313 & _T_430; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2402.8]
  assign _T_440 = _T_311 | _T_431; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@2411.8]
  assign _T_443 = _T_440 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2414.8]
  assign _T_444 = ~_T_443; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2415.8]
  assign _T_459 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@2451.6]
  assign _T_533 = ~_T_79; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@2542.8]
  assign _T_534 = io_in_a_bits_mask & _T_533; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@2543.8]
  assign _T_535 = _T_534 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@2544.8]
  assign _T_537 = _T_535 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2546.8]
  assign _T_538 = ~_T_537; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2547.8]
  assign _T_539 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@2553.6]
  assign _T_541 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@2556.8]
  assign _T_584 = _T_150 | _T_159; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@2599.8]
  assign _T_585 = _T_541 & _T_584; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2600.8]
  assign _T_596 = _T_585 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2611.8]
  assign _T_597 = ~_T_596; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2612.8]
  assign _T_604 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@2631.8]
  assign _T_606 = _T_604 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2633.8]
  assign _T_607 = ~_T_606; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2634.8]
  assign _T_612 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@2648.6]
  assign _T_677 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@2726.8]
  assign _T_679 = _T_677 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2728.8]
  assign _T_680 = ~_T_679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2729.8]
  assign _T_685 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@2743.6]
  assign _T_742 = _T_313 & _T_159; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@2801.8]
  assign _T_745 = _T_311 | _T_742; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@2804.8]
  assign _T_747 = _T_745 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2806.8]
  assign _T_748 = ~_T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2807.8]
  assign _T_755 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@2826.8]
  assign _T_757 = _T_755 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2828.8]
  assign _T_758 = ~_T_757; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2829.8]
  assign _T_767 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@2853.6]
  assign _T_769 = _T_767 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2855.6]
  assign _T_770 = ~_T_769; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2856.6]
  assign _T_771 = io_in_d_bits_source == 2'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@2861.6]
  assign _T_772 = io_in_d_bits_source == 2'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@2862.6]
  assign _T_773 = io_in_d_bits_source == 2'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@2863.6]
  assign _T_775 = _T_771 | _T_772; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@2869.6]
  assign _T_776 = _T_775 | _T_773; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@2870.6]
  assign _T_778 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@2872.6]
  assign _T_780 = _T_776 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2875.8]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2876.8]
  assign _T_782 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@2881.8]
  assign _T_784 = _T_782 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2883.8]
  assign _T_785 = ~_T_784; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2884.8]
  assign _T_786 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@2889.8]
  assign _T_788 = _T_786 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2891.8]
  assign _T_789 = ~_T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2892.8]
  assign _T_790 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@2897.8]
  assign _T_792 = _T_790 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2899.8]
  assign _T_793 = ~_T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2900.8]
  assign _T_794 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@2905.8]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2907.8]
  assign _T_797 = ~_T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2908.8]
  assign _T_798 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@2914.6]
  assign _T_809 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@2938.8]
  assign _T_811 = _T_809 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2940.8]
  assign _T_812 = ~_T_811; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2941.8]
  assign _T_813 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@2946.8]
  assign _T_815 = _T_813 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2948.8]
  assign _T_816 = ~_T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2949.8]
  assign _T_826 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@2972.6]
  assign _T_846 = _T_794 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@3013.8]
  assign _T_848 = _T_846 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3015.8]
  assign _T_849 = ~_T_848; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3016.8]
  assign _T_855 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@3031.6]
  assign _T_872 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@3066.6]
  assign _T_890 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@3102.6]
  assign _T_914 = {1'b0,$signed(io_in_b_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3150.6]
  assign _T_940 = io_in_b_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3180.6]
  assign _T_941 = {1'b0,$signed(_T_940)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3181.6]
  assign _T_943 = $signed(_T_941) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3183.6]
  assign _T_944 = $signed(_T_943) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3184.6]
  assign _T_945 = io_in_b_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3185.6]
  assign _T_946 = {1'b0,$signed(_T_945)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3186.6]
  assign _T_948 = $signed(_T_946) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3188.6]
  assign _T_949 = $signed(_T_948) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3189.6]
  assign _T_950 = io_in_b_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3190.6]
  assign _T_951 = {1'b0,$signed(_T_950)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3191.6]
  assign _T_953 = $signed(_T_951) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3193.6]
  assign _T_954 = $signed(_T_953) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3194.6]
  assign _T_955 = io_in_b_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3195.6]
  assign _T_956 = {1'b0,$signed(_T_955)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3196.6]
  assign _T_958 = $signed(_T_956) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3198.6]
  assign _T_959 = $signed(_T_958) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3199.6]
  assign _T_960 = io_in_b_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3200.6]
  assign _T_961 = {1'b0,$signed(_T_960)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3201.6]
  assign _T_963 = $signed(_T_961) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3203.6]
  assign _T_964 = $signed(_T_963) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3204.6]
  assign _T_968 = $signed(_T_914) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3208.6]
  assign _T_969 = $signed(_T_968) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3209.6]
  assign _T_970 = io_in_b_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3210.6]
  assign _T_971 = {1'b0,$signed(_T_970)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3211.6]
  assign _T_973 = $signed(_T_971) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3213.6]
  assign _T_974 = $signed(_T_973) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3214.6]
  assign _T_975 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3215.6]
  assign _T_976 = {1'b0,$signed(_T_975)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3216.6]
  assign _T_978 = $signed(_T_976) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3218.6]
  assign _T_979 = $signed(_T_978) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3219.6]
  assign _T_981 = _T_944 | _T_949; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3230.6]
  assign _T_982 = _T_981 | _T_954; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3231.6]
  assign _T_983 = _T_982 | _T_959; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3232.6]
  assign _T_984 = _T_983 | _T_964; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3233.6]
  assign _T_985 = _T_984 | _T_969; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3234.6]
  assign _T_986 = _T_985 | _T_974; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3235.6]
  assign _T_987 = _T_986 | _T_979; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3236.6]
  assign _T_992 = io_in_b_bits_address & 32'h3f; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@3241.6]
  assign _T_993 = _T_992 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@3242.6]
  assign _T_1085 = _T_987 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3349.8]
  assign _T_1086 = ~_T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3350.8]
  assign _T_1091 = _T_993 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3363.8]
  assign _T_1092 = ~_T_1091; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3364.8]
  assign _T_1093 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@3369.8]
  assign _T_1095 = _T_1093 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3371.8]
  assign _T_1096 = ~_T_1095; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3372.8]
  assign _T_1241 = io_in_c_bits_source == 2'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@3696.6]
  assign _T_1242 = io_in_c_bits_source == 2'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@3697.6]
  assign _T_1243 = io_in_c_bits_source == 2'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@3698.6]
  assign _T_1245 = _T_1241 | _T_1242; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@3704.6]
  assign _T_1246 = _T_1245 | _T_1243; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@3705.6]
  assign _T_1248 = 27'hfff << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@3707.6]
  assign _T_1250 = ~_T_1248[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@3709.6]
  assign _GEN_72 = {{20'd0}, _T_1250}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@3710.6]
  assign _T_1251 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@3710.6]
  assign _T_1252 = _T_1251 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@3711.6]
  assign _T_1253 = io_in_c_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3712.6]
  assign _T_1254 = {1'b0,$signed(_T_1253)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3713.6]
  assign _T_1256 = $signed(_T_1254) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3715.6]
  assign _T_1257 = $signed(_T_1256) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3716.6]
  assign _T_1258 = io_in_c_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3717.6]
  assign _T_1259 = {1'b0,$signed(_T_1258)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3718.6]
  assign _T_1261 = $signed(_T_1259) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3720.6]
  assign _T_1262 = $signed(_T_1261) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3721.6]
  assign _T_1263 = io_in_c_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3722.6]
  assign _T_1264 = {1'b0,$signed(_T_1263)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3723.6]
  assign _T_1266 = $signed(_T_1264) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3725.6]
  assign _T_1267 = $signed(_T_1266) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3726.6]
  assign _T_1268 = io_in_c_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3727.6]
  assign _T_1269 = {1'b0,$signed(_T_1268)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3728.6]
  assign _T_1271 = $signed(_T_1269) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3730.6]
  assign _T_1272 = $signed(_T_1271) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3731.6]
  assign _T_1273 = io_in_c_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3732.6]
  assign _T_1274 = {1'b0,$signed(_T_1273)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3733.6]
  assign _T_1276 = $signed(_T_1274) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3735.6]
  assign _T_1277 = $signed(_T_1276) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3736.6]
  assign _T_1279 = {1'b0,$signed(io_in_c_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3738.6]
  assign _T_1281 = $signed(_T_1279) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3740.6]
  assign _T_1282 = $signed(_T_1281) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3741.6]
  assign _T_1283 = io_in_c_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3742.6]
  assign _T_1284 = {1'b0,$signed(_T_1283)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3743.6]
  assign _T_1286 = $signed(_T_1284) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3745.6]
  assign _T_1287 = $signed(_T_1286) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3746.6]
  assign _T_1288 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@3747.6]
  assign _T_1289 = {1'b0,$signed(_T_1288)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@3748.6]
  assign _T_1291 = $signed(_T_1289) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@3750.6]
  assign _T_1292 = $signed(_T_1291) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@3751.6]
  assign _T_1294 = _T_1257 | _T_1262; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3762.6]
  assign _T_1295 = _T_1294 | _T_1267; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3763.6]
  assign _T_1296 = _T_1295 | _T_1272; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3764.6]
  assign _T_1297 = _T_1296 | _T_1277; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3765.6]
  assign _T_1298 = _T_1297 | _T_1282; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3766.6]
  assign _T_1299 = _T_1298 | _T_1287; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3767.6]
  assign _T_1300 = _T_1299 | _T_1292; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@3768.6]
  assign _T_1330 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@3802.6]
  assign _T_1332 = _T_1300 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3805.8]
  assign _T_1333 = ~_T_1332; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3806.8]
  assign _T_1335 = _T_1246 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3812.8]
  assign _T_1336 = ~_T_1335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3813.8]
  assign _T_1337 = io_in_c_bits_size >= 4'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@3818.8]
  assign _T_1339 = _T_1337 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3820.8]
  assign _T_1340 = ~_T_1339; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3821.8]
  assign _T_1342 = _T_1252 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3827.8]
  assign _T_1343 = ~_T_1342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3828.8]
  assign _T_1344 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@3833.8]
  assign _T_1346 = _T_1344 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3835.8]
  assign _T_1347 = ~_T_1346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3836.8]
  assign _T_1348 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@3841.8]
  assign _T_1350 = _T_1348 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3843.8]
  assign _T_1351 = ~_T_1350; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3844.8]
  assign _T_1352 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@3850.6]
  assign _T_1370 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@3890.6]
  assign _T_1414 = 4'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@3935.8]
  assign _T_1421 = _T_1414 & _T_1292; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@3942.8]
  assign _T_1425 = _T_1421 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3946.8]
  assign _T_1426 = ~_T_1425; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3947.8]
  assign _T_1432 = _T_1241 & _T_1414; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@3961.8]
  assign _T_1439 = _T_1432 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3969.8]
  assign _T_1440 = ~_T_1439; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3970.8]
  assign _T_1451 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@3997.8]
  assign _T_1453 = _T_1451 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3999.8]
  assign _T_1454 = ~_T_1453; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4000.8]
  assign _T_1459 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@4014.6]
  assign _T_1544 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@4130.6]
  assign _T_1554 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@4153.8]
  assign _T_1556 = _T_1554 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4155.8]
  assign _T_1557 = ~_T_1556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4156.8]
  assign _T_1562 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@4170.6]
  assign _T_1576 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@4202.6]
  assign _T_1598 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@4253.4]
  assign _T_1605 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@4260.4]
  assign _T_1609 = _T_1607 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4264.4]
  assign _T_1610 = _T_1607 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4265.4]
  assign _T_1623 = ~_T_1610; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@4281.4]
  assign _T_1624 = io_in_a_valid & _T_1623; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@4282.4]
  assign _T_1625 = io_in_a_bits_opcode == _T_1618; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@4284.6]
  assign _T_1627 = _T_1625 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4286.6]
  assign _T_1628 = ~_T_1627; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4287.6]
  assign _T_1629 = io_in_a_bits_param == _T_1619; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@4292.6]
  assign _T_1631 = _T_1629 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4294.6]
  assign _T_1632 = ~_T_1631; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4295.6]
  assign _T_1633 = io_in_a_bits_size == _T_1620; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@4300.6]
  assign _T_1635 = _T_1633 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4302.6]
  assign _T_1636 = ~_T_1635; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4303.6]
  assign _T_1637 = io_in_a_bits_source == _T_1621; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@4308.6]
  assign _T_1639 = _T_1637 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4310.6]
  assign _T_1640 = ~_T_1639; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4311.6]
  assign _T_1641 = io_in_a_bits_address == _T_1622; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@4316.6]
  assign _T_1643 = _T_1641 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4318.6]
  assign _T_1644 = ~_T_1643; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4319.6]
  assign _T_1646 = _T_1598 & _T_1610; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@4326.4]
  assign _T_1647 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@4334.4]
  assign _T_1649 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@4336.4]
  assign _T_1651 = ~_T_1649[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@4338.4]
  assign _T_1657 = _T_1655 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4344.4]
  assign _T_1658 = _T_1655 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4345.4]
  assign _T_1672 = ~_T_1658; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@4362.4]
  assign _T_1673 = io_in_d_valid & _T_1672; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@4363.4]
  assign _T_1674 = io_in_d_bits_opcode == _T_1666; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@4365.6]
  assign _T_1676 = _T_1674 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4367.6]
  assign _T_1677 = ~_T_1676; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4368.6]
  assign _T_1678 = io_in_d_bits_param == _T_1667; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@4373.6]
  assign _T_1680 = _T_1678 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4375.6]
  assign _T_1681 = ~_T_1680; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4376.6]
  assign _T_1682 = io_in_d_bits_size == _T_1668; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@4381.6]
  assign _T_1684 = _T_1682 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4383.6]
  assign _T_1685 = ~_T_1684; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4384.6]
  assign _T_1686 = io_in_d_bits_source == _T_1669; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@4389.6]
  assign _T_1688 = _T_1686 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4391.6]
  assign _T_1689 = ~_T_1688; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4392.6]
  assign _T_1690 = io_in_d_bits_sink == _T_1670; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@4397.6]
  assign _T_1692 = _T_1690 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4399.6]
  assign _T_1693 = ~_T_1692; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4400.6]
  assign _T_1694 = io_in_d_bits_denied == _T_1671; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@4405.6]
  assign _T_1696 = _T_1694 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4407.6]
  assign _T_1697 = ~_T_1696; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4408.6]
  assign _T_1699 = _T_1647 & _T_1658; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@4415.4]
  assign _T_1700 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@4424.4]
  assign _T_1711 = _T_1709 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4435.4]
  assign _T_1712 = _T_1709 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4436.4]
  assign _T_1725 = ~_T_1712; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@4452.4]
  assign _T_1726 = io_in_b_valid & _T_1725; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@4453.4]
  assign _T_1731 = io_in_b_bits_param == _T_1721; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@4463.6]
  assign _T_1733 = _T_1731 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4465.6]
  assign _T_1734 = ~_T_1733; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4466.6]
  assign _T_1743 = io_in_b_bits_address == _T_1724; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@4487.6]
  assign _T_1745 = _T_1743 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4489.6]
  assign _T_1746 = ~_T_1745; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4490.6]
  assign _T_1748 = _T_1700 & _T_1712; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@4497.4]
  assign _T_1749 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@4505.4]
  assign _T_1759 = _T_1757 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4515.4]
  assign _T_1760 = _T_1757 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4516.4]
  assign _T_1773 = ~_T_1760; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@4532.4]
  assign _T_1774 = io_in_c_valid & _T_1773; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@4533.4]
  assign _T_1775 = io_in_c_bits_opcode == _T_1768; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@4535.6]
  assign _T_1777 = _T_1775 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4537.6]
  assign _T_1778 = ~_T_1777; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4538.6]
  assign _T_1779 = io_in_c_bits_param == _T_1769; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@4543.6]
  assign _T_1781 = _T_1779 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4545.6]
  assign _T_1782 = ~_T_1781; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4546.6]
  assign _T_1783 = io_in_c_bits_size == _T_1770; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@4551.6]
  assign _T_1785 = _T_1783 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4553.6]
  assign _T_1786 = ~_T_1785; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4554.6]
  assign _T_1787 = io_in_c_bits_source == _T_1771; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@4559.6]
  assign _T_1789 = _T_1787 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4561.6]
  assign _T_1790 = ~_T_1789; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4562.6]
  assign _T_1791 = io_in_c_bits_address == _T_1772; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@4567.6]
  assign _T_1793 = _T_1791 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4569.6]
  assign _T_1794 = ~_T_1793; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4570.6]
  assign _T_1796 = _T_1749 & _T_1760; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@4577.4]
  assign _T_1808 = _T_1806 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4599.4]
  assign a_first = _T_1806 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4600.4]
  assign _T_1826 = _T_1824 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4621.4]
  assign d_first = _T_1824 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4622.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@4641.4]
  assign _T_1834 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@4641.4]
  assign _T_1835 = inflight_opcodes >> _T_1834; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@4642.4]
  assign _T_1839 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@4646.4]
  assign _GEN_74 = {{4'd0}, _T_1835}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@4647.4]
  assign _T_1840 = _GEN_74 & _T_1839; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@4647.4]
  assign _T_1841 = {{1'd0}, _T_1840[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@4648.4]
  assign _T_1842 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@4652.4]
  assign _T_1843 = inflight_sizes >> _T_1842; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@4653.4]
  assign _T_1847 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@4657.4]
  assign _GEN_76 = {{8'd0}, _T_1847}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@4658.4]
  assign _T_1848 = _T_1843 & _GEN_76; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@4658.4]
  assign _T_1849 = {{1'd0}, _T_1848[23:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@4659.4]
  assign _T_1853 = _T_1598 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@4684.4]
  assign _T_1855 = 4'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@4687.6]
  assign _T_1856 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@4689.6]
  assign _T_1857 = _T_1856 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@4690.6]
  assign _T_1858 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@4692.6]
  assign _T_1859 = _T_1858 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@4693.6]
  assign _GEN_78 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@4695.6]
  assign _T_1860 = {{1'd0}, _GEN_78}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@4695.6]
  assign a_opcodes_set_interm = _T_1853 ? _T_1857 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  assign _GEN_79 = {{31'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@4696.6]
  assign _T_1861 = _GEN_79 << _T_1860; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@4696.6]
  assign _T_1862 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@4698.6]
  assign a_sizes_set_interm = _T_1853 ? _T_1859 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  assign _GEN_80 = {{31'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@4699.6]
  assign _T_1863 = _GEN_80 << _T_1862; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@4699.6]
  assign _T_1864 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@4701.6]
  assign _T_1866 = ~_T_1864[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@4703.6]
  assign _T_1868 = _T_1866 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4705.6]
  assign _T_1869 = ~_T_1868; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4706.6]
  assign _GEN_27 = _T_1853 ? _T_1855 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  assign _GEN_30 = _T_1853 ? _T_1861 : 35'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  assign _GEN_31 = _T_1853 ? _T_1863 : 36'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@4686.4]
  assign _T_1872 = _T_1647 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@4720.4]
  assign _T_1874 = ~_T_778; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@4722.4]
  assign _T_1875 = _T_1872 & _T_1874; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@4723.4]
  assign _T_1876 = 4'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@4725.6]
  assign _GEN_82 = {{31'd0}, _T_1839}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@4732.6]
  assign _T_1882 = _GEN_82 << _T_1834; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@4732.6]
  assign _GEN_83 = {{31'd0}, _T_1847}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@4739.6]
  assign _T_1888 = _GEN_83 << _T_1842; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@4739.6]
  assign _GEN_32 = _T_1875 ? _T_1876 : 4'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@4724.4]
  assign _GEN_33 = _T_1875 ? _T_1882 : 47'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@4724.4]
  assign _GEN_34 = _T_1875 ? _T_1888 : 47'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@4724.4]
  assign _T_1889 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@4742.4]
  assign _T_1892 = _T_1889 & _T_1874; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@4745.4]
  assign _T_1893 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@4747.6]
  assign _T_1895 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@4749.6]
  assign _T_1896 = io_in_a_valid & _T_1895; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@4750.6]
  assign _T_1897 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@4751.6]
  assign _T_1898 = _T_1896 & _T_1897; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@4752.6]
  assign _T_1899 = _T_1898 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@4753.6]
  assign _T_1900 = _T_1893[0] | _T_1899; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@4754.6]
  assign _T_1902 = _T_1900 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4756.6]
  assign _T_1903 = ~_T_1902; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4757.6]
  assign a_opcode_lookup = _T_1841[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@4639.4 :chipyard.TestHarness.RocketConfig.fir@4640.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@4649.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  assign _T_1905 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@4763.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@4765.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@4765.6]
  assign _T_1907 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@4765.6]
  assign _T_1908 = _T_1905 | _T_1907; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@4766.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  assign _T_1909 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@4767.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@4768.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@4768.6]
  assign _T_1910 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@4768.6]
  assign _T_1911 = _T_1909 | _T_1910; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@4769.6]
  assign _T_1912 = io_in_a_valid & _T_1911; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@4770.6]
  assign _T_1913 = _T_1908 | _T_1912; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@4771.6]
  assign _T_1915 = _T_1913 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4773.6]
  assign _T_1916 = ~_T_1915; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4774.6]
  assign a_size_lookup = _T_1849[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@4650.4 :chipyard.TestHarness.RocketConfig.fir@4651.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@4660.4]
  assign _GEN_84 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@4779.6]
  assign _T_1917 = _GEN_84 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@4779.6]
  assign _T_1919 = io_in_a_valid & _T_1897; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@4781.6]
  assign _T_1920 = _T_1917 | _T_1919; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@4782.6]
  assign _T_1922 = _T_1920 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4784.6]
  assign _T_1923 = ~_T_1922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4785.6]
  assign _T_1925 = _T_1889 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@4792.4]
  assign _T_1926 = _T_1925 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@4793.4]
  assign _T_1928 = _T_1926 & _T_1895; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@4795.4]
  assign _T_1930 = _T_1928 & _T_1874; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@4797.4]
  assign _T_1931 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@4799.6]
  assign _T_1932 = _T_1931 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@4800.6]
  assign _T_1934 = _T_1932 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4802.6]
  assign _T_1935 = ~_T_1934; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4803.6]
  assign a_set = _GEN_27[2:0]; // @[:chipyard.TestHarness.RocketConfig.fir@4633.4 :chipyard.TestHarness.RocketConfig.fir@4634.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@4688.6]
  assign d_clr = _GEN_32[2:0]; // @[:chipyard.TestHarness.RocketConfig.fir@4712.4 :chipyard.TestHarness.RocketConfig.fir@4713.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@4726.6]
  assign _T_1936 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@4809.4]
  assign _T_1937 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@4810.4]
  assign _T_1938 = ~_T_1937; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@4811.4]
  assign _T_1939 = _T_1936 | _T_1938; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@4812.4]
  assign _T_1941 = _T_1939 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4814.4]
  assign _T_1942 = ~_T_1941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4815.4]
  assign _T_1943 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@4820.4]
  assign _T_1944 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@4821.4]
  assign _T_1945 = _T_1943 & _T_1944; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@4822.4]
  assign a_opcodes_set = _GEN_30[11:0]; // @[:chipyard.TestHarness.RocketConfig.fir@4635.4 :chipyard.TestHarness.RocketConfig.fir@4636.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@4697.6]
  assign _T_1946 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@4824.4]
  assign d_opcodes_clr = _GEN_33[11:0]; // @[:chipyard.TestHarness.RocketConfig.fir@4714.4 :chipyard.TestHarness.RocketConfig.fir@4715.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@4733.6]
  assign _T_1947 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@4825.4]
  assign _T_1948 = _T_1946 & _T_1947; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@4826.4]
  assign a_sizes_set = _GEN_31[23:0]; // @[:chipyard.TestHarness.RocketConfig.fir@4637.4 :chipyard.TestHarness.RocketConfig.fir@4638.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@4700.6]
  assign _T_1949 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@4828.4]
  assign d_sizes_clr = _GEN_34[23:0]; // @[:chipyard.TestHarness.RocketConfig.fir@4716.4 :chipyard.TestHarness.RocketConfig.fir@4717.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@4740.6]
  assign _T_1950 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@4829.4]
  assign _T_1951 = _T_1949 & _T_1950; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@4830.4]
  assign _T_1953 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@4835.4]
  assign _T_1954 = ~_T_1953; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@4836.4]
  assign _T_1955 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@4837.4]
  assign _T_1956 = _T_1954 | _T_1955; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@4838.4]
  assign _T_1957 = _T_1952 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@4839.4]
  assign _T_1958 = _T_1956 | _T_1957; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@4840.4]
  assign _T_1960 = _T_1958 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4842.4]
  assign _T_1961 = ~_T_1960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4843.4]
  assign _T_1963 = _T_1952 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@4849.4]
  assign _T_1966 = _T_1598 | _T_1647; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@4853.4]
  assign _T_1978 = _T_1976 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@4868.4]
  assign _T_1979 = _T_1976 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@4869.4]
  assign _T_1989 = _T_1647 & _T_1979; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@4883.4]
  assign _T_1992 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@4886.4]
  assign _T_1993 = io_in_d_bits_opcode[2] & _T_1992; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@4887.4]
  assign _T_1994 = _T_1989 & _T_1993; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@4888.4]
  assign _T_1995 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@4890.6]
  assign _T_1996 = _T_1967 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@4892.6]
  assign _T_1998 = ~_T_1996[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@4894.6]
  assign _T_2000 = _T_1998 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4896.6]
  assign _T_2001 = ~_T_2000; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4897.6]
  assign _GEN_69 = _T_1994 ? _T_1995 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@4889.4]
  assign _T_2006 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@4909.6]
  assign _T_2007 = _GEN_69 | _T_1967; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@4911.6]
  assign _T_2008 = _T_2007 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@4912.6]
  assign _T_2011 = _T_2008[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4915.6]
  assign _T_2012 = ~_T_2011; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4916.6]
  assign _GEN_70 = io_in_e_valid ? _T_2006 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@4908.4]
  assign _T_2013 = _T_1967 | _GEN_69; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@4922.4]
  assign _T_2014 = ~_GEN_70; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@4923.4]
  assign _T_2015 = _T_2013 & _T_2014; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@4924.4]
  assign _GEN_85 = io_in_a_valid & _T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2030.10]
  assign _GEN_101 = io_in_a_valid & _T_203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2163.10]
  assign _GEN_119 = io_in_a_valid & _T_301; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2309.10]
  assign _GEN_131 = io_in_a_valid & _T_381; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2417.10]
  assign _GEN_141 = io_in_a_valid & _T_459; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2517.10]
  assign _GEN_151 = io_in_a_valid & _T_539; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2614.10]
  assign _GEN_161 = io_in_a_valid & _T_612; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2709.10]
  assign _GEN_171 = io_in_a_valid & _T_685; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2809.10]
  assign _GEN_183 = io_in_d_valid & _T_778; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2878.10]
  assign _GEN_193 = io_in_d_valid & _T_798; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2920.10]
  assign _GEN_203 = io_in_d_valid & _T_826; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2978.10]
  assign _GEN_213 = io_in_d_valid & _T_855; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3037.10]
  assign _GEN_219 = io_in_d_valid & _T_872; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3072.10]
  assign _GEN_225 = io_in_d_valid & _T_890; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3108.10]
  assign _GEN_231 = io_in_c_valid & _T_1330; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3808.10]
  assign _GEN_243 = io_in_c_valid & _T_1352; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3856.10]
  assign _GEN_253 = io_in_c_valid & _T_1370; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3949.10]
  assign _GEN_267 = io_in_c_valid & _T_1459; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4073.10]
  assign _GEN_279 = io_in_c_valid & _T_1544; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4136.10]
  assign _GEN_289 = io_in_c_valid & _T_1562; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4176.10]
  assign _GEN_297 = io_in_c_valid & _T_1576; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4208.10]
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
  _T_1607 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1618 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1619 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1620 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1621 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1622 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_1655 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_1666 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_1667 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1668 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_1669 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_1670 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_1671 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_1709 = _RAND_13[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_1721 = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1724 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1757 = _RAND_16[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_1768 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_1769 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1770 = _RAND_19[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1771 = _RAND_20[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_1772 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  inflight = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  inflight_opcodes = _RAND_23[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  inflight_sizes = _RAND_24[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_1806 = _RAND_25[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_1824 = _RAND_26[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_1952 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_1967 = _RAND_28[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_1976 = _RAND_29[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1607 <= 9'h0;
    end else if (_T_1598) begin
      if (_T_1610) begin
        if (_T_1605) begin
          _T_1607 <= _T_13[11:3];
        end else begin
          _T_1607 <= 9'h0;
        end
      end else begin
        _T_1607 <= _T_1609;
      end
    end
    if (_T_1646) begin
      _T_1618 <= io_in_a_bits_opcode;
    end
    if (_T_1646) begin
      _T_1619 <= io_in_a_bits_param;
    end
    if (_T_1646) begin
      _T_1620 <= io_in_a_bits_size;
    end
    if (_T_1646) begin
      _T_1621 <= io_in_a_bits_source;
    end
    if (_T_1646) begin
      _T_1622 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_1655 <= 9'h0;
    end else if (_T_1647) begin
      if (_T_1658) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1655 <= _T_1651[11:3];
        end else begin
          _T_1655 <= 9'h0;
        end
      end else begin
        _T_1655 <= _T_1657;
      end
    end
    if (_T_1699) begin
      _T_1666 <= io_in_d_bits_opcode;
    end
    if (_T_1699) begin
      _T_1667 <= io_in_d_bits_param;
    end
    if (_T_1699) begin
      _T_1668 <= io_in_d_bits_size;
    end
    if (_T_1699) begin
      _T_1669 <= io_in_d_bits_source;
    end
    if (_T_1699) begin
      _T_1670 <= io_in_d_bits_sink;
    end
    if (_T_1699) begin
      _T_1671 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_1709 <= 9'h0;
    end else if (_T_1700) begin
      if (_T_1712) begin
        _T_1709 <= 9'h0;
      end else begin
        _T_1709 <= _T_1711;
      end
    end
    if (_T_1748) begin
      _T_1721 <= io_in_b_bits_param;
    end
    if (_T_1748) begin
      _T_1724 <= io_in_b_bits_address;
    end
    if (reset) begin
      _T_1757 <= 9'h0;
    end else if (_T_1749) begin
      if (_T_1760) begin
        if (io_in_c_bits_opcode[0]) begin
          _T_1757 <= _T_1250[11:3];
        end else begin
          _T_1757 <= 9'h0;
        end
      end else begin
        _T_1757 <= _T_1759;
      end
    end
    if (_T_1796) begin
      _T_1768 <= io_in_c_bits_opcode;
    end
    if (_T_1796) begin
      _T_1769 <= io_in_c_bits_param;
    end
    if (_T_1796) begin
      _T_1770 <= io_in_c_bits_size;
    end
    if (_T_1796) begin
      _T_1771 <= io_in_c_bits_source;
    end
    if (_T_1796) begin
      _T_1772 <= io_in_c_bits_address;
    end
    if (reset) begin
      inflight <= 3'h0;
    end else begin
      inflight <= _T_1945;
    end
    if (reset) begin
      inflight_opcodes <= 12'h0;
    end else begin
      inflight_opcodes <= _T_1948;
    end
    if (reset) begin
      inflight_sizes <= 24'h0;
    end else begin
      inflight_sizes <= _T_1951;
    end
    if (reset) begin
      _T_1806 <= 9'h0;
    end else if (_T_1598) begin
      if (a_first) begin
        if (_T_1605) begin
          _T_1806 <= _T_13[11:3];
        end else begin
          _T_1806 <= 9'h0;
        end
      end else begin
        _T_1806 <= _T_1808;
      end
    end
    if (reset) begin
      _T_1824 <= 9'h0;
    end else if (_T_1647) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1824 <= _T_1651[11:3];
        end else begin
          _T_1824 <= 9'h0;
        end
      end else begin
        _T_1824 <= _T_1826;
      end
    end
    if (reset) begin
      _T_1952 <= 32'h0;
    end else if (_T_1966) begin
      _T_1952 <= 32'h0;
    end else begin
      _T_1952 <= _T_1963;
    end
    if (reset) begin
      _T_1967 <= 8'h0;
    end else begin
      _T_1967 <= _T_2015;
    end
    if (reset) begin
      _T_1976 <= 9'h0;
    end else if (_T_1647) begin
      if (_T_1979) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1976 <= _T_1651[11:3];
        end else begin
          _T_1976 <= 9'h0;
        end
      end else begin
        _T_1976 <= _T_1978;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2030.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2031.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2053.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2054.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2060.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2061.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2068.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2069.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2075.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2076.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_193) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2083.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_193) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2084.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_198) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2092.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_198) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2093.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_202) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2100.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_202) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2101.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2163.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2164.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2186.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2187.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2193.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2194.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2201.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2202.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2208.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2209.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_193) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2216.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_193) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2217.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_291) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2224.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2225.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_198) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2233.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_198) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2234.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_202) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2241.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_202) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2242.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_362) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2309.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_362) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2310.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2316.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2317.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2323.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2324.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_372) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2331.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_372) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2332.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2339.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2340.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_202) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2347.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_202) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2348.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_444) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2417.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_444) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2418.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2424.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2425.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2431.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2432.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_372) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2439.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_372) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2440.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2447.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2448.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_444) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2517.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_444) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2518.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2524.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2525.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2531.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2532.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_372) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2539.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_372) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2540.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_538) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2549.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_538) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2550.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_597) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2614.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_597) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2615.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2621.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2622.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2628.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2629.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_607) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2636.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_607) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2637.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2644.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2645.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_597) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2709.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_597) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2710.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2716.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2717.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2723.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2724.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_680) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2731.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_680) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2732.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_161 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2739.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_161 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2740.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_748) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2809.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_748) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2810.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2816.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2817.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2823.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2824.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_758) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2831.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_758) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2832.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2839.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2840.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_202) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2847.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_202) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@2848.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_770) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2858.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_770) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2859.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2878.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2879.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_785) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2886.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_785) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2887.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2894.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2895.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2902.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2903.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_797) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2910.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_797) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2911.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2920.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2921.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_785) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2935.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_785) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2936.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_812) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2943.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_812) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2944.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_816) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2951.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_816) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2952.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_193 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2959.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_193 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2960.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2978.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2979.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_785) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2993.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_785) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@2994.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_812) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3001.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_812) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3002.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_816) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3009.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_816) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3010.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_203 & _T_849) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3018.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_203 & _T_849) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3019.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3037.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3038.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3045.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3046.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3053.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3054.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_219 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3072.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_219 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3073.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_219 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3080.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_219 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3081.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_219 & _T_849) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3089.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_219 & _T_849) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3090.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_225 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3108.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_225 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3109.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_225 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3116.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_225 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3117.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_225 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3124.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_225 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@3125.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3352.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3353.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_1092) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3366.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_1092) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3367.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_1096) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3374.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_1096) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3375.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3808.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3809.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3815.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3816.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1340) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3823.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1340) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3824.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3830.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3831.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1347) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3838.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1347) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3839.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_1351) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3846.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_1351) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3847.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3856.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3857.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3863.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3864.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1340) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3871.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1340) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3872.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3878.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3879.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_243 & _T_1347) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3886.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_243 & _T_1347) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3887.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1426) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3949.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1426) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3950.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1440) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3972.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1440) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3973.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3979.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3980.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1340) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3987.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1340) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3988.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3994.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@3995.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1454) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4002.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1454) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4003.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_253 & _T_1351) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4010.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_253 & _T_1351) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4011.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1426) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4073.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1426) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4074.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1440) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4096.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1440) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4097.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4103.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4104.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1340) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4111.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1340) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4112.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4118.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4119.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1454) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4126.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1454) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4127.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4136.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4137.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4143.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4144.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4150.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4151.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1557) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4158.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1557) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4159.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_279 & _T_1351) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4166.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_279 & _T_1351) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4167.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_289 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4176.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_289 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4177.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_289 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4183.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_289 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4184.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_289 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4190.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_289 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4191.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_289 & _T_1557) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4198.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_289 & _T_1557) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4199.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4208.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4209.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4215.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4216.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4222.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4223.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1557) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4230.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1557) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4231.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_297 & _T_1351) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4238.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_297 & _T_1351) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4239.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1628) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4289.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1628) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4290.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1632) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4297.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1632) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4298.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1636) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4305.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1636) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4306.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1640) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4313.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1640) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4314.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1644) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4321.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1644) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4322.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1677) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4370.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1677) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4371.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1681) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4378.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1681) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4379.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1685) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4386.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1685) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4387.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1689) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4394.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1689) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4395.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1693) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4402.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1693) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4403.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1697) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4410.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1697) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4411.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1726 & _T_1734) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4468.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1726 & _T_1734) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4469.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1726 & _T_1746) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4492.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1726 & _T_1746) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4493.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1778) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4540.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1778) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4541.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1782) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4548.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1782) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4549.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1786) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4556.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1786) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4557.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1790) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4564.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1790) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4565.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1794) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4572.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1794) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4573.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1853 & _T_1869) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4708.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1853 & _T_1869) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4709.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1892 & _T_1903) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4759.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1892 & _T_1903) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4760.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1892 & _T_1916) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4776.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1892 & _T_1916) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4777.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1892 & _T_1923) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4787.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1892 & _T_1923) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4788.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1930 & _T_1935) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4805.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1930 & _T_1935) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4806.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1942) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4817.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1942) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4818.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1961) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4845.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1961) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4846.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1994 & _T_2001) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at SystemBus.scala:39:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4899.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1994 & _T_2001) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@4900.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_e_valid & _T_2012) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at SystemBus.scala:39:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4918.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_e_valid & _T_2012) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@4919.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
