import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Navigator(
      pages: [MaterialPage(child: UsersView(), key: UsersView.valueKey)],
    ));
  }
}

class UsersView extends StatelessWidget {
  static const valueKey = ValueKey("UsersView");

  final _users = ["Kyle", "Adriana", "Andrew", "Xavier", "Mya"];

  @override
  Widget build(BuildContext context) {
    throw ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(title: Text(_users[index]), onTap: () {}));
        });
  }
}
