// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exams_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamsResponseModel _$ExamsResponseModelFromJson(Map<String, dynamic> json) =>
    ExamsResponseModel(
      message: json['message'] as String,
      exams:
          (json['exams'] as List<dynamic>?)
              ?.map((e) => ExamModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ExamsResponseModelToJson(ExamsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'exams': instance.exams.map((e) => e.toJson()).toList(),
    };
