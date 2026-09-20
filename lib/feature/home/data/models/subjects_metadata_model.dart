import 'package:examy/feature/home/domain/entities/subjects_metadata_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subjects_metadata_model.g.dart';

@JsonSerializable()
class SubjectsMetadataModel {
  @JsonKey(name: 'currentPage')
  final int currentPage;

  @JsonKey(name: 'numberOfPages')
  final int numberOfPages;

  @JsonKey(name: 'limit')
  final int limit;

  SubjectsMetadataModel({
    required this.currentPage,
    required this.numberOfPages,
    required this.limit,
  });

  factory SubjectsMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectsMetadataModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubjectsMetadataModelToJson(this);

  SubjectsMetadataEntity toDomain() {
    return SubjectsMetadataEntity(
      currentPage: currentPage,
      numberOfPages: numberOfPages,
      limit: limit,
    );
  }
}
