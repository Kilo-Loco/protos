import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:relational_data_amplify_flutter_proto/amplifyconfiguration.dart';
import 'package:relational_data_amplify_flutter_proto/models/ModelProvider.dart';
import 'package:relational_data_amplify_flutter_proto/posts_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAmplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _isAmplifyConfigured
              ? const PostsView()
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  void _configureAmplify() async {
    Amplify.addPlugins([
      AmplifyAPI(modelProvider: ModelProvider.instance),
      AmplifyDataStore(modelProvider: ModelProvider.instance),
    ]);

    try {
      await Amplify.configure(amplifyconfig);
      setState(() => _isAmplifyConfigured = true);

      debugPrint('configured amplify');
    } on AmplifyAlreadyConfiguredException {
      debugPrint('exception');
    }
  }
}
