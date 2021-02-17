import 'package:flutter/material.dart';
import 'package:pokedex_proto/pokedex_view.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [MaterialPage(child: PokedexView())],
      onPopPage: (route, result) {
        return route.didPop(result);
      },
    );
  }
}
