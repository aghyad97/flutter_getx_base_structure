import 'package:flutter_getx_base_structure/app/services/local_storage.dart';
import 'package:flutter_getx_base_structure/core/controller.dart';
import 'package:flutter_getx_base_structure/data/models/user.dart';
import 'package:flutter_getx_base_structure/data/repositories/auth_repository_impl.dart';
import 'package:get/get.dart';

class AuthController extends Controller {
  AuthenticationRepositoryIml? repository;
  AuthController({required this.repository}) : assert(repository != null);

  final store = Get.find<LocalStorageService>();
  var isLoggedIn = false.obs;

  User? get user => store.user;

  @override
  void onInit() async {
    super.onInit();
    isLoggedIn.value = store.user != null;
  }

  logout() {
    store.user = null;
    isLoggedIn.value = false;
  }
}
