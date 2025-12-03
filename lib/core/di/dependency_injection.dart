import 'package:e_commerce_app/features/home/managers/home_cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class DependencyInjection {
  static void init() {
    getIt.registerLazySingleton<HomeCubit>(() => HomeCubit());
  }
}
