object Scores {
    private const val MAX_SCORES = 20
    private var scores = mutableMapOf<String, Int>()

    fun init() {
        scores = FileAccess.loadScores()
        println("Scores initialized: $scores")
    }

    fun update(name: String, score: Int) {
        if (scores[name] == null || scores[name]!! > score) {
            scores[name] = score
        }
    }

    fun get() : List<Pair<String, Int>> {
        return scores.toList().sortedByDescending { (_, value) -> value }
    }

    fun save() {
        val orderedScores = scores.toList().sortedByDescending {
            (_, value) -> value
        }.take(MAX_SCORES).toMap()

        FileAccess.saveScores(orderedScores)

        println("Scores saved: $orderedScores")
    }
}