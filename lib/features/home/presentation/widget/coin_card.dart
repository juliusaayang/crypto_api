import 'package:cached_network_image/cached_network_image.dart';
import 'package:crypto_api/features/home/data/model/coin.dart';
import 'package:crypto_api/features/home/presentation/page/description_page.dart';
import 'package:crypto_api/src/developer/developer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class CoinCard extends StatelessWidget {
  const CoinCard({
    required this.coin,
    super.key,
  });
  final Coin coin;

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('#,##,000');
    final colorChange = coin.dayChange.toString()[0] == '-';
    final price = coin.currentPrice > 1000;
    return InkWell(
      onTap: () {
        DescriptionPage.push(
          context,
          coin: coin,
        );
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          10,
          2,
          10,
          5,
        ),
        decoration: const BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Color.fromARGB(255, 243, 239, 239),
              width: 0.1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    coin.id.toString(),
                  ),
                  Column(
                    children: [
                      if (!TestUtil.isTest)
                        SizedBox(
                          height: 30,
                          width: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CachedNetworkImage(
                              imageUrl: coin.image,
                            ),
                          ),
                        ),
                      Text(
                        coin.symbol.toUpperCase(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(10),
            Text(
              price ? '\$${formatter.format(coin.currentPrice)}' : '\$${coin.currentPrice}',
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  colorChange ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                  color: colorChange ? Colors.red : Colors.green,
                ),
                Text(
                  colorChange ? coin.dayChange.toStringAsFixed(1).substring(1) : coin.dayChange.toStringAsFixed(1),
                  style: TextStyle(
                    color: colorChange ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
            const Gap(10),
            Text(
              '\$${formatter.format(coin.marketCap)}',
            ),
          ],
        ),
      ),
    );
  }
}
