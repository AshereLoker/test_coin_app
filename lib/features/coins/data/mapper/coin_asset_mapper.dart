import 'package:test_app/features/coins/data/dto/coin_asset_dto.dart';
import 'package:test_app/features/coins/domain/entity/coin_asset.dart';

extension CoinAssetMapper on CoinAssetDto {
  CoinAsset toEntity() => CoinAsset(
    id: id,
    symbol: symbol,
    name: name,
    priceUsd: double.tryParse(priceUsd) ?? 0.0,
    rank: int.tryParse(rank) ?? -1,
  );
}
