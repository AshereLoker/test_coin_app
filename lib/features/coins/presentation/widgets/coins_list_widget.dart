import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/coins/domain/entity/coin_asset.dart';
import 'package:test_app/features/coins/domain/state_manager/coins_bloc/coins_asset_bloc.dart';
import 'package:test_app/features/coins/presentation/widgets/coin_tile_widget.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class CoinsListWidget extends StatefulWidget {
  final bool isLoading;
  final bool hasError;
  final Set<CoinAsset> coinAssets;

  const CoinsListWidget({
    super.key,
    required this.coinAssets,
    this.isLoading = false,
    this.hasError = false,
  });

  @override
  State<CoinsListWidget> createState() => _CoinsListWidgetState();
}

class _CoinsListWidgetState extends State<CoinsListWidget>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return InfiniteList(
      scrollController: _scrollController,
      hasError: widget.hasError,
      isLoading: widget.isLoading,
      itemCount: widget.coinAssets.length,
      cacheExtent: 56,

      onFetchData: () =>
          context.read<CoinsAssetBloc>().add(const CoinsAssetEvent.loadMore()),
      itemBuilder: (context, index) {
        final coinAsset = widget.coinAssets.elementAt(index);

        return CoinTileWidget(
          key: ValueKey(coinAsset.id + index.toString()),
          symbol: coinAsset.symbol,
          priceUsd: coinAsset.priceUsd,
          color: coinAsset.color ?? Colors.redAccent,
        );
      },
    );
  }
}
