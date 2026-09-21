// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:examy/app/routing/app_router.dart' as _i721;
import 'package:examy/core/app_module/app_module.dart' as _i876;
import 'package:examy/core/networking/auth_interceptor.dart' as _i409;
import 'package:examy/core/storage/secure_storage_service.dart' as _i908;
import 'package:examy/feature/auth/api/client/auth_api_client.dart' as _i370;
import 'package:examy/feature/auth/data/data_sources/remote/auth_remote_data_source_impl.dart'
    as _i688;
import 'package:examy/feature/auth/data/data_sources/remote/auth_remote_data_source.dart'
    as _i961;
import 'package:examy/feature/auth/data/repos/auth_repo_impl.dart' as _i90;
import 'package:examy/feature/auth/domain/repos/auth_repo.dart' as _i747;
import 'package:examy/feature/auth/domain/use_cases/login_use_case.dart'
    as _i383;
import 'package:examy/feature/auth/domain/use_cases/sign_up_use_case.dart'
    as _i795;
import 'package:examy/feature/auth/presentation/auth/auth_cubit.dart' as _i1020;
import 'package:examy/feature/auth/presentation/login/cubit/login_cubit.dart'
    as _i142;
import 'package:examy/feature/auth/presentation/sign_up/cubit/sign_up_cubit.dart'
    as _i542;
import 'package:examy/feature/exam/api/client/exam_api_client.dart' as _i231;
import 'package:examy/feature/exam/data/data_sources/remote/exam_remote_data_source_impl.dart'
    as _i468;
import 'package:examy/feature/exam/data/data_sources/local/exam_history_local_data_source.dart'
    as _i88;
import 'package:examy/feature/exam/data/data_sources/local/exam_history_local_data_source_impl.dart'
    as _i59;
import 'package:examy/feature/exam/data/data_sources/remote/exam_remote_data_source.dart'
    as _i1032;
import 'package:examy/feature/exam/data/repos/exam_history_repo_impl.dart'
    as _i455;
import 'package:examy/feature/exam/data/repos/exam_repo_impl.dart' as _i1;
import 'package:examy/feature/exam/domain/repos/exam_history_repo.dart'
    as _i723;
import 'package:examy/feature/exam/domain/repos/exam_repo.dart' as _i478;
import 'package:examy/feature/exam/domain/use_cases/check_questions_use_case.dart'
    as _i337;
import 'package:examy/feature/exam/domain/use_cases/get_exam_by_id_use_case.dart'
    as _i471;
import 'package:examy/feature/exam/domain/use_cases/get_exam_history_by_subject_use_case.dart'
    as _i797;
import 'package:examy/feature/exam/domain/use_cases/get_exam_history_use_case.dart'
    as _i578;
import 'package:examy/feature/exam/domain/use_cases/get_exams_use_case.dart'
    as _i392;
import 'package:examy/feature/exam/domain/use_cases/get_questions_by_exam_use_case.dart'
    as _i501;
import 'package:examy/feature/exam/domain/use_cases/get_subjects_use_case.dart'
    as _i146;
import 'package:examy/feature/exam/domain/use_cases/save_exam_history_use_case.dart'
    as _i371;
import 'package:examy/feature/exam/presentation/explore/cubit/explore_cubit.dart'
    as _i948;
import 'package:examy/feature/exam/presentation/history/cubit/exam_history_cubit.dart'
    as _i247;
import 'package:examy/feature/exam/presentation/subject_exams/cubit/subject_exams_cubit.dart'
    as _i862;
import 'package:examy/feature/exam/presentation/taking_exam/cubit/taking_exam_cubit.dart'
    as _i285;
import 'package:examy/feature/forgot_password/api/client/forgot_password_api_client.dart'
    as _i167;
import 'package:examy/feature/forgot_password/data/data_sources/remote/forgot_password_remote_data_source_impl.dart'
    as _i626;
import 'package:examy/feature/forgot_password/data/data_sources/remote/forgot_password_remote_data_source.dart'
    as _i809;
