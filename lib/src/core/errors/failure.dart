import 'package:crypto_api/src/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// A failure is an interface that is used to represent a
///  failure in the domain layer.
@freezed
class Failure with _$Failure {
  /// [ Failure.serverError] is a failure that is used to represent failure/error from server
  const factory Failure.serverError({
    String? message,
    Object? exception,
  }) = _$ServerFailure;

  /// [ Failure.serverError] is a failure that is used to represent failure/error from server
  const factory Failure.expiredToken({
    String? message,
    Object? exception,
  }) = _$ExpiredTokenFailure;

  /// [ Failure.noInternet] is a failure that is used to represent failure/error from no internet
  const factory Failure.noInternet() = _$NoInternetFailure;

  /// [Failure.unknown()] is a failure that is used to represent failure/error from unknown source
  const factory Failure.unknown({
    Object? exception,
  }) = _$UnknownFailure;

  /// [ Failure.connectionTimeOut ] is a failure that is used to represent time out errors
  const factory Failure.connectionTimeOut({
    Object? exception,
  }) = _$ConnectionTimeOutFailure;
}

///[_ConvertFailureToString] is a helper class that
/// converts a failure to a string
class _ConvertFailureToString {
  /// [call] converts a failure to a string

  String? call(Failure failure, BuildContext context) {
    return failure.map(
      serverError: (failure) => failure.message,
      noInternet: (failure) => context.l10n.errorInternetConnection,
      unknown: (failure) => context.l10n.errorUnknown,
      expiredToken: (value) => context.l10n.errorExpiredToken,
      connectionTimeOut: (value) => context.l10n.errorTimeOut,
    );
  }
}

extension FailureX on Failure {
  /// [toMessage] converts a failure to a string
  String? toMessage(BuildContext context) {
    return _ConvertFailureToString()(this, context);
  }
}
