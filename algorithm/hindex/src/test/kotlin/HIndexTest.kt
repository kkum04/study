import org.junit.Assert
import org.junit.Test

class HIndexTest {
  @Test
  fun testHIndex() {
    val hIndexSolution = HIndexSolution()

   // Assert.assertEquals(3, hIndexSolution.solution(intArrayOf(3, 0, 6, 1, 5)))
    Assert.assertEquals(2, hIndexSolution.solution(intArrayOf(22, 42)))

  }
}