import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [Text('List'), Text('Grid')],
            ),
          ),
          body: TabBarView(children: [contentListView(), contentGridView()]),
        ),
      ),
    );
  }

  Widget contentListView() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(index.toString()),
            ),
          );
        });
  }

  Widget contentGridView() {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: GridTile(
              child: Center(child: Text(index.toString())),
            ),
          );
        });
  }
}
