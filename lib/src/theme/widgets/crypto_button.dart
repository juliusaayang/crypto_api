import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_api/src/core/utils/ui_helper.dart';
import 'package:crypto_api/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// A button that shows a busy indicator in place of title
class DirectCashButton extends StatefulWidget {
  const DirectCashButton({
    required this.title,
    this.onPressed,
    this.isLoading = false,
    this.disabled = false,
    this.isSmall = false,
    this.color = CryptoColors.primaryColor,
    this.textColor = CryptoColors.neutralColor1,
    this.outline = false,
    this.icon,
    this.borderRadius = 13,
    this.loaderColor = Colors.white,
    this.height,
    this.buttonKey,
    this.width,
    this.frozen = false,
    super.key,
  });

  final bool isLoading;
  final String title;
  final VoidCallback? onPressed;
  final bool outline;
  final bool disabled;
  final Color color;
  final Color textColor;
  final bool isSmall;
  final String? icon;
  final double borderRadius;
  final Color loaderColor;
  final double? height;
  final Key? buttonKey;
  final double? width;
  final bool frozen;

  @override
  // ignore: library_private_types_in_public_api
  _DirectCashButtonState createState() => _DirectCashButtonState();
}

class _DirectCashButtonState extends State<DirectCashButton> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textColor = widget.outline ? CryptoColors.primaryColor : widget.textColor;
    final buttonTheme = textTheme.labelLarge?.copyWith(
      color: textColor,
    );
    final smallButtonTheme = textTheme.smallButton?.copyWith(
      color: textColor,
    );
    final height = widget.height ?? (widget.isSmall ? 36 : 48);
    return GestureDetector(
      key: widget.buttonKey,
      onTap: (widget.isLoading == false) && (widget.disabled == false) ? widget.onPressed : null,
      child: AnimatedContainer(
        height: height,
        width: widget.width,
        duration: const Duration(milliseconds: 300),
        alignment: Alignment.center,
        constraints: BoxConstraints(
          maxHeight: height,
          maxWidth: widget.width ?? UiHelper(context).screenSize.width,
        ),
        decoration: BoxDecoration(
          color: widget.outline
              ? Colors.transparent
              : widget.disabled
                  ? CryptoColors.primaryColor.withOpacity(0.3)
                  : widget.onPressed == null
                      ? CryptoColors.primaryColor.withOpacity(0.4)
                      : widget.color,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            width: 2,
            color: widget.outline
                ? widget.disabled
                    ? CryptoColors.textColor.withOpacity(0.3)
                    : widget.onPressed == null
                        ? CryptoColors.primaryColor.withOpacity(0.4)
                        : widget.color
                : Colors.transparent,
          ),
        ),
        child: !widget.isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: widget.isSmall ? MainAxisSize.min : MainAxisSize.max,
                children: [
                  if (widget.icon != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Image.asset(widget.icon!), const Gap(10)],
                    ),
                  SizedBox(
                    child: AutoSizeText(
                      widget.title,
                      minFontSize: 9,
                      style: widget.isSmall ? smallButtonTheme : buttonTheme,
                    ),
                  ),
                ],
              )
            : ThirdPartyLoader(
                color: widget.loaderColor,
              ),
      ),
    );
  }
}
