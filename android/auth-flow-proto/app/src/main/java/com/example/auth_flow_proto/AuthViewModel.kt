package com.example.auth_flow_proto

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

data class LoginState(val username: String = "", val password: String = "")
data class SignUpState(val username: String = "", val email: String = "", val password: String = "")
data class ConfirmSignUpState(val confirmationCode: String = "")

class AuthViewModel : ViewModel() {
    private val repository = AuthRepository()

    val nextRoute: MutableLiveData<Route> by lazy {
        MutableLiveData<Route>(Route.LOGIN)
    }

    var isSignedIn by mutableStateOf(false)
        private set
    var loginState by mutableStateOf(LoginState())
        private set
    var signUpState by mutableStateOf(SignUpState())
        private set
    var confirmSignUpState by mutableStateOf(ConfirmSignUpState())
        private set

    fun checkSession() {
        repository.fetchAuthSession { isSignedIn ->
            nextRoute.postValue(if (isSignedIn) Route.SESSION else Route.LOGIN)
        }
    }

    fun loginStateDidChange(
        username: String? = null,
        password: String? = null
    ) {
        loginState = loginState.copy(
            username = username ?: loginState.username,
            password = password ?: loginState.password
        )
    }

    fun signUpStateDidChange(
        username: String? = null,
        email: String? = null,
        password: String? = null
    ) {
        signUpState = signUpState.copy(
            username = username ?: signUpState.username,
            email = email ?: signUpState.email,
            password = password ?: signUpState.password
        )
    }

    fun confirmSignUpStateDidChange(confirmationCode: String) {
        confirmSignUpState = confirmSignUpState.copy(
            confirmationCode = confirmationCode
        )
    }

    fun goToSignUp() {
        nextRoute.value = Route.SIGN_UP
    }

    fun goToLogin() {
        nextRoute.value = Route.LOGIN
    }

    fun signUp(onCompletion: (Exception?) -> Unit) {
        repository.signUp(
            signUpState.username,
            signUpState.email,
            signUpState.password
        ) {
            if (it == null) {
                nextRoute.postValue(Route.CONFIRM_SIGN_UP)
            }
            onCompletion(it)
        }
    }

    fun login(onCompletion: (Exception?) -> Unit) {
        repository.login(
            loginState.username,
            loginState.password
        ) {
            if (it == null) {
                nextRoute.postValue(Route.SESSION)
            }
            onCompletion(it)
        }
    }

    fun confirmSignUp(onCompletion: (Exception?) -> Unit) {
        repository.confirmSignUp(
            signUpState.username,
            confirmSignUpState.confirmationCode
        ) {
            if (it == null) {
                nextRoute.postValue(Route.SESSION)
            }
            onCompletion(it)
        }
    }

    fun logOut(onCompletion: (Exception?) -> Unit) {
        repository.signOut {
            if (it == null) {
                nextRoute.postValue(Route.LOGIN)
            }
            onCompletion(it)
        }
    }
}