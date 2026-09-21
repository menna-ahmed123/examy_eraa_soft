import 'package:examy/core/base_state/base_state.dart';
import 'package:examy/feature/exam/domain/entities/exam_entity.dart';
import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_exams_state.freezed.dart';

@freezed
abstract class SubjectExamsState with _$SubjectExamsState {
  const factory SubjectExamsState({
    BaseState<List<ExamEntity>>? examsState,
    @Default(<ExamHistoryEntity>[]) List<ExamHistoryEntity> history,
  }) = _SubjectExamsState;

  factory SubjectExamsState.initial() {
    return SubjectExamsState(
      examsState: const BaseState<List<ExamEntity>>(isLoading: true),
    );
  }
}
