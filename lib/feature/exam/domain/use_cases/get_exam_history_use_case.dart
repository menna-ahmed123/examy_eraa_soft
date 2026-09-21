import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:examy/feature/exam/domain/repos/exam_history_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetExamHistoryUseCase {
  GetExamHistoryUseCase(this._examHistoryRepo);

  final ExamHistoryRepo _examHistoryRepo;

  Future<List<ExamHistoryEntity>> call() {
    return _examHistoryRepo.getHistory();
  }
}
