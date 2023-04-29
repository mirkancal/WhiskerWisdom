import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String get toLocalDateString {
    // Format the date using the local format
    final DateFormat formatter = DateFormat.yMMMd();
    return formatter.format(this);
  }
}
