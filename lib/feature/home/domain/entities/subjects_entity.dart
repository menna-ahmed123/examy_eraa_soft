import 'package:freezed_annotation/freezed_annotation.dart';

import 'subject_entity.dart';
import 'subjects_metadata_entity.dart';

part 'subjects_entity.freezed.dart';

@freezed
abstract class SubjectsEntity with _$SubjectsEntity {
  const factory SubjectsEntity({
    required SubjectsMetadataEntity metadata,
    required List<SubjectEntity> subjects,
  }) = _SubjectsEntity;
}

