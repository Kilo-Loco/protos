/*
count:1118
next:"https://pokeapi.co/api/v2/pokemon?offset=100&limit=100"
previous:null
results
  name:"bulbasaur"
  url:"https://pokeapi.co/api/v2/pokemon/1/"
  name:"ivysaur"
  url:"https://pokeapi.co/api/v2/pokemon/2/"
 */

class PokemonListing {
  final int id;
  final String name;

  String get imagePath =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  PokemonListing({this.id, this.name});

  factory PokemonListing.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final url = json['url'] as String;
    final id = int.parse(url.split('/')[6]);
    return PokemonListing(id: id, name: name);
  }
}

class PokemonPageResponse {
  final List<PokemonListing> pokemonListings;
  final bool canLoadNextPage;

  PokemonPageResponse({this.pokemonListings, this.canLoadNextPage});

  factory PokemonPageResponse.fromJson(Map<String, dynamic> json) {
    final results = json['results'] as List;
    final pokemonListings = results
        .map((listingJson) => PokemonListing.fromJson(listingJson))
        .toList();
    final next = json['next'];

    return PokemonPageResponse(
        pokemonListings: pokemonListings, canLoadNextPage: next != null);
  }
}
