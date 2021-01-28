package com.kiloloco.composable_classes_proto

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.Button
import androidx.compose.material.Text
import androidx.compose.material.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.TextFieldValue

class LoginView private constructor() {

    companion object {
        @Composable
        operator fun invoke(onLogin: (String) -> Unit) {
            Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize()) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    val usernameState = remember { mutableStateOf(TextFieldValue()) }
                    TextField(value = usernameState.value, onValueChange = { usernameState.value = it })

                    Button(onClick = { onLogin(usernameState.value.text) }) {
                        Text(text = "Login")
                    }
                }
            }
        }
    }
}