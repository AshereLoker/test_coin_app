import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:test_app/core/error_handle/failure.dart';
import 'package:test_app/features/coins/data/datasource/coin_datasource.dart';
import 'package:test_app/features/coins/data/mapper/coin_asset_mapper.dart';
import 'package:test_app/features/coins/domain/entity/coin_asset.dart';
import 'package:test_app/features/coins/domain/repository/coin_repository.dart';
import 'package:test_app/features/coins/domain/usecase/get_coins_assets_usecase.dart';

class CoinRepositoryImpl implements CoinRepository {
  final CoinDataSource datasouce;

  CoinRepositoryImpl(this.datasouce);

  @override
  Future<Either<Failure, List<CoinAsset>>> getCoinsAssets(
    GetCoinsAssetsParams params,
  ) async {
    try {
      final result = await datasouce.getCoinsAssets(
        params.queryId,
        params.querySearch,
        params.limit,
        params.offset,
      );

      final entities = result.map((dto) => dto.toEntity()).toList();

      return Right(entities);
    } on DioException catch (e, trace) {
      return Left(ServerFailure(e.toString(), stackTrace: trace));
    } on Exception catch (e, trace) {
      return Left(UnexpectedFailure(e.toString(), stackTrace: trace));
    }
  }
}
