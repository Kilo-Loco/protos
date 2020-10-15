import 'package:amplify_and_flutter_proto/auth/login_credentials.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const valueKey = ValueKey('LoginPage');
  LoginPage({Key key, this.shouldShowSignUp, this.didProvideCredentials});

  final VoidCallback shouldShowSignUp;
  final ValueChanged<LoginCredentials> didProvideCredentials;

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    final credentials = LoginCredentials(
        email: _emailController.text, password: _passwordController.text);

    widget.didProvideCredentials(credentials);
  }

  Widget loginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Email TextField
        TextField(
          controller: _emailController,
          decoration:
              InputDecoration(icon: Icon(Icons.mail), labelText: 'Email'),
        ),

        // Password TextField
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              icon: Icon(Icons.lock_open), labelText: 'Password'),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),

        // Login Button
        FlatButton(
            onPressed: _login,
            child: Text('Login'),
            color: Theme.of(context).accentColor)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 40),
          child: Stack(children: [
            // Login Form
            loginForm(),

            // Sign Up Button
            Container(
              alignment: Alignment.bottomCenter,
              child: FlatButton(
                  onPressed: () => widget.shouldShowSignUp(),
                  child: Text('Don\'t have an account? Sign up.')),
            )
          ])),
    );
  }
}
