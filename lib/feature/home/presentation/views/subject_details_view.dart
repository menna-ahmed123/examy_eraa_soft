import 'package:examy/feature/home/presentation/views/widgets/subject_details_view_body.dart';
import 'package:flutter/material.dart';

class SubjectDetailsView extends StatelessWidget {
  const SubjectDetailsView({
    super.key,
    required this.subjectId,
  });

  final String subjectId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SubjectDetailsViewBody(),
      ),
    );
  }
}

