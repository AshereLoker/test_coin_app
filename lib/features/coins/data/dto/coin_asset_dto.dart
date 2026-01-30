import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_asset_dto.g.dart';

@JsonSerializable()
class CoinAssetDto {
  final String id;
  final String rank;
  final String symbol;
  final String name;
  final String? supply;
  final String? maxSupply;
  final String? marketCapUsd;
  final String? volumeUsd24Hr;
  final String priceUsd;
  final String? changePercent24Hr;
  final String? vwap24Hr;
  final String? explorer;
  final Map<String, List<String>>? tokens;

  CoinAssetDto({
    required this.id,
    required this.rank,
    required this.symbol,
    required this.name,
    this.supply,
    this.maxSupply,
    this.marketCapUsd,
    this.volumeUsd24Hr,
    required this.priceUsd,
    this.changePercent24Hr,
    this.vwap24Hr,
    this.explorer,
    this.tokens,
  });

  factory CoinAssetDto.fromJson(Map<String, dynamic> json) =>
      _$CoinAssetDtoFromJson(json);
}
