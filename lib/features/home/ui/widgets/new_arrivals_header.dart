import 'package:e_commerce_app/core/constants/app_colors.dart' show AppColors;
import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/utilities/build_shimmer.dart';
import 'package:e_commerce_app/features/home/ui/managers/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewArrivalsHeader extends StatelessWidget {
  const NewArrivalsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: getIt.get<HomeCubit>(),
      builder: (context, state) {
        // even in case of failure; return the same header as well
        if (state is HomeSuccess || state is HomeError) {
          return _buildSuccessState(context);
        } else if (state is HomeLoading) {
          return _buildLoadingState();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildLoadingState() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildShimmer(borderRadius: 8, height: 32, width: 120),
        buildShimmer(borderRadius: 8, height: 32, width: 40),
      ],
    );
  }

  Widget _buildSuccessState(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'New Arrivals 🔥',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
          ),
          child: Text(
            'See all',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
