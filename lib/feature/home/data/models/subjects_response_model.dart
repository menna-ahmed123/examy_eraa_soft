import 'package:examy/feature/home/domain/entities/subjects_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'subject_model.dart';
import 'subjects_metadata_model.dart';

part 'subjects_response_model.g.dart';

@JsonSerializable()
class SubjectsResponseModel {
  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'metadata')
  final SubjectsMetadataModel metadata;

  @JsonKey(name: 'subjects')
  final List<SubjectModel> subjects;

  SubjectsResponseModel({
    required this.message,
    required this.metadata,
    required this.subjects,
  });

  factory SubjectsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubjectsResponseModelToJson(this);

  SubjectsEntity toDomain() {
    return SubjectsEntity(
      metadata: metadata.toDomain(),
      subjects: subjects.map((subject) => subject.toDomain()).toList(),
    );
  }
}
