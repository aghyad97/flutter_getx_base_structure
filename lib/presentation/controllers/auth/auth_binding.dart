import 'package:flutter_getx_base_structure/data/repositories/auth_repository_impl.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController(repository: Get.find<AuthenticationRepositoryIml>()));
  }
}
