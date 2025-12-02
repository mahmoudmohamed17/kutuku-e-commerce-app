import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildShimmer({required Size size, required BoxDecoration decoration}) {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[200]!,
    child: Container(
      height: size.height,
      width: size.width,
      decoration: decoration,
    ),
  );
}
