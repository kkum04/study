import org.junit.Assert;
import org.junit.Test;

public class Chapter3TestJava {
    @Test
    public void splitTest() {
        String[] result = "12.345-6.A".split(".");
        Assert.assertEquals(3, result.length);
    }
}
