import 'package:flutter/material.dart';
import 'package:flutter_getx_base_structure/core/screen.dart';
import 'package:flutter_getx_base_structure/presentation/controllers/home/home_controller.dart';
import 'package:flutter_getx_base_structure/presentation/pages/auth/components/auth_mobile_main_component.dart';

class AuthScreen extends Screen<HomeController> {
  AuthScreen({
    Key? key,
    this.x,
  }) : super(key: key);

  final String? x;

  @override
  Widget? desktop() {
    return super.desktop();
  }

  @override
  Widget? tablet() {
    return AuthMobileMainComponent();
  }

  @override
  Widget? phone() {
    return AuthMobileMainComponent(
      x: x,
    );
  }
}
