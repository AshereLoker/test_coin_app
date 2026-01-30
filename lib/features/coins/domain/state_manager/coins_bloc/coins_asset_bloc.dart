import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/features/coins/domain/entity/coin_asset.dart';
import 'package:test_app/features/coins/domain/usecase/get_coins_assets_usecase.dart';
import 'package:test_app/features/coins/utils/services/colors_generator_utils.dart';

part 'coins_asset_event.dart';
part 'coins_asset_state.dart';
part 'coins_asset_bloc.freezed.dart';

typedef _Emit = Emitter<CoinsAssetState>;

class CoinsAssetBloc extends Bloc<CoinsAssetEvent, CoinsAssetState> {
  final GetCoinsAssetsUseCase _getCoinsAssetsUseCase;

  final int _itemsPerPage = 15;
  final ColorsGeneratorUtils _colorsGeneratorUtils = ColorsGeneratorUtils();

  CoinsAssetBloc(this._getCoinsAssetsUseCase) : super(const _Initial()) {
    on<_Init>(_onInit);
    on<_LoadMore>(_onLoadMore, transformer: restartable());
  }

  Future<void> _onInit(_Init event, _Emit emit) async {
    emit(CoinsAssetState.loading(assets: state.assets));
    final result = await _getCoinsAssetsUseCase(
      GetCoinsAssetsParams(limit: _itemsPerPage),
    );
    result.fold(
      (failure) => emit(
        CoinsAssetState.error(assets: state.assets, message: failure.message),
      ),
      (assets) => _onResultSuccess(assets, emit),
    );
  }

  Future<void> _onLoadMore(_LoadMore event, _Emit emit) async {
    if (state is _Loading) return;

    emit(CoinsAssetState.loading(assets: state.assets));

    final result = await _getCoinsAssetsUseCase(
      GetCoinsAssetsParams(limit: _itemsPerPage, offset: state.assets.length),
    );
    await Future.delayed(
      const Duration(milliseconds: 500),
    ); // Debounce to prevent too fast loading
    result.fold(
      (failure) => emit(
        CoinsAssetState.error(assets: state.assets, message: failure.message),
      ),
      (assets) => _onResultSuccess(assets, emit),
    );
  }

  void _onResultSuccess(List<CoinAsset> assets, _Emit emit) {
    emit(
      CoinsAssetState.loaded(
        assets: assets
            .map(
              (coin) => coin.copyWith(color: _colorsGeneratorUtils.nextColor()),
            )
            .toSet(),
      ),
    );
  }
}
