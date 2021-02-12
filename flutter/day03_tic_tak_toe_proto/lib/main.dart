import 'package:flutter/material.dart';
import 'dart:math';
import 'board_tile.dart';
import 'cell_state.dart';

void main() {
  runApp(MyApp());
}

class Article {
  final String title;
  final String publicationID;

  Article({this.title, this.publicationID});
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();
  List<CellState> _boardState = List.filled(0, CellState.EMPTY);

  CellState _currentTurn = CellState.CROSS;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
          body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [Image.asset('images/board.png'), _boardTiles()],
        ),
      )),
    );
  }

  Widget _boardTiles() {
    if (_boardState.isNotEmpty) {
      print("Hello ${_boardState.first}");
    }

    return Builder(builder: (context) {
      final boardDimension = MediaQuery.of(context).size.width;
      final tileDimension = boardDimension / 3;
      return Container(
        width: boardDimension,
        height: boardDimension,
        child: Column(
            children: chunk(_boardState, 3).asMap().entries.map((chunkEntry) {
          final chunkIndex = chunkEntry.key;
          final cellStateChunk = chunkEntry.value;
          return Row(
              children: cellStateChunk.asMap().entries.map((innerEntry) {
            final innerIndex = innerEntry.key;
            final cellState = innerEntry.value;
            final tileIndex = (chunkIndex * 3) + innerIndex;
            return BoardTile(
              cellState: cellState,
              dimension: tileDimension,
              onPressed: () => _updateWithSelection(tileIndex),
            );
          }).toList());
        }).toList()),
      );
    });
  }

  void _updateWithSelection(int selectedIndex) {
    if (_boardState[selectedIndex] == CellState.EMPTY) {
      setState(() {
        _boardState[selectedIndex] = _currentTurn;
        _currentTurn = _boardState[selectedIndex] == CellState.CROSS
            ? CellState.CIRCLE
            : CellState.CROSS;
      });

      final winner = _findWinner();
      if (winner != null) {
        print('Found winner $winner');
        _showWinnerDialog(winner);
      }
    }
  }

  CellState _findWinner() {
    CellState Function(int, int, int) winnerForMatch = (a, b, c) {
      if (_boardState[a] != CellState.EMPTY) {
        if ((_boardState[a] == _boardState[b]) &&
            (_boardState[b] == _boardState[c])) {
          return _boardState[a];
        }
      }
      return null;
    };

    final checks = [
      winnerForMatch(0, 1, 2),
      winnerForMatch(3, 4, 5),
      winnerForMatch(6, 7, 8),
      winnerForMatch(0, 3, 6),
      winnerForMatch(1, 4, 7),
      winnerForMatch(2, 5, 8),
      winnerForMatch(0, 4, 8),
      winnerForMatch(2, 4, 6)
    ];

    CellState winner;
    for (int i = 0; i < checks.length; i++) {
      if (checks[i] != null) {
        winner = checks[i];
        break;
      }
    }

    return winner;
  }

  void _showWinnerDialog(CellState cellState) {
    final context = navigatorKey.currentState.overlay.context;
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Winner!'),
            content: Image.asset(
                cellState == CellState.CROSS ? 'images/x.png' : 'images/o.png'),
            actions: [
              FlatButton(
                  onPressed: () {
                    _resetGame();
                    Navigator.of(context).pop();
                  },
                  child: Text('New Game'))
            ],
          );
        });
  }

  void _resetGame() {
    setState(() {
      _currentTurn = CellState.CROSS;
      _boardState = List.filled(9, CellState.EMPTY);
    });
  }
}
