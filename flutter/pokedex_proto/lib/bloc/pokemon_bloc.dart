import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_proto/data/pokemon_repository.dart';
import 'pokemon_event.dart';
import 'pokemon_state.dart';

class PokemonPageBloc extends Bloc<PokemonEvent, PokemonState> {
  final _pokemonRepository = PokemonRepository();

  PokemonPageBloc() : super(PokemonInitial());

  @override
  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    if (event is PokemonPageRequested) {
      yield PokemonPageLoadInProgress(isInitialPage: event.page == 0);

      try {
        print('page: ${event.page}');
        final response = await _pokemonRepository.getPokemonPage(event.page);
        yield PokemonPageLoadSuccess(
            pokemonList: response.pokemonListings,
            canLoadMore: response.canLoadNextPage);
      } catch (e) {
        print(e);
        yield PokemonPageLoadFailure(error: e);
      }
    }
  }
}
