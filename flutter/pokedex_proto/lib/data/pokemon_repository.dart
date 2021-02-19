import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex_proto/data/pokemon_info_response.dart';
import 'package:pokedex_proto/data/pokemon_page_response.dart';
import 'package:pokedex_proto/data/pokemon_species_info_response.dart';

class PokemonRepository {
  final baseUrl = 'pokeapi.co';
  final client = http.Client();

  Future<PokemonPageResponse> getPokemonPage(int pageIndex) async {
    final queryParameters = {
      'limit': '200',
      'offset': (pageIndex * 200).toString()
    };
    final pokemonPageUri =
        Uri.https(baseUrl, '/api/v2/pokemon', queryParameters);

    try {
      final response = await client.get(pokemonPageUri);
      final json = jsonDecode(response.body);

      return PokemonPageResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  Future<PokemonInfoResponse> getPokemonInfo(int pokemonId) async {
    final uri = Uri.https(baseUrl, '/api/v2/pokemon/$pokemonId');

    try {
      final response = await client.get(uri);
      final json = jsonDecode(response.body);
      return PokemonInfoResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  Future<PokemonSpeciesInfoResponse> getPokemonSpeciesInfo(
      int pokemonId) async {
    final uri = Uri.https(baseUrl, '/api/v2/pokemon-species/$pokemonId');

    try {
      final response = await client.get(uri);
      final json = jsonDecode(response.body);
      return PokemonSpeciesInfoResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
