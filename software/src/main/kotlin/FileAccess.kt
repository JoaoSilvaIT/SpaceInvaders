import java.io.File

object FileAccess {
    private const val SCORES_FILE = "scores.txt"
    private const val STATISTICS_FILE = "statistics.txt"

    private fun save(path: String, data: String) {
        val file = File(path)
        file.writeText(data)
    }

    private fun read(path: String): String? {
        var content: String? = null

        try {
            val file = File(path)
            content = file.readText()
        } catch (e: Exception) {
            println("Error reading file $path: ${e.message}")
        }

        return content
    }

    fun saveScores(scores: Map<String, Int>) {
        val data = scores.map { "${it.key};${it.value}" }.joinToString("\n")
        save(SCORES_FILE, data)
    }

    fun saveStatistics(games: Int, coins: Int) {
        save(STATISTICS_FILE, "$games $coins")
    }

    fun loadScores(): MutableMap<String, Int> {
        val content = read(SCORES_FILE)
        val scores = mutableMapOf<String, Int>()

        content?.split("\n", "\r")?.forEach {
            val list = it.split(";")
            val (name, score) = list
            scores[name] = score.toInt()
        }

        return scores
    }

    fun loadStatistics(): Pair<Int, Int> {
        val content = read(STATISTICS_FILE)
        val (games, coins) = content?.split(" ") ?: listOf("0", "0")
        return Pair(games.toInt(), coins.toInt())
    }
}