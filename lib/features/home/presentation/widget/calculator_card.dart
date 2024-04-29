import 'package:cached_network_image/cached_network_image.dart';
import 'package:crypto_api/src/theme/colors.dart';
import 'package:crypto_api/src/theme/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CalculatorCard extends StatefulWidget {
  const CalculatorCard({
    required this.amount,
    required this.text,
    required this.onChanged,
    this.image,
    super.key,
  });
  final TextEditingController amount;
  final String text;
  final String? image;
  final void Function(String) onChanged;

  @override
  State<CalculatorCard> createState() => _CalculatorCardState();
}

class _CalculatorCardState extends State<CalculatorCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: CryptoColors.secondaryColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: widget.amount,
              onChanged: widget.onChanged,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                fillColor: Colors.transparent,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                if (widget.image != null)
                  CachedNetworkImage(
                    imageUrl: widget.image!,
                    height: 20,
                  ),
                const Gap(10),
                Text(
                  widget.text.toUpperCase(),
                  style: textTheme.bodySmall14Bold,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
