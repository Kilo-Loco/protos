import 'package:flutter/material.dart';
import 'package:flutter_weather_proto/data_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _cityTextController = TextEditingController();

  String _iconUrl;
  double _temperature;
  String _description;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_temperature != null)
              Column(
                children: [
                  Image.network(_iconUrl),
                  Text(
                    '$_temperature°',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(_description),
                ],
              ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: SizedBox(
                width: 150,
                child: TextField(
                    controller: _cityTextController,
                    decoration: InputDecoration(labelText: 'City'),
                    textAlign: TextAlign.center),
              ),
            ),
            ElevatedButton(onPressed: _search, child: Text('Search'))
          ],
        ),
      ),
    ));
  }

  void _search() async {
    final response =
        await DataService().getWeatherForCity(_cityTextController.text);
    print(response.cityName);
    setState(() {
      _iconUrl = response.iconUrl;
      _temperature = response.tempInfo.temperature;
      _description = response.weatherInfo.description;
    });
  }
}
