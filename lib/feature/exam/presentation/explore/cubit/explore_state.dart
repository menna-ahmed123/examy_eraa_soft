import 'package:examy/core/base_state/base_state.dart';
import 'package:examy/feature/exam/domain/entities/subject_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_state.freezed.dart';

@freezed
abstract class ExploreState with _$ExploreState {
  const factory ExploreState({
    BaseState<List<SubjectEntity>>? subjectsState,
    @Default('') String searchQuery,
  }) = _ExploreState;

  factory ExploreState.initial() {
    return ExploreState(
      subjectsState: const BaseState<List<SubjectEntity>>(isLoading: true),
    );
  }
}
