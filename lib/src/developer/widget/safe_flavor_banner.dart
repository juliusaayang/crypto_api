import 'package:crypto_api/src/flavor/flavor.dart';
import 'package:flutter/material.dart';

class SafeFlavorBanner extends StatelessWidget {
  const SafeFlavorBanner({
    required this.child, super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FlavorConfig.instance.isFlavorBannerEnabled
        ? FlavorBanner(
            child: child,
          )
        : child;
  }
}
