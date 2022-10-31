import 'package:flutter_getx_base_architecture/domain/entities/user.dart';

abstract class AuthenticationRepository {
  Future<User> signUp(String username);
}
