object CoinAcceptor {
    private const val COIN_MASK = 0b0100_0000

    fun init() {
        HAL.init()
    }

    fun hasNewCoin(): Boolean {
        var coinFound = false

        while (HAL.isBit(COIN_MASK)) {
            HAL.setBits(COIN_MASK)
            coinFound = true
        }

        HAL.clrBits(COIN_MASK)
        return coinFound
    }
}