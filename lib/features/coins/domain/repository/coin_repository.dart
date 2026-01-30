import 'package:either_dart/either.dart';
import 'package:test_app/core/error_handle/failure.dart';
import 'package:test_app/features/coins/domain/entity/coin_asset.dart';
import 'package:test_app/features/coins/domain/usecase/get_coins_assets_usecase.dart';

// ignore: one_member_abstracts
abstract interface class CoinRepository {
  Future<Either<Failure, List<CoinAsset>>> getCoinsAssets(
    GetCoinsAssetsParams params,
  );
}
