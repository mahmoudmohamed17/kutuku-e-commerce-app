import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.model});
  final ProductItemModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: model.imgUrl,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
        ),
        
      ],
    );
  }
}
