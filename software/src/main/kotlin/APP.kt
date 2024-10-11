fun main() {
    APP.init()

    return
}

object APP {

    enum class State {
        IDLE,
        PLAYING,
        GAME_OVER,
        MAINTENANCE,
        SHUTDOWN
    }

    enum class MaintenanceState {
        IDLE,
        COUNT,
        COUNT_CLEAR,
        SHUTDOWN
    }

    enum class GameOverState {
        OVER,
        REQUEST_NAME
    }

    private var coins = 0
    private var state = State.IDLE
    private var score = 0
    private var testMode = false

    fun init() {
        M.init()
        CoinAcceptor.init()
        ScoreDisplay.init()
        TUI.init()
        Scores.init()
        Statistics.init()

        run()
    }

    private fun canPlay(): Boolean {
        return if (coins >= 1) {
            coins -= 1
            true
        } else {
            false
        }
    }

    private fun run() {
        var shutdown = false
        while (!shutdown) {
            when (state) {
                State.IDLE -> runIdle()
                State.PLAYING -> runPlaying()
                State.GAME_OVER -> runGameOver()
                State.MAINTENANCE -> runMaintenance()
                State.SHUTDOWN -> {
                    Statistics.save()
                    Scores.save()
                    TUI.clear()
                    TUI.update()
                    TUI.offScore(false)
                    shutdown = true
                }
            }
        }
    }

    private fun generateSpawnTime(baseTime: Long): Long {
        return baseTime + (0..(1000 + (1000 - baseTime)).toInt()).random()
    }

    private fun runPlaying() {
        var shouldUpdate = true
        var selected: Char? = null
        var baseTime = 1000L
        var spawnTime = generateSpawnTime(baseTime)
        var lastTime = System.currentTimeMillis()
        var line = 0
        val enemies = mutableListOf<String>("", "")

        score = 0

        TUI.clear()
        TUI.setScore(score)
        TUI.drawCursor(0, null)
        while(state == State.PLAYING) {

            if (System.currentTimeMillis() - lastTime > spawnTime) {
                spawnTime = generateSpawnTime(baseTime)
                lastTime = System.currentTimeMillis()

                if (enemies[0].length >= 13 || enemies[1].length >= 13) {
                    state = State.GAME_OVER
                } else {
                    enemies[(0..1).random()] += (0..9).random().toString()
                    TUI.drawEnemies(enemies[0], enemies[1])
                }
                shouldUpdate = true
            }

            when (val key = TUI.getChar()) {
                '*' -> {
                    line = if (line == 0) 1 else 0
                    selected = null
                    TUI.drawCursor(line, null)
                    shouldUpdate = true
                }
                '#' -> {
                    if (selected != null) {
                        if (enemies[line].startsWith(selected)) {
                            score += selected.toString().toInt() + 1
                            TUI.setScore(score)
                            enemies[line] = enemies[line].substring(1)
                            TUI.drawEnemies(enemies[0], enemies[1])
                            baseTime = if (baseTime > 100) baseTime - 50 else 100
                        }

                        TUI.drawCursor(line, null)
                        selected = null
                        shouldUpdate = true
                    }
                }
                in '0'..'9' -> {
                    selected = key
                    TUI.drawCursor(line, selected)
                    shouldUpdate = true
                }
            }

            if (shouldUpdate) {
                TUI.update()
                shouldUpdate = false
            }

        }
    }

    private fun runGameOver() {
        var gameOverState = GameOverState.OVER
        var lastTime = System.currentTimeMillis()
        val initTime = lastTime
        var shouldUpdate = true
        var nameIdx = 0
        var name = "A"
        var scoreOn = true
        var cursorActive = false

        while (state == State.GAME_OVER) {
            when (gameOverState) {
                GameOverState.OVER -> {
                    if (System.currentTimeMillis() - initTime > 3000) {
                        shouldUpdate = true
                        TUI.offScore(true)
                        if (score == 0 || testMode)
                            state = State.IDLE
                        else {
                            gameOverState = GameOverState.REQUEST_NAME
                            cursorActive = true
                        }
                    } else if (System.currentTimeMillis() - lastTime > 250) {
                        lastTime = System.currentTimeMillis()
                        scoreOn = !scoreOn
                        TUI.offScore(scoreOn)
                    }
                }
                GameOverState.REQUEST_NAME -> {
                    shouldUpdate = true
                    when (TUI.getChar()) {
                        '4' -> {
                            if (nameIdx > 0)
                                nameIdx--
                        }
                        '6' -> {
                            if (nameIdx < 6) {
                                nameIdx++
                                if (name.length <= nameIdx)
                                    name += "a"
                            }
                        }
                        '2' -> {
                            if (name[nameIdx] != 'Z' && name[nameIdx] != 'z')
                                name = name.substring(0, nameIdx) + (name[nameIdx] + 1) + name.substring(nameIdx + 1)
                        }
                        '8' -> {
                            if (name[nameIdx] != 'A' && name[nameIdx] != 'a')
                                name = name.substring(0, nameIdx) + (name[nameIdx] - 1) + name.substring(nameIdx + 1)
                        }
                        '0' -> {
                            val newChar = if(name[nameIdx].isLowerCase()) name[nameIdx].uppercaseChar() else name[nameIdx].lowercaseChar()
                            name = name.substring(0, nameIdx) + newChar + name.substring(nameIdx + 1)
                        }
                        '5' -> {
                            cursorActive = false
                            Scores.update(name, score)
                            score = 0
                            state = State.IDLE
                        }
                        '*' -> {
                            if (nameIdx != 0) {
                                name = name.removeRange(nameIdx, nameIdx + 1)
                                if (name.length == nameIdx)
                                    nameIdx--
                            }
                        }
                        else -> shouldUpdate = false
                    }
                }
            }

            if (shouldUpdate) {
                TUI.drawScore(score)
                when (gameOverState) {
                    GameOverState.OVER -> TUI.drawGameOver()
                    GameOverState.REQUEST_NAME -> TUI.drawName(name)
                }
                TUI.update()
                TUI.activateCursor(cursorActive)
                TUI.setCursor(0, nameIdx + 5)
                shouldUpdate = false
            }
        }
    }

