import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../utils/log_utils.dart';
import '../app_exception.dart';
import '../data_exception.dart';

part 'error_logger.g.dart';

class ErrorLogger {
  void logError(Object error, StackTrace? stackTrace) {
    // * This can be replaced with a call to a crash reporting tool of choice
    LogUtils.logError('ERROR : $error \nSTACE TRACE :$stackTrace');
  }

  void logAppException(AppException exception) {
    // * This can be replaced with a call to a crash reporting tool of choice
    LogUtils.logError('$exception');
  }

  void logApiDataException(ApiDataException exception) {
    // * This can be replaced with a call to a crash reporting tool of choice
    LogUtils.logError('$exception');
  }
}

@riverpod
ErrorLogger errorLogger(ErrorLoggerRef ref) {
  return ErrorLogger();
}
