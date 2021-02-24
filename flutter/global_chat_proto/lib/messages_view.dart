import 'package:flutter/material.dart';

import 'models/Message.dart';

class MessagesView extends StatefulWidget {
  final String username;

  MessagesView({Key key, this.username});

  @override
  State<StatefulWidget> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  List<Message> messages;
  final _messageBodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _messagesListView(),
    );
  }

  Widget _appBar() {
    return AppBar(
      leading: Container(),
      title: Text('Chat'),
    );
  }

  Widget _messagesListView() {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            title: Text(message.sender),
            subtitle: Text(message.body),
          );
        });
  }

  Widget _createMessageContainer() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Flexible(
              child: TextField(
            controller: _messageBodyController,
            decoration: InputDecoration(hintText: 'Enter a message'),
          ))
        ],
      ),
    );
  }
}
