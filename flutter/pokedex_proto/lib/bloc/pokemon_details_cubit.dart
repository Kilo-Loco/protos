import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_proto/data/pokemon_details.dart';
import 'package:pokedex_proto/data/pokemon_info_response.dart';
import 'package:pokedex_proto/data/pokemon_repository.dart';
import 'package:pokedex_proto/data/pokemon_species_info_response.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetails> {
  final _pokemonRepository = PokemonRepository();

  PokemonDetailsCubit() : super(null);

  void getPokemonDetails(int pokemonId) async {
    final pokemonDetailsResponses = await Future.wait([
      _pokemonRepository.getPokemonInfo(pokemonId),
      _pokemonRepository.getPokemonSpeciesInfo(pokemonId)
    ]);

    // assert(pokemonDetailsResponses.length == 2);
    print(pokemonDetailsResponses);

    final pokemonInfo = pokemonDetailsResponses[0] as PokemonInfoResponse;
    final speciesInfo =
        pokemonDetailsResponses[1] as PokemonSpeciesInfoResponse;

    emit(PokemonDetails(
        id: pokemonInfo.id,
        name: pokemonInfo.name,
        imageUrl: pokemonInfo.imageUrl,
        types: pokemonInfo.types,
        height: pokemonInfo.height,
        weight: pokemonInfo.weight,
        description: speciesInfo.description));
  }

  void clearDeatils() => emit(null);
}
