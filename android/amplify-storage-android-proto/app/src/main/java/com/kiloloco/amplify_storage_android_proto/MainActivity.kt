package com.kiloloco.amplify_storage_android_proto

import android.app.Activity
import android.content.Intent
import android.database.Cursor
import android.net.Uri
import android.os.Bundle
import android.provider.MediaStore
import android.util.Log
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.net.toUri
import com.amplifyframework.core.Amplify
import com.amplifyframework.storage.options.StorageDownloadFileOptions
import kotlinx.android.synthetic.main.activity_main.*
import java.io.File
import java.io.FileInputStream
import java.io.IOException
import java.io.InputStream


class MainActivity : AppCompatActivity() {

    companion object {
        const val REQUEST_CODE = 100
        const val PHOTO_KEY = "firstPhoto.jpg"
    }

    private var imageUri: Uri? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        galleryButton.setOnClickListener {
            Log.i("kilo", "gallery")
            this.openGallery()
        }
        uploadButton.setOnClickListener {
            Log.i("kilo", "upload")
            this.uploadPhoto()
        }
        downloadButton.setOnClickListener {
            Log.i("kilo", "download")
            this.downloadPhoto()
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        if (resultCode == Activity.RESULT_OK && requestCode == REQUEST_CODE) {
            Log.i("kilo", "got image")
            imageView.setImageURI(data?.data)
            imageStatusTextView.text = "Selected photo"
            imageUri = data?.data

        } else {
            Log.i("kilo", "bad result")
        }
    }

    private fun openGallery() {
        val intent = Intent(Intent.ACTION_PICK)
        intent.type = "image/*"
        startActivityForResult(intent, REQUEST_CODE)
    }

    private fun File.copyContentsOfUriToFile(sourceUri: Uri) {
        val inputStream = contentResolver.openInputStream(sourceUri)
        this.outputStream().use { fileOut ->
            inputStream?.copyTo(fileOut)
        }
    }

    private fun uploadPhoto() {
        if (imageUri != null) {

            val imageFile = File("${applicationContext.filesDir}/$PHOTO_KEY")
            imageFile.copyContentsOfUriToFile(imageUri!!)
            imageFile.

            if (imageFile == null) {
                Toast.makeText(this, "No file path", Toast.LENGTH_SHORT).show()
                return
            }

            Amplify.Storage.uploadFile(
                PHOTO_KEY,
                imageFile,
                { result ->
                    Log.i("kilo", "Successfully uploaded photo with key: ${result.key}")
                    this.imageStatusTextView.text = "Uploaded photo"
                },
                { error ->
                    Log.e("kilo", "Upload failed", error)
                    this.imageStatusTextView.text = "Failed to upload photo"
                }
            )
        } else {
            Toast.makeText(this, "No file path", Toast.LENGTH_SHORT).show()
        }
    }

//    private fun getRealPathFromURI(contentURI: Uri): String? {
//        val result: String?
//        val cursor: Cursor? = contentResolver.query(contentURI, null, null, null, null)
//        if (cursor == null) {
//            result = contentURI.path
//        } else {
//            cursor.moveToFirst()
//            val idx: Int = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
//            result = cursor.getString(idx)
//            cursor.close()
//        }
//        return result
//    }

    private fun downloadPhoto() {
        Amplify.Storage.downloadFile(
            PHOTO_KEY,
            File("${applicationContext.filesDir.toString()}/$PHOTO_KEY"),
            StorageDownloadFileOptions.defaultInstance(),
            { progress ->
                Log.i("kilo", "Progress: ${progress.fractionCompleted * 100}%")
            },
            { result ->
                Log.i("kilo", "Downloaded photo with name: ${result.file.name}")
                this.imageView.setImageURI(result.file.toUri())
                this.imageStatusTextView.text = "Downloaded image"
            },
            { error ->
                Log.e("kilo", "failed to download image", error)
                this.imageStatusTextView.text = "Failed to download image"
            }
        )
    }


}