import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utilities/build_shimmer.dart';
import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:e_commerce_app/features/product_details/ui/widgets/product_details_slidable_header.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.model});
  final ProductItemModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: CachedNetworkImage(
              imageUrl: model.imgUrl,
              height: context.height * 0.45,
              placeholder: (context, url) => buildShimmer(borderRadius: 0),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: context.height * 0.4,
            right: 0,
            left: 0,
            height: context.height,
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  delegate: ProductDetailsSlidableHeader(model: model),
                  floating: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
