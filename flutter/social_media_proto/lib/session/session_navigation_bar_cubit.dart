import 'package:flutter_bloc/flutter_bloc.dart';

class SessionNavigationBarState {
  final int currentIndex;

  SessionNavigationBarState({int currentIndex = 0})
      : this.currentIndex = currentIndex;
}

class SessionNavigationBarCubit extends Cubit<int> {
  SessionNavigationBarCubit() : super(0);

  void updateSelectedIndex(int index) => emit(index);
}
