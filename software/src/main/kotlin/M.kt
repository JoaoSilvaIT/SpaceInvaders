object M {
    private const val MAINTENANCE_MASK = 0b10000000

    fun init () {
        HAL.init()
    }

    fun isActive() : Boolean {
        return HAL.isBit(MAINTENANCE_MASK)
    }

}