import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:e_commerce_app/features/product_details/ui/widgets/product_details_app_bar.dart';
import 'package:e_commerce_app/features/product_details/ui/widgets/product_details_footer.dart';
import 'package:e_commerce_app/features/product_details/ui/widgets/product_info.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.model});
  final ProductItemModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                // Contains the product image
                ProductDetailsAppBar(model: model),

                // Containts the product name, review, description and most of the remaining info
                SliverToBoxAdapter(child: ProductInfo(model: model)),
              ],
            ),
          ),

          // Contains the product price and add to cart button
          SafeArea(child: ProductDetailsFooter(model: model)),
        ],
      ),
    );
  }
}
