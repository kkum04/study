package org.techown.simpleorientation

import android.annotation.SuppressLint
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.PersistableBundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast

class MainActivity : AppCompatActivity() {
  var name: String = ""
  lateinit var editText: EditText

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_main)

    showToast("onCreate 호출됨")

    editText = findViewById<EditText>(R.id.editText)

    val button = findViewById<Button>(R.id.button)
    button.setOnClickListener {
      name = editText.text.toString()
      showToast("입력된 값을 변수에 저장했습니다.  : $name")
    }

    if (savedInstanceState != null) {
      name = savedInstanceState.getString("name").toString()
      showToast("값을 복원했습니다. : $name")
    }

  }

  override fun onStart() {
    super.onStart()

    showToast("onStart 호출됨")
  }

  override fun onStop() {
    super.onStop()

    showToast("onStop 호출됨")
  }

  override fun onDestroy() {
    super.onDestroy()

    showToast("onDestroy 호출됨")
  }

  fun showToast(data: String) {
    Toast.makeText(this, data, Toast.LENGTH_LONG).show()
  }

  override fun onSaveInstanceState(outState: Bundle, outPersistentState: PersistableBundle) {
    super.onSaveInstanceState(outState, outPersistentState)

    outState.putString("name", name)
  }
}