import 'package:amplify_todo_proto/todos_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'models/Todo.dart';

enum ListTodosEvent { getTodos }

abstract class ListTodosState {}

class LoadingTodos extends ListTodosState {}

class ListTodosSuccess extends ListTodosState {
  final List<dynamic> todos;

  ListTodosSuccess({this.todos});
}

class ListTodosFailed extends ListTodosState {
  final Exception exception;

  ListTodosFailed({this.exception});
}

class ListTodosCubit extends Cubit<ListTodosState> {
  final _todosRepo = TodosRepository();

  ListTodosCubit() : super(null);

  void getTodos() async {
    if (state is ListTodosSuccess == false) {
      emit(LoadingTodos());
    }

    try {
      final todos = await _todosRepo.getTodos();
      emit(ListTodosSuccess(todos: todos));
    } catch (e) {
      emit(ListTodosFailed(exception: e));
    }
  }

  void createTodo(String title) async {
    await _todosRepo.createTodo(title);
    getTodos();
  }

  void updateIsCompleteForTodo(Todo todo, bool isComplete) async {
    await _todosRepo.updateIsCompleteForTodo(todo, isComplete);
    getTodos();
  }
}
