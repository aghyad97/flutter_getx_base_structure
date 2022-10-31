import 'package:flutter_getx_base_architecture/domain/entities/user.dart';
import 'package:flutter_getx_base_architecture/domain/repositories/auth_repository.dart';

class AuthenticationRepositoryIml extends AuthenticationRepository {
  @override
  Future<User> signUp(String username) {
    throw UnimplementedError();
  }
}
