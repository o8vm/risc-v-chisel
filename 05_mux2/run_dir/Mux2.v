module Mux2(
  input   clock,
  input   reset,
  input   io_selector,
  input   io_in_0,
  input   io_in_1,
  output  io_out
);
  wire  _T = ~io_selector; // @[Mux2.scala 15:16]
  wire  _T_1 = _T & io_in_0; // @[Mux2.scala 15:29]
  wire  _T_2 = io_selector & io_in_1; // @[Mux2.scala 15:55]
  assign io_out = _T_1 | _T_2; // @[Mux2.scala 15:12]
endmodule
