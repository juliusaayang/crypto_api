class DateTimeFactory {
  const DateTimeFactory._();
  static DateTime? nowOverride;

  static DateTime now() {
    return nowOverride ?? DateTime.now();
  }
}
