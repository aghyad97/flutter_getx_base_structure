import 'package:flutter/material.dart';
import 'package:flutter_getx_base_structure/core/screen.dart';
import 'package:flutter_getx_base_structure/presentation/controllers/home/home_controller.dart';
import 'package:flutter_getx_base_structure/presentation/pages/home/components/home_tablet_main_component.dart';

import 'components/home_mobile_main_component.dart';

class HomeScreen extends Screen<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget? desktop() {
    return super.desktop();
  }

  @override
  Widget? tablet() {
    return const HomeTabletMainComponent();
  }

  @override
  Widget? phone() {
    return const HomeMobileMainComponent();
  }
}
