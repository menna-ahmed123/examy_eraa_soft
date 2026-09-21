import 'package:examy/core/di/injection.dart';
import 'package:examy/app/routing/app_routes.dart';
import 'package:examy/app/routing/app_shell.dart';
import 'package:examy/app/routing/go_router_refresh_stream.dart';

import 'package:examy/feature/auth/presentation/auth/auth_cubit.dart';
import 'package:examy/feature/auth/presentation/auth/auth_state.dart';
import 'package:examy/feature/auth/presentation/login/cubit/login_cubit.dart';
import 'package:examy/feature/auth/presentation/login/views/login_view.dart';
import 'package:examy/feature/auth/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:examy/feature/auth/presentation/sign_up/views/sign_up_view.dart';
import 'package:examy/feature/auth/presentation/splash/views/splash_view.dart';

import 'package:examy/feature/exam/domain/entities/exam_history_entity.dart';
import 'package:examy/feature/exam/domain/entities/exam_score_args.dart';
import 'package:examy/feature/exam/domain/entities/exam_session_args.dart';
import 'package:examy/feature/exam/domain/entities/subject_entity.dart';
import 'package:examy/feature/exam/presentation/answers/views/exam_answers_view.dart';
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_cubit.dart';
import 'package:examy/feature/exam/presentation/instructions/views/exam_instructions_view.dart';
import 'package:examy/feature/exam/presentation/score/views/exam_score_view.dart';
import 'package:examy/feature/exam/presentation/subject_exams/cubit/subject_exams_cubit.dart';
import 'package:examy/feature/exam/presentation/subject_exams/views/subject_exams_view.dart';
import 'package:examy/feature/exam/presentation/taking_exam/cubit/taking_exam_cubit.dart';
import 'package:examy/feature/exam/presentation/taking_exam/views/taking_exam_view.dart';

import 'package:examy/feature/forgot_password/presentation/email_verification/cubit/email_verification_cubit.dart';
import 'package:examy/feature/forgot_password/presentation/email_verification/views/email_verification_view.dart';
import 'package:examy/feature/forgot_password/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:examy/feature/forgot_password/presentation/forgot_password/views/forgot_password_view.dart';
import 'package:examy/feature/forgot_password/presentation/reset_password/cubit/reset_password_cubit.dart';
import 'package:examy/feature/forgot_password/presentation/reset_password/views/reset_password_view.dart';

import 'package:examy/feature/home/presentation/view_model/explore_event.dart';
import 'package:examy/feature/home/presentation/view_model/explore_view_model.dart';
import 'package:examy/feature/home/presentation/view_model/subject_details_view_model.dart';
import 'package:examy/feature/home/presentation/views/explore_view.dart';
import 'package:examy/feature/home/presentation/views/subject_details_view.dart';

import 'package:examy/feature/profile/presentation/view_model/profile_view_model.dart';
import 'package:examy/feature/profile/presentation/views/profile_change_password_view.dart';
import 'package:examy/feature/profile/presentation/views/profile_edit_view.dart';
import 'package:examy/feature/profile/presentation/views/profile_view.dart';

