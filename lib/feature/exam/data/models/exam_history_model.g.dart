// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamHistoryModel _$ExamHistoryModelFromJson(Map<String, dynamic> json) =>
    ExamHistoryModel(
      id: json['id'] as String,
      subjectId: json['subjectId'] as String,
      subjectName: json['subjectName'] as String,
      examId: json['examId'] as String,
      examTitle: json['examTitle'] as String,
      numberOfQuestions: (json['numberOfQuestions'] as num).toInt(),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      timeTakenMinutes: (json['timeTakenMinutes'] as num?)?.toInt() ?? 1,
      correct: (json['correct'] as num).toInt(),
      wrong: (json['wrong'] as num).toInt(),
      percentage: (json['percentage'] as num).toDouble(),
      completedAt: json['completedAt'] as String,
      reviewQuestions:
          (json['reviewQuestions'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ExamAnswerReviewModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$ExamHistoryModelToJson(
  ExamHistoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'subjectId': instance.subjectId,
  'subjectName': instance.subjectName,
  'examId': instance.examId,
  'examTitle': instance.examTitle,
  'numberOfQuestions': instance.numberOfQuestions,
  'durationMinutes': instance.durationMinutes,
  'timeTakenMinutes': instance.timeTakenMinutes,
  'correct': instance.correct,
  'wrong': instance.wrong,
  'percentage': instance.percentage,
  'completedAt': instance.completedAt,
  'reviewQuestions': instance.reviewQuestions.map((e) => e.toJson()).toList(),
};
