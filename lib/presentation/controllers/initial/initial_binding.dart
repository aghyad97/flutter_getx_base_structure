import 'package:flutter_getx_base_structure/app/services/local_storage.dart';
import 'package:flutter_getx_base_structure/data/repositories/auth_repository.dart';
import 'package:flutter_getx_base_structure/data/repositories/auth_repository_impl.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthenticationRepositoryIml());
    Get.put(LocalStorageService());
  }
}
