import kotlinx.coroutines.*
import org.junit.Test
import java.time.ZonedDateTime
import java.time.temporal.ChronoUnit

class CoroutineTest {
    fun now() = ZonedDateTime.now().toLocalTime().truncatedTo(ChronoUnit.MILLIS)

    fun log(msg:String) = println("${now()}:${Thread.currentThread()}: ${msg}")

    fun launchInGlobalScope() {
        GlobalScope.launch {
            log("coroutine started.")
        }
    }

    @Test
    fun globalScopeTest() {
        log("main() started")

        launchInGlobalScope()

        log("launchInGlobalScope() executed")

        Thread.sleep(5000L)
        log("main() terminated")
    }

    fun runBlockingExample() {
        runBlocking {
            launch {
                log("runBlocking.launch started.")
            }
        }
    }

    @Test
    fun runBlockingTest() {
        log("main() started")

        runBlockingExample()

        log("runBlockingExample() executed")

        log("main() terminated")
    }

    fun sumAll() {
        runBlocking {
            val d1 = async { delay(1000L); 1}
            log("after async(d1)")
            val d2 = async { delay(1000L); 2}
            log("after async(d2)")
            val d3 = async { delay(1000L); 3}
            log("after async(d3)")

            log("1+2+3 = ${d1.await() + d2.await() + d3.await()}")
            log("after await & add")
        }
    }

    @Test
    fun sumAllTest() {
        sumAll()
    }
}