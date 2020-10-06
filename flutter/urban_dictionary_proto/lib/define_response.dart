import 'term.dart';

class DefineResponse {
  DefineResponse(this.list);

  List<Term> list;

  factory DefineResponse.fromJson(Map<String, dynamic> json) {
    if (json['list'] is List) {
      final termsList = json['list'] as List;
      final terms =
          termsList.cast<Map<String, dynamic>>().map((e) => Term.fromJson(e));
      return DefineResponse(terms.toList());
    } else {
      return DefineResponse([]);
    }
  }
}
