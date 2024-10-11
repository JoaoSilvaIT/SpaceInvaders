object TUI {
    private const val KBD_TIMEOUT = 50
    private const val LCD_WIDTH = 16
    private val screenData = arrayListOf("", "")
    private val lastScreenData = arrayListOf("", "")

    fun init() {
        KBD.init()
        LCD.init()
    }

    fun getChar(): Char {
        return KBD.waitKey(KBD_TIMEOUT)
    }

    fun writeChanges(line: Int, string: String, prevString: String, size: Int) {
        var currString = ""
        for (i in 0 ..size) {
            if (i < string.length) {
                if (i >= prevString.length || string[i] != prevString[i]) {
                    currString += string[i]
                } else if (currString.isNotEmpty()){
                    LCD.cursor(line, i - currString.length)
                    LCD.write(currString)
                    currString = ""
                }
            } else
                currString += " "
        }

        LCD.cursor(line, size - currString.length + 1)
        LCD.write(currString)
    }

    fun update() {
        screenData.forEachIndexed { row, line -> writeChanges(row, screenData[row], lastScreenData[row], LCD_WIDTH)}
        lastScreenData[0] = screenData[0]
        lastScreenData[1] = screenData[1]
    }

    private fun addText(text: String, line: Int) {
        screenData[line] += text
    }

    private fun setText(text: String, line: Int) {
        screenData[line] = text
    }

    private fun setText(text: String, line: Int, column: Int) {
        val lineData = screenData[line]
        if (column >= lineData.length) {
            screenData[line] += " ".repeat(column - lineData.length) + text
        } else if (column + text.length >= lineData.length) {
            screenData[line] = lineData.substring(0, column) + text
        } else {
            screenData[line] = lineData.substring(0, column) + text + lineData.substring(column + text.length)
        }
    }

    fun clearLine(line: Int) {
        screenData[line] = ""
    }

    fun clear() {
        screenData.clear()
        screenData.add("")
        screenData.add("")
    }

    fun drawGameTitle() {
        setText(" Space Invaders ", 0)
    }

    fun drawIdle(coins: Int) {
        setText(" Game \u0001  \u0002 \u0002", 1)
        setText("$$coins", 1, LCD_WIDTH - (coins.toString().length+1))
    }

    fun drawHighScore(scores: List<Pair<String, Int>>, index: Int) {
        val (name, score) = scores[index]
        var pos = (index + 1).toString()
        if (pos.length == 1) pos = "0$pos"
        setText("$pos-$name", 1)
        setText("$score", 1, LCD_WIDTH - score.toString().length)
    }

    fun drawMaintenance() {
        setText(" On Maintenance ", 0)
        setText("*-Count #-shutD", 1)
    }

    fun drawConfirmation(choice: String) {
        setText(choice, 0)
        setText("5-Yes other-No", 1)
    }

    fun drawCount(games: Int, coins: Int) {
        setText("Games: $games", 0)
        setText("Coins: $coins", 1)
    }

    fun drawCursor(line: Int, selected: Char?) {
        val char = "${selected ?: ']'}\u0001"
        setText(if (line == 0) char else "] ", 0, 0)
        setText(if (line == 1) char else "] ", 1, 0)
    }

    fun drawEnemies(enemy1: String, enemy2: String) {
        setText(" ".repeat(LCD_WIDTH - 2 - enemy1.length) + enemy1, 0, 2)
        setText(" ".repeat(LCD_WIDTH - 2 - enemy2.length) + enemy2, 1, 2)
    }

    fun drawGameOver() {
        setText("*** Game Over ***", 0)
    }

    fun drawScore(score: Int) {
        setText("Score:$score", 1)
    }

    fun drawName(name: String) {
        setText("Name:$name", 0)
    }

    fun activateCursor(active: Boolean) {
        LCD.controlDisplay(true, active, active)
    }

    fun setCursor(line: Int, column: Int) {
        LCD.cursor(line, column)
    }

    fun setScoreAnimation(currScore: Int) {
        val scoreValue = Array<Int>(6) { 0 }
        for (i in 0..5) {
            scoreValue[i] = ((currScore + i) % 5 + 10)
        }
        ScoreDisplay.setValues(scoreValue)
    }

    fun setScore(score: Int) {
        ScoreDisplay.setScore(score)
    }

    fun offScore(scoreOn: Boolean) {
        ScoreDisplay.off(scoreOn)
    }

}