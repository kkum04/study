package org.techown.sampleevent

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.MotionEvent
import android.view.View
import android.widget.TextView

class MainActivity : AppCompatActivity() {
  lateinit var textView: TextView

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
  }

  fun println(data: String) {
    textView.append(data + "\n")
  }
}