import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/data_repository.dart';
import 'package:social_media_proto/models/User.dart';
import 'package:social_media_proto/session/feed/feed_event.dart';
import 'package:social_media_proto/session/feed/feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final DataRepository dataRepo;
  final User currentUser;

  FeedBloc({this.dataRepo, this.currentUser}) : super(FeedState()) {
    add(LoadInitialFeed());
  }

  @override
  Stream<FeedState> mapEventToState(FeedEvent event) async* {
    if (event is LoadInitialFeed) {
      yield state.copyWith(loadingInitialFeed: true);
      final posts = await dataRepo.getPosts(0);
      print('kyle ${posts.length}');
      yield state.copyWith(posts: posts, loadingInitialFeed: false);
    } else if (event is LoadNextPage) {}
  }
}
