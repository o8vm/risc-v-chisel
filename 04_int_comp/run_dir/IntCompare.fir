;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit IntCompare : 
  module IntCompare : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<4>, flip b : UInt<4>, bit_ope : UInt<1>, bit_reduction : UInt<1>, equal_ope : UInt<1>, equal_5 : UInt<1>, not_5 : UInt<1>}
    
    node _T = bits(io.a, 0, 0) @[IntCompare.scala 15:25]
    node _T_1 = bits(io.b, 0, 0) @[IntCompare.scala 15:35]
    node _T_2 = xor(_T, _T_1) @[IntCompare.scala 15:29]
    node _T_3 = bits(io.a, 1, 1) @[IntCompare.scala 15:45]
    node _T_4 = bits(io.b, 1, 1) @[IntCompare.scala 15:55]
    node _T_5 = xor(_T_3, _T_4) @[IntCompare.scala 15:49]
    node _T_6 = or(_T_2, _T_5) @[IntCompare.scala 15:39]
    node _T_7 = bits(io.a, 2, 2) @[IntCompare.scala 15:65]
    node _T_8 = bits(io.b, 2, 2) @[IntCompare.scala 15:75]
    node _T_9 = xor(_T_7, _T_8) @[IntCompare.scala 15:69]
    node _T_10 = or(_T_6, _T_9) @[IntCompare.scala 15:59]
    node _T_11 = bits(io.a, 3, 3) @[IntCompare.scala 15:85]
    node _T_12 = bits(io.b, 3, 3) @[IntCompare.scala 15:95]
    node _T_13 = xor(_T_11, _T_12) @[IntCompare.scala 15:89]
    node _T_14 = or(_T_10, _T_13) @[IntCompare.scala 15:79]
    node _T_15 = not(_T_14) @[IntCompare.scala 15:19]
    io.bit_ope <= _T_15 @[IntCompare.scala 15:16]
    node _T_16 = xor(io.a, io.b) @[IntCompare.scala 19:33]
    node _T_17 = orr(_T_16) @[IntCompare.scala 19:44]
    node _T_18 = not(_T_17) @[IntCompare.scala 19:25]
    io.bit_reduction <= _T_18 @[IntCompare.scala 19:22]
    node _T_19 = eq(io.a, io.b) @[IntCompare.scala 22:26]
    io.equal_ope <= _T_19 @[IntCompare.scala 22:18]
    node _T_20 = eq(io.a, UInt<3>("h05")) @[IntCompare.scala 25:24]
    io.equal_5 <= _T_20 @[IntCompare.scala 25:16]
    node _T_21 = neq(io.a, UInt<3>("h05")) @[IntCompare.scala 28:22]
    io.not_5 <= _T_21 @[IntCompare.scala 28:14]
    
