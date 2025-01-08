import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/repository/auth_repository.dart';
import '../../source_impl/module/module.dart';
import '../auth_repo_impl.dart';

final authRepoModule = Provider<AuthRepository>(
    (ref) => AuthRepoImpl(authSource: ref.read(authSourceModule)));
