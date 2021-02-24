import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

enum Screen { main, list, details }

class NavCubit extends Cubit<Screen> {
  NavCubit() : super(Screen.main);

  void showList() => emit(Screen.list);
  void showDetails() => emit(Screen.details);
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Container());
  }
}
