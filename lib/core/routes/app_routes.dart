class AppRoutes {
  AppRoutes._();

  // Auth
  static const String login = '/login';
  static const String signUp = '/sign-up';
  static const String forgotPassword = '/forgot-password';
  static const String verifyCode = '/verify-code';
  static const String resetPassword = '/reset-password';

  // Main
  static const String home = '/home';
  static const String subjectDetails = '/subject-details/:$subjectIdParam';

  // Profile
  static const String editProfile = '/edit-profile';
  static const String changePassword = '/change-password';

  // Params
  static const String subjectIdParam = 'subjectId';

  static String subjectDetailsPath(String subjectId) =>
      '/subject-details/$subjectId';
}
