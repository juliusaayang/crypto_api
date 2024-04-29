import 'package:crypto_api/features/home/presentation/page/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../test_util.dart';

void main() {
  group('home screen', () {
    testGoldens(
      'initial',
      (tester) async {
        // when
        await tester.pumpHomeScreen();
        // then
        await tester.multiScreenGolden(
          autoHeight: true,
        );
      },
    );
  });
}

extension on WidgetTester {
  Future<void> pumpHomeScreen() async {
    return pumpCryptoWidget(
      const HomeScreen(),
    );
  }
}
