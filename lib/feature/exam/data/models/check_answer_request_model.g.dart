// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_answer_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckAnswerRequestModel _$CheckAnswerRequestModelFromJson(
  Map<String, dynamic> json,
) => CheckAnswerRequestModel(
  questionId: json['questionId'] as String,
  correct: json['correct'] as String,
);

Map<String, dynamic> _$CheckAnswerRequestModelToJson(
  CheckAnswerRequestModel instance,
) => <String, dynamic>{
  'questionId': instance.questionId,
  'correct': instance.correct,
};
