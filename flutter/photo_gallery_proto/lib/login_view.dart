import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery_proto/login_cubit.dart';

import 'auth_repository.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: BlocProvider<LoginCubit>(
            create: (_) => LoginCubit(authRepo: context.read<AuthRepository>()),
            child: _loginPage()),
      ),
    );
  }

  Widget _loginPage() {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state == LoginState.loginFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text('Failed to login'),
              ),
            );
        }
      },
      child: _loginForm(),
    );
  }

  Widget _usernameField() {
    return TextFormField(
      controller: _usernameController,
      validator: (value) {
        return value.length < 3 ? 'Username too short' : null;
      },
      decoration:
          InputDecoration(hintText: 'Username', icon: Icon(Icons.person)),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        return value.length < 8 ? 'Password is too short' : null;
      },
      decoration: InputDecoration(hintText: 'Password', icon: Icon(Icons.lock)),
    );
  }

  Widget _loginButton() {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state == LoginState.attemptingLogin
            ? CircularProgressIndicator()
            : ElevatedButton(
                child: Text('Login'),
                onPressed: () => BlocProvider.of<LoginCubit>(context).login(
                    username: _usernameController.text,
                    password: _passwordController.text),
              );
      },
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _usernameField(),
          _passwordField(),
          _loginButton(),
        ],
      ),
    );
  }
}
