import 'package:flutter/material.dart';
import 'package:flutter_networking_requests/data_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _dataService = DataService();

  String _responseString;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(
        child: Builder(builder: (_) {
          if (_responseString != null) {
            return Text(
              _responseString,
              style: TextStyle(fontSize: 20),
            );
          } else {
            return ElevatedButton(
              child: Text('Make Request'),
              onPressed: _makeRequest,
            );
          }
        }),
      )),
    );
  }

  void _makeRequest() async {
    final responseString = await _dataService.makeRequestToApi();
    setState(() {
      _responseString = responseString;
    });
  }
}
