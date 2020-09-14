import org.junit.Assert
import org.junit.Test

class PracticeTestTest {

    @Test
    fun test() {
        val practiceTestSolution = PracticeTestSolution()

        val results = practiceTestSolution.solution(intArrayOf(1,2,3,4,5))
        val results2 = practiceTestSolution.solution(intArrayOf(1,3,2,4,2))

        Assert.assertArrayEquals(intArrayOf(1), results)
        Assert.assertArrayEquals(intArrayOf(1,2,3), results2)
    }
}