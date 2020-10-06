import 'package:http/http.dart' as http;
import 'package:urban_dictionary_proto/define_response.dart';
import 'dart:convert';
import 'term.dart';

class NetworkingService {
  Future<List<Term>> defineTerm(String term) async {
    final queryParameters = {'term': term};

    final uri = Uri.https('mashape-community-urban-dictionary.p.rapidapi.com',
        'define', queryParameters);

    final headers = {
      'x-rapidapi-host': 'mashape-community-urban-dictionary.p.rapidapi.com',
      'x-rapidapi-key': 'pYQEsMdOHWmsh0C3bRjjDNLGS1kVp1NQ4F2jsnZbMfGJcMbn2M'
    };

    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return DefineResponse.fromJson(jsonDecode(response.body)).list;
    } else {
      throw Exception('Failed to fetch terms');
    }
  }
}
