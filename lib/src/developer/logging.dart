import 'package:crypto_api/src/flavor/flavor.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class Logging {
  const Logging._();
  static Logger logger<T>() {
    return Logger(T.toString());
  }

  static void init() {
    Logger.root.level = FlavorConfig.instance.logging ? Level.ALL : Level.OFF;
    Logger.root.onRecord.listen((record) {
      debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    });
  }
}
