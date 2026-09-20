import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_details_state.freezed.dart';

@freezed
abstract class SubjectDetailsState with _$SubjectDetailsState {
  const factory SubjectDetailsState({
    SubjectEntity? subject,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _SubjectDetailsState;

  factory SubjectDetailsState.initial() {
    return const SubjectDetailsState();
  }
}
