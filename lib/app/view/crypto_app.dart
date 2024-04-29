import 'package:crypto_api/features/home/data/data_source/home_api_client.dart';
import 'package:crypto_api/features/home/data/data_source/home_remote_data_source.dart';
import 'package:crypto_api/features/home/data/repository/home_repository_impl.dart';
import 'package:crypto_api/features/home/domain/repository/home_repository.dart';
import 'package:crypto_api/src/core/constants/base_url.dart';
import 'package:crypto_api/src/core/network/dio_factory.dart';
import 'package:crypto_api/src/core/network/network_info.dart';
import 'package:crypto_api/src/core/routing/go_router_builder.dart';
import 'package:crypto_api/src/di/di.dart';
import 'package:crypto_api/src/l10n/l10n.dart';
import 'package:crypto_api/src/theme/crypto_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CryptoApp extends StatefulWidget {
  const CryptoApp({super.key});

  @override
  State<CryptoApp> createState() => _CryptoAppState();
}

class _CryptoAppState extends State<CryptoApp> {
  late final GoRouter goRouter;

  late final HomeApiClient homeApiClient;

  @override
  void initState() {
    super.initState();
    const dioFactory = DioFactory(
      baseUrl: BaseUrl.url,
    );
    final dio = dioFactory.authenticated();
    homeApiClient = HomeApiClient(dio);

    goRouter = const GoRouterBuilder().build();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<HomeRemoteDataSource>(
      create: (context) => HomeRemoteDataSourceImpl(
        networkInfo: sl<NetworkInfo>(),
        homeApiClient: homeApiClient,
      ),
      child: RepositoryProvider<HomeRepository>(
        create: (context) => HomeRepositoryImpl(
          homeRemoteDataSource: context.read<HomeRemoteDataSource>(),
        ),
        child: InheritedGoRouter(
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
        ),
      ),
    );
  }
}
