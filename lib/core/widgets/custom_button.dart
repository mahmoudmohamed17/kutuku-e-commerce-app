import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.backgrnColor,
    this.borderRadius = 16,
    this.elevation = 0,
    this.contentPadding,
    this.borderSide,
    this.visualDensity,
  });
  final VoidCallback onPressed;
  final Widget label;
  final Widget? icon;
  final Color? backgrnColor;
  final double borderRadius;
  final double elevation;
  final EdgeInsetsGeometry? contentPadding;
  final BorderSide? borderSide;
  final VisualDensity? visualDensity;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: label,
      icon: icon,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgrnColor,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        elevation: elevation,
        padding: contentPadding,
        side: borderSide,
        visualDensity: visualDensity,
      ),
    );
  }
}
