import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management_proto/nav_cubit.dart';
import 'package:flutter_bloc_state_management_proto/posts_cubit.dart';

import 'post.dart';

class PostsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: BlocBuilder<PostsCubit, List<Post>>(builder: (context, posts) {
        if (posts.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(posts[index].title),
                  onTap: () => BlocProvider.of<NavCubit>(context)
                      .showPostDetails(posts[index]),
                ),
              );
            });
      }),
    );
  }
}
