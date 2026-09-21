class AppRoutes {
  AppRoutes._();

  // =========================
  // Auth
  // =========================
    static const String splash = '/splash';
  static const String login = '/login';
  static const String signUp = '/sign-up';
  static const String forgotPassword = '/forgot-password';
  static const String emailVerification = '/email-verification';
  static const String resetPassword = '/reset-password';

    static const String splashRoute = 'splash';
  static const String loginRoute = 'login';
  static const String signUpRoute = 'signUp';
  static const String forgotPasswordRoute = 'forgotPassword';
  static const String emailVerificationRoute = 'emailVerification';
  static const String resetPasswordRoute = 'resetPassword';

  // =========================
  // Main
  // =========================
  static const String home = '/home';
  static const String result = '/result';
  static const String profile = '/profile';

  static const String homeRoute = 'home';
  static const String resultRoute = 'result';
  static const String profileRoute = 'profile';

  // =========================
  // Profile
  // =========================
  static const String profileEdit = 'profileEdit';
  static const String profileChangePassword = 'profileChangePassword';

  // =========================
  // Subject
  // =========================
  static const String subjectDetails = '/home/subject/:subjectId';
  static const String subjectDetailsRoute = 'subjectDetails';
  static const String subjectExams = '/home/subject/:subjectId/exams';
  static const String subjectExamsRoute = 'subjectExams';

  // =========================
  // Exam flow
  // =========================
  static const String examInstructions = '/exam/instructions';
  static const String examTaking = '/exam/taking';
  static const String examScore = '/exam/score';
  static const String examAnswers = '/exam/answers';

  static const String examInstructionsRoute = 'examInstructions';
  static const String examTakingRoute = 'examTaking';
  static const String examScoreRoute = 'examScore';
  static const String examAnswersRoute = 'examAnswers';

  static String subjectExamsPath(String subjectId) =>
      '/home/subject/$subjectId/exams';

  static String subjectDetailsPath(String subjectId) =>
      '/home/subject/$subjectId';
}
