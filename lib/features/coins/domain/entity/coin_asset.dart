import 'package:equatable/equatable.dart';

class CoinAsset extends Equatable {
  final String id;
  final String symbol;
  final String name;
  final double priceUsd;
  final int rank;

  const CoinAsset({
    required this.id,
    required this.symbol,
    required this.name,
    required this.priceUsd,
    required this.rank,
  });

  @override
  List<Object?> get props => [id, symbol, name, priceUsd, rank];
}
