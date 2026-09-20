import 'package:examy/core/networking/error_handler.dart';

class ApiErrorHandler {
  ApiErrorHandler._();

  static String handle(dynamic error) {
    if (error is Exception) {
      return ErrorHandler.handle(error);
    }
    return error.toString();
  }
}
