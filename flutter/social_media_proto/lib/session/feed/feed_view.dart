import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/session/feed/feed_bloc.dart';
import 'package:social_media_proto/session/feed/feed_state.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedBloc(),
      child: Scaffold(
        appBar: _appBar(),
        body: _postsFeed(),
        floatingActionButton: _newPostActionButton(),
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
                return ListTile(
                  subtitle: Text(post.caption ?? ''),
                );
              })
          : Center(
              child: Text('No posts yet'),
            );
    });
  }

  Widget _newPostActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.add_a_photo),
      onPressed: () {},
    );
  }
}
