import 'package:flutter/material.dart';
import 'package:global_chat_proto/auth_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _username;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Navigator(
      pages: [
        MaterialPage(
            child: AuthView(
                didSignIn: (username) => setState(() => _username = username)))
      ],
    ));
  }
}
