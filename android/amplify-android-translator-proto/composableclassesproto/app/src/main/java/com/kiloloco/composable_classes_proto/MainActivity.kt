package com.kiloloco.composable_classes_proto

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.material.Text
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.platform.setContent
import androidx.compose.ui.tooling.preview.Preview
import com.kiloloco.composable_classes_proto.ui.theme.ComposableclassesprotoTheme
import com.kiloloco.composable_classes_proto.LoginView

class MainActivity : AppCompatActivity() {

    private var usernameState = mutableStateOf("")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Backstack
        setContent {
            ComposableclassesprotoTheme {

                if (usernameState.value.isEmpty()) {
                    LoginView {
                        usernameState.value = it
                    }
                } else {
                    Text("Hello ${usernameState.value}")
                }

            }
        }
    }
}