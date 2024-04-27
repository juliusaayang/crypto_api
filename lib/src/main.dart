import 'dart:async';

import 'package:crypto_api/app/app.dart';
import 'package:crypto_api/bootstrap.dart';
import 'package:crypto_api/src/core/network/dio_factory.dart';
import 'package:crypto_api/src/flavor/flavor.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

Future<void> commonMain(Flavor flavor) async {
  FlavorUtil.init(flavor);
  DioFactory.userAgentData = await userAgentData();
  await bootstrap(
    () => DevicePreview(
      enabled: flavor == Flavor.dev && kDebugMode,
      builder: (context) => const CryptoApp(),
    ),
  );
}
