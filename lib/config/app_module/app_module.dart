import 'package:dio/dio.dart';
import 'package:examy/core/networking/api_constants.dart';
import 'package:examy/core/networking/auth_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

BaseOptions createBaseOptions() {
  return BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    connectTimeout: ApiConstants.connectTimeout,
    receiveTimeout: ApiConstants.receiveTimeout,
    headers: {'Content-Type': 'application/json'},
  );
}

PrettyDioLogger createDebugLogInterceptor() {
  return PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 90,
  );
}

@module
abstract class AppModule {
  @lazySingleton
  Dio dio(AuthInterceptor authInterceptor) {
    final client = Dio(createBaseOptions());

    client.interceptors.add(authInterceptor);

    if (kDebugMode) {
      client.interceptors.add(createDebugLogInterceptor());
    }

    return client;
  }

  @lazySingleton
  FlutterSecureStorage secureStorage() {
    return const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    );
  }
}
