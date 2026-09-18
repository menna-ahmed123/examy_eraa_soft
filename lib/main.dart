import 'package:examy/core/di/service_locator.dart';
import 'package:examy/core/networking/dio_factory.dart';
import 'package:examy/exam_app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? token;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  token = prefs.getString('token');

  await setupGetIt();

  if (token != null && token!.isNotEmpty) {
    DioFactory.setTokenIntoHeaderAfterLogin(token!);
  }

  runApp(const ExamApp());
}
