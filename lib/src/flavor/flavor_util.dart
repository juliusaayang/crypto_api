import 'dart:ui';

import 'package:crypto_api/src/flavor/flavor.dart';
import 'package:crypto_api/src/theme/colors.dart';
import 'package:flutter/foundation.dart';

class FlavorUtil {
  const FlavorUtil._();

  static void init(Flavor flavor) {
    switch (flavor) {
      case Flavor.dev:
        FlavorConfig(
          name: flavor.name,
          color: const Color.fromRGBO(223, 93, 68, 1),
          variables: <String, dynamic>{
            'isDeveloper': true,
            'isFlavorBannerEnabled': true,
            'logging': true,
            'crashlytics': false,
            'isFirebasePerformanceEnabled': !kDebugMode,
            'tracking': false,
          },
        );
      case Flavor.stg:
        FlavorConfig(
          name: flavor.name,
          color: const Color.fromRGBO(223, 93, 68, 1),
          variables: <String, dynamic>{
            'isDeveloper': true,
            'isFlavorBannerEnabled': true,
            'logging': true,
            'crashlytics': true,
            'isFirebasePerformanceEnabled': !kDebugMode,
            'tracking': true,
          },
        );
      case Flavor.prod:
        FlavorConfig(
          name: flavor.name,
          color: CryptoColors.primaryColor,
          variables: <String, dynamic>{
            'isDeveloper': false,
            'isFlavorBannerEnabled': kDebugMode,
            'logging': kDebugMode,
            'crashlytics': true,
            'isFirebasePerformanceEnabled': !kDebugMode,
            'tracking': !kDebugMode,
          },
        );
    }
  }
}

extension FlavorConfigExtensions on FlavorConfig {
  bool get isDeveloper => variables['isDeveloper'] as bool;

  bool get isProduction => name == Flavor.prod.name && kReleaseMode;

  bool get isFlavorBannerEnabled => variables['isFlavorBannerEnabled'] as bool;

  bool get logging => variables['logging'] as bool;

  bool get crashlytics => variables['crashlytics'] as bool;

  bool get isFirebasePerformanceEnabled => variables['isFirebasePerformanceEnabled'] as bool;

  bool get tracking => variables['tracking'] as bool;

  bool get isDevelopment => name == Flavor.dev.name;
}
