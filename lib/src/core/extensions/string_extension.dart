extension StringExtension on String {
  String get basename => split('/').last;
}

extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  String get orEmpty => this ?? '';

  bool get isTrue {
    final lowerCase = this?.toLowerCase();
    return lowerCase == 'true' || lowerCase == '1';
  }

  String get validUrlOrEmpty {
    final value = this;
    if (value.isNullOrEmpty) {
      return '';
    }
    return value!.startsWith('https://') || value.startsWith('http://') ? value : 'https://$value';
  }

  bool get isFalse {
    final lowerCase = this?.toLowerCase();
    return lowerCase == 'false' || lowerCase == '0';
  }

  String get firstWordOrEmpty {
    final value = this;
    if (value.isNullOrEmpty) {
      return '';
    }
    final words = value!.split(' ');
    return words.isEmpty ? value : words.first;
  }

   String get escapeSpecial {
    final value = this;
    return value!.replaceAllMapped(RegExp(r'[.*+?^${}()|[\]\\]'), (x) {
      return '\\${x[0]}';
    });
  }

  String get capitalizeFirstLetter {
    final input = this;
    if (input!.isEmpty) {
      return input;
    }
    return input[0].toUpperCase() + input.substring(1);
  }
}
