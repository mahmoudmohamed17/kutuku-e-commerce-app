import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/di/dependency_injection.dart';
import 'package:e_commerce_app/core/utilities/extensions.dart';
import 'package:e_commerce_app/features/home/managers/home_cubit/home_cubit.dart';
import 'package:e_commerce_app/features/home/ui/category_tab_content.dart';
import 'package:e_commerce_app/features/home/ui/home_app_bar.dart';
import 'package:e_commerce_app/features/home/ui/home_tab_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomeCubit>(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppBar(),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Home'),
              Tab(text: 'Category'),
            ],
            indicatorColor: AppColors.primary,
            indicatorWeight: 1.0,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: AppColors.secondary,
            dividerColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            splashBorderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          16.h,
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                HomeTabContent(),
                CategoryTabContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
