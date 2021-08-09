package org.techtown.push.samplescrollview

import android.graphics.Bitmap
import android.graphics.drawable.BitmapDrawable
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ImageView
import android.widget.ScrollView

class MainActivity : AppCompatActivity() {
    lateinit var scrollView: ScrollView
    lateinit var imageView: ImageView
    lateinit var bitmap: BitmapDrawable

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        scrollView = findViewById(R.id.scrollView)
        imageView = findViewById(R.id.imageView)
        scrollView.isHorizontalScrollBarEnabled = true

        bitmap = resources.getDrawable(R.drawable.image) as BitmapDrawable

        imageView.setImageDrawable(bitmap)
        imageView.layoutParams.width =  bitmap.intrinsicWidth
        imageView.layoutParams.height =  bitmap.intrinsicHeight
    }
}