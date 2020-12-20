import chisel3._

/**
  * LED を点灯するだけのモジュール
  */
class LightLED extends Module {
    /**
      * 入出力のポート（信号線）を定義
      */
    val io = IO(new Bundle {
        /**
          * Module の外に出ていくポートを定義
          */
        val led = Output(Bool())
    })

    // 出力ポートの内容は、true
    io.led := true.B
}

/**
  * Verilogファイルを生成するためのオブジェクト
  */
object LightLED extends App {
    chisel3.Driver.execute(args, () => new LightLED())
}