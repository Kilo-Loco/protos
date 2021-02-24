import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

import 'models/Message.dart';

class MessagesView extends StatefulWidget {
  final String email;

  MessagesView({Key key, this.email});

  @override
  State<StatefulWidget> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  List<Message> _messages = [];
  final _messageBodyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getMessages().then((value) => _observeMessages());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [_messagesListView(), _createMessageContainer()],
      ),
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
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          final message = _messages[index];
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
      child: SafeArea(
        child: Row(
          children: [
            Flexible(
                child: TextField(
              controller: _messageBodyController,
              decoration: InputDecoration(hintText: 'Enter a message'),
            )),
            TextButton(onPressed: _sendMessage, child: Text('Send'))
          ],
        ),
      ),
    );
  }

  Future<void> _getMessages() async {
    try {
      final messages = await Amplify.DataStore.query(Message.classType);
      setState(() => _messages = messages);
    } catch (e) {
      print(e);
    }
  }

  void _observeMessages() {
    final stream = Amplify.DataStore.observe(Message.classType);
    stream.listen((event) => _getMessages());
  }

  void _sendMessage() async {
    final newMessage = Message(
        body: _messageBodyController.text,
        sender: widget.email,
        creationDate: TemporalDateTime.now());
    try {
      await Amplify.DataStore.save(newMessage);
      _messageBodyController.text = '';
    } catch (e) {
      print(e);
    }
  }
}
