import 'package:crypto_api/features/splash/presentation/page/splash_screen.dart';
import 'package:crypto_api/src/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends Page<void> {
  SplashPage({
    GoRouterState? state,
  }) : super(
    key: state?.pageKey,
    name: state?.name ?? state?.path,
    restorationId: state?.pageKey.value,
  );

  static void go(BuildContext context) {
    context.goNamed(
      Routes.splash,
    );
  }

  @override
  Route<void> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (_) {
        return const SplashScreen();
      },
    );
  }
}
