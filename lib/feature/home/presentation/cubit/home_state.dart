import 'package:examy/feature/home/data/models/exam_model.dart';

enum Status { initial, loading, success, error }

class HomeState {
  final Status status;
  final List<ExamModel> exams;
  final String? message;

  const HomeState({required this.status, this.exams = const [], this.message});

  HomeState copyWith({Status? status, List<ExamModel>? exams, String? message}) {
    return HomeState(
      status: status ?? this.status,
      exams: exams ?? this.exams,
      message: message ?? this.message,
    );
  }
}
