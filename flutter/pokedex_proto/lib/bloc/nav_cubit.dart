import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_proto/bloc/pokemon_details_cubit.dart';

class NavCubit extends Cubit<int> {
  final PokemonDetailsCubit pokemonDetailsCubit;

  NavCubit({this.pokemonDetailsCubit}) : super(null);

  void showPokemonDetails(int pokemonId) {
    pokemonDetailsCubit.getPokemonDetails(pokemonId);
    emit(pokemonId);
  }

  void popToPokedex() {
    emit(null);
    pokemonDetailsCubit.clearDeatils();
  }
}
