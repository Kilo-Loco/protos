import 'package:amplify_flutter/amplify.dart';

import 'models/Todo.dart';

class TodosRepository {
  Future<List<Todo>> getTodos() async {
    try {
      return await Amplify.DataStore.query(Todo.classType);
    } catch (e) {
      throw e;
    }
  }

  Future<void> createTodo(String title) async {
    final todo = Todo(title: title, isComplete: false);
    try {
      return await Amplify.DataStore.save(todo);
    } catch (e) {
      throw e;
    }
  }

  Future<void> updateIsCompleteForTodo(Todo todo, bool isComplete) async {
    final updatedTodo = todo.copyWith(isComplete: isComplete);
    try {
      return await Amplify.DataStore.save(updatedTodo);
    } catch (e) {
      throw e;
    }
  }
}
