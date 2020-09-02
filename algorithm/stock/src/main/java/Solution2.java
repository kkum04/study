import java.util.Arrays;

class Solution2 {
  public int[] solution(int[] prices) {
    int[] answer = new int[prices.length];
    Arrays.fill(answer, 0);

    for(int i=0; i<prices.length; i++) {
      int curPrice = prices[i];

      for(int j=i+1; j<prices.length; j++) {
        answer[i]++;
        if (curPrice <= prices[j]) continue;
        break;
      }
    }

    return answer;
  }
}