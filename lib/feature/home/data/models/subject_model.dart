import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subject_model.g.dart';

@JsonSerializable()
class SubjectModel {
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'icon')
  final String icon;

  @JsonKey(name: 'createdAt')
  final String createdAt;

  SubjectModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.createdAt,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubjectModelToJson(this);

  SubjectEntity toDomain() {
    return SubjectEntity(id: id, name: name, icon: icon, createdAt: createdAt);
  }
}
