fun main() {
    KBD.init()
    while(true) {
        val key = KBD.waitKey(50)
        if (key != 0.toChar()) {
            println("Key pressed: $key")
        }
    }
}

object KBD { // Ler teclas. Métodos retornam ‘0’..’9’,’#’,’*’ ou NONE.
    private const val NONE = 0;
    private const val DVAL_MASK = 0x10;
    private const val D_MASK = 0xF;
    private const val ACK_MASK = 0x80;

    private val keys = listOf<Char>('1', '4', '7', '*', '2', '5', '8', '0', '3', '6', '9', '#')

    fun init() {
        HAL.init()
        HAL.clrBits(ACK_MASK)
    }

    fun getKey(): Char {
        if (HAL.isBit(DVAL_MASK)) {
            val key = keys[HAL.readBits(D_MASK)]
            HAL.setBits(ACK_MASK)
            while(HAL.isBit(DVAL_MASK)) {}
            HAL.clrBits(ACK_MASK)
            return key
        } else {
            return this.NONE.toChar()
        }
    }

    fun waitKey(timeout: Int): Char{
        val startTime = System.currentTimeMillis()
        var key = this.NONE.toChar()

        while (System.currentTimeMillis() - startTime < timeout && (key == this.NONE.toChar()) ) {
            key = getKey()
        }

        return key
    }
}