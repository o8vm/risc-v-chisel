;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit Mux2 : 
  module Mux2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip selector : UInt<1>, flip in_0 : UInt<1>, flip in_1 : UInt<1>, out : UInt<1>}
    
    node _T = not(io.selector) @[Mux2.scala 15:16]
    node _T_1 = and(_T, io.in_0) @[Mux2.scala 15:29]
    node _T_2 = and(io.selector, io.in_1) @[Mux2.scala 15:55]
    node _T_3 = or(_T_1, _T_2) @[Mux2.scala 15:40]
    io.out <= _T_3 @[Mux2.scala 15:12]
    
