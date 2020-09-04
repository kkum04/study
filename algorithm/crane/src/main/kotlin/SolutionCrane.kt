class SolutionCrane {
  fun solution(board: Array<IntArray>, moves: IntArray): Int {
    var answer = 0
    val boardSize = board.size
    val basket = mutableListOf<Int>();

    val flattenBoard = board.flatMap { it.asIterable() }.toIntArray()
    moves.forEach {
      var loop = 0
      while (true) {
        val index = it-1 + (boardSize * loop)
        if (index >= flattenBoard.size) {
          break;
        }

        if (flattenBoard[index] != 0) {
          if (basket.size > 0 && basket.last() == flattenBoard[index]) {
            answer += 2;
            basket.removeAt(basket.count() - 1)
          } else {
            basket.add(flattenBoard[index])
          }
          flattenBoard[index] = 0
          break;
        }
        loop++;
      }
    }

    return answer
  }
}