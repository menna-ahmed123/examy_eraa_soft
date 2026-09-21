import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/subject_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetSubjectsUseCase {
  GetSubjectsUseCase(this._examRepo);

  final ExamRepo _examRepo;

  Future<BaseResponse<List<SubjectEntity>>> call() {
    return _examRepo.getSubjects();
  }
}
