import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/session/feed/feed_navigation_cubit.dart';
import 'package:social_media_proto/session/feed/feed_view.dart';
import 'package:social_media_proto/session/feed/new_post_view.dart';
import 'package:social_media_proto/session/profile/profile_view.dart';

class FeedNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedNavigationCubit(),
      child: BlocBuilder<FeedNavigationCubit, FeedNaviationState>(
          builder: (context, state) {
        return Navigator(
          pages: [
            MaterialPage(child: FeedView()),
            if (state is Profile == false) ...[
              if (state is NewPost) MaterialPage(child: NewPostView()),
              if (state is Profile) MaterialPage(child: ProfileView())
            ]
          ],
          onPopPage: (route, result) => route.didPop(result),
        );
      }),
    );
  }
}
