import 'package:crypto_api/src/core/routing/go_router_builder.dart';
import 'package:crypto_api/src/l10n/l10n.dart';
import 'package:crypto_api/src/theme/crypto_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CryptoApp extends StatefulWidget {
  const CryptoApp({super.key});

  @override
  State<CryptoApp> createState() => _CryptoAppState();
}

class _CryptoAppState extends State<CryptoApp> {
  late final GoRouter goRouter;

  @override
  void initState() {
    super.initState();
    // final dioFactory = DioFactory(
    //   baseUrl: DirectCashEnv.baseUrl(),
    //   isFirebasePerformanceEnabled: FlavorConfig.instance.isFirebasePerformanceEnabled,
    // );
    // final dio = dioFactory.authenticated(
    //
    // );
    goRouter = const GoRouterBuilder().build();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedGoRouter(
      goRouter: goRouter,
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            restorationScopeId: 'crypto-api',
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: CryptoTheme.createDarkThemeData(),
            onGenerateTitle: (context) => context.l10n.appTitle,
            themeMode: ThemeMode.dark,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerDelegate: goRouter.routerDelegate,
            routeInformationParser: goRouter.routeInformationParser,
            routeInformationProvider: goRouter.routeInformationProvider,
          );
        },
      ),
    );
  }
}
