package org.techtown.noti

import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Intent
import android.os.Build
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import androidx.core.app.NotificationBuilderWithBuilderAccessor
import androidx.core.app.NotificationCompat

class MainActivity : AppCompatActivity() {
    private lateinit var manager: NotificationManager
    private val CHANNEL_ID = "channel1"
    private val CHANNEL_NAME = "Channel1"

    private val CHANNEL_ID2 = "channerl2"
    private val CHANNEL_NAME2 = "Channel2"


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val button = findViewById<Button>(R.id.button)
        button.setOnClickListener(this::showNoti1)

        val button2 = findViewById<Button>(R.id.button2)
        button2.setOnClickListener(this::showNoti2)
    }

    private fun showNoti1(view: View) {
        manager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager
        val builder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            if (manager.getNotificationChannel(CHANNEL_ID) == null) {
                manager.createNotificationChannel(
                    NotificationChannel(
                        CHANNEL_ID,
                        CHANNEL_NAME,
                        NotificationManager.IMPORTANCE_DEFAULT
                    )
                )
            }
            NotificationCompat.Builder(this, CHANNEL_ID)
        } else {
            NotificationCompat.Builder(this)
        }

        val noti = builder
            .setContentTitle("간단 알림")
            .setContentText("알림 메시지입니다.")
            .setSmallIcon(android.R.drawable.ic_menu_view)
            .build()
        manager.notify(1, noti)
    }

    private fun showNoti2(view: View) {
        manager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager

        val builder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            if (manager.getNotificationChannel(CHANNEL_ID2) == null) {
                manager.createNotificationChannel(
                    NotificationChannel(
                        CHANNEL_ID2,
                        CHANNEL_NAME2,
                        NotificationManager.IMPORTANCE_DEFAULT
                    )
                )
            }
            NotificationCompat.Builder(this, CHANNEL_ID2)
        } else {
            NotificationCompat.Builder(this)
        }

        val intent = Intent(this, MainActivity::class.java)
        val pendingIntent = PendingIntent.getActivity(this, 101, intent, PendingIntent.FLAG_UPDATE_CURRENT)

        val noti = builder.setContentTitle("간단 알림")
            .setContentText("알림 메시지입니다.")
            .setSmallIcon(android.R.drawable.ic_menu_view)
            .setAutoCancel(true)
            .setContentIntent(pendingIntent)
            .build()
        manager.notify(2, noti)
    }
}