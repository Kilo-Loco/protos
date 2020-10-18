import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_and_flutter_proto/amplifyconfiguration.dart';
import 'package:amplify_and_flutter_proto/auth/auth_flow_status.dart';
import 'package:amplify_and_flutter_proto/auth/auth_service.dart';
import 'package:amplify_and_flutter_proto/auth/confirmation_page.dart';
import 'package:amplify_and_flutter_proto/auth/sign_up_page.dart';
import 'package:amplify_and_flutter_proto/session/camera_flow.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'auth/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _amplify = Amplify();
  final _authService = AuthService();

  @override
  void initState() {
    super.initState();
    _configureAmplify();
    _authService.getCurrentUser();
  }

  void _configureAmplify() async {
    _amplify.addPlugin(
        analyticsPlugins: [AmplifyAnalyticsPinpoint()],
        authPlugins: [AmplifyAuthCognito()],
        storagePlugins: [AmplifyStorageS3()]);

    try {
      await _amplify.configure(amplifyconfig);
      print('initialized amplify');
    } on PlatformException catch (e) {
      print('could not configure amplify - $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
        stream: _authService.authStateController.stream,
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: Navigator(
                pages: [
                  // Show Login Page
                  if (snapshot.data.authFlowStatus == AuthFlowStatus.login)
                    MaterialPage(
                        key: LoginPage.valueKey,
                        child: LoginPage(
                          shouldShowSignUp: _authService.showSignUp,
                          didProvideCredentials:
                              _authService.loginWithCredentials,
                        )),

                  // Show Sign Up Page
                  if (snapshot.data.authFlowStatus == AuthFlowStatus.signUp)
                    MaterialPage(
                        key: SignUpPage.valueKey,
                        child: SignUpPage(
                            shouldShowLogin: _authService.showLogin,
                            didProvideCredentials:
                                _authService.signUpWithCredentials)),

                  // Show Confirmation Page
                  if (snapshot.data.authFlowStatus ==
                      AuthFlowStatus.verification)
                    MaterialPage(
                        key: ConfirmationPage.valueKey,
                        child: ConfirmationPage(
                          didProvideConfirmationCode:
                              _authService.verifyConfirmation,
                        )),

                  // Show Session Page
                  if (snapshot.data.authFlowStatus == AuthFlowStatus.session &&
                      snapshot.data.user != null)
                    MaterialPage(
                        child: CameraFlow(
                            currentUser: snapshot.data.user,
                            shouldLogOut: _authService.logOut))
                ],
                onPopPage: (route, result) {
                  return route.didPop(result);
                },
              ),
            );
          } else {
            return Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: CircularProgressIndicator());
          }
        });
  }
}
