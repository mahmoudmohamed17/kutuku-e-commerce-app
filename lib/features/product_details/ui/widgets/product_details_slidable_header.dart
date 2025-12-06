import 'package:e_commerce_app/features/home/data/models/product_item_model.dart';
import 'package:e_commerce_app/features/product_details/ui/widgets/product_rate_and_review_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsSlidableHeader extends SliverPersistentHeaderDelegate {
  final ProductItemModel model;
  ProductDetailsSlidableHeader({required this.model});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // Calculate the progress of shrinking (0.0 = fully expanded, 1.0 = fully collapsed)
    final double shrinkProgress = shrinkOffset / (maxExtent - minExtent);

    // Calculate opacity based on scroll (fade out as we scroll)
    final double descriptionOpacity = (1 - shrinkProgress).clamp(0.0, 1.0);

    // Calculate if we should show certain elements
    final bool showDescription = shrinkProgress < 0.7;

    // Dynamic font size that shrinks with scroll
    final double titleFontSize = 20 - (shrinkProgress * 4); // 20px -> 16px

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header section - always visible
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product name with dynamic font size
                    Text(
                      model.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: titleFontSize,
                      ),
                    ),
                    const SizedBox(height: 4),
                    ProductRateAndReviewWidget(
                      rate: model.rate,
                      reviewCount: model.reviewsCount,
                    ),
                  ],
                ),
              ),
              // Price section - always visible
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Price',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                  Text(
                    '\$${model.price.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF514EB6),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Product description - fades out as we scroll
          if (showDescription) ...[
            SizedBox(height: 16),
            Opacity(
              opacity: descriptionOpacity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    model.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                    maxLines: shrinkProgress > 0.3 ? 3 : 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16),

                  // Category badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF514EB6).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      model.category,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF514EB6),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  @override
  double get maxExtent => 700;

  @override
  double get minExtent => 120; // Reduced to show just the header row

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
