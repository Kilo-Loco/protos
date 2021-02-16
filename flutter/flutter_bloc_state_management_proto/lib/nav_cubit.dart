import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management_proto/post.dart';

class NavCubit extends Cubit<Post> {
  NavCubit() : super(null);

  void showPostDetails(Post post) => emit(post);

  void popToPosts() => emit(null);
}

abstract class NavEvent {}

class PostsEvent extends NavEvent {}

class PostDetailsEvent extends NavEvent {
  final Post post;

  PostDetailsEvent({this.post});
}

abstract class NavState {}

class PostsState extends NavState {}

class PostDetailsState extends NavState {
  final Post post;

  PostDetailsState({this.post});
}

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(PostsState());

  @override
  Stream<NavState> mapEventToState(NavEvent event) async* {
    if (event is PostsEvent) {
      yield PostsState();
    } else if (event is PostDetailsEvent) {
      yield PostDetailsState(post: event.post);
    }
  }
}
