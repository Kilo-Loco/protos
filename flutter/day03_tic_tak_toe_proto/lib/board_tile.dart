import 'package:flutter/material.dart';
import 'cell_state.dart';

class BoardTile extends StatelessWidget {
  final CellState cellState;
  final double dimension;
  final VoidCallback onPressed;

  BoardTile({Key key, this.cellState, this.dimension, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dimension,
      height: dimension,
      child:
          FlatButton(onPressed: onPressed, child: _widgetForState(cellState)),
    );
  }

  Widget _widgetForState(CellState cellState) {
    Widget widget;
    switch (cellState) {
      case CellState.EMPTY:
        {
          widget = Container();
        }
        break;

      case CellState.CROSS:
        {
          widget = Image.asset('images/x.png');
        }
        break;

      case CellState.CIRCLE:
        {
          widget = Image.asset('images/o.png');
        }
        break;
    }
    return widget;
  }
}
