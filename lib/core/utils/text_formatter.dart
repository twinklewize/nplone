import 'package:intl/intl.dart';

class TextFormatter {
  TextFormatter._();

  static String moneyToString(double number) {
    var formatter = NumberFormat('#,##0.00');
    return '\$' + formatter.format(number.abs());
  }

  static String sumToString(double number) {
    var formatter = NumberFormat('#,##0');
    return '\$ ' + formatter.format(number.abs());
  }

  static String transactionToString(double number) {
    String transactionString;
    var formatter = NumberFormat('#,##0.00');
    number < 0 ? transactionString = '- \$' : transactionString = '+ \$';
    transactionString = transactionString + formatter.format(number.abs());
    return transactionString;
  }

  static String intToString(int number) {
    if (number > 1000) {
      return '${(number - number % 100) / 1000}k';
    } else
      return number.toString();
  }
}
