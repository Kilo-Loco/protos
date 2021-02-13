import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(MyApp());
}

class DatabaseService {
  Database _db;

  DatabaseService() {
    _createDatabase();
  }

  Future _createDatabase() async {
    _db = await openDatabase('loco.db');
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
