import 'package:examy/feature/home/data/models/exam_model.dart';
import 'package:examy/feature/home/presentation/cubit/home_cubit.dart';
import 'package:examy/feature/home/presentation/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getExams();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exams'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.initial:
              case Status.loading:
                return const Center(child: CircularProgressIndicator());

              case Status.error:
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          state.message ?? 'Something went wrong',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () => context.read<HomeCubit>().getExams(),
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                );

              case Status.success:
                if (state.exams.isEmpty) {
                  return const Center(child: Text('No exams available yet'));
                }
                return RefreshIndicator(
                  onRefresh: () => context.read<HomeCubit>().getExams(),
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.exams.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) => _ExamCard(exam: state.exams[index]),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}

class _ExamCard extends StatelessWidget {
  final ExamModel exam;
  const _ExamCard({required this.exam});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        title: Text(
          exam.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Row(
            children: [
              const Icon(Icons.timer_outlined, size: 16, color: Colors.grey),
              const SizedBox(width: 4),
              Text('${exam.duration} min'),
              const SizedBox(width: 16),
              const Icon(Icons.help_outline, size: 16, color: Colors.grey),
              const SizedBox(width: 4),
              Text('${exam.numberOfQuestions} questions'),
            ],
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // TODO: navigate to the exam details / start-exam screen with exam.id
        },
      ),
    );
  }
}
