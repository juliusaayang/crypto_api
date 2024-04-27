import 'package:crypto_api/features/splash/presentation/page/splash_page.dart';
import 'package:crypto_api/src/core/constants/keys.dart';
import 'package:crypto_api/src/core/routing/routing.dart';
import 'package:flutter/foundation.dart';

class GoRouterBuilder {
  const GoRouterBuilder();

  GoRouter build() {
    late GoRouter goRouter;
    return goRouter = GoRouter(
      debugLogDiagnostics: kDebugMode,
      initialLocation: Paths.splash,
      navigatorKey: Keys.navigatorKey,
      observers: [
        MultiNavigatorObserver(),
      ],
      redirect: (_, state) {
        return null;
      },
      routes: [
        GoRoute(
          path: Paths.splash,
          name: Routes.splash,
          pageBuilder: (context, state) {
            return SplashPage(state: state);
          },
        ),
      ],
    );
  }
}
