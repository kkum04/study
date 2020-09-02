import org.junit.Assert;

public class TestPhonebook {

  @org.junit.Test
  public void testPhonebook() {
    Solution solution = new Solution();

    boolean result = solution.solution(new String[] {
            "119",
            "97 674 223",
            "11 9552 4421"
        }
    );
    Assert.assertFalse(result);

    boolean result2 = solution.solution(new String[] {
            "123", "456" ,"789",
        }
    );
    Assert.assertTrue(result2);

    boolean result3 = solution.solution(new String[] {
          "12","123","1235","567","88"
        }
    );
    Assert.assertFalse(result3);
  }
}
