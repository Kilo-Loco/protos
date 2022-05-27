package com.example.auth_flow_proto

import android.os.Bundle
import android.se.omapi.Session
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.navigation.NavController
import androidx.navigation.NavGraphBuilder
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navigation
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.core.Amplify

class MainActivity : ComponentActivity() {
    private val authViewModel by viewModels<AuthViewModel>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        configureAmplify()
        authViewModel.checkSession()

        setContent {
            val navController = rememberNavController()
            NavGraph(navController = navController, viewModel = authViewModel)
            observeNextRoute(navController)
        }
    }

    private fun configureAmplify() {
        Amplify.addPlugin(AWSCognitoAuthPlugin())
        Amplify.configure(applicationContext)
        Log.i("kilo", "Amplify configured")
    }

    private fun observeNextRoute(navController: NavHostController) {
        authViewModel.nextRoute.observe(this) { route ->
            if (route.name != navController.currentDestination?.route) {
                navController.navigate(route.name)
            }
        }
    }
}
