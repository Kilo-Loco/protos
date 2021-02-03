import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

enum CellState { EMPTY, CROSS, CIRCLE }

class BoardTile extends StatelessWidget {
  final int index;
  final Function(int) selectedIndex;

  BoardTile({Key key, this.index, this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () => selectedIndex(index), child: Icon(Icons.close));
  }
}

class _MyAppState extends State<MyApp> {
  List<CellState> boardState = List.filled(9, CellState.EMPTY);

  CellState currentTurn = CellState.CROSS;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoardTile(index: 0, selectedIndex: updateWithSelection),
                  BoardTile(index: 1, selectedIndex: updateWithSelection),
                  BoardTile(index: 2, selectedIndex: updateWithSelection)
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoardTile(index: 3, selectedIndex: updateWithSelection),
                  BoardTile(index: 4, selectedIndex: updateWithSelection),
                  BoardTile(index: 5, selectedIndex: updateWithSelection)
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoardTile(index: 6, selectedIndex: updateWithSelection),
                  BoardTile(index: 7, selectedIndex: updateWithSelection),
                  BoardTile(index: 8, selectedIndex: updateWithSelection)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageForStateAtIndex(int index) {
    final state = boardState[index];
    Widget widget;
    switch (state) {
      case CellState.EMPTY:
        {
          widget = Container(decoration: BoxDecoration(border: Border.all()));
        }
        break;

      case CellState.CROSS:
        {
          widget = Icon(Icons.close);
        }
        break;

      case CellState.CIRCLE:
        {
          widget = Icon(Icons.trip_origin);
        }
    }
    return widget;
  }

  void updateWithSelection(int selectedIndex) {
    if (boardState[selectedIndex] == CellState.EMPTY) {
      setState(() {
        boardState[selectedIndex] = currentTurn;
        currentTurn = boardState[selectedIndex] == CellState.CROSS
            ? CellState.CIRCLE
            : CellState.CROSS;
      });
    }
  }
}
