import org.junit.Assert
import org.junit.Test

class DiskControllerTest {
  @Test
  fun testDisController() {
    val diskControllerSolution = DiskControllerSolution()

    val result = diskControllerSolution.solution(
        arrayOf(
            intArrayOf(0, 3),
            intArrayOf(1, 9),
            intArrayOf(2, 6)
        )
    )
    Assert.assertEquals(9, result);
  }
}