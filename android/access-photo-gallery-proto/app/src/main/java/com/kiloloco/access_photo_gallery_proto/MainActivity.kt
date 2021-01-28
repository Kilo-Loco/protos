package com.kiloloco.access_photo_gallery_proto

import android.net.Uri
import android.os.Bundle
import android.util.Log
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material.Text
import androidx.compose.material.Button
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.setContent
import androidx.compose.ui.unit.dp
import com.kiloloco.access_photo_gallery_proto.ui.theme.AccessphotogalleryprotoTheme
import dev.chrisbanes.accompanist.glide.GlideImage

class MainActivity : AppCompatActivity() {

    private var imageUriState: MutableState<Uri?> = mutableStateOf(null)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            AccessphotogalleryprotoTheme {
                imageSelector()
            }
        }
    }

    private var resultLauncher = registerForActivityResult(ActivityResultContracts.GetContent()) { uri ->
        imageUriState.value = uri
    }

    @Composable
    private fun imageSelector() {
        Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize()) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                if (imageUriState.value != null) {
                    GlideImage(data = imageUriState.value!!)
                }

                Button(
                    onClick = { resultLauncher.launch("image/*") },
                    modifier = Modifier.padding(vertical = 8.dp)
                ) {
                    Text("Open Gallery")
                }
            }
        }

    }
}