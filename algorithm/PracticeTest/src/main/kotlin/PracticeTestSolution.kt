class PracticeTestSolution {
    fun solution(answers: IntArray): IntArray {
        val answer1 = intArrayOf(1, 2, 3, 4, 5)
        val answer2 = intArrayOf(2, 1, 2, 3, 2, 4, 2, 5)
        val answer3 = intArrayOf(3, 3, 1, 1, 2, 2, 4, 4, 5, 5)
        var correct1Count = 0
        var correct2Count = 0
        var correct3Count = 0

        for ((index, answer) in answers.withIndex()) {
            if (answer1[index % answer1.size] == answer) correct1Count++;
            if (answer2[index % answer2.size] == answer) correct2Count++;
            if (answer3[index % answer3.size] == answer) correct3Count++;
        }


        val results = arrayOf(
                    Pair(1, correct1Count),
                    Pair(2, correct2Count),
                    Pair(3, correct3Count)
                )
                .sortedByDescending { it.second  }
        val max = results.first()

        return results.filter { it.second >= max.second }
                .map { it.first }
                .sorted()
                .toIntArray()


    }
}