    private fun runMaintenance() {
        var shouldUpdate = true
        var lastTime = System.currentTimeMillis()
        var maintenanceState = MaintenanceState.IDLE
        var lastState = maintenanceState
        while (state == State.MAINTENANCE) {
            if (!M.isActive())
                state = State.IDLE

            val key = TUI.getChar()
            when (maintenanceState) {
                MaintenanceState.IDLE -> {
                    if (key == '*')
                        maintenanceState = MaintenanceState.COUNT
                    else if (key == '#')
                        maintenanceState = MaintenanceState.SHUTDOWN
                    else if (key == '0') {
                        testMode = true
                        state = State.PLAYING
                    }
                }
                MaintenanceState.COUNT -> {
                    if (key == '#')
                        maintenanceState = MaintenanceState.COUNT_CLEAR
                    else if (key != 0.toChar())
                        maintenanceState = MaintenanceState.IDLE
                }
                MaintenanceState.COUNT_CLEAR -> {
                    if (key != 0.toChar())
                        maintenanceState = MaintenanceState.IDLE
                    if (key == '5')
                        Statistics.reset()
                }
                MaintenanceState.SHUTDOWN -> {
                    if (key != 0.toChar())
                        maintenanceState = MaintenanceState.IDLE
                    if (key == '5') {
                        state = State.SHUTDOWN
                    }
                }
            }

            if (System.currentTimeMillis() - lastTime > 5000) {
                maintenanceState = MaintenanceState.IDLE
                shouldUpdate = true
                lastTime = System.currentTimeMillis()
            }

            if (maintenanceState != lastState) {
                shouldUpdate = true
                lastTime = System.currentTimeMillis()
                lastState = maintenanceState
            }

            if (shouldUpdate) {
                when (maintenanceState) {
                    MaintenanceState.IDLE -> TUI.drawMaintenance()
                    MaintenanceState.COUNT -> TUI.drawCount(Statistics.get().first, Statistics.get().second)
                    MaintenanceState.COUNT_CLEAR -> TUI.drawConfirmation(" Clear Counters ")
                    MaintenanceState.SHUTDOWN -> TUI.drawConfirmation("    Shutdown    ")
                }
                TUI.update()
                shouldUpdate = false
            }
        }
    }

    private fun runIdle() {
        var started = true
        var showingHighScores = false
        var shouldUpdate = true
        var lastTime = System.currentTimeMillis()
        var scoreTimer = System.currentTimeMillis()
        var currScore = 0
        var scoreSequence = 0
        val scores = Scores.get()

        TUI.drawGameTitle()
        while(state == State.IDLE) {
            if (System.currentTimeMillis() - lastTime > (if (started) 10000 else 2500) && scores.isNotEmpty()) {
                showingHighScores = if (coins != 0) !showingHighScores else true

                if (showingHighScores && !started) {
                    currScore = (currScore + 1) % scores.size
                }

                shouldUpdate = true
                started = false
                lastTime = System.currentTimeMillis()
            }

            if (System.currentTimeMillis() - scoreTimer > 200) {
                scoreTimer = System.currentTimeMillis()
                scoreSequence = (scoreSequence + 1) % 5
                println(scoreSequence)
                TUI.setScoreAnimation(scoreSequence)
            }

            if (CoinAcceptor.hasNewCoin()) {
                Statistics.addCoin()
                coins += 2
                showingHighScores = false
                lastTime = System.currentTimeMillis()
                shouldUpdate = true
            }

            if (showingHighScores) {
                TUI.drawHighScore(scores, currScore)
            } else {
                TUI.drawIdle(coins)
            }

            val key = TUI.getChar()

            if (key == '*' && canPlay()) {
                testMode = false
                state = State.PLAYING
                Statistics.addGame()
            } else if (M.isActive()) {
                state = State.MAINTENANCE
            }

            if (shouldUpdate) {
                TUI.update()
                shouldUpdate = false
            }
        }

    }
}