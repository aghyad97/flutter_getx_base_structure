import 'dart:convert';

import 'package:flutter_getx_base_structure/core/model.dart';

class User extends Model {
  String? fullName;
  User({
    this.fullName,
  });

  User copyWith({
    String? fullName,
  }) {
    return User(
      fullName: fullName ?? this.fullName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      fullName: map['fullName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(fullName: $fullName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.fullName == fullName;
  }

  @override
  int get hashCode => fullName.hashCode;
}
