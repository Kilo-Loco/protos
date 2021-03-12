import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()..configureAmplify());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }

  Future<void> configureAmplify() async {
    print('do something');
  }
}
