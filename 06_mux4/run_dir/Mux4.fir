;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit Mux4 : 
  module Mux2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip selector : UInt<1>, flip in_0 : UInt<1>, flip in_1 : UInt<1>, out : UInt<1>}
    
    node _T = not(io.selector) @[Mux2.scala 15:16]
    node _T_1 = and(_T, io.in_0) @[Mux2.scala 15:29]
    node _T_2 = and(io.selector, io.in_1) @[Mux2.scala 15:55]
    node _T_3 = or(_T_1, _T_2) @[Mux2.scala 15:40]
    io.out <= _T_3 @[Mux2.scala 15:12]
    
  module Mux2_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip selector : UInt<1>, flip in_0 : UInt<1>, flip in_1 : UInt<1>, out : UInt<1>}
    
    node _T = not(io.selector) @[Mux2.scala 15:16]
    node _T_1 = and(_T, io.in_0) @[Mux2.scala 15:29]
    node _T_2 = and(io.selector, io.in_1) @[Mux2.scala 15:55]
    node _T_3 = or(_T_1, _T_2) @[Mux2.scala 15:40]
    io.out <= _T_3 @[Mux2.scala 15:12]
    
  module Mux2_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip selector : UInt<1>, flip in_0 : UInt<1>, flip in_1 : UInt<1>, out : UInt<1>}
    
    node _T = not(io.selector) @[Mux2.scala 15:16]
    node _T_1 = and(_T, io.in_0) @[Mux2.scala 15:29]
    node _T_2 = and(io.selector, io.in_1) @[Mux2.scala 15:55]
    node _T_3 = or(_T_1, _T_2) @[Mux2.scala 15:40]
    io.out <= _T_3 @[Mux2.scala 15:12]
    
  module Mux4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip selector : UInt<2>, flip in_0 : UInt<1>, flip in_1 : UInt<1>, flip in_2 : UInt<1>, flip in_3 : UInt<1>, out : UInt<1>}
    
    node _T = bits(io.selector, 1, 1) @[Mux4.scala 33:31]
    node _T_1 = bits(io.selector, 0, 0) @[Mux4.scala 34:23]
    inst Mux2 of Mux2 @[Mux2.scala 31:24]
    Mux2.clock <= clock
    Mux2.reset <= reset
    Mux2.io.selector <= _T_1 @[Mux2.scala 32:24]
    Mux2.io.in_0 <= io.in_0 @[Mux2.scala 33:20]
    Mux2.io.in_1 <= io.in_1 @[Mux2.scala 34:20]
    node _T_2 = bits(io.selector, 0, 0) @[Mux4.scala 35:23]
    inst Mux2_1 of Mux2_1 @[Mux2.scala 31:24]
    Mux2_1.clock <= clock
    Mux2_1.reset <= reset
    Mux2_1.io.selector <= _T_2 @[Mux2.scala 32:24]
    Mux2_1.io.in_0 <= io.in_2 @[Mux2.scala 33:20]
    Mux2_1.io.in_1 <= io.in_3 @[Mux2.scala 34:20]
    inst Mux2_2 of Mux2_2 @[Mux2.scala 31:24]
    Mux2_2.clock <= clock
    Mux2_2.reset <= reset
    Mux2_2.io.selector <= _T @[Mux2.scala 32:24]
    Mux2_2.io.in_0 <= Mux2.io.out @[Mux2.scala 33:20]
    Mux2_2.io.in_1 <= Mux2_1.io.out @[Mux2.scala 34:20]
    io.out <= Mux2_2.io.out @[Mux4.scala 33:12]
    
