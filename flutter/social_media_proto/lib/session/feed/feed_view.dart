import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/data_repository.dart';
import 'package:social_media_proto/session/amplify_image.dart';
import 'package:social_media_proto/session/feed/feed_bloc.dart';
import 'package:social_media_proto/session/feed/feed_navigation_cubit.dart';
import 'package:social_media_proto/session/feed/feed_state.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedBloc(dataRepo: context.read<DataRepository>()),
      child: Scaffold(
        appBar: _appBar(),
        body: _postsFeed(),
        floatingActionButton: _newPostActionButton(context),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text('Posts'),
    );
  }

  Widget _postsFeed() {
    return BlocBuilder<FeedBloc, FeedState>(builder: (context, state) {
      return state.posts.isNotEmpty
          ? ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];
                print(post.author);
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                          child: Icon(Icons.person, size: 40),
                        ),
                        Text(
                          'Kilo Loco',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    AmplifyImage(
                      imageKey: post.imageKey,
                    ),
                  ],
                );
              })
          : Center(
              child: Text('No posts yet'),
            );
    });
  }

  Widget _newPostActionButton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add_a_photo),
      onPressed: () => context.read<FeedNavigationCubit>().showNewPost(),
    );
  }
}
