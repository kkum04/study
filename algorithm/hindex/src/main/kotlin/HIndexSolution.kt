class HIndexSolution {
  fun solution(citations: IntArray): Int {
    var answer = 0
    citations.sortDescending()

    for (i in citations.size downTo 0) {
      val index = citations.indexOfFirst { it < i }
      if (index >= i || index == -1) {
        answer = i
        break;
      }
    }

    return answer
  }
}