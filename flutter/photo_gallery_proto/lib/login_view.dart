import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  return !value.contains('@') ? 'Enter a valid email' : null;
                },
                decoration: InputDecoration(
                    hintText: 'Username', icon: Icon(Icons.person)),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  return value.length < 8 ? 'Password is too short' : null;
                },
                decoration: InputDecoration(
                    hintText: 'Password', icon: Icon(Icons.lock)),
              ),
              ElevatedButton(onPressed: _login, child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }

  void _login() {
    if (_formKey.currentState.validate()) {}
  }
}
