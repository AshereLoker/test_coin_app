import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/coins/domain/state_manager/coins_bloc/coins_asset_bloc.dart';
import 'package:test_app/features/coins/presentation/screens/coins_screen.dart';

class CoinsScreenProvider extends StatelessWidget {
  final CoinsAssetBloc coinsAssetBloc;

  const CoinsScreenProvider({super.key, required this.coinsAssetBloc});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => coinsAssetBloc..add(const CoinsAssetEvent.init()),
    child: const CoinsScreen(),
  );
}
