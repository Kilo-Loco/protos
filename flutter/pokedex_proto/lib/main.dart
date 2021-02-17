import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_proto/bloc/pokemon_bloc.dart';
import 'package:pokedex_proto/bloc/pokemon_event.dart';

import 'app_navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context)
          .copyWith(primaryColor: Colors.red, accentColor: Colors.redAccent),
      home: MultiBlocProvider(providers: [
        BlocProvider(
            create: (context) =>
                PokemonPageBloc()..add(PokemonPageRequested(page: 0)))
      ], child: AppNavigator()),
    );
  }
}
