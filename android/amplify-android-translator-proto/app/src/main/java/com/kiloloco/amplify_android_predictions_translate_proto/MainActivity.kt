package com.kiloloco.amplify_android_predictions_translate_proto

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.setContent
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kiloloco.amplify_android_predictions_translate_proto.ui.theme.AmplifyandroidpredictionstranslateprotoTheme

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            AmplifyandroidpredictionstranslateprotoTheme {
                AppView()
            }
        }
    }
}

@Composable
fun AppView() {
    Column(
        modifier = Modifier
            .background(color = Color.Gray)
            .fillMaxHeight()
    ) {
        val wideCardModifier = Modifier.fillMaxWidth()

        Spacer(modifier = Modifier.height(8.dp))

        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp)
        ) {
            Card(modifier = Modifier.weight(1f)) {
                Text(
                    text = "English",
                    textAlign = TextAlign.Center,
                    modifier = Modifier.padding(all = 20.dp)
                )
            }
            
            Spacer(modifier = Modifier.width(8.dp))
            
            Card(
                modifier = Modifier.weight(1f)
            ) {
                Text(
                    text = "Spanish",
                    textAlign = TextAlign.Center,
                    modifier = Modifier.padding(all = 20.dp)
                )
            }
        }

        Spacer(modifier = Modifier.height(8.dp))

        Card(
            modifier = Modifier
                .fillMaxWidth()
                .height(200.dp)
                .padding(horizontal = 16.dp)
        ) {
            Column(modifier = Modifier.padding(all = 20.dp)) {
                Text(text = "Spanish")
                Text(text = "Hola, mundo")
            }
        }

        Spacer(modifier = Modifier.height(8.dp))

        Card(modifier = wideCardModifier.padding(horizontal = 16.dp)) {
            TextField(
                placeholder = { Text("Enter Text") },
                value = "", onValueChange = { /*TODO*/ },
                backgroundColor = Color.White,
                modifier = Modifier.padding(all = 20.dp)
            )
        }

        Spacer(modifier = Modifier.height(8.dp))

        Button(
            onClick = { /*TODO*/ },
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp)
        ) {
            Text(text = "Translate")
        }
    }
}