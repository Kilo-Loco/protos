package com.example.auth_flow_proto

import android.util.Log
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.core.Amplify
import java.lang.Exception

class AuthRepository {
    fun fetchAuthSession(session: (Boolean) -> Unit) {
        Amplify.Auth.fetchAuthSession(
            { session(it.isSignedIn) },
            { Log.e("kilo", "Failed to fetch auth session", it) }
        )
    }

    fun signUp(username: String, email: String, password: String, onCompletion: (Exception?) -> Unit) {
        val options = AuthSignUpOptions.builder()
            .userAttribute(AuthUserAttributeKey.email(), email)
            .build()

        Amplify.Auth.signUp(username, password, options,
            { onCompletion(null) },
            { onCompletion(it) }
        )
    }

    fun confirmSignUp(username: String, confirmationCode: String, onCompletion: (Exception?) -> Unit) {
        Amplify.Auth.confirmSignUp(username, confirmationCode,
            { onCompletion(null) },
            { onCompletion(it) }
        )
    }

    fun login(username: String, password: String, onCompletion: (Exception?) -> Unit) {
        Amplify.Auth.signIn(username, password,
            { onCompletion(null) },
            { onCompletion(it) }
        )
    }

    fun signOut(onCompletion: (Exception?) -> Unit) {
        Amplify.Auth.signOut(
            { onCompletion(null) },
            { onCompletion(it) }
        )
    }
}