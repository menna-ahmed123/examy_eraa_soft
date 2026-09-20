// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_metadata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectsMetadataModel _$SubjectsMetadataModelFromJson(
  Map<String, dynamic> json,
) => SubjectsMetadataModel(
  currentPage: (json['currentPage'] as num).toInt(),
  numberOfPages: (json['numberOfPages'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$SubjectsMetadataModelToJson(
  SubjectsMetadataModel instance,
) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'numberOfPages': instance.numberOfPages,
  'limit': instance.limit,
};
