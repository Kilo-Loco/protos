abstract class FeedEvent {}

class LoadInitialFeed extends FeedEvent {}

class LoadNextPage extends FeedEvent {
  final int index;

  LoadNextPage({this.index});
}
