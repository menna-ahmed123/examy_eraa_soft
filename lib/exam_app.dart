import 'package:examy/app/routing/app_router.dart';
import 'package:examy/config/di/injection.dart';
import 'package:examy/core/resources/app_theme.dart';
import 'package:examy/feature/auth/presentation/auth/auth_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
 
Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
 
  configureDependencies();
 
  // The token is read from secure storage by AuthInterceptor on every request,
  // so there is no SharedPreferences / setTokenIntoHeaderAfterLogin step here.
  final appRouter = getIt<AppRouter>();
  await appRouter.authCubit.checkAuthStatus();
 
  FlutterNativeSplash.remove();
  runApp(ExamApp(appRouter: appRouter));
}
 
class ExamApp extends StatelessWidget {
  const ExamApp({super.key, required this.appRouter});
 
  final AppRouter appRouter;
 
  @override
  Widget build(BuildContext context) {
    return AuthWrapper(
      authCubit: appRouter.authCubit,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        routerConfig: appRouter.router,
      ),
    );
  }
}
