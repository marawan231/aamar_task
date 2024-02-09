
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // choose language cubit
  // getIt.registerLazySingleton<ChooseLanguageCubit>(() => ChooseLanguageCubit());
  //on boarding 
  // getIt.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());
  // Dio & ApiService
  // Dio dio = setupDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
}
