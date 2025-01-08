import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tezda_app/features/authentication/domain/usecases/login_usecase.dart';

import '../../../../../app/core/usecase/tez_app_usecase.dart';
import '../../../data/service_impl/module/module.dart';
import '../user_usecase.dart';

final loginUseCaseModule = Provider<TezUseCaseWithRequiredParam>(
    (ref) => LoginUseCaseImpl(authService: ref.read(authServiceModule)));

final userUseCaseModule = Provider<TezUseCaseWithOutParam>(
    (ref) => UsersUseCaseImpl(service: ref.read(authServiceModule)));
