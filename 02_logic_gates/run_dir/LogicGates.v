module LogicGates(
  input   clock,
  input   reset,
  input   io_switch_a,
  input   io_switch_b,
  output  io_led_not,
  output  io_led_and,
  output  io_led_or,
  output  io_led_nand,
  output  io_led_nor,
  output  io_led_xor,
  output  io_led_nxor
);
  wire  _T_1 = io_switch_a & io_switch_b; // @[LogicGates.scala 20:32]
  wire  _T_2 = io_switch_a | io_switch_b; // @[LogicGates.scala 21:32]
  wire  _T_7 = io_switch_a ^ io_switch_b; // @[LogicGates.scala 24:32]
  assign io_led_not = ~io_switch_a; // @[LogicGates.scala 19:17]
  assign io_led_and = io_switch_a & io_switch_b; // @[LogicGates.scala 20:17]
  assign io_led_or = io_switch_a | io_switch_b; // @[LogicGates.scala 21:17]
  assign io_led_nand = ~_T_1; // @[LogicGates.scala 22:17]
  assign io_led_nor = ~_T_2; // @[LogicGates.scala 23:17]
  assign io_led_xor = io_switch_a ^ io_switch_b; // @[LogicGates.scala 24:17]
  assign io_led_nxor = ~_T_7; // @[LogicGates.scala 25:17]
endmodule
