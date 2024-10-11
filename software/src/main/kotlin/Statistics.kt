object Statistics {
    private const val COIN_VALUE = 2

    private var games = 0
    private var coins = 0

    fun init() {
        val (g, c) = FileAccess.loadStatistics()
        games = g
        coins = c

        println("Statistics initialized: $games games, $coins coins")
    }

    fun addCoin() {
        coins++
    }

    fun addGame() {
        games++
    }

    fun save() {
        FileAccess.saveStatistics(games, coins)

        println("Statistics saved: $games games, $coins coins")
    }

    fun reset() {
        games = 0
        coins = 0
    }

    fun get(): Pair<Int, Int> {
        return Pair(games, coins)
    }
}