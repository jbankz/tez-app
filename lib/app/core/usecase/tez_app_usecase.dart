import 'package:dio/dio.dart';

abstract class TezUseCaseWithOutParam<T> {
  T execute([CancelToken? cancelToken]);
}

abstract class TezUseCaseFutureWithOutParam<T> {
  Future<T> execute([CancelToken? cancelToken]);
}

abstract class TezUseCaseWithOptionalParam<TInput, TReturn> {
  Future<TReturn?> execute({TInput? parameter, CancelToken? cancelToken});
}

abstract class TezUseCaseWithRequiredParam<TInput, TReturn> {
  Future<TReturn?> execute(
      {required TInput parameter, CancelToken? cancelToken});
}

abstract class TezUseCaseWithInputParameter<TInput, TReturn> {
  TReturn execute({required TInput parameter, CancelToken? cancelToken});
}
