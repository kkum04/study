import org.junit.Test;

public class TestScoville {
  @Test
  public void scovillTest() {
    SolutionScoville solutionScoville = new SolutionScoville();

    int answer = solutionScoville.solution(
        new int[] {1, 2, 3, 9, 10, 12},
    7
    );

    System.out.println(answer);
  }
}
