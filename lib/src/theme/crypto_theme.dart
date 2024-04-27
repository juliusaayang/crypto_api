import 'package:crypto_api/src/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoTheme {
  static ThemeData createDarkThemeData() {
    final theme = ThemeData.dark();
    final textTheme = theme.textTheme.copyWith(
      displayLarge: const TextStyle(
        fontFamily: Fonts.satoshi,
        fontSize: 48,
        fontWeight: FontWeight.w700,
        color: CryptoColors.textColor,
      ),
      displayMedium: const TextStyle(
        fontFamily: Fonts.satoshi,
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: CryptoColors.textColor,
      ),
      displaySmall: const TextStyle(
        fontFamily: Fonts.satoshi,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: CryptoColors.textColor,
      ),
      headlineMedium: const TextStyle(
        fontFamily: Fonts.satoshi,
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: CryptoColors.textColor,
      ),
      headlineSmall: const TextStyle(
        fontFamily: Fonts.satoshi,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: CryptoColors.textColor,
      ),
      titleLarge: const TextStyle(
        fontFamily: Fonts.satoshi,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: CryptoColors.textColor,
      ),
      labelLarge: const TextStyle(
        fontFamily: Fonts.satoshi,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: CryptoColors.textColor,
      ),
    );

    final appBarTitleTextStyle = textTheme.displaySmall!.copyWith(
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize: 20,
    );
    return theme.copyWith(
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: CryptoColors.backgroundColor ,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: appBarTitleTextStyle,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: CryptoColors.primaryColor,
        ),
        surfaceTintColor: Colors.transparent,
      ),
      primaryIconTheme: theme.iconTheme.copyWith(
        color: CryptoColors.primaryColor,
      ),
      bottomSheetTheme: theme.bottomSheetTheme.copyWith(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        backgroundColor: CryptoColors.primaryColor.withOpacity(0.4),
        modalBackgroundColor: const Color(0xFF21242D),
      ),
      bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
        selectedItemColor: CryptoColors.primaryColor,
        unselectedItemColor: CryptoColors.textColor,
        selectedLabelStyle: theme.textTheme.bodySmall14Bold?.copyWith(
          color: CryptoColors.primaryColor,
        ),
        unselectedLabelStyle: theme.textTheme.bodySmall14Bold?.copyWith(
          color: CryptoColors.pureWhite,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: textTheme.labelLarge,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(CryptoColors.primaryColor),
        checkColor: MaterialStateProperty.all(CryptoColors.pureWhite),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(color: CryptoColors.secondaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(color: CryptoColors.secondaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(color: CryptoColors.secondaryColor),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: CryptoColors.secondaryColor),
        ),
        filled: true,
        hintStyle: textTheme.inputFieldValue?.copyWith(
          color: CryptoColors.textColor,
        ),
      ),
      colorScheme: theme.colorScheme
          .copyWith(
            primary: CryptoColors.primaryColor,
            secondary: CryptoColors.secondaryColor,
          )
          .copyWith(
            background: CryptoColors.secondaryColor,
          ),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: Colors.transparent,
      ),
    );
  }
}
