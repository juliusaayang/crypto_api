import 'package:crypto_api/features/home/data/data_source/home_remote_data_source.dart';
import 'package:crypto_api/features/home/data/model/coin.dart';
import 'package:crypto_api/features/home/domain/repository/home_repository.dart';
import 'package:crypto_api/src/core/errors/failure.dart';
import 'package:crypto_api/src/core/utils/either_safe_runner.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl({
    required this.homeRemoteDataSource,
  });
  final HomeRemoteDataSource homeRemoteDataSource;

  @override
  Future<Either<Failure, List<Coin>>> getCoins() {
    return EitherSafeRunner()(
      safeCallback: homeRemoteDataSource.getCoins,
    );
  }
}
