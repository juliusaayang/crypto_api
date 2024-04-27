import 'package:crypto_api/src/theme/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CryptoColors.backgroundColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [

        ],
      ),
    );
  }
}
