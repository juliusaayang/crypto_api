import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_client.g.dart';

@RestApi()
abstract class HomeApiClient {
  factory HomeApiClient(Dio dio) = _HomeApiClient;

  @GET('/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false')
  Future<HttpResponse<dynamic>> getCoins();
}
