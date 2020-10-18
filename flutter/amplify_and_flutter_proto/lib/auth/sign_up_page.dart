import 'package:amplify_and_flutter_proto/analytics/analytic_events.dart';
import 'package:amplify_and_flutter_proto/analytics/analytics_serice.dart';
import 'package:amplify_and_flutter_proto/auth/sign_up_credentials.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const valueKey = ValueKey('SignUpPage');
  SignUpPage({Key key, this.didProvideCredentials, this.shouldShowLogin});

  final ValueChanged<SignUpCredentials> didProvideCredentials;
  final VoidCallback shouldShowLogin;

  @override
  State<StatefulWidget> createState() => _SignUpPagePageState();
}

class _SignUpPagePageState extends State<SignUpPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _signUp() {
    final credentials = SignUpCredentials(
        username: _usernameController.text,
        email: _emailController.text,
        password: _passwordController.text);

    widget.didProvideCredentials(credentials);

    AnalyticsService.log(SignUpEvent());
  }

  Widget _signUpForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Username TextField
        TextField(
          controller: _usernameController,
          decoration:
              InputDecoration(icon: Icon(Icons.person), labelText: 'Username'),
        ),

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
            onPressed: _signUp,
            child: Text('Sign Up'),
            color: Theme.of(context).accentColor)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
          child: Stack(children: [
            // Sign Up Form
            _signUpForm(),

            // Login Button
            Container(
              alignment: Alignment.bottomCenter,
              child: FlatButton(
                  onPressed: () => widget.shouldShowLogin(),
                  child: Text('Already have an account? Login.')),
            ),
          ])),
    );
  }
}
