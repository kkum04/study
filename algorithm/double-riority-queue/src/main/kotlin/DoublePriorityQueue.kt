import java.util.*

class DoublePriorityQueue {
  fun solution(operations: Array<String>): IntArray {
    val answer = intArrayOf(0, 0)

    val priorityQueueAsc = PriorityQueue<Int>()
    val priorityQueueDesc = PriorityQueue<Int>(Collections.reverseOrder())
    operations.map { it.split(' ') }
        .forEach {
          if (it[0] == "I") {
            priorityQueueAsc.add(it[1].toInt());
            priorityQueueDesc.add(it[1].toInt());
          } else if (it[0] == "D" && it[1] == "1") {
            val maxValue = priorityQueueDesc.poll()
            priorityQueueAsc.remove(maxValue)
          } else {
            val minValue = priorityQueueAsc.poll()
            priorityQueueDesc.remove(minValue)
          }
        }

    answer[0] = if (priorityQueueDesc.size > 0) priorityQueueDesc.peek() else 0
    answer[1] = if (priorityQueueAsc.size > 0) priorityQueueAsc.peek() else 0

    return answer
  }
}