import 'package:examy/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    errorBuilder: (context, state) =>
        const _ScreenPlaceholder(name: 'Page not found'),
    routes: [
      // Replace each placeholder with the real screen, wrapping with the cubit
      // when the screen needs one, e.g.:
      //
      // GoRoute(
      //   path: AppRoutes.login,
      //   builder: (context, state) => BlocProvider(
      //     create: (_) => getIt<LoginCubit>(),
      //     child: const LoginScreen(),
      //   ),
      // ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const _ScreenPlaceholder(name: 'Login'),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        builder: (context, state) => const _ScreenPlaceholder(name: 'Sign up'),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        builder: (context, state) =>
            const _ScreenPlaceholder(name: 'Forgot password'),
      ),
      GoRoute(
        path: AppRoutes.verifyCode,
        builder: (context, state) =>
            const _ScreenPlaceholder(name: 'Verify code'),
      ),
      GoRoute(
        path: AppRoutes.resetPassword,
        builder: (context, state) =>
            const _ScreenPlaceholder(name: 'Reset password'),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const _ScreenPlaceholder(name: 'Home'),
      ),
      GoRoute(
        path: AppRoutes.subjectDetails,
        builder: (context, state) {
          final subjectId = state.pathParameters[AppRoutes.subjectIdParam]!;
          return _ScreenPlaceholder(name: 'Subject $subjectId');
        },
      ),
      GoRoute(
        path: AppRoutes.editProfile,
        builder: (context, state) =>
            const _ScreenPlaceholder(name: 'Edit profile'),
      ),
      GoRoute(
        path: AppRoutes.changePassword,
        builder: (context, state) =>
            const _ScreenPlaceholder(name: 'Change password'),
      ),
    ],
  );
}

class _ScreenPlaceholder extends StatelessWidget {
  const _ScreenPlaceholder({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('TODO: $name')));
  }
}
