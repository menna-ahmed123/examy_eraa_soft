// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamModel _$ExamModelFromJson(Map<String, dynamic> json) => ExamModel(
  id: json['_id'] as String,
  title: json['title'] as String,
  duration: (json['duration'] as num).toInt(),
  subjectId: ExamModel._subjectIdFromJson(json['subject']),
  numberOfQuestions: (json['numberOfQuestions'] as num).toInt(),
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$ExamModelToJson(ExamModel instance) => <String, dynamic>{
  '_id': instance.id,
  'title': instance.title,
  'duration': instance.duration,
  'subject': instance.subjectId,
  'numberOfQuestions': instance.numberOfQuestions,
  'active': instance.active,
};
