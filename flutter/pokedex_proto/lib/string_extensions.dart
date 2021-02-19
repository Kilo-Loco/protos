extension StringExt on String {
  String toCapitalized() {
    return this[0].toUpperCase() + this.substring(1);
  }
}
