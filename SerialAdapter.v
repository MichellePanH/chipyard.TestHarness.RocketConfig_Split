module SerialAdapter( // @[:chipyard.TestHarness.RocketConfig.fir@254738.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@254739.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@254740.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  output [3:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  output [31:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  input  [63:0] auto_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@254741.4]
  output        io_serial_in_ready, // @[:chipyard.TestHarness.RocketConfig.fir@254742.4]
  input         io_serial_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@254742.4]
  input  [31:0] io_serial_in_bits, // @[:chipyard.TestHarness.RocketConfig.fir@254742.4]
  input         io_serial_out_ready, // @[:chipyard.TestHarness.RocketConfig.fir@254742.4]
  output        io_serial_out_valid, // @[:chipyard.TestHarness.RocketConfig.fir@254742.4]
  output [31:0] io_serial_out_bits // @[:chipyard.TestHarness.RocketConfig.fir@254742.4]
);
  reg [31:0] cmd; // @[SerialAdapter.scala 64:16:chipyard.TestHarness.RocketConfig.fir@254751.4]
  reg [31:0] _RAND_0;
  reg [63:0] addr; // @[SerialAdapter.scala 65:17:chipyard.TestHarness.RocketConfig.fir@254752.4]
  reg [63:0] _RAND_1;
  reg [63:0] len; // @[SerialAdapter.scala 66:16:chipyard.TestHarness.RocketConfig.fir@254753.4]
  reg [63:0] _RAND_2;
  reg [31:0] body_0; // @[SerialAdapter.scala 67:17:chipyard.TestHarness.RocketConfig.fir@254754.4]
  reg [31:0] _RAND_3;
  reg [31:0] body_1; // @[SerialAdapter.scala 67:17:chipyard.TestHarness.RocketConfig.fir@254754.4]
  reg [31:0] _RAND_4;
  reg [1:0] bodyValid; // @[SerialAdapter.scala 68:22:chipyard.TestHarness.RocketConfig.fir@254755.4]
  reg [31:0] _RAND_5;
  reg  idx; // @[SerialAdapter.scala 69:16:chipyard.TestHarness.RocketConfig.fir@254756.4]
  reg [31:0] _RAND_6;
  reg [3:0] state; // @[SerialAdapter.scala 75:22:chipyard.TestHarness.RocketConfig.fir@254757.4]
  reg [31:0] _RAND_7;
  wire  _T; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@254758.4]
  wire  _T_1; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@254759.4]
  wire  _T_2; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@254760.4]
  wire  _T_3; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@254761.4]
  wire  _T_4; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@254762.4]
  wire  _T_5; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@254763.4]
  wire  _T_7; // @[SerialAdapter.scala 78:32:chipyard.TestHarness.RocketConfig.fir@254766.4]
  wire [28:0] beatAddr; // @[SerialAdapter.scala 81:22:chipyard.TestHarness.RocketConfig.fir@254769.4]
  wire [28:0] _T_9; // @[SerialAdapter.scala 82:31:chipyard.TestHarness.RocketConfig.fir@254771.4]
  wire [31:0] nextAddr; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@254772.4]
  wire [3:0] _T_13; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@254776.4]
  wire [3:0] _T_15; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@254778.4]
  wire [7:0] wmask; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@254779.4]
  wire [63:0] _GEN_55; // @[SerialAdapter.scala 85:28:chipyard.TestHarness.RocketConfig.fir@254780.4]
  wire [63:0] addr_size; // @[SerialAdapter.scala 85:28:chipyard.TestHarness.RocketConfig.fir@254781.4]
  wire [63:0] _T_18; // @[SerialAdapter.scala 86:26:chipyard.TestHarness.RocketConfig.fir@254783.4]
  wire [65:0] len_size; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@254784.4]
  wire [65:0] _GEN_56; // @[SerialAdapter.scala 87:31:chipyard.TestHarness.RocketConfig.fir@254785.4]
  wire  _T_19; // @[SerialAdapter.scala 87:31:chipyard.TestHarness.RocketConfig.fir@254785.4]
  wire [65:0] raw_size; // @[SerialAdapter.scala 87:21:chipyard.TestHarness.RocketConfig.fir@254786.4]
  wire  _T_20; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@254787.4]
  wire [1:0] _T_21; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@254788.4]
  wire  _T_22; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@254789.4]
  wire [1:0] _T_23; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@254790.4]
  wire  _T_24; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@254791.4]
  wire [1:0] rsize; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@254792.4]
  wire [1:0] _T_91; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254859.4]
  wire [1:0] _T_93; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254861.4]
  wire [2:0] _T_95; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254863.4]
  wire [1:0] _T_97; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254865.4]
  wire [1:0] _T_99; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254867.4]
  wire [2:0] _T_101; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254869.4]
  wire [3:0] _T_103; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254871.4]
  wire [1:0] _T_105; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254873.4]
  wire [1:0] _T_107; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254875.4]
  wire [2:0] _T_109; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254877.4]
  wire [1:0] _T_111; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254879.4]
  wire [1:0] _T_113; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254881.4]
  wire [2:0] _T_115; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254883.4]
  wire [3:0] _T_117; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254885.4]
  wire [4:0] _T_119; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254887.4]
  wire [1:0] _T_121; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254889.4]
  wire [1:0] _T_123; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254891.4]
  wire [2:0] _T_125; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254893.4]
  wire [1:0] _T_127; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254895.4]
  wire [1:0] _T_129; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254897.4]
  wire [2:0] _T_131; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254899.4]
  wire [3:0] _T_133; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254901.4]
  wire [1:0] _T_135; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254903.4]
  wire [1:0] _T_137; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254905.4]
  wire [2:0] _T_139; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254907.4]
  wire [1:0] _T_141; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254909.4]
  wire [1:0] _T_143; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254911.4]
  wire [1:0] _GEN_57; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254913.4]
  wire [2:0] _T_145; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254913.4]
  wire [2:0] _T_147; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254915.4]
  wire [3:0] _T_149; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254917.4]
  wire [4:0] _T_151; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254919.4]
  wire [5:0] _T_153; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254921.4]
  wire [1:0] _T_155; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254923.4]
  wire [1:0] _T_157; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254925.4]
  wire [2:0] _T_159; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254927.4]
  wire [1:0] _T_161; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254929.4]
  wire [1:0] _T_163; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254931.4]
  wire [2:0] _T_165; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254933.4]
  wire [3:0] _T_167; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254935.4]
  wire [1:0] _T_169; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254937.4]
  wire [1:0] _T_171; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254939.4]
  wire [2:0] _T_173; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254941.4]
  wire [1:0] _T_175; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254943.4]
  wire [1:0] _T_177; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254945.4]
  wire [2:0] _T_179; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254947.4]
  wire [3:0] _T_181; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254949.4]
  wire [4:0] _T_183; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254951.4]
  wire [1:0] _T_185; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254953.4]
  wire [1:0] _T_187; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254955.4]
  wire [2:0] _T_189; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254957.4]
  wire [1:0] _T_191; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254959.4]
  wire [1:0] _T_193; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254961.4]
  wire [2:0] _T_195; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254963.4]
  wire [3:0] _T_197; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254965.4]
  wire [1:0] _T_199; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254967.4]
  wire [1:0] _T_201; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254969.4]
  wire [2:0] _T_203; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254971.4]
  wire [1:0] _T_205; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254973.4]
  wire [1:0] _T_207; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254975.4]
  wire [1:0] _GEN_58; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254977.4]
  wire [2:0] _T_209; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254977.4]
  wire [2:0] _T_211; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254979.4]
  wire [3:0] _T_213; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254981.4]
  wire [4:0] _T_215; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254983.4]
  wire [5:0] _T_217; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254985.4]
  wire [6:0] _T_219; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254987.4]
  wire  pow2size; // @[SerialAdapter.scala 91:37:chipyard.TestHarness.RocketConfig.fir@254989.4]
  wire [2:0] byteAddr; // @[SerialAdapter.scala 92:21:chipyard.TestHarness.RocketConfig.fir@254991.4]
  wire [31:0] put_acquire_address; // @[SerialAdapter.scala 95:19:chipyard.TestHarness.RocketConfig.fir@254992.4]
  wire [63:0] put_acquire_data; // @[SerialAdapter.scala 96:10:chipyard.TestHarness.RocketConfig.fir@254993.4]
  wire [31:0] get_acquire_address; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@255058.4]
  wire [2:0] _T_331; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@255118.4]
  wire [3:0] _T_333; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@255120.4]
  wire [2:0] _T_335; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@255122.4]
  wire  _T_336; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@255123.4]
  wire  _T_339; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255126.4]
  wire  _T_341; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255128.4]
  wire  _T_342; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255129.4]
  wire  _T_344; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255131.4]
  wire  _T_345; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255132.4]
  wire  _T_348; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255135.4]
  wire  _T_349; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255136.4]
  wire  _T_350; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255137.4]
  wire  _T_351; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255138.4]
  wire  _T_352; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255139.4]
  wire  _T_353; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255140.4]
  wire  _T_354; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255141.4]
  wire  _T_355; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255142.4]
  wire  _T_356; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255143.4]
  wire  _T_357; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255144.4]
  wire  _T_358; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255145.4]
  wire  _T_359; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255146.4]
  wire  _T_360; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255147.4]
  wire  _T_363; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255150.4]
  wire  _T_364; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255151.4]
  wire  _T_365; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255152.4]
  wire  _T_366; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255153.4]
  wire  _T_367; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255154.4]
  wire  _T_368; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255155.4]
  wire  _T_369; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255156.4]
  wire  _T_370; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255157.4]
  wire  _T_371; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255158.4]
  wire  _T_372; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255159.4]
  wire  _T_373; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255160.4]
  wire  _T_374; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255161.4]
  wire  _T_375; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255162.4]
  wire  _T_376; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255163.4]
  wire  _T_377; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255164.4]
  wire  _T_378; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255165.4]
  wire  _T_379; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255166.4]
  wire  _T_380; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255167.4]
  wire  _T_381; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255168.4]
  wire  _T_382; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255169.4]
  wire  _T_383; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255170.4]
  wire  _T_384; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255171.4]
  wire  _T_385; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255172.4]
  wire  _T_386; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255173.4]
  wire  _T_387; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255174.4]
  wire [7:0] get_acquire_mask; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@255181.4]
  wire  _T_395; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@255185.4]
  wire  _T_396; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@255186.4]
  wire [3:0] get_acquire_size; // @[Edges.scala 430:17:chipyard.TestHarness.RocketConfig.fir@255111.4 Edges.scala 433:15:chipyard.TestHarness.RocketConfig.fir@255115.4]
  wire  _T_402; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@255205.4]
  wire  _T_403; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@255206.4]
  wire  _T_407; // @[SerialAdapter.scala 116:25:chipyard.TestHarness.RocketConfig.fir@255213.4]
  wire  _GEN_3; // @[SerialAdapter.scala 116:48:chipyard.TestHarness.RocketConfig.fir@255214.4]
  wire [63:0] _GEN_4; // @[SerialAdapter.scala 116:48:chipyard.TestHarness.RocketConfig.fir@255214.4]
  wire [63:0] _GEN_5; // @[SerialAdapter.scala 116:48:chipyard.TestHarness.RocketConfig.fir@255214.4]
  wire [3:0] _GEN_6; // @[SerialAdapter.scala 116:48:chipyard.TestHarness.RocketConfig.fir@255214.4]
  wire  _T_409; // @[SerialAdapter.scala 124:26:chipyard.TestHarness.RocketConfig.fir@255222.4]
  wire [5:0] _T_411; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@255225.6]
  wire [94:0] _GEN_59; // @[SerialAdapter.scala 110:12:chipyard.TestHarness.RocketConfig.fir@255226.6]
  wire [94:0] _T_412; // @[SerialAdapter.scala 110:12:chipyard.TestHarness.RocketConfig.fir@255226.6]
  wire [94:0] _GEN_60; // @[SerialAdapter.scala 125:18:chipyard.TestHarness.RocketConfig.fir@255227.6]
  wire [94:0] _T_413; // @[SerialAdapter.scala 125:18:chipyard.TestHarness.RocketConfig.fir@255227.6]
  wire  _T_415; // @[SerialAdapter.scala 126:16:chipyard.TestHarness.RocketConfig.fir@255230.6]
  wire  _GEN_7; // @[SerialAdapter.scala 127:43:chipyard.TestHarness.RocketConfig.fir@255233.6]
  wire [3:0] _GEN_8; // @[SerialAdapter.scala 127:43:chipyard.TestHarness.RocketConfig.fir@255233.6]
  wire [94:0] _GEN_9; // @[SerialAdapter.scala 124:49:chipyard.TestHarness.RocketConfig.fir@255223.4]
  wire  _GEN_10; // @[SerialAdapter.scala 124:49:chipyard.TestHarness.RocketConfig.fir@255223.4]
  wire [3:0] _GEN_11; // @[SerialAdapter.scala 124:49:chipyard.TestHarness.RocketConfig.fir@255223.4]
  wire  _T_418; // @[SerialAdapter.scala 133:25:chipyard.TestHarness.RocketConfig.fir@255239.4]
  wire [94:0] _GEN_62; // @[SerialAdapter.scala 134:16:chipyard.TestHarness.RocketConfig.fir@255244.6]
  wire [94:0] _T_422; // @[SerialAdapter.scala 134:16:chipyard.TestHarness.RocketConfig.fir@255244.6]
  wire  _T_427; // @[SerialAdapter.scala 138:17:chipyard.TestHarness.RocketConfig.fir@255253.8]
  wire  _T_428; // @[SerialAdapter.scala 141:24:chipyard.TestHarness.RocketConfig.fir@255259.10]
  wire  _T_431; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255266.12]
  wire  _GEN_15; // @[SerialAdapter.scala 136:43:chipyard.TestHarness.RocketConfig.fir@255250.6]
  wire [94:0] _GEN_18; // @[SerialAdapter.scala 133:48:chipyard.TestHarness.RocketConfig.fir@255240.4]
  wire  _GEN_19; // @[SerialAdapter.scala 133:48:chipyard.TestHarness.RocketConfig.fir@255240.4]
  wire  _T_433; // @[SerialAdapter.scala 149:30:chipyard.TestHarness.RocketConfig.fir@255275.4]
  wire  _T_435; // @[SerialAdapter.scala 153:31:chipyard.TestHarness.RocketConfig.fir@255280.4]
  wire  _GEN_25; // @[SerialAdapter.scala 153:47:chipyard.TestHarness.RocketConfig.fir@255281.4]
  wire [94:0] _GEN_26; // @[SerialAdapter.scala 153:47:chipyard.TestHarness.RocketConfig.fir@255281.4]
  wire  _T_442; // @[SerialAdapter.scala 160:31:chipyard.TestHarness.RocketConfig.fir@255297.4]
  wire [63:0] _T_446; // @[SerialAdapter.scala 162:16:chipyard.TestHarness.RocketConfig.fir@255303.6]
  wire  _T_447; // @[SerialAdapter.scala 163:15:chipyard.TestHarness.RocketConfig.fir@255305.6]
  wire  _GEN_30; // @[SerialAdapter.scala 160:55:chipyard.TestHarness.RocketConfig.fir@255298.4]
  wire [94:0] _GEN_31; // @[SerialAdapter.scala 160:55:chipyard.TestHarness.RocketConfig.fir@255298.4]
  wire  _T_450; // @[SerialAdapter.scala 167:32:chipyard.TestHarness.RocketConfig.fir@255316.4]
  wire [1:0] _T_451; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@255319.6]
  wire [1:0] _T_452; // @[SerialAdapter.scala 169:28:chipyard.TestHarness.RocketConfig.fir@255320.6]
  wire  _T_455; // @[SerialAdapter.scala 170:42:chipyard.TestHarness.RocketConfig.fir@255324.6]
  wire  _GEN_36; // @[SerialAdapter.scala 170:58:chipyard.TestHarness.RocketConfig.fir@255325.6]
  wire [94:0] _GEN_37; // @[SerialAdapter.scala 170:58:chipyard.TestHarness.RocketConfig.fir@255325.6]
  wire  _GEN_42; // @[SerialAdapter.scala 167:55:chipyard.TestHarness.RocketConfig.fir@255317.4]
  wire [94:0] _GEN_43; // @[SerialAdapter.scala 167:55:chipyard.TestHarness.RocketConfig.fir@255317.4]
  wire  _T_461; // @[SerialAdapter.scala 178:32:chipyard.TestHarness.RocketConfig.fir@255338.4]
  wire  _T_463; // @[SerialAdapter.scala 182:31:chipyard.TestHarness.RocketConfig.fir@255343.4]
  wire [94:0] _GEN_46; // @[SerialAdapter.scala 183:24:chipyard.TestHarness.RocketConfig.fir@255346.6]
  wire [94:0] _GEN_47; // @[SerialAdapter.scala 183:24:chipyard.TestHarness.RocketConfig.fir@255346.6]
  wire  _GEN_48; // @[SerialAdapter.scala 183:24:chipyard.TestHarness.RocketConfig.fir@255346.6]
  wire [94:0] _GEN_51; // @[SerialAdapter.scala 182:47:chipyard.TestHarness.RocketConfig.fir@255344.4]
  wire [94:0] _GEN_52; // @[SerialAdapter.scala 182:47:chipyard.TestHarness.RocketConfig.fir@255344.4]
  wire  _GEN_63; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  wire  _GEN_64; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  wire  _GEN_65; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  wire  _GEN_66; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  wire  _GEN_67; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  assign _T = state == 4'h0; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@254758.4]
  assign _T_1 = state == 4'h1; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@254759.4]
  assign _T_2 = state == 4'h2; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@254760.4]
  assign _T_3 = state == 4'h6; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@254761.4]
  assign _T_4 = _T | _T_1; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@254762.4]
  assign _T_5 = _T_4 | _T_2; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@254763.4]
  assign _T_7 = state == 4'h5; // @[SerialAdapter.scala 78:32:chipyard.TestHarness.RocketConfig.fir@254766.4]
  assign beatAddr = addr[31:3]; // @[SerialAdapter.scala 81:22:chipyard.TestHarness.RocketConfig.fir@254769.4]
  assign _T_9 = beatAddr + 29'h1; // @[SerialAdapter.scala 82:31:chipyard.TestHarness.RocketConfig.fir@254771.4]
  assign nextAddr = {_T_9,3'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@254772.4]
  assign _T_13 = bodyValid[0] ? 4'hf : 4'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@254776.4]
  assign _T_15 = bodyValid[1] ? 4'hf : 4'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@254778.4]
  assign wmask = {_T_15,_T_13}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@254779.4]
  assign _GEN_55 = {{32'd0}, nextAddr}; // @[SerialAdapter.scala 85:28:chipyard.TestHarness.RocketConfig.fir@254780.4]
  assign addr_size = _GEN_55 - addr; // @[SerialAdapter.scala 85:28:chipyard.TestHarness.RocketConfig.fir@254781.4]
  assign _T_18 = len + 64'h1; // @[SerialAdapter.scala 86:26:chipyard.TestHarness.RocketConfig.fir@254783.4]
  assign len_size = {_T_18,2'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@254784.4]
  assign _GEN_56 = {{2'd0}, addr_size}; // @[SerialAdapter.scala 87:31:chipyard.TestHarness.RocketConfig.fir@254785.4]
  assign _T_19 = len_size < _GEN_56; // @[SerialAdapter.scala 87:31:chipyard.TestHarness.RocketConfig.fir@254785.4]
  assign raw_size = _T_19 ? len_size : {{2'd0}, addr_size}; // @[SerialAdapter.scala 87:21:chipyard.TestHarness.RocketConfig.fir@254786.4]
  assign _T_20 = 66'h1 == raw_size; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@254787.4]
  assign _T_21 = _T_20 ? 2'h0 : 2'h3; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@254788.4]
  assign _T_22 = 66'h2 == raw_size; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@254789.4]
  assign _T_23 = _T_22 ? 2'h1 : _T_21; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@254790.4]
  assign _T_24 = 66'h4 == raw_size; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@254791.4]
  assign rsize = _T_24 ? 2'h2 : _T_23; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@254792.4]
  assign _T_91 = raw_size[0] + raw_size[1]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254859.4]
  assign _T_93 = raw_size[2] + raw_size[3]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254861.4]
  assign _T_95 = _T_91 + _T_93; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254863.4]
  assign _T_97 = raw_size[4] + raw_size[5]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254865.4]
  assign _T_99 = raw_size[6] + raw_size[7]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254867.4]
  assign _T_101 = _T_97 + _T_99; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254869.4]
  assign _T_103 = _T_95 + _T_101; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254871.4]
  assign _T_105 = raw_size[8] + raw_size[9]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254873.4]
  assign _T_107 = raw_size[10] + raw_size[11]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254875.4]
  assign _T_109 = _T_105 + _T_107; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254877.4]
  assign _T_111 = raw_size[12] + raw_size[13]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254879.4]
  assign _T_113 = raw_size[14] + raw_size[15]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254881.4]
  assign _T_115 = _T_111 + _T_113; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254883.4]
  assign _T_117 = _T_109 + _T_115; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254885.4]
  assign _T_119 = _T_103 + _T_117; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254887.4]
  assign _T_121 = raw_size[16] + raw_size[17]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254889.4]
  assign _T_123 = raw_size[18] + raw_size[19]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254891.4]
  assign _T_125 = _T_121 + _T_123; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254893.4]
  assign _T_127 = raw_size[20] + raw_size[21]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254895.4]
  assign _T_129 = raw_size[22] + raw_size[23]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254897.4]
  assign _T_131 = _T_127 + _T_129; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254899.4]
  assign _T_133 = _T_125 + _T_131; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254901.4]
  assign _T_135 = raw_size[24] + raw_size[25]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254903.4]
  assign _T_137 = raw_size[26] + raw_size[27]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254905.4]
  assign _T_139 = _T_135 + _T_137; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254907.4]
  assign _T_141 = raw_size[28] + raw_size[29]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254909.4]
  assign _T_143 = raw_size[31] + raw_size[32]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254911.4]
  assign _GEN_57 = {{1'd0}, raw_size[30]}; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254913.4]
  assign _T_145 = _GEN_57 + _T_143; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254913.4]
  assign _T_147 = _T_141 + _T_145[1:0]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254915.4]
  assign _T_149 = _T_139 + _T_147; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254917.4]
  assign _T_151 = _T_133 + _T_149; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254919.4]
  assign _T_153 = _T_119 + _T_151; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254921.4]
  assign _T_155 = raw_size[33] + raw_size[34]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254923.4]
  assign _T_157 = raw_size[35] + raw_size[36]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254925.4]
  assign _T_159 = _T_155 + _T_157; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254927.4]
  assign _T_161 = raw_size[37] + raw_size[38]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254929.4]
  assign _T_163 = raw_size[39] + raw_size[40]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254931.4]
  assign _T_165 = _T_161 + _T_163; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254933.4]
  assign _T_167 = _T_159 + _T_165; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254935.4]
  assign _T_169 = raw_size[41] + raw_size[42]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254937.4]
  assign _T_171 = raw_size[43] + raw_size[44]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254939.4]
  assign _T_173 = _T_169 + _T_171; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254941.4]
  assign _T_175 = raw_size[45] + raw_size[46]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254943.4]
  assign _T_177 = raw_size[47] + raw_size[48]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254945.4]
  assign _T_179 = _T_175 + _T_177; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254947.4]
  assign _T_181 = _T_173 + _T_179; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254949.4]
  assign _T_183 = _T_167 + _T_181; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254951.4]
  assign _T_185 = raw_size[49] + raw_size[50]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254953.4]
  assign _T_187 = raw_size[51] + raw_size[52]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254955.4]
  assign _T_189 = _T_185 + _T_187; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254957.4]
  assign _T_191 = raw_size[53] + raw_size[54]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254959.4]
  assign _T_193 = raw_size[55] + raw_size[56]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254961.4]
  assign _T_195 = _T_191 + _T_193; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254963.4]
  assign _T_197 = _T_189 + _T_195; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254965.4]
  assign _T_199 = raw_size[57] + raw_size[58]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254967.4]
  assign _T_201 = raw_size[59] + raw_size[60]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254969.4]
  assign _T_203 = _T_199 + _T_201; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254971.4]
  assign _T_205 = raw_size[61] + raw_size[62]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254973.4]
  assign _T_207 = raw_size[64] + raw_size[65]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254975.4]
  assign _GEN_58 = {{1'd0}, raw_size[63]}; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254977.4]
  assign _T_209 = _GEN_58 + _T_207; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254977.4]
  assign _T_211 = _T_205 + _T_209[1:0]; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254979.4]
  assign _T_213 = _T_203 + _T_211; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254981.4]
  assign _T_215 = _T_197 + _T_213; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254983.4]
  assign _T_217 = _T_183 + _T_215; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254985.4]
  assign _T_219 = _T_153 + _T_217; // @[Bitwise.scala 47:55:chipyard.TestHarness.RocketConfig.fir@254987.4]
  assign pow2size = _T_219 == 7'h1; // @[SerialAdapter.scala 91:37:chipyard.TestHarness.RocketConfig.fir@254989.4]
  assign byteAddr = pow2size ? addr[2:0] : 3'h0; // @[SerialAdapter.scala 92:21:chipyard.TestHarness.RocketConfig.fir@254991.4]
  assign put_acquire_address = {beatAddr, 3'h0}; // @[SerialAdapter.scala 95:19:chipyard.TestHarness.RocketConfig.fir@254992.4]
  assign put_acquire_data = {body_1,body_0}; // @[SerialAdapter.scala 96:10:chipyard.TestHarness.RocketConfig.fir@254993.4]
  assign get_acquire_address = {beatAddr,byteAddr}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@255058.4]
  assign _T_331 = {{1'd0}, rsize}; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@255118.4]
  assign _T_333 = 4'h1 << _T_331[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@255120.4]
  assign _T_335 = _T_333[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@255122.4]
  assign _T_336 = rsize >= 2'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@255123.4]
  assign _T_339 = ~get_acquire_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255126.4]
  assign _T_341 = _T_335[2] & _T_339; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255128.4]
  assign _T_342 = _T_336 | _T_341; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255129.4]
  assign _T_344 = _T_335[2] & get_acquire_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255131.4]
  assign _T_345 = _T_336 | _T_344; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255132.4]
  assign _T_348 = ~get_acquire_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255135.4]
  assign _T_349 = _T_339 & _T_348; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255136.4]
  assign _T_350 = _T_335[1] & _T_349; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255137.4]
  assign _T_351 = _T_342 | _T_350; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255138.4]
  assign _T_352 = _T_339 & get_acquire_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255139.4]
  assign _T_353 = _T_335[1] & _T_352; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255140.4]
  assign _T_354 = _T_342 | _T_353; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255141.4]
  assign _T_355 = get_acquire_address[2] & _T_348; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255142.4]
  assign _T_356 = _T_335[1] & _T_355; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255143.4]
  assign _T_357 = _T_345 | _T_356; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255144.4]
  assign _T_358 = get_acquire_address[2] & get_acquire_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255145.4]
  assign _T_359 = _T_335[1] & _T_358; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255146.4]
  assign _T_360 = _T_345 | _T_359; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255147.4]
  assign _T_363 = ~get_acquire_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255150.4]
  assign _T_364 = _T_349 & _T_363; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255151.4]
  assign _T_365 = _T_335[0] & _T_364; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255152.4]
  assign _T_366 = _T_351 | _T_365; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255153.4]
  assign _T_367 = _T_349 & get_acquire_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255154.4]
  assign _T_368 = _T_335[0] & _T_367; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255155.4]
  assign _T_369 = _T_351 | _T_368; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255156.4]
  assign _T_370 = _T_352 & _T_363; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255157.4]
  assign _T_371 = _T_335[0] & _T_370; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255158.4]
  assign _T_372 = _T_354 | _T_371; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255159.4]
  assign _T_373 = _T_352 & get_acquire_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255160.4]
  assign _T_374 = _T_335[0] & _T_373; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255161.4]
  assign _T_375 = _T_354 | _T_374; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255162.4]
  assign _T_376 = _T_355 & _T_363; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255163.4]
  assign _T_377 = _T_335[0] & _T_376; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255164.4]
  assign _T_378 = _T_357 | _T_377; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255165.4]
  assign _T_379 = _T_355 & get_acquire_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255166.4]
  assign _T_380 = _T_335[0] & _T_379; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255167.4]
  assign _T_381 = _T_357 | _T_380; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255168.4]
  assign _T_382 = _T_358 & _T_363; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255169.4]
  assign _T_383 = _T_335[0] & _T_382; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255170.4]
  assign _T_384 = _T_360 | _T_383; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255171.4]
  assign _T_385 = _T_358 & get_acquire_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255172.4]
  assign _T_386 = _T_335[0] & _T_385; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255173.4]
  assign _T_387 = _T_360 | _T_386; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255174.4]
  assign get_acquire_mask = {_T_387,_T_384,_T_381,_T_378,_T_375,_T_372,_T_369,_T_366}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@255181.4]
  assign _T_395 = state == 4'h7; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@255185.4]
  assign _T_396 = state == 4'h3; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@255186.4]
  assign get_acquire_size = {{2'd0}, rsize}; // @[Edges.scala 430:17:chipyard.TestHarness.RocketConfig.fir@255111.4 Edges.scala 433:15:chipyard.TestHarness.RocketConfig.fir@255115.4]
  assign _T_402 = state == 4'h8; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@255205.4]
  assign _T_403 = state == 4'h4; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@255206.4]
  assign _T_407 = _T & io_serial_in_valid; // @[SerialAdapter.scala 116:25:chipyard.TestHarness.RocketConfig.fir@255213.4]
  assign _GEN_3 = _T_407 ? 1'h0 : idx; // @[SerialAdapter.scala 116:48:chipyard.TestHarness.RocketConfig.fir@255214.4]
  assign _GEN_4 = _T_407 ? 64'h0 : addr; // @[SerialAdapter.scala 116:48:chipyard.TestHarness.RocketConfig.fir@255214.4]
  assign _GEN_5 = _T_407 ? 64'h0 : len; // @[SerialAdapter.scala 116:48:chipyard.TestHarness.RocketConfig.fir@255214.4]
  assign _GEN_6 = _T_407 ? 4'h1 : state; // @[SerialAdapter.scala 116:48:chipyard.TestHarness.RocketConfig.fir@255214.4]
  assign _T_409 = _T_1 & io_serial_in_valid; // @[SerialAdapter.scala 124:26:chipyard.TestHarness.RocketConfig.fir@255222.4]
  assign _T_411 = {idx,5'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@255225.6]
  assign _GEN_59 = {{63'd0}, io_serial_in_bits}; // @[SerialAdapter.scala 110:12:chipyard.TestHarness.RocketConfig.fir@255226.6]
  assign _T_412 = _GEN_59 << _T_411; // @[SerialAdapter.scala 110:12:chipyard.TestHarness.RocketConfig.fir@255226.6]
  assign _GEN_60 = {{31'd0}, addr}; // @[SerialAdapter.scala 125:18:chipyard.TestHarness.RocketConfig.fir@255227.6]
  assign _T_413 = _GEN_60 | _T_412; // @[SerialAdapter.scala 125:18:chipyard.TestHarness.RocketConfig.fir@255227.6]
  assign _T_415 = idx + 1'h1; // @[SerialAdapter.scala 126:16:chipyard.TestHarness.RocketConfig.fir@255230.6]
  assign _GEN_7 = idx ? 1'h0 : _T_415; // @[SerialAdapter.scala 127:43:chipyard.TestHarness.RocketConfig.fir@255233.6]
  assign _GEN_8 = idx ? 4'h2 : _GEN_6; // @[SerialAdapter.scala 127:43:chipyard.TestHarness.RocketConfig.fir@255233.6]
  assign _GEN_9 = _T_409 ? _T_413 : {{31'd0}, _GEN_4}; // @[SerialAdapter.scala 124:49:chipyard.TestHarness.RocketConfig.fir@255223.4]
  assign _GEN_10 = _T_409 ? _GEN_7 : _GEN_3; // @[SerialAdapter.scala 124:49:chipyard.TestHarness.RocketConfig.fir@255223.4]
  assign _GEN_11 = _T_409 ? _GEN_8 : _GEN_6; // @[SerialAdapter.scala 124:49:chipyard.TestHarness.RocketConfig.fir@255223.4]
  assign _T_418 = _T_2 & io_serial_in_valid; // @[SerialAdapter.scala 133:25:chipyard.TestHarness.RocketConfig.fir@255239.4]
  assign _GEN_62 = {{31'd0}, len}; // @[SerialAdapter.scala 134:16:chipyard.TestHarness.RocketConfig.fir@255244.6]
  assign _T_422 = _GEN_62 | _T_412; // @[SerialAdapter.scala 134:16:chipyard.TestHarness.RocketConfig.fir@255244.6]
  assign _T_427 = cmd == 32'h1; // @[SerialAdapter.scala 138:17:chipyard.TestHarness.RocketConfig.fir@255253.8]
  assign _T_428 = cmd == 32'h0; // @[SerialAdapter.scala 141:24:chipyard.TestHarness.RocketConfig.fir@255259.10]
  assign _T_431 = ~reset; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255266.12]
  assign _GEN_15 = idx ? addr[2] : _T_415; // @[SerialAdapter.scala 136:43:chipyard.TestHarness.RocketConfig.fir@255250.6]
  assign _GEN_18 = _T_418 ? _T_422 : {{31'd0}, _GEN_5}; // @[SerialAdapter.scala 133:48:chipyard.TestHarness.RocketConfig.fir@255240.4]
  assign _GEN_19 = _T_418 ? _GEN_15 : _GEN_10; // @[SerialAdapter.scala 133:48:chipyard.TestHarness.RocketConfig.fir@255240.4]
  assign _T_433 = _T_396 & auto_out_a_ready; // @[SerialAdapter.scala 149:30:chipyard.TestHarness.RocketConfig.fir@255275.4]
  assign _T_435 = _T_403 & auto_out_d_valid; // @[SerialAdapter.scala 153:31:chipyard.TestHarness.RocketConfig.fir@255280.4]
  assign _GEN_25 = _T_435 ? addr[2] : _GEN_19; // @[SerialAdapter.scala 153:47:chipyard.TestHarness.RocketConfig.fir@255281.4]
  assign _GEN_26 = _T_435 ? {{63'd0}, nextAddr} : _GEN_9; // @[SerialAdapter.scala 153:47:chipyard.TestHarness.RocketConfig.fir@255281.4]
  assign _T_442 = _T_7 & io_serial_out_ready; // @[SerialAdapter.scala 160:31:chipyard.TestHarness.RocketConfig.fir@255297.4]
  assign _T_446 = len - 64'h1; // @[SerialAdapter.scala 162:16:chipyard.TestHarness.RocketConfig.fir@255303.6]
  assign _T_447 = len == 64'h0; // @[SerialAdapter.scala 163:15:chipyard.TestHarness.RocketConfig.fir@255305.6]
  assign _GEN_30 = _T_442 ? _T_415 : _GEN_25; // @[SerialAdapter.scala 160:55:chipyard.TestHarness.RocketConfig.fir@255298.4]
  assign _GEN_31 = _T_442 ? {{31'd0}, _T_446} : _GEN_18; // @[SerialAdapter.scala 160:55:chipyard.TestHarness.RocketConfig.fir@255298.4]
  assign _T_450 = _T_3 & io_serial_in_valid; // @[SerialAdapter.scala 167:32:chipyard.TestHarness.RocketConfig.fir@255316.4]
  assign _T_451 = 2'h1 << idx; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@255319.6]
  assign _T_452 = bodyValid | _T_451; // @[SerialAdapter.scala 169:28:chipyard.TestHarness.RocketConfig.fir@255320.6]
  assign _T_455 = idx | _T_447; // @[SerialAdapter.scala 170:42:chipyard.TestHarness.RocketConfig.fir@255324.6]
  assign _GEN_36 = _T_455 ? _GEN_30 : _T_415; // @[SerialAdapter.scala 170:58:chipyard.TestHarness.RocketConfig.fir@255325.6]
  assign _GEN_37 = _T_455 ? _GEN_31 : {{31'd0}, _T_446}; // @[SerialAdapter.scala 170:58:chipyard.TestHarness.RocketConfig.fir@255325.6]
  assign _GEN_42 = _T_450 ? _GEN_36 : _GEN_30; // @[SerialAdapter.scala 167:55:chipyard.TestHarness.RocketConfig.fir@255317.4]
  assign _GEN_43 = _T_450 ? _GEN_37 : _GEN_31; // @[SerialAdapter.scala 167:55:chipyard.TestHarness.RocketConfig.fir@255317.4]
  assign _T_461 = _T_395 & auto_out_a_ready; // @[SerialAdapter.scala 178:32:chipyard.TestHarness.RocketConfig.fir@255338.4]
  assign _T_463 = _T_402 & auto_out_d_valid; // @[SerialAdapter.scala 182:31:chipyard.TestHarness.RocketConfig.fir@255343.4]
  assign _GEN_46 = _T_447 ? _GEN_26 : {{63'd0}, nextAddr}; // @[SerialAdapter.scala 183:24:chipyard.TestHarness.RocketConfig.fir@255346.6]
  assign _GEN_47 = _T_447 ? _GEN_43 : {{31'd0}, _T_446}; // @[SerialAdapter.scala 183:24:chipyard.TestHarness.RocketConfig.fir@255346.6]
  assign _GEN_48 = _T_447 & _GEN_42; // @[SerialAdapter.scala 183:24:chipyard.TestHarness.RocketConfig.fir@255346.6]
  assign _GEN_51 = _T_463 ? _GEN_46 : _GEN_26; // @[SerialAdapter.scala 182:47:chipyard.TestHarness.RocketConfig.fir@255344.4]
  assign _GEN_52 = _T_463 ? _GEN_47 : _GEN_43; // @[SerialAdapter.scala 182:47:chipyard.TestHarness.RocketConfig.fir@255344.4]
  assign auto_out_a_valid = _T_395 | _T_396; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@254750.4]
  assign auto_out_a_bits_opcode = _T_395 ? 3'h1 : 3'h4; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@254750.4]
  assign auto_out_a_bits_size = _T_395 ? 4'h3 : get_acquire_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@254750.4]
  assign auto_out_a_bits_address = _T_395 ? put_acquire_address : get_acquire_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@254750.4]
  assign auto_out_a_bits_mask = _T_395 ? wmask : get_acquire_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@254750.4]
  assign auto_out_a_bits_data = _T_395 ? put_acquire_data : 64'h0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@254750.4]
  assign auto_out_d_ready = _T_402 | _T_403; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@254750.4]
  assign io_serial_in_ready = _T_5 | _T_3; // @[SerialAdapter.scala 77:22:chipyard.TestHarness.RocketConfig.fir@254765.4]
  assign io_serial_out_valid = state == 4'h5; // @[SerialAdapter.scala 78:23:chipyard.TestHarness.RocketConfig.fir@254767.4]
  assign io_serial_out_bits = idx ? body_1 : body_0; // @[SerialAdapter.scala 79:22:chipyard.TestHarness.RocketConfig.fir@254768.4]
  assign _GEN_63 = _T_418 & idx; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  assign _GEN_64 = ~_T_427; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  assign _GEN_65 = _GEN_63 & _GEN_64; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  assign _GEN_66 = ~_T_428; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
  assign _GEN_67 = _GEN_65 & _GEN_66; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
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
  cmd = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  addr = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  len = _RAND_2[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  body_0 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  body_1 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  bodyValid = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  idx = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  state = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_407) begin
      cmd <= io_serial_in_bits;
    end
    addr <= _GEN_51[63:0];
    len <= _GEN_52[63:0];
    if (_T_450) begin
      if (~idx) begin
        body_0 <= io_serial_in_bits;
      end else if (_T_435) begin
        body_0 <= auto_out_d_bits_data[31:0];
      end
    end else if (_T_435) begin
      body_0 <= auto_out_d_bits_data[31:0];
    end
    if (_T_450) begin
      if (idx) begin
        body_1 <= io_serial_in_bits;
      end else if (_T_435) begin
        body_1 <= auto_out_d_bits_data[63:32];
      end
    end else if (_T_435) begin
      body_1 <= auto_out_d_bits_data[63:32];
    end
    if (_T_463) begin
      if (_T_447) begin
        if (_T_450) begin
          bodyValid <= _T_452;
        end else if (_T_418) begin
          if (idx) begin
            if (_T_427) begin
              bodyValid <= 2'h0;
            end
          end
        end
      end else begin
        bodyValid <= 2'h0;
      end
    end else if (_T_450) begin
      bodyValid <= _T_452;
    end else if (_T_418) begin
      if (idx) begin
        if (_T_427) begin
          bodyValid <= 2'h0;
        end
      end
    end
    if (_T_463) begin
      idx <= _GEN_48;
    end else if (_T_450) begin
      if (_T_455) begin
        if (_T_442) begin
          idx <= _T_415;
        end else if (_T_435) begin
          idx <= addr[2];
        end else if (_T_418) begin
          if (idx) begin
            idx <= addr[2];
          end else begin
            idx <= _T_415;
          end
        end else if (_T_409) begin
          if (idx) begin
            idx <= 1'h0;
          end else begin
            idx <= _T_415;
          end
        end else if (_T_407) begin
          idx <= 1'h0;
        end
      end else begin
        idx <= _T_415;
      end
    end else if (_T_442) begin
      idx <= _T_415;
    end else if (_T_435) begin
      idx <= addr[2];
    end else if (_T_418) begin
      if (idx) begin
        idx <= addr[2];
      end else begin
        idx <= _T_415;
      end
    end else if (_T_409) begin
      if (idx) begin
        idx <= 1'h0;
      end else begin
        idx <= _T_415;
      end
    end else if (_T_407) begin
      idx <= 1'h0;
    end
    if (reset) begin
      state <= 4'h0;
    end else if (_T_463) begin
      if (_T_447) begin
        state <= 4'h0;
      end else begin
        state <= 4'h6;
      end
    end else if (_T_461) begin
      state <= 4'h8;
    end else if (_T_450) begin
      if (_T_455) begin
        state <= 4'h7;
      end else if (_T_442) begin
        if (_T_447) begin
          state <= 4'h0;
        end else if (idx) begin
          state <= 4'h3;
        end else if (_T_435) begin
          state <= 4'h5;
        end else if (_T_433) begin
          state <= 4'h4;
        end else if (_T_418) begin
          if (idx) begin
            if (_T_427) begin
              state <= 4'h6;
            end else if (_T_428) begin
              state <= 4'h3;
            end else if (_T_409) begin
              if (idx) begin
                state <= 4'h2;
              end else if (_T_407) begin
                state <= 4'h1;
              end
            end else if (_T_407) begin
              state <= 4'h1;
            end
          end else if (_T_409) begin
            if (idx) begin
              state <= 4'h2;
            end else if (_T_407) begin
              state <= 4'h1;
            end
          end else if (_T_407) begin
            state <= 4'h1;
          end
        end else if (_T_409) begin
          if (idx) begin
            state <= 4'h2;
          end else begin
            state <= _GEN_6;
          end
        end else begin
          state <= _GEN_6;
        end
      end else if (_T_435) begin
        state <= 4'h5;
      end else if (_T_433) begin
        state <= 4'h4;
      end else if (_T_418) begin
        if (idx) begin
          if (_T_427) begin
            state <= 4'h6;
          end else if (_T_428) begin
            state <= 4'h3;
          end else if (_T_409) begin
            if (idx) begin
              state <= 4'h2;
            end else begin
              state <= _GEN_6;
            end
          end else begin
            state <= _GEN_6;
          end
        end else begin
          state <= _GEN_11;
        end
      end else begin
        state <= _GEN_11;
      end
    end else if (_T_442) begin
      if (_T_447) begin
        state <= 4'h0;
      end else if (idx) begin
        state <= 4'h3;
      end else if (_T_435) begin
        state <= 4'h5;
      end else if (_T_433) begin
        state <= 4'h4;
      end else if (_T_418) begin
        if (idx) begin
          if (_T_427) begin
            state <= 4'h6;
          end else if (_T_428) begin
            state <= 4'h3;
          end else begin
            state <= _GEN_11;
          end
        end else begin
          state <= _GEN_11;
        end
      end else begin
        state <= _GEN_11;
      end
    end else if (_T_435) begin
      state <= 4'h5;
    end else if (_T_433) begin
      state <= 4'h4;
    end else if (_T_418) begin
      if (idx) begin
        if (_T_427) begin
          state <= 4'h6;
        end else if (_T_428) begin
          state <= 4'h3;
        end else begin
          state <= _GEN_11;
        end
      end else begin
        state <= _GEN_11;
      end
    end else begin
      state <= _GEN_11;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_431) begin
          $fwrite(32'h80000002,"Assertion failed: Bad TSI command\n    at SerialAdapter.scala:144 assert(false.B, \"Bad TSI command\")\n"); // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255268.14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_431) begin
          $fatal; // @[SerialAdapter.scala 144:15:chipyard.TestHarness.RocketConfig.fir@255269.14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
