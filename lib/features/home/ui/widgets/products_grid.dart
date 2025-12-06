import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/utilities/build_shimmer.dart';
import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:e_commerce_app/features/home/ui/managers/home_cubit/home_cubit.dart';
import 'package:e_commerce_app/features/home/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: getIt.get<HomeCubit>(),
      builder: (context, state) {
        if (state is HomeSuccess) {
          return _buildSuccessState(state.products);
        } else if (state is HomeLoading) {
          return _buildLoadingState();
        } else if (state is HomeError) {
          return _buildFailedState(context);
        } else {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }
      },
    );
  }

  Widget _buildFailedState(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          120.h,
          Text(
            'Error fetching the products!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: AppColors.deepSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (_, __) => buildShimmer(),
        childCount: 8,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.7,
      ),
    );
  }

  Widget _buildSuccessState(List<ProductItemModel> products) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (_, index) => ProductItem(model: products[index]),
        childCount: products.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.7,
      ),
    );
  }
}
