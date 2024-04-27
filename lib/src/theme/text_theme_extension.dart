import 'package:crypto_api/src/theme/theme.dart';
import 'package:flutter/material.dart';

extension TextThemeExtension on TextTheme {
  TextStyle? get subHeading {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: CryptoColors.textColor,
    );
  }

  TextStyle? get bodyNormal16Regular {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: CryptoColors.textColor,
    );
  }

  TextStyle? get smallButton {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: CryptoColors.textColor,
    );
  }

  TextStyle? get bodySmall14Regular {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: CryptoColors.textColor,
    );
  }

  TextStyle? get bodySmall14Bold {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: CryptoColors.textColor,
    );
  }

  TextStyle? get bodySmaller12Regular {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: CryptoColors.textColor,
    );
  }

  TextStyle? get bodySmaller12Medium {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: CryptoColors.textColor,
    );
  }

  TextStyle? get bodySmaller10Regular {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: CryptoColors.textColor,
    );
  }

  TextStyle? get inputFieldLabel {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: CryptoColors.primaryColor,
    );
  }

  TextStyle? get inputFieldPassword {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: CryptoColors.primaryColor,
    );
  }

  TextStyle? get inputFieldValue => bodySmall14Regular;

  TextStyle? get inputFieldHints {
    return const TextStyle(
      fontFamily: Fonts.satoshi,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: CryptoColors.primaryColor,
    );
  }
}