import 'package:examy/feature/result/presentation/views/result_view.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppRouter {
  AppRouter(this.authCubit);

  final AuthCubit authCubit;

  late final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: true,
    refreshListenable: GoRouterRefreshStream(authCubit.stream),
    redirect: redirect,
    routes: routes,
  );

  String? redirect(BuildContext context, GoRouterState state) {
    final authStatus = authCubit.state.status;
    final location = state.matchedLocation;

    if (_isUnknownStatus(authStatus)) {
      return null;
    }

    if (_shouldRedirectToLogin(authStatus, location)) {
      return AppRoutes.login;
    }

    if (_shouldRedirectToHome(authStatus, location)) {
      return AppRoutes.home;
    }

    return null;
  }

  bool _isUnknownStatus(AuthStatus status) {
    return status == AuthStatus.unknown;
  }

  bool _shouldRedirectToLogin(AuthStatus status, String location) {
    final isLoggedIn = status == AuthStatus.authenticated;

    return !isLoggedIn && !isAuthFlowLocation(location);
  }

  bool _shouldRedirectToHome(AuthStatus status, String location) {
    final isLoggedIn = status == AuthStatus.authenticated;

    return isLoggedIn &&
      (isLoginOrSignUp(location) || location == AppRoutes.splash);
  }

  bool isAuthFlowLocation(String location) {
    return location == AppRoutes.login ||
        location == AppRoutes.signUp ||
        location == AppRoutes.forgotPassword ||
        location == AppRoutes.emailVerification ||
        location == AppRoutes.resetPassword;
  }

  bool isLoginOrSignUp(String location) {
    return location == AppRoutes.login || location == AppRoutes.signUp;
  }

  List<RouteBase> get routes => [
        GoRoute(
          path: AppRoutes.splash,
          name: AppRoutes.splashRoute,
          builder: (context, state) => const SplashView(),
        ),

        // =========================
        // Login
        // =========================
        GoRoute(
          path: AppRoutes.login,
          name: AppRoutes.loginRoute,
          builder: (context, state) {
            return BlocProvider(
              create: (_) => getIt<LoginCubit>(),
              child: const LoginView(),
            );
          },
        ),

        // =========================
        // Sign Up
        // =========================
        GoRoute(
          path: AppRoutes.signUp,
          name: AppRoutes.signUpRoute,
          builder: (context, state) {
            return BlocProvider(
              create: (_) => getIt<SignUpCubit>(),
              child: const SignUpView(),
            );
          },
        ),

        // =========================
        // Forgot Password
        // =========================
        GoRoute(
          path: AppRoutes.forgotPassword,
          name: AppRoutes.forgotPasswordRoute,
          builder: (context, state) {
            return BlocProvider(
              create: (_) => getIt<ForgotPasswordCubit>(),
              child: const ForgotPasswordView(),
            );
          },
        ),

        // =========================
        // Email Verification
        // =========================
        GoRoute(
          path: AppRoutes.emailVerification,
          name: AppRoutes.emailVerificationRoute,
          builder: (context, state) {
            final email = state.extra is String ? state.extra as String : '';

            return BlocProvider(
              create: (_) => getIt<EmailVerificationCubit>(),
              child: EmailVerificationView(email: email),
            );
          },
        ),

        // =========================
        // Reset Password
        // =========================
        GoRoute(
          path: AppRoutes.resetPassword,
          name: AppRoutes.resetPasswordRoute,
          builder: (context, state) {
            final email = state.extra is String ? state.extra as String : '';

            return BlocProvider(
              create: (_) => getIt<ResetPasswordCubit>(),
              child: ResetPasswordView(email: email),
            );
          },
        ),

        GoRoute(
          path: AppRoutes.examInstructions,
          name: AppRoutes.examInstructionsRoute,
          builder: (context, state) {
            final args = state.extra is ExamSessionArgs
                ? state.extra as ExamSessionArgs
                : ExamSessionArgs(
                    examId: state.uri.queryParameters['examId'] ?? '',
                    examTitle: state.uri.queryParameters['examTitle'] ?? '',
                    subjectId: state.uri.queryParameters['subjectId'] ?? '',
                    subjectName: state.uri.queryParameters['subjectName'] ?? '',
                    durationMinutes:
                        int.tryParse(state.uri.queryParameters['durationMinutes'] ?? '0') ??
                            0,
                    numberOfQuestions:
                        int.tryParse(state.uri.queryParameters['numberOfQuestions'] ?? '0') ??
                            0,
                  );
            return ExamInstructionsView(args: args);
          },
        ),
        GoRoute(
          path: AppRoutes.examTaking,
          name: AppRoutes.examTakingRoute,
          builder: (context, state) {
            final args = state.extra is ExamSessionArgs
                ? state.extra as ExamSessionArgs
                : ExamSessionArgs(
                    examId: state.uri.queryParameters['examId'] ?? '',
                    examTitle: state.uri.queryParameters['examTitle'] ?? '',
                    subjectId: state.uri.queryParameters['subjectId'] ?? '',
                    subjectName: state.uri.queryParameters['subjectName'] ?? '',
                    durationMinutes:
                        int.tryParse(state.uri.queryParameters['durationMinutes'] ?? '0') ??
                            0,
                    numberOfQuestions:
                        int.tryParse(state.uri.queryParameters['numberOfQuestions'] ?? '0') ??
                            0,
                  );
            return BlocProvider(
              create: (_) => getIt<TakingExamCubit>(),
              child: TakingExamView(args: args),
            );
          },
        ),
        GoRoute(
          path: AppRoutes.examScore,
          name: AppRoutes.examScoreRoute,
          builder: (context, state) {
            final args = state.extra;
            if (args is! ExamScoreArgs) {
              return const SizedBox.shrink();
            }
            return ExamScoreView(args: args);
          },
        ),
        GoRoute(
          path: AppRoutes.examAnswers,
          name: AppRoutes.examAnswersRoute,
          builder: (context, state) {
            final history = state.extra;
            if (history is! ExamHistoryEntity) {
              return const SizedBox.shrink();
            }
            return ExamAnswersView(history: history);
          },
        ),

        // =====================================================
        // Authenticated App
        // =====================================================
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BlocProvider.value(
              value: getIt<ExamHistoryCubit>(),
              child: AppShell(navigationShell: navigationShell),
            );
          },
          branches: [
            // =========================
            // Explore
            // =========================
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.home,
                  name: AppRoutes.homeRoute,
                  builder: (context, state) {
                    return BlocProvider(
                      create: (_) => getIt<ExploreViewModel>()
                        ..doEvent(GetSubjectsEvent()),
                      child: const ExploreView(),
                    );
                  },
                  routes: [
                    GoRoute(
                      path: 'subject/:subjectId',
                      name: AppRoutes.subjectDetailsRoute,
                      builder: (context, state) {
                        final subjectId = state.pathParameters['subjectId']!;

                        return BlocProvider(
                          create: (_) => getIt<SubjectDetailsViewModel>()
                            ..getSubjectDetails(subjectId),
                          child: SubjectDetailsView(subjectId: subjectId),
                        );
                      },
                      routes: [
                        GoRoute(
                          path: 'exams',
                          name: AppRoutes.subjectExamsRoute,
                          builder: (context, state) {
                            final subjectId = state.pathParameters['subjectId']!;
                            final extra = state.extra;
                            final subject = extra is Map<String, dynamic>
                                ? SubjectEntity(
                                    id: extra['id']?.toString() ?? subjectId,
                                    name: extra['name']?.toString() ?? '',
                                    icon: extra['icon']?.toString() ?? '',
                                  )
                                : SubjectEntity(
                                    id: subjectId,
                                    name: '',
                                    icon: '',
                                  );

                            return BlocProvider(
                              create: (_) => getIt<SubjectExamsCubit>(),
                              child: SubjectExamsView(subject: subject),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            // =========================
            // Result
            // =========================
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.result,
                  name: AppRoutes.resultRoute,
                  builder: (context, state) {
                    return BlocProvider.value(
                      value: context.read<ExamHistoryCubit>(),
                      child: const ResultView(),
                    );
                  },
                ),
              ],
            ),

            // =========================
            // Profile
            // =========================
            StatefulShellBranch(
              routes: [
                ShellRoute(
                  builder: (context, state, child) {
                    return BlocProvider(
                      create: (_) => getIt<ProfileViewModel>(),
                      child: child,
                    );
                  },
                  routes: [
                    GoRoute(
                      path: AppRoutes.profile,
                      name: AppRoutes.profileRoute,
                      builder: (context, state) {
                        return const ProfileView();
                      },
                      routes: [
                        GoRoute(
                          path: AppRoutes.profileEdit,
                          name: AppRoutes.profileEdit,
                          builder: (context, state) {
                            return const ProfileEditView();
                          },
                        ),
                        GoRoute(
                          path: AppRoutes.profileChangePassword,
                          name: AppRoutes.profileChangePassword,
                          builder: (context, state) {
                            return const ProfileChangePassword();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ];
}
