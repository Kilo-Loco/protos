package com.example.auth_flow_proto

import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable

enum class Route {
    INITIAL, SIGN_UP, LOGIN, CONFIRM_SIGN_UP, SESSION
}

@Composable
fun NavGraph(navController: NavHostController, viewModel: AuthViewModel) {
    NavHost(navController = navController, startDestination = Route.INITIAL.name) {
        composable(Route.INITIAL.name) { LoadingScreen() }
        composable(Route.LOGIN.name) { LoginScreen(viewModel = viewModel) }
        composable(Route.SIGN_UP.name) { SignUpScreen(viewModel = viewModel) }
        composable(Route.CONFIRM_SIGN_UP.name) { ConfirmSignUpScreen(viewModel = viewModel) }
        composable(Route.SESSION.name) { SessionScreen(viewModel = viewModel) }
    }
}