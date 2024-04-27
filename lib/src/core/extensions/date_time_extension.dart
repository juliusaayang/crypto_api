import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String formatDateTime() {
    return DateFormat("d'${_getOrdinalSuffix(day)}' MMMM yyyy @ h:mma").format(toLocal());
  }

  String formatDate() {
    return DateFormat("EEEE, d'${_getOrdinalSuffix(day)}' MMMM, yyyy").format(toLocal());
  }

  String formatTime() {
    return DateFormat('h:mma').format(toLocal());
  }

  String formatDateTime2() {
    return DateFormat("MMMM d'${_getOrdinalSuffix(day)}', yyyy | h:mma").format(toLocal());
  }

  String _getOrdinalSuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }
}
