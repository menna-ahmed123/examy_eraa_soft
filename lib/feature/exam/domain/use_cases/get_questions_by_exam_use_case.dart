import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/domain/entities/question_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetQuestionsByExamUseCase {
  GetQuestionsByExamUseCase(this._examRepo);

  final ExamRepo _examRepo;

  Future<BaseResponse<List<QuestionEntity>>> call({required String examId}) {
    return _examRepo.getQuestionsByExam(examId: examId);
  }
}
