package stackqueue.function

class Solution {
  fun solution(progresses: IntArray, speeds: IntArray): IntArray {
    val answer = mutableListOf<Int>()
    val stack = mutableListOf<Int>()
    progresses.mapIndexed { index, it -> Pair(it, speeds[index]) }
        .map { (100-it.first + it.second - 1) / it.second }
        .forEach {
          if (stack.firstOrNull() ?: Int.MAX_VALUE < it) {
            answer.add(stack.size)
            stack.clear()
            stack.add(it)
          } else {
            stack.add(it)
          }
        }

    if (stack.isNotEmpty())
      answer.add(stack.size)
    return answer.toIntArray()
  }
}