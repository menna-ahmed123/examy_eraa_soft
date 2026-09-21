import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/data/models/subject_details_response_model.dart';
import 'package:examy/feature/home/data/models/subjects_response_model.dart';

abstract interface class ExploreRemoteDataSource {
  Future<BaseResponse<SubjectsResponseModel>> getSubjects({
    int? page,
    int? limit,
  });

  Future<BaseResponse<SubjectDetailsResponseModel>> getSubjectDetails(
    String subjectId,
  );
}
