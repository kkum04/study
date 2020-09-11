import org.junit.Assert
import org.junit.Test
import java.util.*

class TestDoublePriorityQueue {
  @Test
  fun test() {
    val doublePriorityQueue = DoublePriorityQueue()
    val result = doublePriorityQueue.solution(arrayOf("I 16","D 1"))
    Assert.assertArrayEquals(intArrayOf(0, 0), result)

    val result2 = doublePriorityQueue.solution(arrayOf("I 7","I 5","I -5","D -1"))
    Assert.assertArrayEquals(intArrayOf(7, 5), result2)
  }

}