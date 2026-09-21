import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/api/client/explore_api_client.dart';
import 'package:examy/feature/home/data/data_sources/remote/explore_remote_data_source.dart';
import 'package:examy/feature/home/data/models/subject_details_response_model.dart';
import 'package:examy/feature/home/data/models/subjects_response_model.dart';

import 'package:injectable/injectable.dart';

@Injectable(as: ExploreRemoteDataSource)
class ExploreRemoteDataSourceImpl implements ExploreRemoteDataSource {
  final ExploreApiClient exploreApiClient;

  ExploreRemoteDataSourceImpl({required this.exploreApiClient});

  @override
  Future<BaseResponse<SubjectsResponseModel>> getSubjects({
    int? page,
    int? limit,
  }) async {
    try {
      SubjectsResponseModel subjectsResponseModel = await exploreApiClient
          .getSubjects(page: page, limit: limit);

      return SuccessResponse<SubjectsResponseModel>(subjectsResponseModel);
    } on Exception catch (e) {
      return ErrorResponse<SubjectsResponseModel>(error: e);
    }
  }

  @override
  Future<BaseResponse<SubjectDetailsResponseModel>> getSubjectDetails(
    String subjectId,
  ) async {
    try {
      final response = await exploreApiClient.getSubjectDetails(subjectId);

      return SuccessResponse<SubjectDetailsResponseModel>(response);
    } on Exception catch (e) {
      return ErrorResponse<SubjectDetailsResponseModel>(error: e);
    }
  }
}
