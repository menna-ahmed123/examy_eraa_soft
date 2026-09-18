import 'package:examy/feature/home/data/models/exam_model.dart';

class ExamsResponseModel {
  final int currentPage;
  final int numberOfPages;
  final int limit;
  final List<ExamModel> exams;

  ExamsResponseModel({
    required this.currentPage,
    required this.numberOfPages,
    required this.limit,
    required this.exams,
  });

  factory ExamsResponseModel.fromJson(Map<String, dynamic> json) {
    final payload = json['data'] is Map<String, dynamic>
        ? json['data'] as Map<String, dynamic>
        : json;

    final metadata = payload['metadata'] is Map
        ? Map<String, dynamic>.from(payload['metadata'] as Map)
        : <String, dynamic>{};

    final examList = payload['exams'] is List
        ? payload['exams'] as List
        : const <dynamic>[];

    return ExamsResponseModel(
      currentPage: metadata['currentPage'] ?? payload['currentPage'] ?? 1,
      numberOfPages: metadata['numberOfPages'] ?? payload['numberOfPages'] ?? 1,
      limit: metadata['limit'] ?? payload['limit'] ?? 0,
      exams: examList
          .map((e) => ExamModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );
  }
}
