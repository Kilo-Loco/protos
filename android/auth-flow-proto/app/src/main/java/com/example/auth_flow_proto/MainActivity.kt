package com.example.auth_flow_proto

import android.os.Bundle
import android.se.omapi.Session
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.lifecycle.ViewModel
import androidx.navigation.NavController
import androidx.navigation.NavGraphBuilder
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navigation

class MainActivity : ComponentActivity() {

    private val authViewModel by viewModels<AuthViewModel>()
    var navController = NavHostController(this)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            navigation()
        }
    }

    @Composable
    fun navigation() {
        NavHost(navController = navController, startDestination = Route.LOGIN.name) {
            composable(Route.LOGIN.name) { LoginScreen(viewModel = authViewModel) }
            composable(Route.SIGN_UP.name) { SignUpScreen(viewModel = authViewModel) }
            composable(Route.CONFIRM_SIGN_UP.name) { ConfirmSignUpScreen(viewModel = authViewModel) }
            composable(Route.SESSION.name) { SessionScreen(viewModel = authViewModel) }
        }
    }
}

@Composable
fun NavGraph(navController: NavHostController) {
    NavHost(navController = navController, startDestination = Route.LOGIN.name) {
        composable(Route.LOGIN.name) { LoginScreen(viewModel = authViewModel) }
        composable(Route.SIGN_UP.name) { SignUpScreen(viewModel = authViewModel) }
        composable(Route.CONFIRM_SIGN_UP.name) { ConfirmSignUpScreen(viewModel = authViewModel) }
        composable(Route.SESSION.name) { SessionScreen(viewModel = authViewModel) }
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

enum class Route {
    SIGN_UP, LOGIN, CONFIRM_SIGN_UP, SESSION
}

class AuthViewModel : ViewModel() {
    var username by mutableStateOf("")
    var email by mutableStateOf("")
    var password by mutableStateOf("")
    var confirmationCode by mutableStateOf("")

    fun usernameDidChange(newValue: String) { username = newValue }
    fun emailDidChange(newValue: String) { email = newValue }
    fun passwordDidChange(newValue: String) { password = newValue }
    fun confirmationCodeDidChange(newValue: String) { confirmationCode = newValue }

    fun signUp() {

    }

    fun login() {

    }

    fun confirmSignUp() {

    }

    fun logOut() {

    }
}

@Composable
fun LoginScreen(viewModel: AuthViewModel) {

    

    Column(
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.fillMaxSize()
    ) {
        FormField(
            title = "Username",
            text = viewModel.username,
            onValueChanged = viewModel::usernameDidChange
        )
        FormField(
            title = "Email",
            text = viewModel.email,
            onValueChanged = viewModel::emailDidChange
        )
        FormField(
            title = "Password",
            isTextHidden = true,
            text = viewModel.password,
            onValueChanged = viewModel::passwordDidChange
        )

        Button(onClick = { /*TODO*/ }) {
            Text(text = "Login")
        }
    }
}

@Composable
fun SignUpScreen(viewModel: AuthViewModel) {
    Column(
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.fillMaxSize()
    ) {
        FormField(
            title = "Username",
            text = viewModel.username,
            onValueChanged = viewModel::usernameDidChange
        )
        FormField(
            title = "Email",
            text = viewModel.email,
            onValueChanged = viewModel::emailDidChange
        )
        FormField(
            title = "Password",
            isTextHidden = true,
            text = viewModel.password,
            onValueChanged = viewModel::passwordDidChange
        )
        
        Button(onClick = { /*TODO*/ }) {
            Text(text = "Sign Up")
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
        FormField(
            title = "Confirmation code",
            text = viewModel.confirmationCode,
            onValueChanged = viewModel::confirmationCodeDidChange
        )

        Button(onClick = { /*TODO*/ }) {
            Text(text = "Confirm Sign Up")
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
        FormField(
            title = "Confirmation code",
            text = viewModel.confirmationCode,
            onValueChanged = viewModel::confirmationCodeDidChange
        )

        Button(onClick = { /*TODO*/ }) {
            Text(text = "Confirm Sign Up")
        }
    }
}