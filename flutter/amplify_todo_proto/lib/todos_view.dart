import 'package:amplify_todo_proto/auth_cubit.dart';
import 'package:amplify_todo_proto/list_todos_cubit.dart';
import 'package:amplify_todo_proto/loading_view.dart';
import 'package:amplify_todo_proto/models/Todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodosView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _navBar(),
      floatingActionButton: _floatingActionButton(),
      body: BlocBuilder<ListTodosCubit, ListTodosState>(
          builder: (context, state) {
        if (state is ListTodosSuccess) {
          return state.todos.isEmpty
              ? _emptyTodosView()
              : _todosListView(state.todos);
        } else if (state is ListTodosFailed) {
          return Center(
            child: Text(state.exception.toString()),
          );
        } else {
          return LoadingView();
        }
      }),
    );
  }

  AppBar _navBar() {
    return AppBar(
      leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () => BlocProvider.of<AuthCubit>(context).signOut()),
      title: Text('Todos'),
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => _newTodosView());
        });
  }

  Widget _emptyTodosView() {
    return Center(
      child: Text('No todos yet'),
    );
  }

  Widget _todosListView(List<Todo> todos) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return Card(
            child: CheckboxListTile(
                title: Text(todo.title),
                value: todo.isComplete,
                onChanged: (newValue) {
                  BlocProvider.of<ListTodosCubit>(context)
                      .updateIsCompleteForTodo(todo, newValue);
                }),
          );
        });
  }

  Widget _newTodosView() {
    return Column(
      children: [
        TextField(
          controller: _titleController,
          decoration: InputDecoration(hintText: 'Enter a todo'),
        ),
        ElevatedButton(
            onPressed: () {
              BlocProvider.of<ListTodosCubit>(context)
                  .createTodo(_titleController.text);
              Navigator.of(context).pop();
            },
            child: Text('Create Todo'))
      ],
    );
  }
}
