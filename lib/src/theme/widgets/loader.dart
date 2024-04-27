import 'package:crypto_api/src/theme/widgets/custom_circular_progress_bar.dart';
import 'package:flutter/material.dart';

class ThirdPartyLoader extends StatelessWidget {
  const ThirdPartyLoader({
    super.key,
    this.color,
    this.size,
    this.strokeWidth,
  });

  final Color? color;
  final double? size;
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 20,
      width: size ?? 20,
      child: CustomCircularProgressIndicator(
        color: color,
      ),
    );
  }
}
