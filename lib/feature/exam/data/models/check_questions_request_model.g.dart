// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_questions_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckQuestionsRequestModel _$CheckQuestionsRequestModelFromJson(
  Map<String, dynamic> json,
) => CheckQuestionsRequestModel(
  answers: (json['answers'] as List<dynamic>)
      .map((e) => CheckAnswerRequestModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  time: (json['time'] as num).toInt(),
);

Map<String, dynamic> _$CheckQuestionsRequestModelToJson(
  CheckQuestionsRequestModel instance,
) => <String, dynamic>{
  'answers': instance.answers.map((e) => e.toJson()).toList(),
  'time': instance.time,
};
