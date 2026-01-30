import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/coins/domain/state_manager/coins_bloc/coins_asset_bloc.dart';
import 'package:test_app/features/coins/presentation/widgets/coins_list_widget.dart';

class CoinsScreen extends StatelessWidget {
  const CoinsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: BlocBuilder<CoinsAssetBloc, CoinsAssetState>(
        builder: (context, state) => CoinsListWidget(
          coinAssets: state.assets,
          isLoading: state.whenOrNull(loading: (_) => true) ?? false,
          hasError: state.whenOrNull(error: (_, _) => true) ?? false,
        ),
      ),
    ),
  );
}
