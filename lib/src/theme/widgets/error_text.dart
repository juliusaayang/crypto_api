import 'package:crypto_api/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ErrorText extends StatelessWidget {

  const ErrorText({
    super.key,
    this.text,
    this.space = 5,
  });
  final String? text;
  final double space;

  @override
  Widget build(BuildContext context) {
    if (text != null && text!.isNotEmpty) {
      return Column(
        children: [
          Gap(space),
          Text(
            text!,
            style: Theme.of(context).textTheme.smallButton?.copyWith(color: CryptoColors.errorColor),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
