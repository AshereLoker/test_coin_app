import 'package:flutter/material.dart';
import 'package:test_app/core/app_typography.dart';

class _Values {
  static const double colorBoxSize = 56;
  static const double colorBoxBorderRadius = 18;
  static const double spacingBetweenColorAndText = 16;
  static const double horizontalPadding = 20;
  static const double verticalPadding = 14;

  static const String usdSymbolUnicode = '\u0024';
}

class CoinTileWidget extends StatelessWidget {
  final String symbol;
  final double priceUsd;
  final Color color;

  const CoinTileWidget({
    super.key,
    required this.symbol,
    required this.priceUsd,
    required this.color,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: _Values.horizontalPadding,
      vertical: _Values.verticalPadding,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DecoratedBox(
          key: ValueKey('color_box_$symbol'),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(_Values.colorBoxBorderRadius),
          ),
          child: const SizedBox.square(dimension: _Values.colorBoxSize),
        ),
        const SizedBox(width: _Values.spacingBetweenColorAndText),
        Text(symbol, style: AppTypography.coinTile),
        const Spacer(),
        Text(
          '${_Values.usdSymbolUnicode}${priceUsd.toStringAsFixed(2)}',
          style: AppTypography.coinTile,
        ),
      ],
    ),
  );
}
