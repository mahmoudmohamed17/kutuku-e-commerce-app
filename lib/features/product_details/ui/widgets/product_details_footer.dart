import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailsFooter extends StatelessWidget {
  const ProductDetailsFooter({super.key, required this.model});

  final ProductItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '\$',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
                TextSpan(
                  text: "${model.price}",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            onPressed: () {},
            label: Text(
              'Add to Cart',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            icon: const Icon(FontAwesomeIcons.bagShopping, color: Colors.white),
            backgrnColor: AppColors.primary,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 20,
            ),
            borderRadius: 32,
          ),
        ],
      ),
    );
  }
}
