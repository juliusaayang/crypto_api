import 'package:crypto_api/src/di/di.dart';
import 'package:crypto_api/src/flavor/flavor.dart';
import 'package:crypto_api/src/main.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  return commonMain(Flavor.dev);
}
