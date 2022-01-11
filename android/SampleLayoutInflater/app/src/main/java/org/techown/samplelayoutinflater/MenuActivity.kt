package org.techown.samplelayoutinflater

import android.content.Context
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.LayoutInflater
import android.widget.Button
import android.widget.CheckBox
import android.widget.LinearLayout

class MenuActivity : AppCompatActivity() {
    val container = lazy {
        findViewById<LinearLayout>(R.id.container)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_menu)

        val button = findViewById<Button>(R.id.button)
        button.setOnClickListener {
            val inflater = getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
            inflater.inflate(R.layout.sub1, container.value, true)
            val checkBox = container.value.findViewById<CheckBox>(R.id.checkBox)
            checkBox.setText("로딩되었어요.")
        }
    }
}