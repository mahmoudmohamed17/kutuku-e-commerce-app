import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:e_commerce_app/features/main_page/ui/main_page.dart';
import 'package:e_commerce_app/features/product_details/ui/pages/product_details_page.dart';
import 'package:go_router/go_router.dart';

class AppRouting {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const MainPage()),
      GoRoute(
        path: Routes.productDetails,
        builder: (context, state) {
          final product = state.extra as ProductItemModel;
          return const ProductDetailsPage();
        },
      ),
    ],
  );
}
