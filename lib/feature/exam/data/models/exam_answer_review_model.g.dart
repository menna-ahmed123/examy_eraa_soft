// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_answer_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamAnswerReviewModel _$ExamAnswerReviewModelFromJson(
  Map<String, dynamic> json,
) => ExamAnswerReviewModel(
  questionId: json['questionId'] as String,
  question: json['question'] as String,
  answers:
      (json['answers'] as List<dynamic>?)
          ?.map((e) => AnswerOptionModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  type: json['type'] as String? ?? 'single_choice',
  selectedKeys:
      (json['selectedKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  correctKeys:
      (json['correctKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
);

Map<String, dynamic> _$ExamAnswerReviewModelToJson(
  ExamAnswerReviewModel instance,
) => <String, dynamic>{
  'questionId': instance.questionId,
  'question': instance.question,
  'answers': instance.answers.map((e) => e.toJson()).toList(),
  'type': instance.type,
  'selectedKeys': instance.selectedKeys,
  'correctKeys': instance.correctKeys,
};
