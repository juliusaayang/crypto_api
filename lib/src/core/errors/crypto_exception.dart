import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_exception.freezed.dart';

/// [CryptoException] is thrown when there is a server error.
@freezed
class CryptoException with _$CryptoException implements Exception {
  /// [CryptoException.server] is thrown when there is a server error.
  const factory CryptoException.server({
    String? message,
    Exception? exception,
  }) = _$CryptoServerException;

  /// [CryptoException.noInternet] is thrown when there
  /// is no internet connection.
  const factory CryptoException.noInternet() = _$CryptoInternetException;

  /// [CryptoException.unknown] is thrown when there is an unknown error.
  const factory CryptoException.unknown({
    Exception? exception,
  }) = _$CryptoUnknownException;
}
