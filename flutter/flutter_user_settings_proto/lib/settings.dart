enum Gender { FEMALE, MALE, OTHER }
enum ProgrammingLanguage { DART, JAVASCRIPT, KOTLIN, SWIFT }

extension ProgrammingLanguageExt on ProgrammingLanguage {
  String get displayName {
    String value;
    switch (this) {
      case ProgrammingLanguage.DART:
        value = "Dart";
        break;
      case ProgrammingLanguage.JAVASCRIPT:
        value = "JavaScript";
        break;
      case ProgrammingLanguage.KOTLIN:
        value = "Kotlin";
        break;
      case ProgrammingLanguage.SWIFT:
        value = "Swift";
        break;
    }
    return value;
  }
}

class Settings {
  String username;
  Gender gender;
  Set<ProgrammingLanguage> programmingLanguages;
  bool isEmployed;

  Settings(
      {this.username, this.gender, this.programmingLanguages, this.isEmployed});
}
