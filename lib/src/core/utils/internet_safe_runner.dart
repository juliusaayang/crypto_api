import 'package:crypto_api/src/core/errors/crypto_exception.dart';
import 'package:crypto_api/src/core/network/network_info.dart';

class InternetSafeRunner {
  InternetSafeRunner(this.networkInfo);

  final NetworkInfo networkInfo;

  Future<T> call<T>({required Future<T> Function() safeCallback}) async {
    if (await networkInfo.isConnected) {
      return safeCallback();
    } else {
      throw const CryptoException.noInternet();
    }
  }
}