import 'package:examy/feature/forgot_password/data/repos/forgot_password_repo_impl.dart'
    as _i961;
import 'package:examy/feature/forgot_password/domain/repos/forgot_password_repo.dart'
    as _i1;
import 'package:examy/feature/forgot_password/domain/use_cases/forgot_password_use_case.dart'
    as _i211;
import 'package:examy/feature/forgot_password/domain/use_cases/reset_password_use_case.dart'
    as _i349;
import 'package:examy/feature/forgot_password/domain/use_cases/verify_reset_code_use_case.dart'
    as _i871;
import 'package:examy/feature/forgot_password/presentation/email_verification/cubit/email_verification_cubit.dart'
    as _i319;
import 'package:examy/feature/forgot_password/presentation/forgot_password/cubit/forgot_password_cubit.dart'
    as _i425;
import 'package:examy/feature/forgot_password/presentation/reset_password/cubit/reset_password_cubit.dart'
    as _i189;
import 'package:examy/feature/home/api/client/explore_api_client.dart' as _i141;
import 'package:examy/feature/home/data/data_sources/remote/explore_remote_data_source_impl.dart'
    as _i876;
import 'package:examy/feature/home/data/data_sources/remote/explore_remote_data_source.dart'
    as _i760;
import 'package:examy/feature/home/data/repos/explore_repo_impl.dart' as _i461;
import 'package:examy/feature/home/domain/repos/explore_repo.dart' as _i856;
import 'package:examy/feature/home/domain/use_cases/get_subject_details_use_case.dart'
    as _i985;
import 'package:examy/feature/home/domain/use_cases/get_subjects_use_case.dart'
    as _i393;
import 'package:examy/feature/home/presentation/view_model/explore_view_model.dart'
    as _i176;
import 'package:examy/feature/home/presentation/view_model/subject_details_view_model.dart'
    as _i1002;
import 'package:examy/feature/profile/api/client/profile_api_client.dart'
    as _i35;
import 'package:examy/feature/profile/data/data_sources/remote/profile_remote_data_source_impl.dart'
    as _i758;
import 'package:examy/feature/profile/data/data_sources/remote/profile_remote_data_source.dart'
    as _i798;
import 'package:examy/feature/profile/data/repos/profile_repo_impl.dart'
    as _i259;
import 'package:examy/feature/profile/domain/repos/profile_repo.dart' as _i245;
import 'package:examy/feature/profile/domain/use_cases/change_passoword_use_case.dart'
    as _i216;
import 'package:examy/feature/profile/domain/use_cases/get_profile_use_case.dart'
    as _i238;
import 'package:examy/feature/profile/domain/use_cases/update_profile_use_case.dart'
    as _i680;
