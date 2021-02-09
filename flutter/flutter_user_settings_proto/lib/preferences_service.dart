import 'package:flutter_user_settings_proto/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  Future saveSettings(Settings settings) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString('username', settings.username);
    await preferences.setInt('gender', settings.gender.index);
    await preferences.setStringList(
        'programmingLanguages',
        settings.programmingLanguages
            .map((lang) => lang.index.toString())
            .toList());
    await preferences.setBool('isEmployed', settings.isEmployed);
    print('Preferences saved successfully');
  }

  Future<Settings> getSettings() async {
    final preferences = await SharedPreferences.getInstance();

    final username = preferences.getString('username');

    final genderIndex = preferences.getInt('gender');

    final gender = genderIndex != null ? Gender.values[genderIndex] : null;

    final programmingLanguagesStringIndicies =
        preferences.getStringList('programmingLanguages') ?? [];
    final programmingLanguage = programmingLanguagesStringIndicies
        .map((index) => ProgrammingLanguage.values[int.parse(index)])
        .toSet();

    final isEmployed = preferences.getBool('isEmployed') ?? false;

    final savedSettings = Settings(
        username: username,
        gender: gender,
        programmingLanguages: programmingLanguage,
        isEmployed: isEmployed);

    print(savedSettings.username);

    return savedSettings;
  }
}
