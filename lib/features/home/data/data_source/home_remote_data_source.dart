import 'package:crypto_api/features/home/data/data_source/home_api_client.dart';
import 'package:crypto_api/features/home/data/model/coin.dart';
import 'package:crypto_api/src/core/network/network_info.dart';
import 'package:crypto_api/src/core/utils/internet_safe_runner.dart';

abstract class HomeRemoteDataSource {
  Future<List<Coin>> getCoins();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({
    required this.networkInfo,
    required this.homeApiClient,
  }) {
    internetSafeRunner = InternetSafeRunner(networkInfo);
  }
  final NetworkInfo networkInfo;
  final HomeApiClient homeApiClient;

  late final InternetSafeRunner internetSafeRunner;

  @override
  Future<List<Coin>> getCoins() {
    return internetSafeRunner(
      safeCallback: () async {
        final response = await homeApiClient.getCoins();
        final apiList = (response.response.data as List<dynamic>)
            .map(
              (e) => Coin.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList();
        return apiList;
      },
    );
  }
}
