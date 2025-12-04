import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/ui/home_banner_carousel.dart';
import 'package:e_commerce_app/features/home/ui/new_arrivals_header.dart';
import 'package:e_commerce_app/features/home/ui/products_grid.dart';
import 'package:flutter/material.dart';

class HomeTabContent extends StatelessWidget {
  const HomeTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: HomeBannerCarousel()),
        SliverToBoxAdapter(child: 16.h),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(child: NewArrivalsHeader()),
        ),
        SliverToBoxAdapter(child: 8.h),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: ProductsGrid(),
        ),
        SliverToBoxAdapter(child: 8.h),
      ],
    );
  }
}
