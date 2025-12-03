import 'package:e_commerce_app/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CategoryItemModel {
  final String title;
  final String subTitle;
  final String assetImage;
  final bool isAlignToLeft;
  final Color textColor;

  CategoryItemModel({
    required this.title,
    required this.subTitle,
    required this.assetImage,
    required this.textColor,
    this.isAlignToLeft = true,
  });
}

final List<CategoryItemModel> categories = [
  CategoryItemModel(
    title: 'New Arrivals',
    subTitle: '280 products',
    assetImage: AppAssets.category1,
    textColor: Colors.black,
  ),
  CategoryItemModel(
    title: 'Clothes',
    subTitle: '338 products',
    assetImage: AppAssets.category2,
    isAlignToLeft: false,
    textColor: Colors.black,
  ),
  CategoryItemModel(
    title: 'Bags',
    subTitle: '160 products',
    assetImage: AppAssets.category3,
    textColor: Colors.white,
  ),
  CategoryItemModel(
    title: 'Shoes',
    subTitle: '210 products',
    assetImage: AppAssets.category4,
    textColor: Colors.black,
  ),
  CategoryItemModel(
    title: 'Electronics',
    subTitle: '110 products',
    assetImage: AppAssets.category5,
    textColor: Colors.white,
  ),
];
