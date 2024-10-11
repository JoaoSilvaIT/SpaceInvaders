import isel.leic.UsbPort

fun Int.toBinary(len: Int): String {
    return String.format("%" + len + "s", this.toString(2)).replace(" ".toRegex(), "0")
}

fun main() {
    HAL.init()
    while (true) println(HAL.readBits(0b1111_1111).toBinary(8))
}

object HAL {
    var output_bits : Int = 0

    fun init() {
        this.output_bits = 0b0000_0011
        UsbPort.write(this.output_bits)
    }

    fun clrBits(mask: Int) {
        this.output_bits = this.output_bits and mask.inv()
        UsbPort.write(this.output_bits)
    }

    fun isBit(mask: Int) :Boolean {
        val bits = UsbPort.read() and mask
        return (mask == bits)
    }

    fun readBits(mask: Int) : Int {
        val bits = UsbPort.read() and mask
        return bits
    }

    fun setBits(mask: Int) {
        this.output_bits = this.output_bits or mask
        UsbPort.write(this.output_bits)
    }

    fun writeBits(mask: Int, value: Int) {
        this.output_bits = (mask and value) or (this.output_bits and mask.inv())
        UsbPort.write(this.output_bits)
    }
}