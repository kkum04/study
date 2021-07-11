import org.junit.Assert
import org.junit.Test

class Chapter3Test {
    @Test
    fun `테스트 3점4점1`() {
        val strings: List<String> = listOf("first", "second", "fourtheenth")
        println(strings.last())
        val numbers: Collection<Int> = setOf(1, 14, 2)
        println(numbers.max())
    }

    @Test
    fun `가변인자와 스프레드 연산자`() {
        fun main(args: Array<String>) {
            val list = listOf("args", *args)
            println(list)
        }

        val array = arrayOf("kkum", "hi", "wee")
        main(array)
    }

    @Test
    fun `중위 호출`() {
        val pair1 = 1.to("one")   // <-- "to" 메소드를 일반적인 방식으로 호출
        val pair2 = 1 to "One"  // <-- "to" 메소드를 중위 호출 방식으로 호출함
        println(pair1)
        println(pair2)

        // infix fun Any.to(other: Any) = Pair(this, other)
    }

    @Test
    fun `구조 분해 선언`() {
        val (number, name) = 1 to "one" // Pair의 첫번째 항이 number, 두번째 항이 name으로 할당

        val numbers = arrayOf(10,11,12,13)
        for ((index, number) in numbers.withIndex()) {
            println("$index: $number")
        }
    }

    @Test
    fun `자바 split 함수의 문제점`() {
        val result = "12.345-6.A".split(".")
        Assert.assertEquals(3, result.size)

        println("12.345-6.A".split("\\.|-".toRegex()))
        println("12.345-6.A".split(".", "-"))
    }

    @Test
    fun `스프링 확장 함수를 사용해 경로 파싱하기`() {
        fun parsePath(path: String) {
            val directory = path.substringBeforeLast("/")
            val fullName = path.substringAfterLast("/")
            val fileName = fullName.substringBeforeLast(".")
            val extension = fullName.substringAfterLast(".")

            println("Dir: $directory, fullName: $fullName, name: $fileName, ext: $extension")
        }

        parsePath("/Users/yole/kotlin-book/chapter.adoc")
    }

    @Test
    fun `3중 따옴표로 정규식 사용하기`() {
        fun parsePath(path: String) {
            val regex = """(.+)/(.+)\.(.+)""".toRegex()
            val matchResult = regex.matchEntire(path)

            Assert.assertNotNull(matchResult)
            if (matchResult != null) {
                val (directory, filename, extension) = matchResult.destructured
                println("Dir: $directory, name: $filename, ext: $extension")
            }
        }

        parsePath("/Users/yole/kotlin-book/chapter.adoc")
    }

    @Test
    fun `3중 따옴표 문자열`() {
        val kotlinLogo = """|  //
                           .| //
                           .|/ \"""
        println(kotlinLogo.trimMargin("."))
    }
}