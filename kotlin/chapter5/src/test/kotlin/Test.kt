import org.junit.Test
import java.io.File

class Test {
    @Test
    fun `시퀀스 결과 연산 없을 때`() {
        listOf(1, 2, 3, 4).asSequence()
            .map { print("map($it)"); it * it }
            .filter { print("filter($it)"); it % 2 == 0 }
    }

    @Test
    fun `시퀀스 결과 연산 있을 때`() {
        listOf(1, 2, 3, 4).asSequence()
            .map { print("map($it)"); it * it }
            .filter { print("filter($it)"); it % 2 == 0 }
            .toList()
    }

    @Test
    fun `시퀀스 만들기`() {
        val natualNumbers = generateSequence(0) { it + 1 }
        val numberTo100 = natualNumbers.takeWhile { it <= 100 }
        println(numberTo100.sum())
    }

    @Test
    fun `시퀀스 만들기2`() {
        fun File.isInsideHiddenDirectory() =
            generateSequence(this) { it.parentFile }.any { it.isHidden }

        val file = File("/Users/svtk/.HiddenDir/a.txt")
        println(file.isInsideHiddenDirectory())
    }
}