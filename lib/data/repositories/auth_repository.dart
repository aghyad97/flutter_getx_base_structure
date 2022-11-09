import 'package:flutter_getx_base_structure/data/models/api_response.dart';

abstract class AuthenticationRepository {
  Future<ApiResponse> signUp(String username);
}
