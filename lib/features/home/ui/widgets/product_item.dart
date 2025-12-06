import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/core/utilities/build_shimmer.dart';
import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.model});
  final ProductItemModel model;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.productDetailsRoute, extra: widget.model);
      },
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: widget.model.imgUrl,
                    width: context.width,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        buildShimmer(width: context.width),
                  ),
                ),
              ),
              10.h,
              Text(
                widget.model.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              4.h,
              Text(
                widget.model.category,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.copyWith(color: AppColors.secondary),
              ),
              4.h,
              Text(
                '\$${widget.model.price}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black54,
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
                  child: IconButton(
                    key: ValueKey(isFavorite),
                    onPressed: () => setState(() {
                      isFavorite = !isFavorite;
                    }),
                    visualDensity: VisualDensity.compact,
                    icon: Icon(
                      isFavorite
                          ? FontAwesomeIcons.solidHeart
                          : FontAwesomeIcons.heart,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
