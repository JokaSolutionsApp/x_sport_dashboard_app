import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:x_sport_dashboard_app/core/networking/api_service.dart';
import 'package:x_sport_dashboard_app/core/networking/dio_factory.dart';
import 'package:x_sport_dashboard_app/features/authentication/logic/cubit/signin_cubit.dart';
import 'package:x_sport_dashboard_app/features/authentication/logic/cubit/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // signin
  getIt.registerFactory<SigninCubit>(() => SigninCubit());

  // signup
  getIt.registerFactory<SignupCubit>(() => SignupCubit());
}
