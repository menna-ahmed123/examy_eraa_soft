import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/exam/data/data_sources/remote/exam_remote_data_source.dart';
import 'package:examy/feature/exam/data/models/answer_option_model.dart';
import 'package:examy/feature/exam/data/models/check_questions_response_model.dart';
import 'package:examy/feature/exam/data/models/exam_by_id_response_model.dart';
import 'package:examy/feature/exam/data/models/exam_model.dart';
import 'package:examy/feature/exam/data/models/exams_response_model.dart';
import 'package:examy/feature/exam/data/models/question_model.dart';
import 'package:examy/feature/exam/data/models/questions_response_model.dart';
import 'package:examy/feature/exam/data/models/subject_model.dart';
import 'package:examy/feature/exam/data/models/subjects_response_model.dart';
import 'package:examy/feature/exam/data/repos/exam_repo_impl.dart';
import 'package:examy/feature/exam/domain/entities/check_result_entity.dart';
import 'package:examy/feature/exam/domain/entities/exam_entity.dart';
import 'package:examy/feature/exam/domain/entities/question_entity.dart';
import 'package:examy/feature/exam/domain/entities/subject_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'exam_repo_impl_test.mocks.dart';

@GenerateMocks([ExamRemoteDataSource])
void main() {
  late MockExamRemoteDataSource mockRemoteDataSource;
  late ExamRepoImpl repo;

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

  final examModel = ExamModel(
    id: 'e1',
    title: 'Algebra',
    duration: 30,
    subjectId: 's1',
    numberOfQuestions: 10,
  );

  final examByIdResponse = ExamByIdResponseModel(
    message: 'ok',
    exam: examModel,
  );

  final questionsResponse = QuestionsResponseModel(
    message: 'ok',
    questions: [
      QuestionModel(
        id: 'q1',
        question: '2+2?',
        answers: [AnswerOptionModel(answer: '4', key: 'A1')],
      ),
    ],
  );

  final checkResponse = CheckQuestionsResponseModel(
    message: 'ok',
    correct: 1,
    wrong: 0,
    percentage: 100.0,
  );

  provideDummy<BaseResponse<SubjectsResponseModel>>(
    SuccessResponse<SubjectsResponseModel>(subjectsResponse),
  );
  provideDummy<BaseResponse<ExamsResponseModel>>(
    SuccessResponse<ExamsResponseModel>(examsResponse),
  );
  provideDummy<BaseResponse<ExamByIdResponseModel>>(
    SuccessResponse<ExamByIdResponseModel>(examByIdResponse),
  );
  provideDummy<BaseResponse<QuestionsResponseModel>>(
    SuccessResponse<QuestionsResponseModel>(questionsResponse),
  );
  provideDummy<BaseResponse<CheckQuestionsResponseModel>>(
    SuccessResponse<CheckQuestionsResponseModel>(checkResponse),
  );

  setUp(() {
    mockRemoteDataSource = MockExamRemoteDataSource();
    repo = ExamRepoImpl(examRemoteDataSource: mockRemoteDataSource);
  });

  group('getSubjects', () {
    test('returns SuccessResponse mapped to SubjectEntity list', () async {
      // Arrange
      when(mockRemoteDataSource.getSubjects()).thenAnswer(
        (_) async => SuccessResponse<SubjectsResponseModel>(subjectsResponse),
      );

      // Act
      final result = await repo.getSubjects();

      // Assert
      expect(result, isA<SuccessResponse<List<SubjectEntity>>>());
      final data =
          (result as SuccessResponse<List<SubjectEntity>>).data;
      expect(data.length, 1);
      expect(data.first.name, 'Math');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(mockRemoteDataSource.getSubjects()).thenAnswer(
        (_) async => ErrorResponse<SubjectsResponseModel>(
          errorMessage: 'failed',
        ),
      );

      // Act
      final result = await repo.getSubjects();

      // Assert
      expect(result, isA<ErrorResponse<List<SubjectEntity>>>());
    });
  });

  group('getExams', () {
    test('returns SuccessResponse mapped to ExamEntity list', () async {
      // Arrange
      when(
        mockRemoteDataSource.getExams(subjectId: anyNamed('subjectId')),
      ).thenAnswer(
        (_) async => SuccessResponse<ExamsResponseModel>(examsResponse),
      );

      // Act
      final result = await repo.getExams(subjectId: 's1');

      // Assert
      expect(result, isA<SuccessResponse<List<ExamEntity>>>());
      final data = (result as SuccessResponse<List<ExamEntity>>).data;
      expect(data.length, 1);
      expect(data.first.title, 'Algebra');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.getExams(subjectId: anyNamed('subjectId')),
      ).thenAnswer((_) async => ErrorResponse<ExamsResponseModel>(
        errorMessage: 'failed',
      ));

      // Act
      final result = await repo.getExams(subjectId: 's1');

      // Assert
      expect(result, isA<ErrorResponse<List<ExamEntity>>>());
    });
  });

  group('getExamById', () {
    test('returns SuccessResponse mapped to ExamEntity', () async {
      // Arrange
      when(
        mockRemoteDataSource.getExamById(examId: anyNamed('examId')),
      ).thenAnswer(
        (_) async => SuccessResponse<ExamByIdResponseModel>(examByIdResponse),
      );

      // Act
      final result = await repo.getExamById(examId: 'e1');

      // Assert
      expect(result, isA<SuccessResponse<ExamEntity>>());
      final data = (result as SuccessResponse<ExamEntity>).data;
      expect(data.id, 'e1');
    });

    test('returns ErrorResponse when exam is null', () async {
      // Arrange
      when(
        mockRemoteDataSource.getExamById(examId: anyNamed('examId')),
      ).thenAnswer(
        (_) async => SuccessResponse<ExamByIdResponseModel>(
          ExamByIdResponseModel(message: 'ok'),
        ),
      );

      // Act
      final result = await repo.getExamById(examId: 'missing');

      // Assert
      expect(result, isA<ErrorResponse<ExamEntity>>());
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.getExamById(examId: anyNamed('examId')),
      ).thenAnswer((_) async => ErrorResponse<ExamByIdResponseModel>(
        errorMessage: 'failed',
      ));

      // Act
      final result = await repo.getExamById(examId: 'e1');

      // Assert
      expect(result, isA<ErrorResponse<ExamEntity>>());
    });
  });

  group('getQuestionsByExam', () {
    test('returns SuccessResponse mapped to QuestionEntity list', () async {
      // Arrange
      when(
        mockRemoteDataSource.getQuestionsByExam(examId: anyNamed('examId')),
      ).thenAnswer(
        (_) async => SuccessResponse<QuestionsResponseModel>(
          questionsResponse,
        ),
      );

      // Act
      final result = await repo.getQuestionsByExam(examId: 'e1');

      // Assert
      expect(result, isA<SuccessResponse<List<QuestionEntity>>>());
      final data =
          (result as SuccessResponse<List<QuestionEntity>>).data;
      expect(data.length, 1);
      expect(data.first.id, 'q1');
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.getQuestionsByExam(examId: anyNamed('examId')),
      ).thenAnswer((_) async => ErrorResponse<QuestionsResponseModel>(
        errorMessage: 'failed',
      ));

      // Act
      final result = await repo.getQuestionsByExam(examId: 'e1');

      // Assert
      expect(result, isA<ErrorResponse<List<QuestionEntity>>>());
    });
  });

  group('checkQuestions', () {
    test('returns SuccessResponse mapped to CheckResultEntity', () async {
      // Arrange
      when(
        mockRemoteDataSource.checkQuestions(request: anyNamed('request')),
      ).thenAnswer(
        (_) async => SuccessResponse<CheckQuestionsResponseModel>(
          checkResponse,
        ),
      );

      // Act
      final result = await repo.checkQuestions(
        answers: [
          {'questionId': 'q1', 'correct': 'A1'},
        ],
        time: 5,
      );

      // Assert
      expect(result, isA<SuccessResponse<CheckResultEntity>>());
      final data = (result as SuccessResponse<CheckResultEntity>).data;
      expect(data.correct, 1);
    });

    test('returns ErrorResponse when the remote call fails', () async {
      // Arrange
      when(
        mockRemoteDataSource.checkQuestions(request: anyNamed('request')),
      ).thenAnswer((_) async => ErrorResponse<CheckQuestionsResponseModel>(
        errorMessage: 'failed',
      ));

      // Act
      final result = await repo.checkQuestions(
        answers: [
          {'questionId': 'q1', 'correct': 'A1'},
        ],
        time: 5,
      );

      // Assert
      expect(result, isA<ErrorResponse<CheckResultEntity>>());
    });
  });
}
