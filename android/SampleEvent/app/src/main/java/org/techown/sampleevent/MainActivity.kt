package org.techown.sampleevent

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.GestureDetector
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.View
import android.widget.TextView
import android.widget.Toast

class MainActivity : AppCompatActivity() {
  lateinit var textView: TextView

  lateinit var detector: GestureDetector

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_main)

    textView = findViewById(R.id.textView)

    val view = findViewById<View>(R.id.view)
    view.setOnTouchListener { view, motionEvent ->
      val action = motionEvent.action

      val curX = motionEvent.x
      val curY = motionEvent.y

      if (action == MotionEvent.ACTION_DOWN) {
        println("손가락 눌림: $curX, $curY")
      } else if (action == MotionEvent.ACTION_MOVE) {
        println("손가락 움직임: $curX, $curY")
      } else if (action == MotionEvent.ACTION_UP) {
        println("소가락 땜: $curX, $curY")
      }

      true
    }

    detector = GestureDetector(this, object : GestureDetector.OnGestureListener {
      override fun onDown(motionEvent: MotionEvent): Boolean {
        println("onDown() 호출됨.")
        return true
      }

      override fun onShowPress(p0: MotionEvent?) {
        println("onShowPress() 호출됨")
      }

      override fun onSingleTapUp(p0: MotionEvent?): Boolean {
        println("onSingleTapUp() 호출됨")
        return true
      }

      override fun onScroll(p0: MotionEvent?, p1: MotionEvent?, p2: Float, p3: Float): Boolean {
        println("onScroll() 호출됨")

        return true
      }

      override fun onLongPress(p0: MotionEvent?) {
        println("onLongPress() 호출됨")
      }

      override fun onFling(p0: MotionEvent?, p1: MotionEvent?, p2: Float, p3: Float): Boolean {
        println("onFling() 호출됨")

        return true
      }
    })

    val view2 = findViewById<View>(R.id.view2)
    view2.setOnTouchListener { p0, p1 ->
      detector.onTouchEvent(p1)
      true
    }
  }

  override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
    if (keyCode == KeyEvent.KEYCODE_BACK) {
      Toast.makeText(this, "시스템 [BACK] 버튼을 눌렀습니다.", Toast.LENGTH_LONG).show()

      return true
    }

    return false
  }

  fun println(data: String) {
    textView.append(data + "\n")
  }
}