import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final StackTrace? stackTrace;
  final List<Object?>? properties;

  const Failure(this.message, {this.stackTrace, this.properties});

  @override
  List<Object?> get props => [message, stackTrace, properties];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message, {super.stackTrace, super.properties});
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure(super.message, {super.stackTrace, super.properties});
}
