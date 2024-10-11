object ScoreDisplay {
    fun init() {
        SerialEmitter.init()
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000_111, 7)
    }

    fun setScore(value: Int) {
        var temp = value
        for (cmd in 0..5) {
            var digit = temp % 10
            temp /= 10
            if (temp == 0 && digit == 0 && cmd != 0)
                digit = 0xF

            SerialEmitter.send(SerialEmitter.Destination.SCORE, cmd or (digit shl 3), 7)
        }
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000_110, 7)
    }

    fun setValues(values: Array<Int>) {
        for (i in 0..5) {
            SerialEmitter.send(SerialEmitter.Destination.SCORE, i or (values[i] shl 3), 7)
        }
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000_110, 7)

    }

    fun off(value: Boolean) {
        SerialEmitter.send(SerialEmitter.Destination.SCORE, if (value) 0b0000_111 else 0b0001_111, 7)
    }
}