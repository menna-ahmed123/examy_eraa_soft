import 'package:dio/dio.dart';
import 'package:examy/core/api_constants.dart';
import 'package:examy/core/networking/api_error_handler.dart';
import 'package:examy/core/networking/api_result.dart';
import 'package:examy/feature/home/data/models/exams_response_model.dart';


class HomeRepo {
  final Dio _dio;
  HomeRepo(this._dio);

  Future<ApiResult<dynamic>> getExams() async {
    try {
      final response = await _dio.get(ApiConstants.exams);
      final payload = response.data is Map<String, dynamic>
          ? response.data as Map<String, dynamic>
          : {'data': response.data};

      final examsResponse = ExamsResponseModel.fromJson(payload);
      return Success(examsResponse);
    } on DioException catch (e) {
      return Error(ApiErrorHandler.handle(e).message);
    }
  }
}
