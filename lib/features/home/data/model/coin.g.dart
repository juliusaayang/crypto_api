// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinImpl _$$CoinImplFromJson(Map<String, dynamic> json) => _$CoinImpl(
      id: (json['market_cap_rank'] as num).toInt(),
      coinId: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: json['current_price'] as num,
      dayChange: json['price_change_percentage_24h'] as num,
      marketCap: json['market_cap'] as num,
      circulatingSupply: json['circulating_supply'] as num,
      high24Hours: json['high_24h'] as num,
      low24Hours: json['low_24h'] as num,
      totalVolume: json['total_volume'] as num?,
      totalSupply: json['total_supply'] as num?,
    );

Map<String, dynamic> _$$CoinImplToJson(_$CoinImpl instance) =>
    <String, dynamic>{
      'market_cap_rank': instance.id,
      'id': instance.coinId,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'price_change_percentage_24h': instance.dayChange,
      'market_cap': instance.marketCap,
      'circulating_supply': instance.circulatingSupply,
      'high_24h': instance.high24Hours,
      'low_24h': instance.low24Hours,
      'total_volume': instance.totalVolume,
      'total_supply': instance.totalSupply,
    };
