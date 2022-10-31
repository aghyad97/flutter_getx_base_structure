import 'package:flutter/material.dart';
import 'package:flutter_getx_base_architecture/core/screen.dart';
import 'package:flutter_getx_base_architecture/presentation/controllers/home/home_controller.dart';

class HomeScreen extends Screen<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget? desktop() {
    return super.desktop();
  }

  @override
  Widget? tablet() {
    return super.tablet();
  }

  @override
  Widget? phone() {
    return super.phone();
  }
}
