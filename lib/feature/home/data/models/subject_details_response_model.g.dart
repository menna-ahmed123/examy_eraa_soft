// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectDetailsResponseModel _$SubjectDetailsResponseModelFromJson(
  Map<String, dynamic> json,
) => SubjectDetailsResponseModel(
  message: json['message'] as String,
  category: SubjectModel.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubjectDetailsResponseModelToJson(
  SubjectDetailsResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'category': instance.category,
};
