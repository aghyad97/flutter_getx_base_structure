import 'package:flutter_getx_base_structure/domain/entities/user.dart';

abstract class AuthenticationRepository {
  Future<User> signUp(String username);
}
