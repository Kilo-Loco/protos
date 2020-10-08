package com.kiloloco.amplify_storage_android_proto

import android.app.Application
import android.util.Log
import com.amplifyframework.AmplifyException
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.core.Amplify
import com.amplifyframework.storage.s3.AWSS3StoragePlugin

class MyApp : Application() {
    override fun onCreate() {
        super.onCreate()
        configureAmplify()
    }

    private fun configureAmplify() {
        try {
            // Storage
            Amplify.addPlugin(AWSCognitoAuthPlugin())
            Amplify.addPlugin(AWSS3StoragePlugin())

            Amplify.configure(applicationContext)
            Log.i("kilo", "Initialized Amplify")

        } catch (error: AmplifyException) {
            Log.e("kilo", "Could not initialize Amplify", error)
        }
    }
}