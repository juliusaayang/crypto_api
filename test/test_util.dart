import 'package:crypto_api/features/home/data/model/coin.dart';
import 'package:crypto_api/features/home/domain/repository/home_repository.dart';
import 'package:crypto_api/features/home/presentation/manager/get_coins_cubit.dart';
import 'package:crypto_api/features/home/presentation/manager/get_coins_state.dart';
import 'package:crypto_api/src/core/routing/routing.dart';
import 'package:crypto_api/src/l10n/l10n.dart';
import 'package:crypto_api/src/theme/crypto_theme.dart';
import 'package:crypto_api/src/theme/safe_image_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart' as golden_toolkit;
import 'package:mocktail/mocktail.dart';
import 'package:recase/recase.dart';
import 'package:test_api/src/backend/invoker.dart';

import 'file_asset_bundle.dart';

extension GoldenTestExtension on WidgetTester {
  Future<void> pumpCryptoWidget(
    Widget widget, {
    golden_toolkit.WidgetWrapper? wrapper,
    Size surfaceSize = const Size(800, 600),
    double textScaleSize = 1.0,
    String? selectedRouteName,
  }) async {
    final goRouter = GoRouter(routes: []);
    if (selectedRouteName != null) {
      await goRouter.routerDelegate.setNewRoutePath(
        RouteMatchList(
          matches: [
            _MockRouteMatch(
              route: GoRoute(
                path: '/',
                name: selectedRouteName,
                builder: (_, __) => const SizedBox(),
              ),
            ),
          ],
          uri: Uri(),
          pathParameters: const {},
        ),
      );
    }

    return pumpWidgetBuilder(
      DefaultAssetBundle(
        bundle: FileAssetBundle(),
        child: SafeImageConfiguration(
          data: SafeImageConfigurationData(
            shouldLoadAsAsset: (url) {
              if (url.startsWith(SafeImageConfigurationData.assetsPrefix) || url.startsWith(FileAssetBundle.testPrefix)) {
                return url;
              } else {
                return null;
              }
            },
            shouldLoadImageIdAsAsset: (imageId) => imageId.startsWith(FileAssetBundle.testPrefix),
          ),
          child: InheritedGoRouter(
            goRouter: goRouter,
            child: MultiRepositoryProvider(
              providers: [
                RepositoryProvider<HomeRepository>(
                  create: (_) => _MockHomeRepository(),
                ),
              ],
              child: Builder(
                builder: (context) {
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider<GetCoinsCubit>(
                        create: (_) => GetCoinsCubit(
                          homeRepository: context.read<HomeRepository>(),
                          initialState: GetCoinsState.loaded(
                            coins: List.generate(
                              5,
                              (index) => const Coin(
                                id: 1,
                                coinId: 'bitcoin',
                                symbol: 'BTC',
                                name: 'Bitcoin',
                                image: '',
                                currentPrice: 20000000,
                                dayChange: 3,
                                marketCap: 20000000000,
                                circulatingSupply: 190000000,
                                high24Hours: 21000000,
                                low24Hours: 20000000,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    child: widget,
                  );
                },
              ),
            ),
          ),
        ),
      ),
      wrapper: golden_toolkit.materialAppWrapper(
        localizations: AppLocalizations.localizationsDelegates,
        theme: CryptoTheme.createDarkThemeData(),
      ),
      surfaceSize: surfaceSize,
    );
  }

  Future<void> multiScreenGolden({
    String? name,
    Finder? finder,
    bool? autoHeight,
    double? overrideGoldenHeight,
    golden_toolkit.CustomPump? customPump,
    golden_toolkit.DeviceSetup? deviceSetup,
    List<golden_toolkit.Device>? devices,
  }) {
    final testName = Invoker.current!.liveTest.test.name;
    final generatedName = testName.snakeCase;
    return golden_toolkit.multiScreenGolden(
      this,
      name ?? generatedName,
      finder: finder,
      autoHeight: autoHeight,
      overrideGoldenHeight: overrideGoldenHeight,
      customPump: customPump,
      deviceSetup: deviceSetup,
      devices: devices,
    );
  }

  Future<void> screenMatchesGolden({
    String? name,
    Finder? finder,
    bool? autoHeight,
    golden_toolkit.CustomPump? customPump,
  }) async {
    final testName = Invoker.current!.liveTest.test.name;
    final generatedName = testName.snakeCase;
    return golden_toolkit.screenMatchesGolden(
      this,
      name ?? generatedName,
      autoHeight: autoHeight,
      finder: finder,
      customPump: customPump,
    );
  }

  Future<void> dragVerticallyUntilVisible(Finder finder, Finder view) {
    return dragUntilVisible(finder, view, const Offset(0, -500));
  }

  Future<void> tapAndSettle(
    Finder finder,
  ) async {
    await tap(finder);
    await pumpAndSettle();
  }
}

void whenBloc<State>(
  BlocBase<State> bloc,
  Stream<State> stream, {
  State? initialState,
}) {
  final broadcastStream = stream.asBroadcastStream();

  if (initialState != null) {
    when(() => bloc.state).thenReturn(initialState);
  }

  when(() => bloc.stream).thenAnswer(
    (_) => broadcastStream.map((state) {
      when(() => bloc.state).thenReturn(state);
      return state;
    }),
  );

  when(() => bloc.close()).thenAnswer((invocation) => Future.value());
}

class _MockRouteMatch extends RouteMatch {
  const _MockRouteMatch({
    required super.route,
  }) : super(
          matchedLocation: '',
          pageKey: const ValueKey(''),
        );
}

class _MockHomeRepository extends Mock implements HomeRepository {}
