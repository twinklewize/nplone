import 'package:logger/logger.dart';

final logger = Logger();

class Logging {
  logging() {
    logger.d('Debug message');
    logger.i('Info message');
    logger.w('Warning message');
    logger.e('Error message');
    logger.wtf('WTF message');
  }
}
