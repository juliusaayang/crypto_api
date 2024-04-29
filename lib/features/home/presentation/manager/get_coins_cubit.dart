import 'package:bloc/bloc.dart';
import 'package:crypto_api/features/home/domain/repository/home_repository.dart';
import 'package:crypto_api/features/home/presentation/manager/get_coins_state.dart';

class GetCoinsCubit extends Cubit<GetCoinsState> {
  GetCoinsCubit({
    required this.homeRepository,
    GetCoinsState? initialState,
  }) : super(
          initialState ?? const GetCoinsState.initial(),
        ) {
    if (initialState == null) {
      getCoins();
    }
  }
  final HomeRepository homeRepository;

  Future<void> getCoins() async {
    emit(const GetCoinsState.loading());
    final result = await homeRepository.getCoins();
    return result.fold(
      (failure) {
        emit(GetCoinsState.error(failure: failure));
      },
      (coins) {
        emit(GetCoinsState.loaded(coins: coins));
      },
    );
  }
}
