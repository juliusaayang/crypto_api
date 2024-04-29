import 'package:crypto_api/features/home/data/model/coin.dart';
import 'package:crypto_api/src/core/errors/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_coins_state.freezed.dart';

@freezed
class GetCoinsState with _$GetCoinsState {
  const factory GetCoinsState.initial() = _$Initial;

  const factory GetCoinsState.loading() = _$Loading;

  const factory GetCoinsState.error({
    required Failure failure,
  }) = _$Error;

  const factory GetCoinsState.loaded({
    required List<Coin> coins,
  }) = _$Loaded;
}
