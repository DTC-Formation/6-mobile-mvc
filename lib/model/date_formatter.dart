import 'package:intl/intl.dart';

class DateFormatter {
  String readableDate(DateTime dateTime) {
    DateFormat dateFormat = DateFormat.yMMMMEEEEd();
    String string = dateFormat.format(dateTime);
    return string;
  }
}
