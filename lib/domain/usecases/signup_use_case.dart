import 'package:flutter_getx_base_architecture/core/param_usecase.dart';
import 'package:flutter_getx_base_architecture/domain/entities/user.dart';
import 'package:flutter_getx_base_architecture/domain/repositories/auth_repository.dart';

class SignUpUseCase extends ParamUseCase<User, String> {
  final AuthenticationRepository _repo;
  SignUpUseCase(this._repo);

  @override
  Future<User> execute(String username) {
    return _repo.signUp(username);
  }
}
