import 'package:amplify_core/amplify_core.dart';
import 'package:infinite_scroll_flutter_proto/amplifyconfiguration.dart';
import 'package:infinite_scroll_flutter_proto/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'data_service.dart';
import 'models/Animal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _amplify = Amplify();
  final dataService = DataService();

  MyApp() {
    try {
      final provider = ModelProvider();
      final plugin = AmplifyDataStore(modelProvider: provider);

      _amplify.addPlugin(dataStorePlugins: [plugin]);
      _amplify.configure(amplifyconfig);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Animals')),
        body: animalsListView(),
      ),
    );
  }

  Widget animalsListView() {
    return StreamBuilder(
      stream: dataService.animalStreamController.stream,
      initialData: List<Animal>.empty(),
      builder: (_, AsyncSnapshot<List<Animal>> snapshot) {
        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (_, index) {
            final animal = snapshot.data[index];
            return ListTile(
              leading: Text(animal.emoji),
              title: Text(animal.name),
            );
          },
        );
      },
    );
  }
}
