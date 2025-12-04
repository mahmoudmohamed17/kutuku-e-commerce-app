import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/data/models/category_item_model.dart';
import 'package:flutter/material.dart';

class CategoryTabContent extends StatelessWidget {
  const CategoryTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categories.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) =>
          _categoryItem(context, categories[index]),
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    );
  }

  Widget _categoryItem(BuildContext context, CategoryItemModel item) {
    return GestureDetector(
      onTap: () {
        // TODO: navigate to category screen
      },
      child: SizedBox(
        height: context.height * 0.14,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                item.assetImage,
                width: context.width,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: item.isAlignToLeft
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: item.textColor,
                      ),
                    ),
                    Text(
                      item.subTitle,
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium?.copyWith(color: item.textColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
