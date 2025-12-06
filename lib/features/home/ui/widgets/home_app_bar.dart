import 'package:e_commerce_app/core/constants/app_assets.dart' show AppAssets;
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            leading: const CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(AppAssets.myPicture),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            horizontalTitleGap: 10,
            enableFeedback: false,
            title: SizedBox(
              width: context.width * 0.6,
              child: Text(
                'Hi, Mahmoud Mohamed',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            subtitle: Text(
              'Let\'s go shopping!',
              style: Theme.of(
                context,
              ).textTheme.labelMedium?.copyWith(color: AppColors.deepSecondary),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.bell, color: Colors.black),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}
