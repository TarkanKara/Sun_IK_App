import 'package:intl/intl.dart';

class DateTimeConverTo {
  //compareToDateTime
  static compareToDateTime(String formattedString) {
    DateTime currentTime = DateTime.parse(formattedString);

    // the "dd/MM/yyyy HH:mm" format
    var res1 = DateFormat.yMd().add_jm().format(currentTime);

    // just the date
    var res2 = DateFormat.yMd().format(currentTime);

    return res1;
  }

}