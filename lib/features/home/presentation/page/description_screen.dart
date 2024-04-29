import 'package:cached_network_image/cached_network_image.dart';
import 'package:crypto_api/features/home/data/model/coin.dart';
import 'package:crypto_api/features/home/presentation/widget/calculator_card.dart';
import 'package:crypto_api/src/core/utils/amount_util.dart';
import 'package:crypto_api/src/l10n/l10n.dart';
import 'package:crypto_api/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({
    required this.coin,
    super.key,
  });
  final Coin coin;

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  final TextEditingController amount = TextEditingController(text: '1');
  final TextEditingController coinValue = TextEditingController(text: '0');

  @override
  void initState() {
    coinValue.text = widget.coin.currentPrice.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: CryptoColors.backgroundColor,
        elevation: 5,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CachedNetworkImage(
                imageUrl: widget.coin.image,
                height: 30,
              ),
            ),
            Text(
              widget.coin.name,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$${AmountUtil.formatAmount(widget.coin.currentPrice.toDouble())}',
              style: textTheme.headlineLarge!.copyWith(
                color: Colors.white,
              ),
            ),
            const Gap(20),
            Row(
              children: [
                Flexible(
                  child: CalculatorCard(
                    amount: amount,
                    text: widget.coin.symbol,
                    image: widget.coin.image,
                    onChanged: (value) {
                      coinValue.text = (double.parse(value) * widget.coin.currentPrice).toString();
                      setState(() {});
                    },
                  ),
                ),
                const Gap(20),
                Flexible(
                  child: CalculatorCard(
                    amount: coinValue,
                    text: context.l10n.usdText,
                    onChanged: (value) {
                      amount.text = (double.parse(value) / double.parse(amount.text)).toString();
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            const Gap(50),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: CryptoColors.secondaryColor,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Column(
                children: [
                  items(
                    key: context.l10n.des2,
                    value: '#${widget.coin.id}',
                  ),
                  items(
                    key: context.l10n.des1,
                    value: '\$${AmountUtil.formatAmount(
                      widget.coin.marketCap.toDouble(),
                    )}',
                  ),
                  items(
                    key: context.l10n.des3,
                    value: widget.coin.totalVolume == null
                        ? 'Null'
                        : '\$${AmountUtil.formatAmount(
                            widget.coin.totalVolume!.toDouble(),
                          )}',
                  ),
                  items(
                    key: context.l10n.des4,
                    value: '\$${AmountUtil.formatAmount(
                      widget.coin.high24Hours.toDouble(),
                    )}',
                  ),
                  items(
                    key: context.l10n.des5,
                    value: '\$${AmountUtil.formatAmount(
                      widget.coin.low24Hours.toDouble(),
                    )}',
                  ),
                  items(
                    key: context.l10n.des6,
                    value: AmountUtil.formatAmount(
                      widget.coin.circulatingSupply.toDouble(),
                    ),
                  ),
                  items(
                    key: context.l10n.des7,
                    value: widget.coin.totalSupply == null
                        ? 'Null'
                        : AmountUtil.formatAmount(
                            widget.coin.totalSupply!.toDouble(),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget items({
    required String key,
    required String value,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                key,
                style: textTheme.bodySmall14Regular,
              ),
              Text(
                value,
                style: textTheme.bodySmall14Bold,
              ),
            ],
          ),
          const Gap(4),
          const Divider(),
        ],
      ),
    );
  }
}
