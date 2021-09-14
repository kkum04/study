package org.techown.database

import android.database.sqlite.SQLiteDatabase
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView

class MainActivity : AppCompatActivity() {
  lateinit var editText: EditText
  lateinit var editText2: EditText
  lateinit var textView: TextView

  lateinit var database: SQLiteDatabase

  lateinit var tableName: String

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_main)

    editText = findViewById(R.id.editText)
    editText2 = findViewById(R.id.editText2)
    textView = findViewById(R.id.textView)

    val button = findViewById<Button>(R.id.button)
    button.setOnClickListener {
      val databaseName = editText.text.toString()
      createDatabase(databaseName)
    }

    val button2 = findViewById<Button>(R.id.button2)
    button2.setOnClickListener {
      tableName = editText2.text.toString()
      createTable(tableName)

      insertRecord()
    }
  }

  private fun createDatabase(name: String) {
    println("createDatabase 호출됨")

    database = openOrCreateDatabase(name, MODE_PRIVATE, null)

    println("데이터베이스 생성함: $name")
  }

  private fun createTable(name: String) {
    println("createTable 호출됨")
    if (database == null) {
      println("데이터베이스를 먼저 생성하세요.")
      return
    }

    database.execSQL("""
      create table if not exists $name (
        _id integer PRIMARY KEY autoincrement,
        name text,
        age integer,
        mobile text
      );
      """.trimIndent())
    println("테이블 생성함: $name")
  }

  private fun insertRecord() {
    println("insertRecord 호출됨.")
    if (database == null) {
      println("데이터베이스를 먼저 생성하세요.")
      return
    }

    if (tableName == null) {
      println("데이블을 먼저 생성하세요.")
      return
    }

    database.execSQL("""
      insert into $tableName(name, age, mobile) 
             values('Jone', 20, '010-1000-0000')
    """.trimIndent())
    println("레코드 추가함.")
  }

  fun println(data: String) {
    textView.append("$data\n")
  }
}