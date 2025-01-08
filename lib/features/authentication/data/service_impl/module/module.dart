import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/service/auth_service.dart';
import '../../repository_impl/module/module.dart';
import '../auth_service_impl.dart';

final authServiceModule = Provider<AuthService>(
    (ref) => AuthServiceImpl(authRepository: ref.read(authRepoModule)));
