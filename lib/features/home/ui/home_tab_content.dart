import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:e_commerce_app/features/home/ui/home_banner_carousel.dart';
import 'package:e_commerce_app/features/home/ui/new_arrivals_header.dart';
import 'package:e_commerce_app/features/home/ui/product_item.dart';
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
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ProductItem(model: dummyProducts[index]),
              childCount: dummyProducts.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.7,
            ),
          ),
        ),
        SliverToBoxAdapter(child: 8.h),
      ],
    );
  }
}
