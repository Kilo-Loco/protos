import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management_proto/post.dart';
import 'package:flutter_bloc_state_management_proto/post_details_view.dart';
import 'package:flutter_bloc_state_management_proto/posts_cubit.dart';
import 'package:flutter_bloc_state_management_proto/posts_view.dart';

import 'nav_cubit.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(builder: (context, state) {
      return Navigator(
          pages: [
            MaterialPage(child: PostsView()),
            if (state is PostDetailsState)
              MaterialPage(
                  child: PostDetailView(
                post: state.post,
              ))
          ],
          onPopPage: (route, result) {
            BlocProvider.of<NavBloc>(context).add(PostsEvent());
            return route.didPop(result);
          });
    });
  }
}
