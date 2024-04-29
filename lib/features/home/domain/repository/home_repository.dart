import 'package:crypto_api/features/home/data/model/coin.dart';
import 'package:crypto_api/src/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Coin>>> getCoins();
}
