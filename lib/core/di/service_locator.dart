import 'package:dio/dio.dart';
import 'package:examy/core/networking/dio_factory.dart';
import 'package:examy/feature/home/data/repo/home_repo.dart';
import 'package:examy/feature/login/data/repo/login_repo.dart';
import 'package:examy/feature/register/data/repo/register_repo.dart';
import 'package:get_it/get_it.dart';


GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<Dio>(() => DioFactory.getDio());

  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

  // register the rest of your feature repos/cubits here as you build them
}
