class DiskControllerSolution {
  fun solution(jobs: Array<IntArray>): Int {
    var time = 0
    jobs.sortBy { it.first() }

    var totalWaitTime = 0
    val sortedJob = jobs.toMutableList()
    while(sortedJob.isNotEmpty()) {
      val canWorkJob = sortedJob
          .filter { it.first() <= time }
          .minBy { it[1] }

      if (canWorkJob == null) {
        time++
        continue
      }

      totalWaitTime = totalWaitTime + time - canWorkJob[0] + canWorkJob[1]
      time += canWorkJob[1]

      sortedJob.remove(canWorkJob)
    }

    return totalWaitTime / jobs.size
  }
}