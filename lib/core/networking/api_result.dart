import 'package:examy/core/networking/api_error_handler.dart';

sealed class ApiResult<T> {
  const ApiResult();
}

class Success<T> extends ApiResult<T> {
  const Success(this.data);

  final T data;
}

class Failure<T> extends ApiResult<T> {
  const Failure(this.error);

  final String error;
}

/// Wraps any API call so repos don't repeat try/catch everywhere.
///
/// ```dart
/// Future<ApiResult<LoginResponse>> login(LoginRequest body) =>
///     safeApiCall(() => _apiService.login(body));
/// ```
Future<ApiResult<T>> safeApiCall<T>(Future<T> Function() call) async {
  try {
    return Success(await call());
  } catch (e) {
    return Failure(ApiErrorHandler.handle(e));
  }
}
