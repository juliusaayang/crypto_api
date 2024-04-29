// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Coin _$CoinFromJson(Map<String, dynamic> json) {
  return _Coin.fromJson(json);
}

/// @nodoc
mixin _$Coin {
  @JsonKey(name: 'market_cap_rank')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get coinId => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  num get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  num get dayChange => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap')
  num get marketCap => throw _privateConstructorUsedError;
  @JsonKey(name: 'circulating_supply')
  num get circulatingSupply => throw _privateConstructorUsedError;
  @JsonKey(name: 'high_24h')
  num get high24Hours => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_24h')
  num get low24Hours => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_volume')
  num? get totalVolume => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_supply')
  num? get totalSupply => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinCopyWith<Coin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCopyWith<$Res> {
  factory $CoinCopyWith(Coin value, $Res Function(Coin) then) =
      _$CoinCopyWithImpl<$Res, Coin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'market_cap_rank') int id,
      @JsonKey(name: 'id') String coinId,
      String symbol,
      String name,
      String image,
      @JsonKey(name: 'current_price') num currentPrice,
      @JsonKey(name: 'price_change_percentage_24h') num dayChange,
      @JsonKey(name: 'market_cap') num marketCap,
      @JsonKey(name: 'circulating_supply') num circulatingSupply,
      @JsonKey(name: 'high_24h') num high24Hours,
      @JsonKey(name: 'low_24h') num low24Hours,
      @JsonKey(name: 'total_volume') num? totalVolume,
      @JsonKey(name: 'total_supply') num? totalSupply});
}

/// @nodoc
class _$CoinCopyWithImpl<$Res, $Val extends Coin>
    implements $CoinCopyWith<$Res> {
  _$CoinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coinId = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? dayChange = null,
    Object? marketCap = null,
    Object? circulatingSupply = null,
    Object? high24Hours = null,
    Object? low24Hours = null,
    Object? totalVolume = freezed,
    Object? totalSupply = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      coinId: null == coinId
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num,
      dayChange: null == dayChange
          ? _value.dayChange
          : dayChange // ignore: cast_nullable_to_non_nullable
              as num,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as num,
      circulatingSupply: null == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as num,
      high24Hours: null == high24Hours
          ? _value.high24Hours
          : high24Hours // ignore: cast_nullable_to_non_nullable
              as num,
      low24Hours: null == low24Hours
          ? _value.low24Hours
          : low24Hours // ignore: cast_nullable_to_non_nullable
              as num,
      totalVolume: freezed == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as num?,
      totalSupply: freezed == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinImplCopyWith<$Res> implements $CoinCopyWith<$Res> {
  factory _$$CoinImplCopyWith(
          _$CoinImpl value, $Res Function(_$CoinImpl) then) =
      __$$CoinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'market_cap_rank') int id,
      @JsonKey(name: 'id') String coinId,
      String symbol,
      String name,
      String image,
      @JsonKey(name: 'current_price') num currentPrice,
      @JsonKey(name: 'price_change_percentage_24h') num dayChange,
      @JsonKey(name: 'market_cap') num marketCap,
      @JsonKey(name: 'circulating_supply') num circulatingSupply,
      @JsonKey(name: 'high_24h') num high24Hours,
      @JsonKey(name: 'low_24h') num low24Hours,
      @JsonKey(name: 'total_volume') num? totalVolume,
      @JsonKey(name: 'total_supply') num? totalSupply});
}

