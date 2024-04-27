import 'package:intl/intl.dart';

class DateUtility {
  static DateTime formattedDate(String value) {
    final dateTime = DateTime.parse(value);
    final formattedDate = DateFormat('yyyy-MM-dd').format(dateTime.toLocal());
    return DateTime.parse(formattedDate);
  }

  static DateFormat transactionDateFormat = DateFormat('yyyy-MM-dd ');
  static final DateFormat transactionMonthFormat = DateFormat('yyyy-MM');

  static DateTime serverDate(DateTime date) {
    final formattedDate = transactionDateFormat.format(date.toLocal());
    return DateTime.parse(formattedDate);
  }

  static String serverDateString(String date) {
    final dateTime = DateTime.parse(date);
    final formattedDate = transactionDateFormat.format(dateTime.toLocal());
    return formattedDate;
  }
}
