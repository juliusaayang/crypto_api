import 'package:intl/intl.dart';

class AmountUtil {
  static String removeDotFromAmount(String amount) {
    if (amount.contains('.')) {
      return amount.split('.')[0];
    } else {
      return amount;
    }
  }

  static String removeSymbolFromAmount(String amount) {
    if (amount.contains('₦')) {
      return amount.replaceAll('₦', '');
    } else {
      return amount;
    }
  }

  static String removeAllSymbolFromAmount(String amount) {
    if (amount.contains('₦') || amount.contains('.') || amount.contains(',')) {
      return amount.replaceAll('₦', '').replaceAll(',', '');
    } else {
      return amount;
    }
  }

  static String formatAmount(double value) {
    final f = NumberFormat('#,##0.00', 'en_US');
    return f.format(value);
  }

  static String formatAmountZeros(double value) {
    final f = NumberFormat('#,##0.00000000', 'en_US');
    return f.format(value);
  }

  static String formatAmountNoDecimal(double value) {
    final f = NumberFormat('#,##0', 'en_US');
    return f.format(value);
  }
}
