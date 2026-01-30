import 'package:test_app/features/coins/data/dto/coin_asset_dto.dart';

// ignore: one_member_abstracts
abstract interface class CoinDataSource {
  Future<List<CoinAssetDto>> getCoinsAssets(
    String? queryId,
    String? querySearch,
    int? limit,
    int? offset,
  );
}
