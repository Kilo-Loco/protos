import 'package:flutter/material.dart';
import 'login_view.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [MaterialPage(child: LoginView())],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
