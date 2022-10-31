import 'package:flutter_getx_base_architecture/data/repositories/auth_repository.dart';
import 'package:flutter_getx_base_architecture/domain/usecases/signup_use_case.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpUseCase(Get.find<AuthenticationRepositoryIml>()));
    Get.put(AuthController(Get.find()), permanent: true);
  }
}
