import 'package:examy/core/constants/app_strings.dart';
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_cubit.dart';
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AppShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: navigationShell.currentIndex,
      onTap: (index) => _onItemTapped(index, null),
      items: _navigationItems,
    );
  }

  void _onItemTapped(int index, BuildContext? contextOverride) {
    final ctx = contextOverride ?? navigatorKey.currentContext;
    if (index == 1 && ctx != null) {
      ctx.read<ExamHistoryCubit>().onEvent(const ExamHistoryEvent.load());
    }

    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  List<BottomNavigationBarItem> get _navigationItems => const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: AppStrings.explore,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.assignment_outlined),
      activeIcon: Icon(Icons.assignment),
      label: AppStrings.result,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: AppStrings.profile,
    ),
  ];
}
