import 'dart:convert';

import 'package:flutter/foundation.dart';

class ApiResponse {
  bool? status;
  int? statusCode;
  String? title;
  String? message;
  Map<String, dynamic>? data;
  ApiResponse({
    this.status,
    this.statusCode,
    this.title,
    this.message,
    this.data,
  });

  ApiResponse copyWith({
    bool? status,
    int? statusCode,
    String? title,
    String? message,
    Map<String, dynamic>? data,
  }) {
    return ApiResponse(
      status: status ?? this.status,
      statusCode: statusCode ?? this.statusCode,
      title: title ?? this.title,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'statusCode': statusCode,
      'title': title,
      'message': message,
      'data': data,
    };
  }

  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      status: map['status'],
      statusCode: map['statusCode']?.toInt(),
      title: map['title'],
      message: map['msg'],
      data: Map<String, dynamic>.from(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiResponse.fromJson(String source) =>
      ApiResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ApiResponse(status: $status, statusCode: $statusCode, title: $title, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiResponse &&
        other.status == status &&
        other.statusCode == statusCode &&
        other.title == title &&
        other.message == message &&
        mapEquals(other.data, data);
  }

  @override
  int get hashCode {
    return status.hashCode ^
        statusCode.hashCode ^
        title.hashCode ^
        message.hashCode ^
        data.hashCode;
  }
}
