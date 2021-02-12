import 'dart:convert';

import 'package:flutter_weather_proto/weather_response.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<WeatherResponse> getWeatherForCity(String city) async {
    final queryParameters = {
      'q': city,
      'appid': '98e8dfcf4ea2319b693eb4c58b2a6018',
      'units': 'imperial'
    };

    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameters);

    try {
      final response = await http.get(uri);
      final json = jsonDecode(response.body);
      return WeatherResponse.fromJson(json);
    } catch (e) {
      print(e);
    }
  }
}
