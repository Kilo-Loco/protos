import 'package:flutter/material.dart';

class SaveModelActionButton extends StatelessWidget {
  final String modelName;
  final Function(String) onSave;
  final _controller = TextEditingController();

  SaveModelActionButton({
    Key? key,
    required this.modelName,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _showInputDialog(context),
    );
  }

  void _showInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('New $modelName'),
          content: TextField(controller: _controller),
          actions: [
            ElevatedButton(
              child: const Text('Save'),
              onPressed: () {
                onSave(_controller.text);
                Navigator.pop(context);
                _controller.text = '';
              },
            ),
          ],
        );
      },
    );
  }
}
