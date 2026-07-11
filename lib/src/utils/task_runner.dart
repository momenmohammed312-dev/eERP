import 'package:fpdart/fpdart.dart';
import '../imports/core_imports.dart';

FutureEither<T> runTask<T>(
  Future<T> Function() action,
) async {
  try {
    final result = await action();
    return right(result);
  } catch (error, stackTrace) {
    AppLogger.error('Task execution failed $error', [error, stackTrace]);
    final errorMessage = AppErrorHandler.format(error);
    return left(ServerFailure(errorMessage, error: error));
  }
}