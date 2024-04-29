import 'package:crypto_api/features/home/domain/repository/home_repository.dart';
import 'package:crypto_api/features/home/presentation/manager/get_coins_cubit.dart';
import 'package:crypto_api/features/home/presentation/page/home_screen.dart';
import 'package:crypto_api/src/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends Page<void> {
  HomePage({
    GoRouterState? state,
  }) : super(
          key: state?.pageKey,
          name: state?.name ?? state?.path,
          restorationId: state?.pageKey.value,
        );

  static void go(BuildContext context) {
    context.goNamed(
      Routes.home,
    );
  }

  @override
  Route<void> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (_) {
        return BlocProvider(
          create: (context) => GetCoinsCubit(
            homeRepository: context.read<HomeRepository>(),
          ),
          child: const HomeScreen(),
        );
      },
    );
  }
}
