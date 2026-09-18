
import 'package:examy/core/di/service_locator.dart';
import 'package:examy/core/routes/app_routes.dart';
import 'package:examy/feature/home/presentation/cubit/home_cubit.dart';
import 'package:examy/feature/home/presentation/ui/home_screen.dart';
import 'package:examy/feature/login/presentation/cubit/login_cubit.dart';
import 'package:examy/feature/login/presentation/ui/login_screen.dart';
import 'package:examy/feature/register/presentation/cubit/register_cubit.dart';
import 'package:examy/feature/register/presentation/ui/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RegisterCubit(getIt()),
            child: const RegisterScreen(),
          ),
        );

      case AppRoutes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginScreen(),
          ),
        );

      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt()),
            child: const HomeScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
