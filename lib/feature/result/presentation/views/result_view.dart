import 'package:examy/feature/exam/presentation/history/views/exam_history_view.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24),
      child: ExamHistoryView(),
    );
  }
}
