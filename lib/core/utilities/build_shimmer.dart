import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildShimmer({
  double borderRadius = 16,
  double height = 100,
  double width = 100,
}) {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[200]!,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        color: Colors.grey.shade400,
      ),
    ),
  );
}
