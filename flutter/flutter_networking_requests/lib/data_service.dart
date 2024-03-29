import 'package:http/http.dart' as http;

class DataService {
  Future<String> makeRequestToApi() async {
    final uri = Uri.https('api.kiloloco.com', '/users');
    final response = await http.get(uri);
    return response.body;
  }
}
