// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CoinAsset extends Equatable {
  final String id;
  final String symbol;
  final String name;
  final double priceUsd;
  final int rank;
  final Color? color;

  const CoinAsset({
    required this.id,
    required this.symbol,
    required this.name,
    required this.priceUsd,
    required this.rank,
    this.color,
  });

  CoinAsset copyWith({
    String? id,
    String? symbol,
    String? name,
    double? priceUsd,
    int? rank,
    Color? color,
  }) => CoinAsset(
    id: id ?? this.id,
    symbol: symbol ?? this.symbol,
    name: name ?? this.name,
    priceUsd: priceUsd ?? this.priceUsd,
    rank: rank ?? this.rank,
    color: color ?? this.color,
  );

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, symbol, name, priceUsd, rank, color];
}
