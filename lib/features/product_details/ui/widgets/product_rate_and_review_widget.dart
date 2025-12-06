import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductRateAndReviewWidget extends StatelessWidget {
  const ProductRateAndReviewWidget({
    super.key,
    required this.rate,
    required this.reviewCount,
  });
  final double rate;
  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: AppColors.orangeColor,
        ),
        8.w,
        Text(
          rate.toStringAsFixed(2),
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        2.w,
        Text(
          '($reviewCount Reviews)',
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: AppColors.secondary),
        ),
      ],
    );
  }
}
