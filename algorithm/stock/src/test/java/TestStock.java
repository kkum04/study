import org.junit.Assert;

public class TestStock {

  @org.junit.Test
  public void testStock() {
    Solution2 solution2 = new Solution2();
    int[] results = solution2.solution(new int[] {
        1,2,3,2,3
    });

    Assert.assertArrayEquals(results, new int[]{4,3,1,1,0});
  }
}
