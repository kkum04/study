package org.techtown.recyclerview

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val recyclerView = findViewById<RecyclerView>(R.id.recyclerView)
        val layoutManager = LinearLayoutManager(this, LinearLayoutManager.VERTICAL, false)
        recyclerView.layoutManager = layoutManager
        val adapter = PersonAdapter()

        adapter.addItem(Person("김민수", "010-1111-2222"))
        adapter.addItem(Person("김하늘", "010-1111-2222"))i
        adapter.addItem(Person("홍길동", "010-1111-2222"))

        recyclerView.adapter = adapter

    }
}