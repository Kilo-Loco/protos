package com.kiloloco.amplify_api

import android.util.Log
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.Button
import androidx.compose.material.ButtonColors
import androidx.compose.material.ButtonConstants
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.datastore.generated.model.MyObject
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers.IO
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

class CRUDView private constructor() {

    companion object {

        val sexyId = "b5515c36-fc57-4e47-9586-94a9477327bf"

        @Composable
        operator fun invoke() {

            Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize()) {
                Column() {
                    // CREATE
                    Button(
                        onClick = ::create,
                        colors = ButtonConstants.defaultButtonColors(backgroundColor = Color.Green)
                    ) {
                        Text("Create")
                    }

                    // READ ALL
                    Button(
                        onClick = ::readAll,
                        colors = ButtonConstants.defaultButtonColors(backgroundColor = Color.Blue)
                    ) {
                        Text("Read ALL")
                    }

                    // READ BY ID
                    Button(
                        onClick = {
                            CoroutineScope(IO).launch {
                                readById()
                            }
                        },
                        colors = ButtonConstants.defaultButtonColors(backgroundColor = Color.Cyan)
                    ) {
                        Text("Read BY IDs")
                    }

                    // UPDATE
                    Button(
                        onClick = {
                            CoroutineScope(IO).launch {
                                update()
                            }
                        },
                        colors = ButtonConstants.defaultButtonColors(backgroundColor = Color.Yellow)
                    ) {
                        Text("Update")
                    }

                    // DELETE
                    Button(
                        onClick = ::delete,
                        colors = ButtonConstants.defaultButtonColors(backgroundColor = Color.Red)
                    ) {
                        Text("Delete")
                    }
                }
            }
        }

        private fun create() {
            val stream = MyObject.builder()
                .value("CRUD Ops w/ AWS Amplify")
                .build()

            Amplify.DataStore.save(
                stream,
                { success -> Log.i("Amplify", "Saved item: " + success.item().value) },
                { error -> Log.e("Amplify", "Could not save item to DataStore", error) }
            )
        }

        private fun readAll() {
            Amplify.DataStore.query(
                MyObject::class.java,
                { streams ->
                    streams.forEach { Log.i("Amplify", "$it") }
                },
                { failure -> Log.e("Amplify", "Could not query DataStore", failure) }
            )
        }

        private suspend fun readById(): MyObject = suspendCancellableCoroutine { cont ->
            Amplify.DataStore.query(MyObject::class.java, Where.id(sexyId),
                { streams ->
                    if (streams.hasNext()) {
                        val stream = streams.next()
                        Log.i("Amplify", "Stream: ${stream.toString()}")
                        cont.resume(stream)

                    } else {
                        Log.i("Amplify", "No objects with ID: $sexyId")
                    }
                },
                {
                    Log.e("MyAmplifyApp", "Query failed.", it)
                    cont.resumeWithException(it)
                }
            )
        }

        private suspend fun update() {
            val stream = withContext(CoroutineScope(IO).coroutineContext) {
                readById()
            }
            val updatedStream = stream.copyOfBuilder()
                .value(stream.value + " [UPDATED]")
                .build()

            Amplify.DataStore.save(
                updatedStream,
                { success -> Log.i("Amplify", "Updated stream title to: ${success.item().value}") },
                { failure -> Log.e("Amplify", "Couldn't update object", failure) }
            )
        }

        private fun delete() {
            val stream = MyObject.justId(sexyId)

            Amplify.DataStore.delete(
                stream,
                { Log.i("Amplify", "Deleted a stream") },
                { Log.e("Amplify", "Could not delete stream")}
            )
        }
    }
}