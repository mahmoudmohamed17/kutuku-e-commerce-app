import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utilities/build_shimmer.dart';
import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({super.key, required this.model});

  final ProductItemModel model;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: context.height * 0.40,
      flexibleSpace: FlexibleSpaceBar(
        background: CachedNetworkImage(
          imageUrl: model.imgUrl,
          placeholder: (context, url) => buildShimmer(borderRadius: 0),
          fit: BoxFit.cover,
        ),
      ),
      pinned: true,
      title: Text(
        'Product Details',
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.bagShopping, color: Colors.black),
        ),
        const SizedBox(width: 4),
      ],
    );
  }
}
