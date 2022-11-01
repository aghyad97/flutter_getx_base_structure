import 'package:flutter_getx_base_structure/data/models/api_response.dart';
import 'package:flutter_getx_base_structure/domain/entities/user.dart';

abstract class AuthenticationRepository {
  Future<ApiResponse> signUp(String username);
}
