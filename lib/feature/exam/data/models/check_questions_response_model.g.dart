// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_questions_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckQuestionsResponseModel _$CheckQuestionsResponseModelFromJson(
  Map<String, dynamic> json,
) => CheckQuestionsResponseModel(
  message: json['message'] as String,
  correct: CheckQuestionsResponseModel._intFromJson(json['correct']),
  wrong: CheckQuestionsResponseModel._intFromJson(json['wrong']),
  percentage: CheckQuestionsResponseModel._percentageFromJson(
    json['percentage'],
  ),
  wrongQuestions: json['WrongQuestions'] == null
      ? const []
      : CheckQuestionsResponseModel._questionsFromJson(json['WrongQuestions']),
  correctQuestions: json['correctQuestions'] == null
      ? const []
      : CheckQuestionsResponseModel._questionsFromJson(
          json['correctQuestions'],
        ),
);

Map<String, dynamic> _$CheckQuestionsResponseModelToJson(
  CheckQuestionsResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'correct': instance.correct,
  'wrong': instance.wrong,
  'percentage': instance.percentage,
  'WrongQuestions': instance.wrongQuestions.map((e) => e.toJson()).toList(),
  'correctQuestions': instance.correctQuestions.map((e) => e.toJson()).toList(),
};
