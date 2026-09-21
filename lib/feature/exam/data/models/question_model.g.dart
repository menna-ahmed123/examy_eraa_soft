// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    QuestionModel(
      id: QuestionModel._idFromJson(json['_id']),
      question: QuestionModel._stringFromJson(json['question']),
      answers: QuestionModel._answersFromJson(json['answers']),
      type: json['type'] == null
          ? 'single_choice'
          : QuestionModel._typeFromJson(json['type']),
      correct: QuestionModel._correctFromJson(json['correct']),
    );

Map<String, dynamic> _$QuestionModelToJson(QuestionModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'question': instance.question,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
      'type': instance.type,
      'correct': instance.correct,
    };
