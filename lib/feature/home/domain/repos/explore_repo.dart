import 'package:examy/config/base_response/base_response.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/entities/subjects_entity.dart';

abstract interface class ExploreRepo {
  Future<BaseResponse<SubjectsEntity>> getSubjects({int? page, int? limit});

  Future<BaseResponse<SubjectEntity>> getSubjectDetails(String subjectId);
}
