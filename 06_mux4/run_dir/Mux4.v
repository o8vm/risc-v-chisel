module Mux2(
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
module Mux4(
  input        clock,
  input        reset,
  input  [1:0] io_selector,
  input        io_in_0,
  input        io_in_1,
  input        io_in_2,
  input        io_in_3,
  output       io_out
);
  wire  Mux2_io_selector; // @[Mux2.scala 31:24]
  wire  Mux2_io_in_0; // @[Mux2.scala 31:24]
  wire  Mux2_io_in_1; // @[Mux2.scala 31:24]
  wire  Mux2_io_out; // @[Mux2.scala 31:24]
  wire  Mux2_1_io_selector; // @[Mux2.scala 31:24]
  wire  Mux2_1_io_in_0; // @[Mux2.scala 31:24]
  wire  Mux2_1_io_in_1; // @[Mux2.scala 31:24]
  wire  Mux2_1_io_out; // @[Mux2.scala 31:24]
  wire  Mux2_2_io_selector; // @[Mux2.scala 31:24]
  wire  Mux2_2_io_in_0; // @[Mux2.scala 31:24]
  wire  Mux2_2_io_in_1; // @[Mux2.scala 31:24]
  wire  Mux2_2_io_out; // @[Mux2.scala 31:24]
  Mux2 Mux2 ( // @[Mux2.scala 31:24]
    .io_selector(Mux2_io_selector),
    .io_in_0(Mux2_io_in_0),
    .io_in_1(Mux2_io_in_1),
    .io_out(Mux2_io_out)
  );
  Mux2 Mux2_1 ( // @[Mux2.scala 31:24]
    .io_selector(Mux2_1_io_selector),
    .io_in_0(Mux2_1_io_in_0),
    .io_in_1(Mux2_1_io_in_1),
    .io_out(Mux2_1_io_out)
  );
  Mux2 Mux2_2 ( // @[Mux2.scala 31:24]
    .io_selector(Mux2_2_io_selector),
    .io_in_0(Mux2_2_io_in_0),
    .io_in_1(Mux2_2_io_in_1),
    .io_out(Mux2_2_io_out)
  );
  assign io_out = Mux2_2_io_out; // @[Mux4.scala 33:12]
  assign Mux2_io_selector = io_selector[0]; // @[Mux2.scala 32:24]
  assign Mux2_io_in_0 = io_in_0; // @[Mux2.scala 33:20]
  assign Mux2_io_in_1 = io_in_1; // @[Mux2.scala 34:20]
  assign Mux2_1_io_selector = io_selector[0]; // @[Mux2.scala 32:24]
  assign Mux2_1_io_in_0 = io_in_2; // @[Mux2.scala 33:20]
  assign Mux2_1_io_in_1 = io_in_3; // @[Mux2.scala 34:20]
  assign Mux2_2_io_selector = io_selector[1]; // @[Mux2.scala 32:24]
  assign Mux2_2_io_in_0 = Mux2_io_out; // @[Mux2.scala 33:20]
  assign Mux2_2_io_in_1 = Mux2_1_io_out; // @[Mux2.scala 34:20]
endmodule
