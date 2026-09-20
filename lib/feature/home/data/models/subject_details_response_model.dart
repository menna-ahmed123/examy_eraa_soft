
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/data/models/subject_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subject_details_response_model.g.dart';

@JsonSerializable()
class SubjectDetailsResponseModel {
  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'category')
  final SubjectModel category;

  SubjectDetailsResponseModel({
    required this.message,
    required this.category,
  });

  factory SubjectDetailsResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SubjectDetailsResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubjectDetailsResponseModelToJson(this);

  SubjectEntity toDomain() {
    return category.toDomain();
  }
}

