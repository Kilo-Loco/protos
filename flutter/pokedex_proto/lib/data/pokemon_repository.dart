import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex_proto/data/pokemon_page_response.dart';

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

      print(json);

      final pokemonPageResponse = PokemonPageResponse.fromJson(json);
      pokemonPageResponse.pokemonListings.forEach((element) => print(element));

      return pokemonPageResponse;
    } catch (e) {
      throw e;
    }
  }
}
