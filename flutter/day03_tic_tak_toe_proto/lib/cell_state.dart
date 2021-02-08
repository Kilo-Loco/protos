import 'dart:math';

enum CellState { EMPTY, CROSS, CIRCLE }

List<List<CellState>> chunk(List<CellState> list, int size) {
  return List.generate((list.length / size).ceil(),
      (i) => list.sublist(i * size, min(i * size + size, list.length)));
}
