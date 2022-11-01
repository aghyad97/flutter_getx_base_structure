import 'package:flutter_getx_base_structure/core/param_usecase.dart';
import 'package:flutter_getx_base_structure/domain/entities/user.dart';
import 'package:flutter_getx_base_structure/domain/repositories/auth_repository.dart';

class SignUpUseCase extends ParamUseCase<User, String> {
  final AuthenticationRepository _repo;
  SignUpUseCase(this._repo);

  @override
  Future<User> execute(String params) async {
    final response = await _repo.signUp(params);
    return User.fromJson(response.data);
  }
}
