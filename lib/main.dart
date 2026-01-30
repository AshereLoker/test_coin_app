import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_app/features/coins/data/datasource/coin_remote_datasource.dart';
import 'package:test_app/features/coins/data/repository/coin_repository_impl.dart';

import 'package:test_app/features/coins/domain/state_manager/coins_bloc/coins_asset_bloc.dart';
import 'package:test_app/features/coins/domain/usecase/get_coins_assets_usecase.dart';
import 'package:test_app/features/coins/presentation/screens/coins_screen_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  final coinsAssetBloc = await _initDependencies();

  runApp(MainApp(coinsAssetBloc: coinsAssetBloc));
}

Future<CoinsAssetBloc> _initDependencies() async {
  // По нормальному здесь должен быть DI контейнер типа get_it,
  // но для простоты примера обойдемся таким способом.
  final apiKey = dotenv.get('secret_key');

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://rest.coincap.io/v3/',
      headers: {'Authorization': 'Bearer '},
    ),
  );
  dio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true));

  final remoteDataSource = CoinRemoteDataSource(dio);
  final coinRepository = CoinRepositoryImpl(remoteDataSource);
  final getCoinsAssetsUseCase = GetCoinsAssetsUseCase(coinRepository);

  return CoinsAssetBloc(getCoinsAssetsUseCase);
}

class MainApp extends StatelessWidget {
  final CoinsAssetBloc coinsAssetBloc;

  const MainApp({super.key, required this.coinsAssetBloc});

  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: CoinsScreenProvider(coinsAssetBloc: coinsAssetBloc));
}
