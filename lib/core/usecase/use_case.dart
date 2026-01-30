import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app/core/error_handle/failure.dart';

abstract class UseCase<
  Types extends Object?,
  Params extends Object?,
  Repository extends Object
> {
  final Repository repository;

  UseCase(this.repository);

  Future<Either<Failure, Types>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
