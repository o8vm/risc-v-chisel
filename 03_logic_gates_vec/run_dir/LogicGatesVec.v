module LogicGatesVec(
  input   clock,
  input   reset,
  input   io_switches_0,
  input   io_switches_1,
  output  io_leds_0,
  output  io_leds_1,
  output  io_leds_2,
  output  io_leds_3,
  output  io_leds_4,
  output  io_leds_5,
  output  io_leds_6
);
  wire  _T_1 = io_switches_0 & io_switches_1; // @[LogicGatesVec.scala 19:35]
  wire  _T_2 = io_switches_0 | io_switches_1; // @[LogicGatesVec.scala 20:35]
  wire  _T_7 = io_switches_0 ^ io_switches_1; // @[LogicGatesVec.scala 23:35]
  assign io_leds_0 = ~io_switches_0; // @[LogicGatesVec.scala 18:17]
  assign io_leds_1 = io_switches_0 & io_switches_1; // @[LogicGatesVec.scala 19:17]
  assign io_leds_2 = io_switches_0 | io_switches_1; // @[LogicGatesVec.scala 20:17]
  assign io_leds_3 = ~_T_1; // @[LogicGatesVec.scala 21:17]
  assign io_leds_4 = ~_T_2; // @[LogicGatesVec.scala 22:17]
  assign io_leds_5 = io_switches_0 ^ io_switches_1; // @[LogicGatesVec.scala 23:17]
  assign io_leds_6 = ~_T_7; // @[LogicGatesVec.scala 24:17]
endmodule
