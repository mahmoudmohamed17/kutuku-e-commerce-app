import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:e_commerce_app/features/home/ui/home_app_bar.dart';
import 'package:e_commerce_app/features/home/ui/home_banner_carousel.dart';
import 'package:e_commerce_app/features/home/ui/new_arrifals_header.dart';
import 'package:e_commerce_app/features/home/ui/product_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeAppBar(),
        16.h,
        const HomeBannerCarousel(),
        16.h,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: NewArrifalsHeader(),
        ),
        8.h,
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // mainAxisSpacing: 4,
              crossAxisSpacing: 12,
              childAspectRatio: 0.7,
            ),
            itemCount: dummyProducts.length,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return ProductItem(model: dummyProducts[index]);
            },
          ),
        ),
        12.h,
      ],
    );
  }
}
