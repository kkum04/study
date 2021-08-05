package org.techtown.vibrate

import android.content.Context
import android.media.MediaPlayer
import android.media.RingtoneManager
import android.os.Build
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.VibrationEffect
import android.os.Vibrator
import android.view.View
import android.widget.Button

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        findViewById<Button>(R.id.button).setOnClickListener(::vibrate)
        findViewById<Button>(R.id.button2).setOnClickListener(::ringtone)
    }

    private fun vibrate(view: View) {
        val vibrator = getSystemService(Context.VIBRATOR_SERVICE) as Vibrator

        if (Build.VERSION.SDK_INT >= 26) {
            vibrator.vibrate(VibrationEffect.createOneShot(1000, 10))
        } else {
            vibrator.vibrate(1000);
        }
    }

    private fun ringtone(view: View) = RingtoneManager
        .getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)
        .let {
            RingtoneManager.getRingtone(applicationContext, it)
        }
        .play()
}