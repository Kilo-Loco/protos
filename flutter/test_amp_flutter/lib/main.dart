import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Instantiate Amplify
  Amplify amplifyInstance = Amplify();

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    // Add Pinpoint and Cognito Plugins
    amplifyInstance.addPlugin(
        authPlugins: [AmplifyAuthCognito()],
        analyticsPlugins: [AmplifyAnalyticsPinpoint()]);

    try {
      // Once Plugins are added, configure Amplify
      await amplifyInstance.configure(amplifyconfig);
      print('initialized amplify!');
    } catch (e) {
      print('failed to initialize amplify - $e');
    }
  }

  // Send an event to Pinpoint
  void _recordEvent() async {
    AnalyticsEvent event = AnalyticsEvent("time_viewed");
    event.properties.addDoubleProperty("doubleKey", 8.0);
    Amplify.Analytics.recordEvent(event: event);

    print('sent event: ${event.properties.getAllProperties()}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Amplify Core example app'),
            ),
            body: Center(
                child: RaisedButton(
                    onPressed: _recordEvent,
                    child: const Text('record event')))));
  }
}
