import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:relational_data_amplify_flutter_proto/comments_view.dart';
import 'package:relational_data_amplify_flutter_proto/post_details_view.dart';
import 'package:relational_data_amplify_flutter_proto/save_model_action_button.dart';
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
    _getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
        actions: [
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CommentsView(),
              ),
            ),
            child: const Text(
              'All Comments',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: _PostsList(
        posts: _posts,
        onDeletePost: _deletePost,
      ),
      floatingActionButton: SaveModelActionButton(
        modelName: 'Post',
        onSave: _savePost,
      ),
    );
  }

  void _getPosts() {
    _stream = Amplify.DataStore.observeQuery(Post.classType);

    _stream?.listen(
      (snapshot) => setState(() => _posts = snapshot.items),
    );
  }

  void _savePost(String title) async {
    final newPost = Post(title: title);
    await Amplify.DataStore.save(newPost);
  }

  void _deletePost(Post post) async {
    await Amplify.DataStore.delete(post);
    _posts.removeWhere((element) => element.id == post.id);
  }

  @override
  void dispose() {
    super.dispose();
    _stream = null;
  }
}

class _PostsList extends StatelessWidget {
  final List<Post> posts;

  final Function(Post post) onDeletePost;

  const _PostsList({
    Key? key,
    required this.posts,
    required this.onDeletePost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Dismissible(
          key: Key(post.id),
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
            child: const Icon(Icons.delete),
          ),
          onDismissed: (_) {
            onDeletePost(post);
          },
          child: Card(
            child: ListTile(
              title: Text(post.title),
              onTap: () => _navigateToPostDetails(context, post),
            ),
          ),
        );
      },
    );
  }

  void _navigateToPostDetails(BuildContext context, Post post) =>
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PostDetailsView(post: post),
        ),
      );
}
