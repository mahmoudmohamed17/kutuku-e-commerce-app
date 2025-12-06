import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:e_commerce_app/features/main_page/ui/main_page.dart';
import 'package:e_commerce_app/features/product_details/ui/widgets/product_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRouting {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.homeRoute,
        pageBuilder: (context, state) =>
            CupertinoPage(key: state.pageKey, child: const MainPage()),
      ),
      GoRoute(
        path: AppRoutes.productDetailsRoute,
        pageBuilder: (context, state) {
          final product = state.extra as ProductItemModel;
          return CupertinoPage(
            key: state.pageKey,
            child: ProductDetailsPage(model: product),
          );
        },
      ),
    ],
  );
}
