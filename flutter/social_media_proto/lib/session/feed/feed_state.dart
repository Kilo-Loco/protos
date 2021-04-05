import 'package:social_media_proto/models/Post.dart';

class FeedState {
  final List<Post> posts;
  final String errorMessage;
  final bool loadingInitialFeed;
  final bool loadingNextPage;

  FeedState(
      {this.posts = const [],
      this.errorMessage,
      this.loadingInitialFeed = true,
      this.loadingNextPage = false});

  FeedState copyWith({
    List<Post> posts,
    String errorMessage,
    bool loadingInitialFeed,
    bool loadingNextPage,
  }) {
    return FeedState(
      posts: posts ?? this.posts,
      errorMessage: errorMessage ?? this.errorMessage,
      loadingInitialFeed: loadingInitialFeed ?? this.loadingInitialFeed,
      loadingNextPage: loadingNextPage ?? this.loadingNextPage,
    );
  }
}
