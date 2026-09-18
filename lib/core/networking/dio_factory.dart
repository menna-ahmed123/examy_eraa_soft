import 'package:dio/dio.dart';
import 'package:examy/core/api_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  static Dio? _dio;

  static Dio getDio() {
    if (_dio != null) return _dio!;

    Duration duration = const Duration(seconds: 30);
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveTimeout: duration,
        connectTimeout: duration,
        sendTimeout: duration,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    _addDioLogger();

    return _dio!;
  }

  // Call this after login/signup once you get a token back, so authenticated
  // endpoints send it automatically.
  static void setTokenIntoHeaderAfterLogin(String token) {
    _dio ??= getDio();
    _dio?.options.headers['token'] = token;
  }

  static void _addDioLogger() {
    _dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
      ),
    );
  }
}
