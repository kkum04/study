package com.example.servicetest

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.util.Log

class MyService : Service() {
    override fun onBind(intent: Intent): IBinder {
        TODO("Return the communication channel to the service.")
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val action = intent?.action
        Log.d("StartedService", "action=$action")
        return super.onStartCommand(intent, flags, startId)
    }

    override fun stopService(name: Intent?): Boolean {
        Log.d("Service", "서비스가 종료되었습니다.")
        return super.stopService(name)
    }

    companion object {
        val ACTION_START = "com.example.servicetest.START"
        val ACTION_RUN = "com.example.servicetest.RUN"
        val ACTION_STOP = "com.example.servicetest.STOP"
    }
}