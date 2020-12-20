module IntCompare(
  input        clock,
  input        reset,
  input  [3:0] io_a,
  input  [3:0] io_b,
  output       io_bit_ope,
  output       io_bit_reduction,
  output       io_equal_ope,
  output       io_equal_5,
  output       io_not_5
);
  wire  _T_2 = io_a[0] ^ io_b[0]; // @[IntCompare.scala 15:29]
  wire  _T_5 = io_a[1] ^ io_b[1]; // @[IntCompare.scala 15:49]
  wire  _T_6 = _T_2 | _T_5; // @[IntCompare.scala 15:39]
  wire  _T_9 = io_a[2] ^ io_b[2]; // @[IntCompare.scala 15:69]
  wire  _T_10 = _T_6 | _T_9; // @[IntCompare.scala 15:59]
  wire  _T_13 = io_a[3] ^ io_b[3]; // @[IntCompare.scala 15:89]
  wire  _T_14 = _T_10 | _T_13; // @[IntCompare.scala 15:79]
  wire [3:0] _T_16 = io_a ^ io_b; // @[IntCompare.scala 19:33]
  wire  _T_17 = |_T_16; // @[IntCompare.scala 19:44]
  assign io_bit_ope = ~_T_14; // @[IntCompare.scala 15:16]
  assign io_bit_reduction = ~_T_17; // @[IntCompare.scala 19:22]
  assign io_equal_ope = io_a == io_b; // @[IntCompare.scala 22:18]
  assign io_equal_5 = io_a == 4'h5; // @[IntCompare.scala 25:16]
  assign io_not_5 = io_a != 4'h5; // @[IntCompare.scala 28:14]
endmodule
