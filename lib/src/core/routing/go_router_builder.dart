import 'package:crypto_api/features/home/presentation/page/description_page.dart';
import 'package:crypto_api/features/home/presentation/page/home_page.dart';
import 'package:crypto_api/src/core/constants/keys.dart';
import 'package:crypto_api/src/core/routing/routing.dart';
import 'package:flutter/foundation.dart';

class GoRouterBuilder {
  const GoRouterBuilder();

  GoRouter build() {
    late GoRouter goRouter;
    return goRouter = GoRouter(
      debugLogDiagnostics: kDebugMode,
      initialLocation: Paths.home,
      navigatorKey: Keys.navigatorKey,
      observers: [
        MultiNavigatorObserver(),
      ],
      redirect: (_, state) {
        return null;
      },
      routes: [
        GoRoute(
          path: Paths.home,
          name: Routes.home,
          pageBuilder: (context, state) {
            return HomePage(state: state);
          },
          routes: [
            GoRoute(
              path: Paths.description,
              name: Routes.description,
              pageBuilder: (context, state) {
                return DescriptionPage(state: state);
              },
            ),
          ],
        ),
      ],
    );
  }
}
