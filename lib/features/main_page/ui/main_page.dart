import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/features/home/ui/widgets/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: const SafeArea(child: HomePage()),
            item: ItemConfig(
              icon: const Padding(
                padding: EdgeInsets.only(bottom: 6, top: 6),
                child: Icon(FontAwesomeIcons.house),
              ),
              title: 'Home',
              inactiveForegroundColor: AppColors.secondary,
              iconSize: 20,
              textStyle: Theme.of(
                context,
              ).textTheme.labelSmall!.copyWith(color: AppColors.primary),
            ),
          ),
          PersistentTabConfig(
            screen: const Center(child: Text('My Order')),
            item: ItemConfig(
              icon: const Padding(
                padding: EdgeInsets.only(bottom: 6, top: 6),
                child: Icon(FontAwesomeIcons.truckFast),
              ),
              title: 'My Order',
              inactiveForegroundColor: AppColors.secondary,
              iconSize: 20,
              textStyle: Theme.of(
                context,
              ).textTheme.labelSmall!.copyWith(color: AppColors.primary),
            ),
          ),
          PersistentTabConfig(
            screen: const Center(child: Text('Favorites')),
            item: ItemConfig(
              icon: const Padding(
                padding: EdgeInsets.only(bottom: 6, top: 6),
                child: Icon(FontAwesomeIcons.heart),
              ),
              title: 'Favorites',
              iconSize: 20,
              inactiveForegroundColor: AppColors.secondary,
              textStyle: Theme.of(
                context,
              ).textTheme.labelSmall!.copyWith(color: AppColors.primary),
            ),
          ),
          PersistentTabConfig(
            screen: const Center(child: Text('My Profile')),
            item: ItemConfig(
              icon: const Padding(
                padding: EdgeInsets.only(bottom: 6, top: 6),
                child: Icon(FontAwesomeIcons.user),
              ),
              title: 'My Profile',
              iconSize: 20,
              inactiveForegroundColor: AppColors.secondary,
              textStyle: Theme.of(
                context,
              ).textTheme.labelSmall!.copyWith(color: AppColors.primary),
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) =>
            Style6BottomNavBar(navBarConfig: navBarConfig),
        margin: const EdgeInsets.only(bottom: 6),
      ),
    );
  }
}
