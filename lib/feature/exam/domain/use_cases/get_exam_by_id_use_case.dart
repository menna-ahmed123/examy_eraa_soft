import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/exam_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetExamByIdUseCase {
  GetExamByIdUseCase(this._examRepo);

  final ExamRepo _examRepo;

  Future<BaseResponse<ExamEntity>> call({required String examId}) {
    return _examRepo.getExamById(examId: examId);
  }
}
