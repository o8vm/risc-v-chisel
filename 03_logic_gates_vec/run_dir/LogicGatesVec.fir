;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit LogicGatesVec : 
  module LogicGatesVec : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip switches : UInt<1>[2], leds : UInt<1>[7]}
    
    node _T = not(io.switches[0]) @[LogicGatesVec.scala 18:20]
    io.leds[0] <= _T @[LogicGatesVec.scala 18:17]
    node _T_1 = and(io.switches[0], io.switches[1]) @[LogicGatesVec.scala 19:35]
    io.leds[1] <= _T_1 @[LogicGatesVec.scala 19:17]
    node _T_2 = or(io.switches[0], io.switches[1]) @[LogicGatesVec.scala 20:35]
    io.leds[2] <= _T_2 @[LogicGatesVec.scala 20:17]
    node _T_3 = and(io.switches[0], io.switches[1]) @[LogicGatesVec.scala 21:37]
    node _T_4 = not(_T_3) @[LogicGatesVec.scala 21:20]
    io.leds[3] <= _T_4 @[LogicGatesVec.scala 21:17]
    node _T_5 = or(io.switches[0], io.switches[1]) @[LogicGatesVec.scala 22:37]
    node _T_6 = not(_T_5) @[LogicGatesVec.scala 22:20]
    io.leds[4] <= _T_6 @[LogicGatesVec.scala 22:17]
    node _T_7 = xor(io.switches[0], io.switches[1]) @[LogicGatesVec.scala 23:35]
    io.leds[5] <= _T_7 @[LogicGatesVec.scala 23:17]
    node _T_8 = xor(io.switches[0], io.switches[1]) @[LogicGatesVec.scala 24:37]
    node _T_9 = not(_T_8) @[LogicGatesVec.scala 24:20]
    io.leds[6] <= _T_9 @[LogicGatesVec.scala 24:17]
    
