import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_getx_base_structure/app/network/dio_provider.dart';
import 'package:flutter_getx_base_structure/core/remote_source.dart';
import 'package:flutter_getx_base_structure/data/models/api_response.dart';
import 'package:flutter_getx_base_structure/domain/entities/user.dart';
import 'package:flutter_getx_base_structure/domain/repositories/auth_repository.dart';

class AuthenticationRepositoryIml extends BaseRemoteSource
    implements AuthenticationRepository {
  @override
  Future<ApiResponse> signUp(String username) {
    dynamic endpoint = "${DioProvider.baseUrl}/endpoint";
    dynamic dioCall = dioClient.post(
      endpoint,
      data: {},
    );

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseAuthResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  ApiResponse _parseAuthResponse(Response<dynamic> response) {
    return ApiResponse.fromJson(json.encode(response.data));
  }
}
