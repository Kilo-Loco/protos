import 'package:flutter/material.dart';

class PokemonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  final _gridDelegate =
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: _gridDelegate,
          itemBuilder: (context, index) {
            return GridTile(
              child: Text(index.toString()),
            );
          }),
    );
  }
}
