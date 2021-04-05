import 'package:flutter_bloc/flutter_bloc.dart';

abstract class FeedNaviationState {}

class Feed extends FeedNaviationState {}

class NewPost extends FeedNaviationState {}

class Profile extends FeedNaviationState {
  final String userId;

  Profile({this.userId});
}

class FeedNavigationCubit extends Cubit<FeedNaviationState> {
  FeedNavigationCubit() : super(Feed());

  void showFeed() => emit(Feed());
  void showNewPost() => emit(NewPost());
  void showProfileForUser(String userId) => emit(Profile(userId: userId));
}
