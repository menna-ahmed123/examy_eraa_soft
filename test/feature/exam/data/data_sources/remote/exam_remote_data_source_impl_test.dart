import 'package:dio/dio.dart';
import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/api/client/exam_api_client.dart';
import 'package:examy/feature/exam/data/data_sources/remote/exam_remote_data_source_impl.dart';
import 'package:examy/feature/exam/data/models/answer_option_model.dart';
import 'package:examy/feature/exam/data/models/check_answer_request_model.dart';
import 'package:examy/feature/exam/data/models/check_questions_request_model.dart';
import 'package:examy/feature/exam/data/models/check_questions_response_model.dart';
import 'package:examy/feature/exam/data/models/exam_by_id_response_model.dart';
import 'package:examy/feature/exam/data/models/exam_model.dart';
import 'package:examy/feature/exam/data/models/exams_response_model.dart';
import 'package:examy/feature/exam/data/models/question_model.dart';
import 'package:examy/feature/exam/data/models/questions_response_model.dart';
import 'package:examy/feature/exam/data/models/subject_model.dart';
import 'package:examy/feature/exam/data/models/subjects_response_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'exam_remote_data_source_impl_test.mocks.dart';

@GenerateMocks([ExamApiClient])
void main() {
  late MockExamApiClient mockExamApiClient;
  late ExamRemoteDataSourceImpl examRemoteDataSourceImpl;

  setUp(() {
    mockExamApiClient = MockExamApiClient();

    examRemoteDataSourceImpl = ExamRemoteDataSourceImpl(
      examApiClient: mockExamApiClient,
    );
  });

  final subjectsResponse = SubjectsResponseModel(
    message: 'ok',
    subjects: [SubjectModel(id: 's1', name: 'Math')],
  );

  final examsResponse = ExamsResponseModel(
    message: 'ok',
    exams: [
      ExamModel(
        id: 'e1',
        title: 'Algebra',
        duration: 30,
        subjectId: 's1',
        numberOfQuestions: 10,
      ),
    ],
  );

  final examByIdResponse = ExamByIdResponseModel(
    message: 'ok',
    exam: ExamModel(
      id: 'e1',
      title: 'Algebra',
      duration: 30,
      subjectId: 's1',
      numberOfQuestions: 10,
    ),
  );

  final questionsResponse = QuestionsResponseModel(
    message: 'ok',
    questions: [
      QuestionModel(
        id: 'q1',
        question: '2+2?',
        answers: [
          AnswerOptionModel(answer: '4', key: 'A1'),
          AnswerOptionModel(answer: '5', key: 'A2'),
        ],
      ),
    ],
  );

  final checkQuestionsResponse = CheckQuestionsResponseModel(
    message: 'ok',
    correct: 1,
    wrong: 0,
    percentage: 100.0,
  );

  final checkRequest = CheckQuestionsRequestModel(
    answers: [CheckAnswerRequestModel(questionId: 'q1', correct: 'A1')],
    time: 5,
  );

  DioException dioError(String message) => DioException(
    requestOptions: RequestOptions(path: ''),
    message: message,
  );

  group('getSubjects', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockExamApiClient.getSubjects(),
      ).thenAnswer((_) async => subjectsResponse);

      // Act
      final result = await examRemoteDataSourceImpl.getSubjects();

      // Assert
      expect(result, isA<SuccessResponse<SubjectsResponseModel>>());
      final success = result as SuccessResponse<SubjectsResponseModel>;
      expect(success.data, subjectsResponse);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockExamApiClient.getSubjects(),
      ).thenThrow(dioError('failed'));

      // Act
      final result = await examRemoteDataSourceImpl.getSubjects();

      // Assert
      expect(result, isA<ErrorResponse<SubjectsResponseModel>>());
    });
  });

  group('getExams', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockExamApiClient.getExams(subject: anyNamed('subject')),
      ).thenAnswer((_) async => examsResponse);

      // Act
      final result = await examRemoteDataSourceImpl.getExams(subjectId: 's1');

      // Assert
      expect(result, isA<SuccessResponse<ExamsResponseModel>>());
      final success = result as SuccessResponse<ExamsResponseModel>;
      expect(success.data, examsResponse);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockExamApiClient.getExams(subject: anyNamed('subject')),
      ).thenThrow(dioError('failed'));

      // Act
      final result = await examRemoteDataSourceImpl.getExams(subjectId: 's1');

      // Assert
      expect(result, isA<ErrorResponse<ExamsResponseModel>>());
    });
  });

  group('getExamById', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockExamApiClient.getExamById(any),
      ).thenAnswer((_) async => examByIdResponse);

      // Act
      final result = await examRemoteDataSourceImpl.getExamById(examId: 'e1');

      // Assert
      expect(result, isA<SuccessResponse<ExamByIdResponseModel>>());
      final success = result as SuccessResponse<ExamByIdResponseModel>;
      expect(success.data, examByIdResponse);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockExamApiClient.getExamById(any),
      ).thenThrow(dioError('failed'));

      // Act
      final result = await examRemoteDataSourceImpl.getExamById(examId: 'e1');

      // Assert
      expect(result, isA<ErrorResponse<ExamByIdResponseModel>>());
    });
  });

  group('getQuestionsByExam', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockExamApiClient.getQuestionsByExam(exam: anyNamed('exam')),
      ).thenAnswer((_) async => questionsResponse);

      // Act
      final result = await examRemoteDataSourceImpl.getQuestionsByExam(
        examId: 'e1',
      );

      // Assert
      expect(result, isA<SuccessResponse<QuestionsResponseModel>>());
      final success = result as SuccessResponse<QuestionsResponseModel>;
      expect(success.data, questionsResponse);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockExamApiClient.getQuestionsByExam(exam: anyNamed('exam')),
      ).thenThrow(dioError('failed'));

      // Act
      final result = await examRemoteDataSourceImpl.getQuestionsByExam(
        examId: 'e1',
      );

      // Assert
      expect(result, isA<ErrorResponse<QuestionsResponseModel>>());
    });
  });

  group('checkQuestions', () {
    test('returns SuccessResponse when api client succeeds', () async {
      // Arrange
      when(
        mockExamApiClient.checkQuestions(any),
      ).thenAnswer((_) async => checkQuestionsResponse);

      // Act
      final result = await examRemoteDataSourceImpl.checkQuestions(
        request: checkRequest,
      );

      // Assert
      expect(result, isA<SuccessResponse<CheckQuestionsResponseModel>>());
      final success =
          result as SuccessResponse<CheckQuestionsResponseModel>;
      expect(success.data, checkQuestionsResponse);
    });

    test('returns ErrorResponse when api client throws', () async {
      // Arrange
      when(
        mockExamApiClient.checkQuestions(any),
      ).thenThrow(dioError('failed'));

      // Act
      final result = await examRemoteDataSourceImpl.checkQuestions(
        request: checkRequest,
      );

      // Assert
      expect(result, isA<ErrorResponse<CheckQuestionsResponseModel>>());
    });
  });
}
