import 'package:flutter/foundation.dart';

abstract class PokemonEvent {}

class PokemonPageRequested extends PokemonEvent {
  final int page;

  PokemonPageRequested({@required this.page});
}
