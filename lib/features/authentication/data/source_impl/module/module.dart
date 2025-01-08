import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../app/core/network/module/network_module.dart';
import '../../../domain/source/auth_source.dart';
import '../auth_source_impl.dart';

final authSourceModule = Provider<AuthSource>(
    (ref) => AuthSourceImpl(networkService: ref.watch(networkServiceProvider)));
