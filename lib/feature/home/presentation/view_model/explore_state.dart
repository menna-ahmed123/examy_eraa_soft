import 'package:examy/config/base_state/base_state.dart';
import 'package:examy/feature/home/domain/entities/subjects_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_state.freezed.dart';

@freezed
abstract class ExploreState with _$ExploreState {
  const factory ExploreState({
    @Default(BaseState<SubjectsEntity>())
    BaseState<SubjectsEntity> subjectsState,
  }) = _ExploreState;

  factory ExploreState.initial() {
    return const ExploreState(subjectsState: BaseState<SubjectsEntity>());
  }
}
