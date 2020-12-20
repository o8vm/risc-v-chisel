import chisel3._

class IntCompare extends Module {
    val io = IO(new Bundle {
        val a = Input(UInt(4.W))
        val b = Input(UInt(4.W))
        val bit_ope = Output(Bool())
        val bit_reduction = Output(Bool())
        val equal_ope = Output(Bool())
        val equal_5 = Output(Bool())
        val not_5 = Output(Bool())
    })

    // ビット毎に比較して一つでも違いがあれば等しくない
    io.bit_ope := ~(io.a(0) ^ io.b(0) | io.a(1) ^ io.b(1) | io.a(2) ^ io.b(2) | io.a(3) ^ io.b(3))

    // aとbのビット毎の比較は a ^ b のようにまとめてできる
    // a(0) | a(1) | a(2) | a(3) のように書くには大変なので、orR 演算子が用意されている。
    io.bit_reduction := ~((io.a ^ io.b).orR())

    // Chisel にも等値演算子があるので上記のような面倒なことは実際はしない
    io.equal_ope := io.a === io.b

    // 数値リテラルとの比較もできる。不足するビットは、大きい方に合わせる
    io.equal_5 := io.a === 5.U

    // 等しくない場合は
    io.not_5 := io.a =/= 5.U
}

object IntCompare extends App {
    chisel3.Driver.execute(args, () => new IntCompare())
}