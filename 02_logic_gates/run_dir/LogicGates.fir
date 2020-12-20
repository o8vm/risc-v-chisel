;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit LogicGates : 
  module LogicGates : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip switch_a : UInt<1>, flip switch_b : UInt<1>, led_not : UInt<1>, led_and : UInt<1>, led_or : UInt<1>, led_nand : UInt<1>, led_nor : UInt<1>, led_xor : UInt<1>, led_nxor : UInt<1>}
    
    node _T = not(io.switch_a) @[LogicGates.scala 19:20]
    io.led_not <= _T @[LogicGates.scala 19:17]
    node _T_1 = and(io.switch_a, io.switch_b) @[LogicGates.scala 20:32]
    io.led_and <= _T_1 @[LogicGates.scala 20:17]
    node _T_2 = or(io.switch_a, io.switch_b) @[LogicGates.scala 21:32]
    io.led_or <= _T_2 @[LogicGates.scala 21:17]
    node _T_3 = and(io.switch_a, io.switch_b) @[LogicGates.scala 22:34]
    node _T_4 = not(_T_3) @[LogicGates.scala 22:20]
    io.led_nand <= _T_4 @[LogicGates.scala 22:17]
    node _T_5 = or(io.switch_a, io.switch_b) @[LogicGates.scala 23:34]
    node _T_6 = not(_T_5) @[LogicGates.scala 23:20]
    io.led_nor <= _T_6 @[LogicGates.scala 23:17]
    node _T_7 = xor(io.switch_a, io.switch_b) @[LogicGates.scala 24:32]
    io.led_xor <= _T_7 @[LogicGates.scala 24:17]
    node _T_8 = xor(io.switch_a, io.switch_b) @[LogicGates.scala 25:34]
    node _T_9 = not(_T_8) @[LogicGates.scala 25:20]
    io.led_nxor <= _T_9 @[LogicGates.scala 25:17]
    
