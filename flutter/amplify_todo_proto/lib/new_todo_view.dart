import 'package:amplify_todo_proto/list_todos_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewTodoView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewTodoView();
}

class _NewTodoView extends State<NewTodoView> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
