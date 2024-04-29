import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin.freezed.dart';
part 'coin.g.dart';

@freezed
class Coin with _$Coin {
  const factory Coin({
    @JsonKey(name: 'market_cap_rank') required int id,
    @JsonKey(name: 'id') required String coinId,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price') required num currentPrice,
    @JsonKey(name: 'price_change_percentage_24h') required num dayChange,
    @JsonKey(name: 'market_cap') required num marketCap,
    @JsonKey(name: 'circulating_supply') required num circulatingSupply,
    @JsonKey(name: 'high_24h') required num high24Hours, @JsonKey(name: 'low_24h') required num low24Hours, @JsonKey(name: 'total_volume') num? totalVolume,
    @JsonKey(name: 'total_supply') num? totalSupply,
  }) = _Coin;

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  const Coin._();
}
