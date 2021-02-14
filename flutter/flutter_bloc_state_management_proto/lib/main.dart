import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management_proto/nav_cubit.dart';
import 'package:flutter_bloc_state_management_proto/posts_cubit.dart';
import 'package:flutter_bloc_state_management_proto/posts_view.dart';

import 'post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<NavCubit>(
            create: (context) => NavCubit(),
            child: BlocProvider<PostsCubit>(
              create: (context) => PostsCubit()..getPosts(),
              child: BlocBuilder<NavCubit, Post>(builder: (context, state) {
                return Navigator(
                    pages: [
                      MaterialPage(child: PostsView()),
                      if (state != null)
                        MaterialPage(
                            child: Scaffold(
                                appBar: AppBar(
                                  title: Text(state.title),
                                ),
                                body: Center(
                                  child: Text(state.body),
                                )))
                    ],
                    onPopPage: (route, result) {
                      BlocProvider.of<NavCubit>(context).popToPosts();
                      return route.didPop(result);
                    });
              }),
            )));
  }
}
