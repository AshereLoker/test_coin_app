import 'package:dio/dio.dart';
import 'package:test_app/features/coins/data/datasource/coin_datasource.dart';
import 'package:test_app/features/coins/data/dto/coin_asset_dto.dart';

class CoinRemoteDataSource implements CoinDataSource {
  final Dio dio;

  CoinRemoteDataSource(this.dio);

  @override
  Future<List<CoinAssetDto>> getCoinsAssets(
    // TODO: add class request params
    String? queryId,
    String? querySearch,
    int? limit,
    int? offset,
  ) async {
    try {
      final response = await dio.get(
        '/assets',
        queryParameters: {
          if (queryId != null) 'id': queryId,
          if (querySearch != null) 'search': querySearch,
          if (limit != null) 'limit': limit,
          if (offset != null) 'offset': offset,
        },
      );

      final data = response.data['data'] as List<dynamic>;

      return data
          .map((json) => CoinAssetDto.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException {
      rethrow;
    } on Exception {
      throw DioException(
        requestOptions: RequestOptions(path: '/v2/assets'),
        error: 'Failed to parse coin assets data',
      );
    }
  }
}
