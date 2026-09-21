// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_by_id_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamByIdResponseModel _$ExamByIdResponseModelFromJson(
  Map<String, dynamic> json,
) => ExamByIdResponseModel(
  message: json['message'] as String,
  exam: json['exam'] == null
      ? null
      : ExamModel.fromJson(json['exam'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ExamByIdResponseModelToJson(
  ExamByIdResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'exam': instance.exam?.toJson(),
};
