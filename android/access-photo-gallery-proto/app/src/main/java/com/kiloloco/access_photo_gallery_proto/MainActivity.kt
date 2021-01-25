package com.kiloloco.access_photo_gallery_proto

import android.app.Activity
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.foundation.Image
import androidx.compose.material.Text
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.platform.setContent
import androidx.compose.ui.res.loadImageResource
import androidx.compose.ui.tooling.preview.Preview
import com.kiloloco.access_photo_gallery_proto.ui.theme.AccessphotogalleryprotoTheme

class MainActivity : AppCompatActivity() {

    companion object {
        const val IMAGE_RES_ID = 123
        const val REQUEST_CODE = 1337
    }

    private lateinit var imageBitmap: Bitmap

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            AccessphotogalleryprotoTheme {
                imageSelector()
            }
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        if (resultCode == Activity.RESULT_OK && requestCode == REQUEST_CODE && data != null) {
//            data.data?.let { imageUri = it }
            val bitmap = BitmapFactory.decodeFile(data.dataString)
            data.

        }
    }

    @Composable
    private fun imageSelector() {
        if (imageBitmap != null) {
            ImageBitmap()
            Image(bitmap = imageBitmap)
        }
        Button(onClick = ::openGallery) {
            Text("Open Gallery")
        }
    }

    private fun openGallery() {
        val intent = Intent(Intent.ACTION_PICK)
        intent.type = "image/*"
        startActivityForResult(intent, REQUEST_CODE)
    }
}