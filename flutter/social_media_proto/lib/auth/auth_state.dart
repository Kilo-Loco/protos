import 'package:flutter/foundation.dart';

abstract class AuthState {}

class LoginState extends AuthState {}

class SignUpState extends AuthState {}

class ConfirmSignUpState extends AuthState {}
