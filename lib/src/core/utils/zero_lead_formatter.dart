import 'package:flutter/services.dart';

class RemoveLeadingZeroFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    if (newValue.text.isNotEmpty && newValue.text[0] == '0') {
      return TextEditingValue(
        text: newValue.text.substring(1),
        selection: const TextSelection.collapsed(offset: 1),
      );
    }
    return newValue;
  }
}
