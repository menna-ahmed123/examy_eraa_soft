import 'package:dio/dio.dart';
import 'package:examy/core/constants/api_constants.dart';
import 'package:examy/feature/exam/data/models/check_questions_request_model.dart';
import 'package:examy/feature/exam/data/models/check_questions_response_model.dart';
import 'package:examy/feature/exam/data/models/exam_by_id_response_model.dart';
import 'package:examy/feature/exam/data/models/exams_response_model.dart';
import 'package:examy/feature/exam/data/models/questions_response_model.dart';
import 'package:examy/feature/exam/data/models/subjects_response_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExamApiClient {
  final Dio _dio;

  ExamApiClient(this._dio);

  Future<SubjectsResponseModel> getSubjects() async {
    final response = await _dio.get(ApiConstants.subjectsEndpoint);
    return SubjectsResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }

  Future<ExamsResponseModel> getExams({String? subject}) async {
    final response = await _dio.get(
      ApiConstants.examsEndpoint,
      queryParameters: subject != null && subject.isNotEmpty
          ? {'subject': subject}
          : null,
    );
    return ExamsResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  Future<ExamByIdResponseModel> getExamById(String examId) async {
    final response = await _dio.get('${ApiConstants.examsEndpoint}/$examId');
    return ExamByIdResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }

  Future<QuestionsResponseModel> getQuestionsByExam({
    required String exam,
  }) async {
    final response = await _dio.get(
      ApiConstants.questionsEndpoint,
      queryParameters: {'exam': exam},
    );
    return QuestionsResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }

  Future<CheckQuestionsResponseModel> checkQuestions(
    CheckQuestionsRequestModel request,
  ) async {
    final response = await _dio.post(
      ApiConstants.checkQuestionsEndpoint,
      data: request.toJson(),
    );
    return CheckQuestionsResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}
