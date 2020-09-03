import java.util.Arrays;
import java.util.PriorityQueue;

public class SolutionScoville {
  public int solution(int[] scoville, int K) {
    int answer = 0;

    PriorityQueue<Integer> priorityQueue = new PriorityQueue<>();
    Arrays.stream(scoville).forEach(it -> priorityQueue.offer(it));

    while (!priorityQueue.isEmpty()) {
      int minScovile = priorityQueue.poll();
      if (minScovile >= K) break;

      try {
        int nextMinScovile = priorityQueue.poll();
        int newScovile = minScovile + (nextMinScovile * 2);
        priorityQueue.offer(newScovile);
      } catch (NullPointerException ex) {
        return -1;
      }

      answer++;
    }

    return answer;
  }
}
