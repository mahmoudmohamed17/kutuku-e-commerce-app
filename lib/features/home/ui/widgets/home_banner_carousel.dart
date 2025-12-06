import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/utilities/build_shimmer.dart';
import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/ui/managers/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBannerCarousel extends StatefulWidget {
  const HomeBannerCarousel({super.key});

  @override
  State<HomeBannerCarousel> createState() => _HomeBannerCarouselState();
}

class _HomeBannerCarouselState extends State<HomeBannerCarousel> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: getIt.get<HomeCubit>(),
      builder: (context, state) {
        if (state is HomeSuccess) {
          return _buildSuccessState(context, banners: state.banners);
        } else if (state is HomeLoading) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: buildShimmer(
              width: context.width,
              height: context.height * 0.2,
            ),
          );
        } else if (state is HomeError) {
          return Center(
            child: Text(
              state.message,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: AppColors.primary),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildSuccessState(
    BuildContext context, {
    required List<String> banners,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider.builder(
          itemCount: banners.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image.asset(
                      banners[itemIndex],
                      fit: BoxFit.cover,
                      width: context.width,
                    ),
                  ),
          options: CarouselOptions(
            height: context.height * 0.22,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              setState(() {
                _activeIndex = index;
              });
            },
          ),
        ),
        8.h,
        DotsIndicator(
          dotsCount: banners.length,
          position: _activeIndex.toDouble(),
          decorator: const DotsDecorator(
            color: AppColors.secondary, // Inactive color
            activeColor: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
