import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/model/sign_in.dart';
import '../../../data/model/user.dart';
import '../../../domain/entity/auth_entity.dart';
import '../../../domain/usecases/module/module.dart';

part 'module.g.dart';

@riverpod
Future<SignIn> login(Ref ref,
        {required AuthEntity parameter, CancelToken? cancelToken}) async =>
    await ref
        .read(loginUseCaseModule)
        .execute(parameter: parameter, cancelToken: cancelToken);

@riverpod
Future<User> user(Ref ref, {CancelToken? cancelToken}) async =>
    await ref.read(userUseCaseModule).execute(cancelToken);
