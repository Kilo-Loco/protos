import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_proto/bloc/pokemon_bloc.dart';

import 'bloc/pokemon_state.dart';

class PokedexView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pokedex'),
        ),
        body: BlocBuilder<PokemonPageBloc, PokemonState>(
            builder: ((context, state) {
          print('kilo $state');
          if (state is PokemonInitial) {
            return Container();
          } else if (state is PokemonPageLoadInProgress) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PokemonPageLoadSuccess) {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: state.pokemonList.length,
                itemBuilder: (context, index) {
                  final pokemonListing = state.pokemonList[index];
                  return Card(
                      child: GridTile(
                    child: Column(children: [
                      Image.network(pokemonListing.imagePath),
                      Text(pokemonListing.name)
                    ]),
                  ));
                });
          } else if (state is PokemonPageLoadFailure) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(state.error.toString()),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Dismiss'))
                  ],
                );
              },
            );
            return Container();
          } else {
            return Container();
          }
        })));
  }
}
