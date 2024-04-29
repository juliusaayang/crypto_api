import 'package:crypto_api/features/home/data/model/coin.dart';
import 'package:crypto_api/features/home/presentation/page/description_screen.dart';
import 'package:crypto_api/src/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DescriptionPage extends Page<void> {
  DescriptionPage({
    required GoRouterState state,
  })  : coin = state.extra! as Coin,
        super(
          key: state.pageKey,
          name: state.name ?? state.path,
          restorationId: state.pageKey.value,
        );

  static void push(
    BuildContext context, {
    required Coin coin,
  }) {
    context.pushNamed(
      Routes.description,
      extra: coin,
    );
  }

  final Coin coin;

  @override
  Route<void> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (_) {
        return DescriptionScreen(
          coin: coin,
        );
      },
    );
  }
}
