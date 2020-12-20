import chisel3._

class Mux4 extends Module {
    val io = IO(new Bundle {
        val selector = Input(UInt(2.W))
        val in_0 = Input(UInt(1.W))
        val in_1 = Input(UInt(1.W))
        val in_2 = Input(UInt(1.W))
        val in_3 = Input(UInt(1.W))
        val out = Output(UInt(1.W))
    })

    // モジュール内でモジュールを使うには new したモジュールを引数に
    // Module.apply メソッドに渡してから使う。
    // val m0_1 = Module(new Mux2())
    // m0_1.io.selector := io.selector(0)
    // m0_1.io.in_0 := io.in_0
    // m0_1.io.in_1 := io.in_1
    //
    // val m2_3 = Module(new Mux2())
    // m2_3.io.selector := io.selector(0)
    // m2_3.io.in_0 := io.in_2
    // m2_3.io.in_1 := io.in_3
    //
    // val m = Module(new Mux2())
    // m.io.selector := io.selector(1)
    // m.io.in_0 := m0_1.io.out
    // m.io.in_1 := m2_3.io.out
    //
    // io.out := m.io.out
    //
    // Mux2.scalaで関数化してあるので以下のように単純で済む
    io.out := Mux2(io.selector(1),
      Mux2(io.selector(0), io.in_0, io.in_1), 
      Mux2(io.selector(0), io.in_2, io.in_3))
}

object Mux4 extends App {
    chisel3.Driver.execute(args, () => new Mux4)
}