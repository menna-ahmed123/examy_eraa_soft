class ExamModel {
  final String id;
  final String title;
  final int duration;
  final String subject;
  final int numberOfQuestions;
  final bool active;
  final String createdAt;

  ExamModel({
    required this.id,
    required this.title,
    required this.duration,
    required this.subject,
    required this.numberOfQuestions,
    required this.active,
    required this.createdAt,
  });

  factory ExamModel.fromJson(Map<String, dynamic> json) {
    return ExamModel(
      id: json['_id'] ?? '',
      title: json['title'] ?? '',
      duration: json['duration'] ?? 0,
      subject: json['subject'] ?? '',
      numberOfQuestions: json['numberOfQuestions'] ?? 0,
      active: json['active'] ?? false,
      createdAt: json['createdAt'] ?? '',
    );
  }
}