import 'package:examy/feature/profile/presentation/view_model/profile_view_model.dart'
    as _i680;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => appModule.secureStorage(),
    );
    gh.lazySingleton<_i908.SecureStorageService>(
      () => _i908.SecureStorageServiceImpl(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i88.ExamHistoryLocalDataSource>(
      () =>
          _i59.ExamHistoryLocalDataSourceImpl(gh<_i908.SecureStorageService>()),
    );
    gh.lazySingleton<_i409.AuthInterceptor>(
      () => _i409.AuthInterceptor(gh<_i908.SecureStorageService>()),
    );
    gh.lazySingleton<_i1020.AuthCubit>(
      () => _i1020.AuthCubit(gh<_i908.SecureStorageService>()),
    );
    gh.lazySingleton<_i721.AppRouter>(
      () => _i721.AppRouter(gh<_i1020.AuthCubit>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => appModule.dio(gh<_i409.AuthInterceptor>()),
    );
    gh.lazySingleton<_i723.ExamHistoryRepo>(
      () => _i455.ExamHistoryRepoImpl(gh<_i88.ExamHistoryLocalDataSource>()),
    );
    gh.lazySingleton<_i797.GetExamHistoryBySubjectUseCase>(
      () => _i797.GetExamHistoryBySubjectUseCase(gh<_i723.ExamHistoryRepo>()),
    );
    gh.lazySingleton<_i578.GetExamHistoryUseCase>(
      () => _i578.GetExamHistoryUseCase(gh<_i723.ExamHistoryRepo>()),
    );
    gh.lazySingleton<_i371.SaveExamHistoryUseCase>(
      () => _i371.SaveExamHistoryUseCase(gh<_i723.ExamHistoryRepo>()),
    );
    gh.lazySingleton<_i370.AuthApiClient>(
      () => _i370.AuthApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i231.ExamApiClient>(
      () => _i231.ExamApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i167.ForgotPasswordApiClient>(
      () => _i167.ForgotPasswordApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i141.ExploreApiClient>(
      () => _i141.ExploreApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i35.ProfileApiClient>(
      () => _i35.ProfileApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i809.ForgotPasswordRemoteDataSource>(
      () => _i626.ForgotPasswordRemoteDataSourceImpl(
        forgotPasswordApiClient: gh<_i167.ForgotPasswordApiClient>(),
      ),
    );
    gh.lazySingleton<_i1032.ExamRemoteDataSource>(
      () => _i468.ExamRemoteDataSourceImpl(
        examApiClient: gh<_i231.ExamApiClient>(),
      ),
    );
    gh.factory<_i798.ProfileRemoteDataSource>(
      () => _i758.ProfileRemoteDataSourceImpl(
        profileApiClient: gh<_i35.ProfileApiClient>(),
      ),
    );
    gh.factory<_i247.ExamHistoryCubit>(
      () => _i247.ExamHistoryCubit(gh<_i578.GetExamHistoryUseCase>()),
    );
    gh.lazySingleton<_i1.ForgotPasswordRepo>(
      () => _i961.ForgotPasswordRepoImpl(
        forgotPasswordRemoteDataSource:
            gh<_i809.ForgotPasswordRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i961.AuthRemoteDataSource>(
      () => _i688.AuthRemoteDataSourceImpl(
        authApiClient: gh<_i370.AuthApiClient>(),
      ),
    );
    gh.lazySingleton<_i478.ExamRepo>(
      () => _i1.ExamRepoImpl(
        examRemoteDataSource: gh<_i1032.ExamRemoteDataSource>(),
      ),
    );
    gh.factory<_i760.ExploreRemoteDataSource>(
      () => _i876.ExploreRemoteDataSourceImpl(
        exploreApiClient: gh<_i141.ExploreApiClient>(),
      ),
    );
    gh.lazySingleton<_i747.AuthRepo>(
      () => _i90.AuthRepoImpl(
        authRemoteDataSource: gh<_i961.AuthRemoteDataSource>(),
        secureStorageService: gh<_i908.SecureStorageService>(),
      ),
    );
    gh.factory<_i245.ProfileRepo>(
      () => _i259.ProfileRepoImpl(
        profileRemoteDataSource: gh<_i798.ProfileRemoteDataSource>(),
        secureStorageService: gh<_i908.SecureStorageService>(),
      ),
    );
    gh.factory<_i216.ChangePasswordUseCase>(
      () => _i216.ChangePasswordUseCase(profileRepo: gh<_i245.ProfileRepo>()),
    );
    gh.factory<_i238.GetProfileUseCase>(
      () => _i238.GetProfileUseCase(profileRepo: gh<_i245.ProfileRepo>()),
    );
    gh.factory<_i680.UpdateProfileUseCase>(
      () => _i680.UpdateProfileUseCase(profileRepo: gh<_i245.ProfileRepo>()),
    );
    gh.lazySingleton<_i211.ForgotPasswordUseCase>(
      () => _i211.ForgotPasswordUseCase(gh<_i1.ForgotPasswordRepo>()),
    );
    gh.lazySingleton<_i349.ResetPasswordUseCase>(
      () => _i349.ResetPasswordUseCase(gh<_i1.ForgotPasswordRepo>()),
    );
    gh.lazySingleton<_i871.VerifyResetCodeUseCase>(
      () => _i871.VerifyResetCodeUseCase(gh<_i1.ForgotPasswordRepo>()),
    );
    gh.lazySingleton<_i337.CheckQuestionsUseCase>(
      () => _i337.CheckQuestionsUseCase(gh<_i478.ExamRepo>()),
    );
    gh.lazySingleton<_i471.GetExamByIdUseCase>(
      () => _i471.GetExamByIdUseCase(gh<_i478.ExamRepo>()),
    );
    gh.lazySingleton<_i392.GetExamsUseCase>(
      () => _i392.GetExamsUseCase(gh<_i478.ExamRepo>()),
    );
    gh.lazySingleton<_i501.GetQuestionsByExamUseCase>(
      () => _i501.GetQuestionsByExamUseCase(gh<_i478.ExamRepo>()),
    );
    gh.lazySingleton<_i146.GetSubjectsUseCase>(
      () => _i146.GetSubjectsUseCase(gh<_i478.ExamRepo>()),
    );
    gh.lazySingleton<_i383.LoginUseCase>(
      () => _i383.LoginUseCase(gh<_i747.AuthRepo>()),
    );
    gh.lazySingleton<_i795.SignUpUseCase>(
      () => _i795.SignUpUseCase(gh<_i747.AuthRepo>()),
    );
    gh.factory<_i189.ResetPasswordCubit>(
      () => _i189.ResetPasswordCubit(gh<_i349.ResetPasswordUseCase>()),
    );
    gh.lazySingleton<_i856.ExploreRepo>(
      () => _i461.ExploreRepoImpl(
        exploreRemoteDataSource: gh<_i760.ExploreRemoteDataSource>(),
      ),
    );
    gh.factory<_i680.ProfileViewModel>(
      () => _i680.ProfileViewModel(
        gh<_i238.GetProfileUseCase>(),
        gh<_i680.UpdateProfileUseCase>(),
        gh<_i216.ChangePasswordUseCase>(),
      ),
    );
    gh.factory<_i542.SignUpCubit>(
      () => _i542.SignUpCubit(gh<_i795.SignUpUseCase>()),
    );
    gh.factory<_i425.ForgotPasswordCubit>(
      () => _i425.ForgotPasswordCubit(gh<_i211.ForgotPasswordUseCase>()),
    );
    gh.factory<_i319.EmailVerificationCubit>(
      () => _i319.EmailVerificationCubit(
        gh<_i871.VerifyResetCodeUseCase>(),
        gh<_i211.ForgotPasswordUseCase>(),
      ),
    );
    gh.factory<_i985.GetSubjectDetailsUseCase>(
      () => _i985.GetSubjectDetailsUseCase(gh<_i856.ExploreRepo>()),
    );
    gh.factory<_i393.GetSubjectsUseCase>(
      () => _i393.GetSubjectsUseCase(gh<_i856.ExploreRepo>()),
    );
    gh.factory<_i142.LoginCubit>(
      () => _i142.LoginCubit(gh<_i383.LoginUseCase>()),
    );
    gh.factory<_i862.SubjectExamsCubit>(
      () => _i862.SubjectExamsCubit(
        gh<_i392.GetExamsUseCase>(),
        gh<_i797.GetExamHistoryBySubjectUseCase>(),
      ),
    );
    gh.factory<_i285.TakingExamCubit>(
      () => _i285.TakingExamCubit(
        gh<_i501.GetQuestionsByExamUseCase>(),
        gh<_i337.CheckQuestionsUseCase>(),
        gh<_i371.SaveExamHistoryUseCase>(),
      ),
    );
    gh.factory<_i948.ExploreCubit>(
      () => _i948.ExploreCubit(gh<_i146.GetSubjectsUseCase>()),
    );
    gh.factory<_i176.ExploreViewModel>(
      () => _i176.ExploreViewModel(gh<_i393.GetSubjectsUseCase>()),
    );
    gh.factory<_i1002.SubjectDetailsViewModel>(
      () =>
          _i1002.SubjectDetailsViewModel(gh<_i985.GetSubjectDetailsUseCase>()),
    );
    return this;
  }
}

class _$AppModule extends _i876.AppModule {}
