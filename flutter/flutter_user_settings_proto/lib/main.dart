import 'package:flutter/material.dart';
import 'package:flutter_user_settings_proto/preferences_service.dart';
import 'package:flutter_user_settings_proto/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _preferencesService = PreferencesService();
  var _hasLoadedPreferences = false;

  final _usernameController = TextEditingController();
  var _selectedGender = Gender.FEMALE;
  var _selectedLanguages = Set<ProgrammingLanguage>();
  var _isEmployed = false;

  @override
  void initState() {
    super.initState();
    _populateFields();
  }

  void _populateFields() async {
    final settings = await _preferencesService.getSettings();
    setState(() {
      _usernameController.text = settings.username;
      _selectedGender = settings.gender;
      _selectedLanguages = settings.programmingLanguages;
      _isEmployed = settings.isEmployed;
      _hasLoadedPreferences = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('User Settings'),
          ),
          body: Builder(builder: ((_) {
            if (_hasLoadedPreferences) {
              return ListView(
                children: [
                  ListTile(
                    title: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                  ),
                  RadioListTile(
                      title: Text('Female'),
                      value: Gender.FEMALE,
                      groupValue: _selectedGender,
                      onChanged: (selectedGender) =>
                          setState(() => _selectedGender = selectedGender)),
                  RadioListTile(
                      title: Text('Male'),
                      value: Gender.MALE,
                      groupValue: _selectedGender,
                      onChanged: (selectedGender) =>
                          setState(() => _selectedGender = selectedGender)),
                  RadioListTile(
                      title: Text('Other'),
                      value: Gender.OTHER,
                      groupValue: _selectedGender,
                      onChanged: (selectedGender) =>
                          setState(() => _selectedGender = selectedGender)),
                  CheckboxListTile(
                      title: Text(ProgrammingLanguage.DART.displayName),
                      value:
                          _selectedLanguages.contains(ProgrammingLanguage.DART),
                      onChanged: (shouldRemove) {
                        setState(() {
                          _selectedLanguages.contains(ProgrammingLanguage.DART)
                              ? _selectedLanguages
                                  .remove(ProgrammingLanguage.DART)
                              : _selectedLanguages
                                  .add(ProgrammingLanguage.DART);
                        });
                      }),
                  CheckboxListTile(
                      title: Text(ProgrammingLanguage.JAVASCRIPT.displayName),
                      value: _selectedLanguages
                          .contains(ProgrammingLanguage.JAVASCRIPT),
                      onChanged: (shouldRemove) {
                        setState(() {
                          _selectedLanguages
                                  .contains(ProgrammingLanguage.JAVASCRIPT)
                              ? _selectedLanguages
                                  .remove(ProgrammingLanguage.JAVASCRIPT)
                              : _selectedLanguages
                                  .add(ProgrammingLanguage.JAVASCRIPT);
                        });
                      }),
                  CheckboxListTile(
                      title: Text(ProgrammingLanguage.KOTLIN.displayName),
                      value: _selectedLanguages
                          .contains(ProgrammingLanguage.KOTLIN),
                      onChanged: (shouldRemove) {
                        setState(() {
                          _selectedLanguages
                                  .contains(ProgrammingLanguage.KOTLIN)
                              ? _selectedLanguages
                                  .remove(ProgrammingLanguage.KOTLIN)
                              : _selectedLanguages
                                  .add(ProgrammingLanguage.KOTLIN);
                        });
                      }),
                  CheckboxListTile(
                      title: Text(ProgrammingLanguage.SWIFT.displayName),
                      value: _selectedLanguages
                          .contains(ProgrammingLanguage.SWIFT),
                      onChanged: (shouldRemove) {
                        setState(() {
                          _selectedLanguages.contains(ProgrammingLanguage.SWIFT)
                              ? _selectedLanguages
                                  .remove(ProgrammingLanguage.SWIFT)
                              : _selectedLanguages
                                  .add(ProgrammingLanguage.SWIFT);
                        });
                      }),
                  SwitchListTile(
                      title: Text('Is Employed'),
                      value: _isEmployed,
                      onChanged: (newValue) =>
                          setState(() => _isEmployed = newValue)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: TextButton(
                      onPressed: _savePreferences,
                      child: Text('Save Preferences'),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.purple),
                          foregroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white)),
                    ),
                  )
                ],
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }))),
    );
  }

  void _savePreferences() async {
    final updatedSettings = Settings(
        username: _usernameController.text,
        gender: _selectedGender,
        programmingLanguages: _selectedLanguages,
        isEmployed: _isEmployed);

    await _preferencesService.saveSettings(updatedSettings);
    _populateFields();
  }
}
