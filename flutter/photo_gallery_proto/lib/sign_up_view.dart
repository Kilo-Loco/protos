import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery_proto/auth_repository.dart';
import 'package:photo_gallery_proto/sign_up_cubit.dart';

import 'navigator_cubit.dart';

class SignUpView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: BlocProvider<SignUpCubit>(
            create: (_) =>
                SignUpCubit(authRepo: context.read<AuthRepository>()),
            child: _signUpPage()),
      ),
    );
  }

  Widget _signUpPage() {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state == SignUpState.signUpFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text('Failed to sign up'),
              ),
            );
        }
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _signUpForm(),
          _showLoginButton(),
        ],
      ),
    );
  }

  Widget _usernameField() {
    return TextFormField(
      controller: _usernameController,
      validator: (value) {
        return value.length < 3 ? 'Username too short' : null;
      },
      decoration: InputDecoration(
        hintText: 'Username',
        icon: Icon(Icons.person),
      ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      controller: _emailController,
      validator: (value) {
        return !value.contains('@') ? 'Invalid email' : null;
      },
      decoration: InputDecoration(
        hintText: 'Email',
        icon: Icon(Icons.mail),
      ),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        return value.length < 8 ? 'Password is too short' : null;
      },
      decoration: InputDecoration(
        hintText: 'Password',
        icon: Icon(Icons.lock),
      ),
    );
  }

  Widget _loginButton() {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return state == SignUpState.attemptingSignUp
            ? CircularProgressIndicator()
            : ElevatedButton(
                child: Text('Login'),
                onPressed: () => BlocProvider.of<SignUpCubit>(context).signUp(
                    username: _usernameController.text,
                    email: _emailController.text,
                    password: _passwordController.text));
      },
    );
  }

  Widget _signUpForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _usernameField(),
          _emailField(),
          _passwordField(),
          _loginButton(),
        ],
      ),
    );
  }

  Widget _showLoginButton() {
    return TextButton(
      onPressed: () => BlocProvider.of<NavigatorCubit>(context).showLogin(),
      child: Text('Already have an account? Login.'),
    );
  }
}
