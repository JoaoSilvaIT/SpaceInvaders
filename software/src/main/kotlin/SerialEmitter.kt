object SerialEmitter {
    enum class Destination {LCD, SCORE}
    private const val SDX_MASK = 0x08
    private const val SCLK_MASK = 0x10
    private const val LCD_MASK = 0x01
    private const val S_MASK = 0x02

    fun init() {
        HAL.init()
    }

    fun send(addr: Destination, data: Int, size : Int) {
        val destMask = if (addr == Destination.LCD) LCD_MASK else S_MASK
        HAL.clrBits(destMask)

        var parity = 0
        for (i in 0..<size) {
            val bit = (data shr i) and 0b1
            if (bit != 0) {
                HAL.setBits(SDX_MASK)
                parity++
            } else
                HAL.clrBits(SDX_MASK)
            HAL.setBits(SCLK_MASK)
            HAL.clrBits(SCLK_MASK)
        }

        if (parity % 2 == 0)
            HAL.clrBits(SDX_MASK)
        else
            HAL.setBits(SDX_MASK)

        HAL.setBits(SCLK_MASK)
        HAL.clrBits(SCLK_MASK)
        HAL.setBits(destMask)
    }
}