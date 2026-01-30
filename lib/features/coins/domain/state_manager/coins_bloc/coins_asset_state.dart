part of 'coins_asset_bloc.dart';

@freezed
class CoinsAssetState with _$CoinsAssetState {
  const factory CoinsAssetState.initial({@Default({}) Set<CoinAsset> assets}) =
      _Initial;
  const factory CoinsAssetState.loading({@Default({}) Set<CoinAsset> assets}) =
      _Loading;
  const factory CoinsAssetState.loaded({required Set<CoinAsset> assets}) =
      _Loaded;
  const factory CoinsAssetState.error({
    @Default({}) Set<CoinAsset> assets,
    required String message,
  }) = _Error;

  @override
  Set<CoinAsset> get assets => throw UnimplementedError();
}
