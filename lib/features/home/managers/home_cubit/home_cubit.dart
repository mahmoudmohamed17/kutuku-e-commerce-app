import 'package:e_commerce_app/core/constants/app_assets.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    loadHomeData();
  }

  Future<void> loadHomeData() async {
    emit(HomeLoading());
    await Future.delayed(const Duration(seconds: 3), () {
      final banners = [
        AppAssets.banner1,
        AppAssets.banner2,
        AppAssets.banner3,
        AppAssets.banner4,
      ];
      emit(HomeSuccess(products: dummyProducts, banners: banners));
    });
  }
}
