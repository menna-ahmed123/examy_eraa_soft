import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/data/data_sources/remote/explore_remote_data_source.dart';
import 'package:examy/feature/home/data/models/subject_details_response_model.dart';
import 'package:examy/feature/home/data/models/subjects_response_model.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/entities/subjects_entity.dart';
import 'package:examy/feature/home/domain/repos/explore_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ExploreRepo)
class ExploreRepoImpl implements ExploreRepo {
  ExploreRepoImpl({required this.exploreRemoteDataSource});

  final ExploreRemoteDataSource exploreRemoteDataSource;

  @override
  Future<BaseResponse<SubjectsEntity>> getSubjects({int? page, int? limit}) async {
    final response = await exploreRemoteDataSource.getSubjects(
      page: page,
      limit: limit,
    );

    switch (response) {
      case SuccessResponse<SubjectsResponseModel>():
        final entity = response.data.toDomain();

        return SuccessResponse<SubjectsEntity>(entity);

      case ErrorResponse<SubjectsResponseModel>():
        return ErrorResponse<SubjectsEntity>(
          errorMessage: response.errorMessage,
        );
    }
  }

  @override
  Future<BaseResponse<SubjectEntity>> getSubjectDetails(
    String subjectId,
  ) async {
    final response = await exploreRemoteDataSource.getSubjectDetails(subjectId);

    switch (response) {
      case SuccessResponse<SubjectDetailsResponseModel>():
        final entity = response.data.toDomain();

        return SuccessResponse<SubjectEntity>(entity);

      case ErrorResponse<SubjectDetailsResponseModel>():
        return ErrorResponse<SubjectEntity>(
          errorMessage: response.errorMessage,
        );
    }
  }
}
