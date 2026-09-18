import 'package:examy/core/routes/app_router.dart';
import 'package:examy/core/routes/app_routes.dart';
import 'package:examy/main.dart';
import 'package:flutter/material.dart';


class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: getInitialPage(),
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }

  String getInitialPage() {
    if (token != null) {
      return AppRoutes.homeScreen;
    } else {
      return AppRoutes.registerScreen;
    }
  }
}
