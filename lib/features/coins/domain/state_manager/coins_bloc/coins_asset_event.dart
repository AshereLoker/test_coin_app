part of 'coins_asset_bloc.dart';

@freezed
class CoinsAssetEvent with _$CoinsAssetEvent {
  const factory CoinsAssetEvent.init() = _Init;
  const factory CoinsAssetEvent.loadMore() = _LoadMore;
}