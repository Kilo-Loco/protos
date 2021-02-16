import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management_proto/app_navigator.dart';
import 'package:flutter_bloc_state_management_proto/nav_cubit.dart';
import 'package:flutter_bloc_state_management_proto/posts_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(providers: [
      BlocProvider(create: (context) => NavBloc()),
      BlocProvider(create: (context) => PostsCubit()..getPosts())
    ], child: AppNavigator()));
  }
}
