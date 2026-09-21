import 'package:examy/core/di/injection.dart';
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_cubit.dart';
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_event.dart';
import 'package:examy/feature/exam/presentation/history/views/exam_history_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultView extends StatefulWidget {
  const ResultView({super.key});

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  void initState() {
    super.initState();
    context.read<ExamHistoryCubit>().onEvent(const ExamHistoryEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ExamHistoryCubit>(),
      child: Padding(
        padding: const EdgeInsets.only(top:24),
        child: const ExamHistoryView(),
      ),
    );
  }
}
