import 'package:another_flushbar/flushbar.dart';
import 'package:crypto_api/src/theme/colors.dart';
import 'package:crypto_api/src/theme/text_theme_extension.dart';
import 'package:flutter/material.dart';

class FlushBarNotification {
  static Future<dynamic> showErrorMessage({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(
      seconds: 4,
    ),
  }) {
    final flushBar = Flushbar<dynamic>(
      flushbarPosition: FlushbarPosition.TOP,
      messageText: Text(
        message,
        style: Theme.of(context).textTheme.bodySmall14Regular!.copyWith(
              color: CryptoColors.pureWhite,
            ),
      ),
      duration: duration,
      backgroundColor: CryptoColors.errorColor,
      borderRadius: BorderRadius.circular(4),
      flushbarStyle: FlushbarStyle.GROUNDED,
    );
    return flushBar.show(context);
  }

  static Future<dynamic> showSuccessMessage({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(
      seconds: 4,
    ),
    Widget? messageText,
  }) {
    return Flushbar<dynamic>(
      flushbarPosition: FlushbarPosition.TOP,
      message: message,
      messageText: messageText,
      messageColor: CryptoColors.pureWhite,
      duration: duration,
      backgroundColor: CryptoColors.successColor,
      borderRadius: BorderRadius.circular(4),
      flushbarStyle: FlushbarStyle.GROUNDED,
    ).show(context);
  }

  static dynamic showInfoMessage({
    required BuildContext context,
    required String message,
    String title = 'Information',
    Duration duration = const Duration(seconds: 4),
  }) {
    return Flushbar<dynamic>(
      flushbarPosition: FlushbarPosition.TOP,
      padding: const EdgeInsets.fromLTRB(20, 10, 5, 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      message: message,
      duration: duration,
      backgroundColor: CryptoColors.successColor,
      borderRadius: BorderRadius.circular(4),
    )..show(context);
  }
}
