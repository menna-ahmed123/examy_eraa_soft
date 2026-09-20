import 'package:dio/dio.dart';
import 'package:examy/core/networking/api_constants.dart';
import 'package:examy/feature/home/data/models/subject_details_response_model.dart';
import 'package:examy/feature/home/data/models/subjects_response_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExploreApiClient {
  final Dio _dio;

  ExploreApiClient(this._dio);

  Future<SubjectsResponseModel> getSubjects({
    int? page,
    int? limit,
  }) async {
    final queryParams = <String, dynamic>{};
    if (page != null) queryParams['page'] = page;
    if (limit != null) queryParams['limit'] = limit;

    final response = await _dio.get(
      ApiConstants.subjectsEndpoint,
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );
    return SubjectsResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }

  Future<SubjectDetailsResponseModel> getSubjectDetails(
    String subjectId,
  ) async {
    final url = ApiConstants.subjectDetailsEndpoint.replaceAll(
      '{subjectId}',
      subjectId,
    );
    final response = await _dio.get(url);
    return SubjectDetailsResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}
