import 'package:pokedex_proto/data/pokemon_page_response.dart';

abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonPageLoadInProgress extends PokemonState {
  final bool isInitialPage;

  PokemonPageLoadInProgress({this.isInitialPage});
}

class PokemonPageLoadSuccess extends PokemonState {
  final List<PokemonListing> pokemonList;
  final bool canLoadMore;

  PokemonPageLoadSuccess({this.pokemonList, this.canLoadMore});
}

class PokemonPageLoadFailure extends PokemonState {
  final Error error;

  PokemonPageLoadFailure({this.error});
}
