import 'package:flutter/material.dart';
import 'package:photo_gallery_proto/login_view.dart';

class AuthNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [MaterialPage(child: LoginView())],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