/// @nodoc
class __$$CoinImplCopyWithImpl<$Res>
    extends _$CoinCopyWithImpl<$Res, _$CoinImpl>
    implements _$$CoinImplCopyWith<$Res> {
  __$$CoinImplCopyWithImpl(_$CoinImpl _value, $Res Function(_$CoinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coinId = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? dayChange = null,
    Object? marketCap = null,
    Object? circulatingSupply = null,
    Object? high24Hours = null,
    Object? low24Hours = null,
    Object? totalVolume = freezed,
    Object? totalSupply = freezed,
  }) {
    return _then(_$CoinImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      coinId: null == coinId
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as num,
      dayChange: null == dayChange
          ? _value.dayChange
          : dayChange // ignore: cast_nullable_to_non_nullable
              as num,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as num,
      circulatingSupply: null == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as num,
      high24Hours: null == high24Hours
          ? _value.high24Hours
          : high24Hours // ignore: cast_nullable_to_non_nullable
              as num,
      low24Hours: null == low24Hours
          ? _value.low24Hours
          : low24Hours // ignore: cast_nullable_to_non_nullable
              as num,
      totalVolume: freezed == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as num?,
      totalSupply: freezed == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinImpl extends _Coin {
  const _$CoinImpl(
      {@JsonKey(name: 'market_cap_rank') required this.id,
      @JsonKey(name: 'id') required this.coinId,
      required this.symbol,
      required this.name,
      required this.image,
      @JsonKey(name: 'current_price') required this.currentPrice,
      @JsonKey(name: 'price_change_percentage_24h') required this.dayChange,
      @JsonKey(name: 'market_cap') required this.marketCap,
      @JsonKey(name: 'circulating_supply') required this.circulatingSupply,
      @JsonKey(name: 'high_24h') required this.high24Hours,
      @JsonKey(name: 'low_24h') required this.low24Hours,
      @JsonKey(name: 'total_volume') this.totalVolume,
      @JsonKey(name: 'total_supply') this.totalSupply})
      : super._();

  factory _$CoinImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinImplFromJson(json);

  @override
  @JsonKey(name: 'market_cap_rank')
  final int id;
  @override
  @JsonKey(name: 'id')
  final String coinId;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey(name: 'current_price')
  final num currentPrice;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  final num dayChange;
  @override
  @JsonKey(name: 'market_cap')
  final num marketCap;
  @override
  @JsonKey(name: 'circulating_supply')
  final num circulatingSupply;
  @override
  @JsonKey(name: 'high_24h')
  final num high24Hours;
  @override
  @JsonKey(name: 'low_24h')
  final num low24Hours;
  @override
  @JsonKey(name: 'total_volume')
  final num? totalVolume;
  @override
  @JsonKey(name: 'total_supply')
  final num? totalSupply;

  @override
  String toString() {
    return 'Coin(id: $id, coinId: $coinId, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, dayChange: $dayChange, marketCap: $marketCap, circulatingSupply: $circulatingSupply, high24Hours: $high24Hours, low24Hours: $low24Hours, totalVolume: $totalVolume, totalSupply: $totalSupply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coinId, coinId) || other.coinId == coinId) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.dayChange, dayChange) ||
                other.dayChange == dayChange) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.circulatingSupply, circulatingSupply) ||
                other.circulatingSupply == circulatingSupply) &&
            (identical(other.high24Hours, high24Hours) ||
                other.high24Hours == high24Hours) &&
            (identical(other.low24Hours, low24Hours) ||
                other.low24Hours == low24Hours) &&
            (identical(other.totalVolume, totalVolume) ||
                other.totalVolume == totalVolume) &&
            (identical(other.totalSupply, totalSupply) ||
                other.totalSupply == totalSupply));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      coinId,
      symbol,
      name,
      image,
      currentPrice,
      dayChange,
      marketCap,
      circulatingSupply,
      high24Hours,
      low24Hours,
      totalVolume,
      totalSupply);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinImplCopyWith<_$CoinImpl> get copyWith =>
      __$$CoinImplCopyWithImpl<_$CoinImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinImplToJson(
      this,
    );
  }
}

abstract class _Coin extends Coin {
  const factory _Coin(
      {@JsonKey(name: 'market_cap_rank') required final int id,
      @JsonKey(name: 'id') required final String coinId,
      required final String symbol,
      required final String name,
      required final String image,
      @JsonKey(name: 'current_price') required final num currentPrice,
      @JsonKey(name: 'price_change_percentage_24h')
      required final num dayChange,
      @JsonKey(name: 'market_cap') required final num marketCap,
      @JsonKey(name: 'circulating_supply') required final num circulatingSupply,
      @JsonKey(name: 'high_24h') required final num high24Hours,
      @JsonKey(name: 'low_24h') required final num low24Hours,
      @JsonKey(name: 'total_volume') final num? totalVolume,
      @JsonKey(name: 'total_supply') final num? totalSupply}) = _$CoinImpl;
  const _Coin._() : super._();

  factory _Coin.fromJson(Map<String, dynamic> json) = _$CoinImpl.fromJson;

  @override
  @JsonKey(name: 'market_cap_rank')
  int get id;
  @override
  @JsonKey(name: 'id')
  String get coinId;
  @override
  String get symbol;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(name: 'current_price')
  num get currentPrice;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  num get dayChange;
  @override
  @JsonKey(name: 'market_cap')
  num get marketCap;
  @override
  @JsonKey(name: 'circulating_supply')
  num get circulatingSupply;
  @override
  @JsonKey(name: 'high_24h')
  num get high24Hours;
  @override
  @JsonKey(name: 'low_24h')
  num get low24Hours;
  @override
  @JsonKey(name: 'total_volume')
  num? get totalVolume;
  @override
  @JsonKey(name: 'total_supply')
  num? get totalSupply;
  @override
  @JsonKey(ignore: true)
  _$$CoinImplCopyWith<_$CoinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
