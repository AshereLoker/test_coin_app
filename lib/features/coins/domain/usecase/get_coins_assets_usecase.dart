import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app/core/error_handle/failure.dart';
import 'package:test_app/core/usecase/use_case.dart';
import 'package:test_app/features/coins/domain/entity/coin_asset.dart';
import 'package:test_app/features/coins/domain/repository/coin_repository.dart';

class GetCoinsAssetsUseCase
    extends UseCase<List<CoinAsset>, GetCoinsAssetsParams, CoinRepository> {
  GetCoinsAssetsUseCase(super.repository);

  @override
  Future<Either<Failure, List<CoinAsset>>> call(GetCoinsAssetsParams params) =>
      repository.getCoinsAssets(params);
}

class GetCoinsAssetsParams extends Equatable {
  final String? querySearch;
  final String? queryId;
  final int? limit;
  final int? offset;

  const GetCoinsAssetsParams({
    this.querySearch,
    this.queryId,
    this.limit,
    this.offset,
  });

  @override
  List<Object?> get props => [querySearch, queryId, limit, offset];
}
