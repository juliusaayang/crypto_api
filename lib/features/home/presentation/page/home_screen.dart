import 'package:crypto_api/features/home/presentation/manager/get_coins_cubit.dart';
import 'package:crypto_api/features/home/presentation/manager/get_coins_state.dart';
import 'package:crypto_api/features/home/presentation/widget/coin_card.dart';
import 'package:crypto_api/src/l10n/l10n.dart';
import 'package:crypto_api/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CryptoColors.backgroundColor,
        elevation: 5,
        title: Text(
          context.l10n.homeTitle,
        ),
      ),
      body: BlocBuilder<GetCoinsCubit, GetCoinsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const Center(
              child: ThirdPartyLoader(),
            ),
            loaded: (coins) {
              return RefreshIndicator(
                color: Colors.grey,
                onRefresh: () {
                  return context.read<GetCoinsCubit>().getCoins();
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '#',
                                style: headingStyle(),
                              ),
                              const Gap(10),
                              Text(
                                context.l10n.home1,
                                style: headingStyle(),
                              ),
                            ],
                          ),
                          Text(
                            context.l10n.home2,
                            style: headingStyle(),
                          ),
                          Text(
                            context.l10n.home3,
                            style: headingStyle(),
                          ),
                          Text(
                            context.l10n.home4,
                            style: headingStyle(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: coins.length,
                        itemBuilder: (context, index) {
                          final coin = coins[index];
                          return CoinCard(
                            coin: coin,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  TextStyle headingStyle() {
    return Theme.of(context).textTheme.bodyNormal16Regular!.copyWith(
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        );
  }
}
