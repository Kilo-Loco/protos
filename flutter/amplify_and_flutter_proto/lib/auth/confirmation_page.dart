import 'package:amplify_and_flutter_proto/analytics/analytic_events.dart';
import 'package:amplify_and_flutter_proto/analytics/analytics_serice.dart';
import 'package:flutter/material.dart';

class ConfirmationPage extends StatefulWidget {
  ConfirmationPage({Key key, this.email, this.didProvideConfirmationCode})
      : super(key: key);

  final String email;
  final ValueChanged<String> didProvideConfirmationCode;

  @override
  State<StatefulWidget> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  final _verificationCodeController = TextEditingController();

  void _verify() {
    widget.didProvideConfirmationCode(_verificationCodeController.text);

    AnalyticsService.log(VerificationEvent());
  }

  Widget _confirmationForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Verification Code TextField
        TextField(
          controller: _verificationCodeController,
          decoration: InputDecoration(labelText: 'Verification Code'),
          keyboardType: TextInputType.number,
        ),

        // Verify Button
        FlatButton(
            onPressed: _verify,
            child: Text('Verify'),
            color: Theme.of(context).accentColor)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 40),
          child: _confirmationForm()),
    );
  }
}
