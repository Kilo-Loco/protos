package com.example.auth_flow_proto

import android.util.Log
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation

@Composable
fun LoadingScreen() {
    Box(
        contentAlignment = Alignment.Center,
        modifier = Modifier.fillMaxSize()
    ) {
        CircularProgressIndicator()
    }
}

@Composable
fun FormField(
    title: String,
    isTextHidden: Boolean = false,
    text: String,
    onValueChanged: (String) -> Unit
) {
    OutlinedTextField(
        label = { Text(text = title) },
        value = text,
        onValueChange = onValueChanged,
        visualTransformation = if (isTextHidden) PasswordVisualTransformation()
        else VisualTransformation.None
    )
}

@Composable
fun SignUpScreen(viewModel: AuthViewModel) {
    val state = viewModel.signUpState

    Column(
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.fillMaxSize()
    ) {
        FormField(
            title = "Username",
            text = state.username,
            onValueChanged = { viewModel.signUpStateDidChange(username = it) }
        )
        FormField(
            title = "Email",
            text = state.email,
            onValueChanged = { viewModel.signUpStateDidChange(email = it) }
        )
        FormField(
            title = "Password",
            isTextHidden = true,
            text = state.password,
            onValueChanged = { viewModel.signUpStateDidChange(password = it) }
        )

        Button(onClick = {
            viewModel.signUp {
                if (it != null) {
                    Log.e("kilo", "failed sign up", it)
                }
            }
        }) {
            Text(text = "Sign Up")
        }

        TextButton(onClick = viewModel::goToLogin) {
            Text("Already have an account? Login.")
        }
    }
}

@Composable
fun ConfirmSignUpScreen(viewModel: AuthViewModel) {
    Column(
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.fillMaxSize()
    ) {

        val state = viewModel.confirmSignUpState

        FormField(
            title = "Confirmation code",
            text = state.confirmationCode,
            onValueChanged = { viewModel.confirmSignUpStateDidChange(it) }
        )

        Button(onClick = {
            viewModel.confirmSignUp {
                if (it != null) {
                    Log.e("kilo", "failed confirm sign up", it)
                }
            }
        }) {
            Text(text = "Confirm Sign Up")
        }
    }
}

@Composable
fun LoginScreen(viewModel: AuthViewModel) {
    val state = viewModel.loginState

    Column(
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.fillMaxSize()
    ) {
        FormField(
            title = "Username",
            text = state.username,
            onValueChanged = { viewModel.loginStateDidChange(username = it) }
        )
        FormField(
            title = "Password",
            isTextHidden = true,
            text = state.password,
            onValueChanged = { viewModel.loginStateDidChange(password = it) }
        )

        Button(onClick = {
            viewModel.login {
                if (it != null) {
                    Log.e("kilo", "failed login", it)
                }
            }
        }) {
            Text(text = "Login")
        }

        TextButton(onClick = viewModel::goToSignUp) {
            Text("Don't have an account? Sign up.")
        }
    }
}

@Composable
fun SessionScreen(viewModel: AuthViewModel) {
    Column(
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.fillMaxSize()
    ) {
        Text(text = "Welcome to the app")

        Button(onClick = {
            viewModel.logOut {
                if (it != null) {
                    Log.e("kilo", "failed log out", it)
                }
            }
        }) {
            Text(text = "Log Out")
        }
    }
}