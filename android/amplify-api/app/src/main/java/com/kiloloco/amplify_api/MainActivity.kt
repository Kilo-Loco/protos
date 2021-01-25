package com.kiloloco.amplify_api

import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.foundation.Text
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.setContent
import androidx.compose.ui.tooling.preview.Preview
import com.amplifyframework.AmplifyException
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.core.Amplify
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.generated.model.MyObject
import com.kiloloco.amplify_api.ui.AmplifyapiTheme

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        try {
            Amplify.addPlugin(AWSApiPlugin()) // UNCOMMENT this line once backend is deployed
            Amplify.addPlugin(AWSDataStorePlugin())
            Amplify.configure(applicationContext)
            Log.i("Amplify", "Initialized Amplify")
        } catch (e: AmplifyException) {
            Log.e("Amplify", "Could not initialize Amplify", e)
        }

//        create()
//        read()

        setContent {
            AmplifyapiTheme {
                CRUDView()
            }
        }
    }

    fun create() {
        val item: MyObject = MyObject.builder()
                .value("Lorem ipsum dolor sit amet")
                .build()
        Amplify.DataStore.save(
                item,
                { success -> Log.i("Amplify", "Saved item: " + success.item().value) },
                { error -> Log.e("Amplify", "Could not save item to DataStore", error) }
        )
    }

    fun read() {
        Amplify.DataStore.query(
                MyObject::class.java,
                { items ->
                    while (items.hasNext()) {
                        val item = items.next()
                        Log.i("Amplify", "Queried item: " + item.value)
                    }
                },
                { failure -> Log.e("Tutorial", "Could not query DataStore", failure) }
        )
    }
}

@Composable
fun Greeting(name: String) {
    Text(text = "Hello $name!")
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    AmplifyapiTheme {
        Greeting("Android")
    }
}