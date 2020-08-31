import java.util.Arrays;

class Solution {
  public boolean solution(String[] phoneBook) {
    boolean answer = true;
    for (int i=0; i<phoneBook.length; i++) {
      phoneBook[i] = phoneBook[i].replaceAll(" ", "");
    }

    for (int i=0; i<phoneBook.length; i++) {
      for (int j=0; j<phoneBook.length; j++) {
        if (i == j) continue;
        answer = !phoneBook[j].startsWith(phoneBook[i]);
        if (!answer) break;
      }
      if (!answer) break;
    }

    return answer;
  }
}