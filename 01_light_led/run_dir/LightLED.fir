;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit LightLED : 
  module LightLED : 
    input clock : Clock
    input reset : UInt<1>
    output io : {led : UInt<1>}
    
    io.led <= UInt<1>("h01") @[LightLED.scala 18:12]
    
