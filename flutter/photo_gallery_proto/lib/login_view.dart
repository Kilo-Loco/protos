import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
              controller: _emailController,
              validator: (value) {
                return value.contains('@') ? '' : 'Enter a valid email';
              }),
          TextFormField(
              controller: _passwordController,
              obscureText: true,
              validator: (value) {
                return value.length >= 8 ? '' : 'Password is too short';
              }),
          ElevatedButton(onPressed: () {}, child: Text('Login'))
        ],
      ),
    );
  }
}
