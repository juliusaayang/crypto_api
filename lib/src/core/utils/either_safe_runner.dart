import 'dart:async';
import 'dart:io';

import 'package:crypto_api/src/core/constants/keys.dart';
import 'package:crypto_api/src/core/errors/crypto_exception.dart';
import 'package:crypto_api/src/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class EitherSafeRunner {
  Future<Either<Failure, T>> call<T>({
    required Future<T> Function() safeCallback,
  }) async {
    try {
      return Right(await safeCallback());
    } catch (e, stackTrace) {
      Logger().e('EitherSafeRunner', error: e, stackTrace: stackTrace);
      if (e is CryptoException) {
        final failure = e.when(
          server: (message, exception) => Failure.serverError(
            message: message,
            exception: exception,
          ),
          noInternet: () => const Failure.noInternet(),
          unknown: (exception) => Failure.unknown(exception: exception),
        );
        return Left(failure);
      } else if (e is DioException) {
        if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.receiveTimeout ||
            e.type == DioExceptionType.sendTimeout ||
            e.type == DioExceptionType.connectionError) {
          return const Left(
            Failure.connectionTimeOut(),
          );
        } else if (e.response!.statusCode == HttpStatus.unauthorized) {
          final context = Keys.navigatorKey.currentState!.context;
        }
        if (e.response!.statusCode! >= HttpStatus.badRequest && e.response!.statusCode! < HttpStatus.internalServerError) {
          final data = e.response?.data as Map<String, dynamic>?;
          return Left(
            Failure.serverError(
              message: data?['message'] as String? ?? e.message,
            ),
          );
        } else if (e.response?.statusCode == HttpStatus.unauthorized || e.response?.statusCode == HttpStatus.forbidden) {
          return const Left(
            Failure.expiredToken(),
          );
        } else {
          return const Left(Failure.serverError());
        }
      } else {
        return Left(Failure.unknown(exception: e));
      }
    }
  }
}
