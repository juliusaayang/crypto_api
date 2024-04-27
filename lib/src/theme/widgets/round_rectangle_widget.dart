import 'package:flutter/material.dart';

class RoundRectangleWidget extends StatelessWidget {

  const RoundRectangleWidget({ required this.rectangleColor, required this.borderColor, required this.child, super.key,
    this.height,
 });

  final double? height;
  final Color rectangleColor;
  final Color borderColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: rectangleColor,
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: child,
    );
  }
}
