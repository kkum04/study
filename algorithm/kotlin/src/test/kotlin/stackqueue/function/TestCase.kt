package stackqueue.function

import org.junit.Assert
import org.junit.Test
import java.lang.AssertionError

class TestCase {
  @Test
  fun test() {
    Assert.assertArrayEquals(
        intArrayOf(2, 1),
        Solution()
            .solution(intArrayOf(93, 30, 55), intArrayOf(1, 30, 5))
    )

    Assert.assertArrayEquals(
        intArrayOf(1, 3, 2),
        Solution()
            .solution(intArrayOf(95, 90, 99, 99, 80, 99), intArrayOf(1, 1, 1, 1, 1, 1))
    )
  }
}