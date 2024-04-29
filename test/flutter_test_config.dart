import 'dart:async';
import 'dart:io';

import 'package:crypto_api/src/core/utils/date_factory.dart';
import 'package:crypto_api/src/flavor/flavor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:visibility_detector/visibility_detector.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      WidgetController.hitTestWarningShouldBeFatal = true;
      DateTimeFactory.nowOverride = DateTime(2022, 04, 01, 12);

      VisibilityDetectorController.instance.updateInterval = Duration.zero;
      FlavorUtil.init(Flavor.dev);
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(
      defaultDevices: const [
        Device.phone,
        Device.iphone11,
      ],
      enableRealShadows: true,
      skipGoldenAssertion: () => !Platform.isMacOS,
      primeAssets: legacyPrimeAssets,
    ),
  );
}
