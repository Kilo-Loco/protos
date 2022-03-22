import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:relational_data_amplify_flutter_proto/post_details_view.dart';
import 'models/Post.dart';

class PostsView extends StatefulWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  Stream<QuerySnapshot<Post>>? _stream;
  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: _PostsList(posts: _posts),
    );
  }

  void getPosts() {
    _stream = Amplify.DataStore.observeQuery(Post.classType);

    _stream?.listen(
      (snapshot) => setState(() => _posts = snapshot.items),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _stream = null;
  }
}

class _PostsList extends StatelessWidget {
  final List<Post> posts;

  const _PostsList({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text(posts[index].title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostDetailsView(post: posts[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
