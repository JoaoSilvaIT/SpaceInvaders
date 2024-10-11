fun main() {
    LCD.init()
    LCD.write("Hello, World!")
    LCD.cursor(1, 0)
    LCD.write("This is a test")
    Thread.sleep(2000)
    LCD.clear()
    LCD.write("Goodbye!")
    Thread.sleep(2000)
    LCD.clear()
    LCD.write("This is a test")
}

object LCD {
    private const val LINES = 2
    private const val COLS = 16
    private const val SERIAL_INTERFACE = true

    private const val CLK_MASK = 0x10
    // Parallel interface
    private const val DATA_MASK = 0x0f
    private const val RS_MASK = 0x40
    private const val E_MASK = 0x20

    fun init() {
        SerialEmitter.init()

        writeCMD(0b0011_0000)
        Thread.sleep(5)
        writeCMD(0b0011_0000)
        Thread.sleep(1)
        writeCMD(0b0011_0000)

        writeCMD(0b0011_1000)
        writeCMD(0b0000_1000)
        writeCMD(0b0000_0001)
        writeCMD(0b0000_0110)
        writeCMD(0b0000_1101)

        loadCharacters()
        cursor(0, 0)
    }

    private fun loadCharacters() {
        val upArrowSymbol = intArrayOf(0, 4, 14, 21, 4, 4, 4, 0)
        val downArrowSymbol = intArrayOf(0, 4, 4, 4, 21, 14, 4, 0)
        val euroSymbol = intArrayOf(7, 8, 30, 8, 30, 8, 7, 0)
        val spaceCraftSymbol = intArrayOf(30, 24, 28, 31, 28, 24, 30, 0)
            val invaderSymbol = intArrayOf(31, 31, 21, 31, 31, 17, 17, 0)
        writeCharacter(0, euroSymbol)
        writeCharacter(1, spaceCraftSymbol)
        writeCharacter(2, invaderSymbol)
        writeCharacter(4, upArrowSymbol)
        writeCharacter(5, downArrowSymbol)
    }

    private fun writeCharacter(pos: Int, data: IntArray) {
        setCGRAMaddr(pos)
        data.forEach { writeDATA(it) }
    }

    private fun setCGRAMaddr(addr: Int) {
        writeCMD(64 or (8 * addr))
    }

    private fun writeByteParallel(rs: Boolean, data: Int) {
        HAL.clrBits(CLK_MASK)

        if (rs)
            HAL.setBits(RS_MASK)
        else
            HAL.clrBits(RS_MASK)

        HAL.setBits(E_MASK)
        HAL.writeBits(DATA_MASK, data ushr 4)

        HAL.setBits(CLK_MASK)
        HAL.clrBits(CLK_MASK)

        HAL.writeBits(DATA_MASK, data)

        HAL.setBits(CLK_MASK)
        HAL.clrBits(CLK_MASK)

        HAL.clrBits(E_MASK)

    }

    private fun writeByteSerial(rs: Boolean, data: Int) {
        SerialEmitter.send(SerialEmitter.Destination.LCD, if (rs) (data shl 1) or 1 else (data shl 1), 9)
    }

    private fun writeByte(rs: Boolean, data: Int) {
        if (SERIAL_INTERFACE)
            writeByteSerial(rs, data)
        else
            writeByteParallel(rs, data)

    }

    private fun writeCMD(data: Int) {
        writeByte(false, data)
    }

    private fun writeDATA(data: Int) {
        writeByte(true, data)
    }

    fun write(c: Char) {
        writeDATA(c.code)
    }

    fun write(text: String) {
        text.forEach {
            writeDATA(it.code)
        }
    }

    fun cursor(line: Int, column: Int) {
        val addr = line * 0x40 + column
        writeCMD(addr or 0b1000_0000)
    }

    fun clear() {
        writeCMD(0b0000_0001)
    }

    fun controlDisplay(display: Boolean, cursor: Boolean, blink: Boolean) {
        var cmd = 0b0000_1000
        if (display)
            cmd = cmd or 0b0000_0100
        if (cursor)
            cmd = cmd or 0b0000_0010
        if (blink)
            cmd = cmd or 0b0000_0001
        writeCMD(cmd)
    }
}