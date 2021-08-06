package org.techtown.push.send

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.VolleyError
import com.android.volley.toolbox.JsonArrayRequest
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import org.json.JSONArray
import org.json.JSONObject

class MainActivity : AppCompatActivity() {
    lateinit var editText: EditText
    lateinit var textView: TextView

    companion object {
        var requestQueue: RequestQueue? = null
        var regId: String = "fCmD9WBYV7M:APA91bG1Bc3K5ezLHpqbrKWxUh77x0iLs3x1fuWJFk2siYqK9TvMYqc72D0mU3XL7xyfwncHWXEGIyqPaMfFjLd5VolLleMlncPRzxH5jl5_8j9pTQ9WzPRT6PsH9m22Ls6zWR6WdUWh"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        editText = findViewById(R.id.editText)
        textView = findViewById(R.id.textView)

        val button = findViewById<Button>(R.id.button)
        button.setOnClickListener {
            send(editText.text.toString())
        }

        if (requestQueue == null) {
            requestQueue = Volley.newRequestQueue(applicationContext)
        }
    }

    private fun send(input: String) {
        val requestData = JSONObject()

        requestData.put("priority", "high")

        val dataObj = JSONObject()
        dataObj.put("contents", input)
        requestData.put("data", dataObj)

        val idArray = JSONArray()
        idArray.put(0, regId)
        requestData.put("registration_ids", idArray)

        sendData(requestData, object: SendResponseListener {
            override fun onRequestStarted() {
                println("onRequestCompleted() 호출됨")
            }

            override fun onRequestCompleted() {
                println("OnRequestStarted() 호출됨")
            }

            override fun onRequestWithError(error: VolleyError) {
                println("onRequestWithError() 호출됨")
            }
        })
    }

    fun sendData(requestData: JSONObject, listener: SendResponseListener) {
        val request = object: JsonObjectRequest(
            Request.Method.POST,
            "https://fcm.googleapis.com/fcm/send",
            requestData,
            {
                listener.onRequestCompleted()
            },
            {
                listener.onRequestWithError(it)
            }
        ) {
            override fun getParams(): MutableMap<String, String> {
                return hashMapOf<String, String>()
            }

            override fun getHeaders(): MutableMap<String, String> {
                val headers = hashMapOf<String, String>()
                headers.put("Authorization", "key=AAAAwMKkqXk:APA91bHbGi658xZjl4LD6rbJ0x9uzeQipiSTcXFYknZhioal0YVeOvPUq8gzA4pvu3QuWg_1PDEI5m9ocVi0z1MuBigFr8V3Q5D02Bp2TfxqJjZhdyMIM2AiUAFcUdRETD2RbSY6ZasH")

                return headers
            }

            override fun getBodyContentType(): String {
                return "application/json"
            }
        }

        request.setShouldCache(false)
        listener.onRequestStarted()
        requestQueue!!.add(request)
    }

    fun println(data: String) {
        textView.append(data + "\n")
    }


    interface SendResponseListener {
        fun onRequestStarted()
        fun onRequestCompleted()
        fun onRequestWithError(error: VolleyError)
    }
}