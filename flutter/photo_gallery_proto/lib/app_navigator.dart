import 'package:flutter/material.dart';
import 'package:photo_gallery_proto/auth_navigator.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [MaterialPage(child: AuthNavigator())],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
