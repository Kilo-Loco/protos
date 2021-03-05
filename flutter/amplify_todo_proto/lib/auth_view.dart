import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Sign In'),
          onPressed: () {},
        ),
      ),
    );
  }
}
