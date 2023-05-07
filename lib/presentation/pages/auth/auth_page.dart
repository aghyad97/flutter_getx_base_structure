import 'package:flutter_getx_base_structure/app/routes/app_pages.dart';
import 'package:flutter_getx_base_structure/core/page.dart';
import 'package:flutter_getx_base_structure/presentation/controllers/auth/auth_binding.dart';
import 'package:flutter_getx_base_structure/presentation/controllers/home/home_binding.dart';
import 'package:get/get.dart';

import 'auth_screen.dart';

class AuthPage extends Page {
  AuthPage()
      : super(
          coreName: Routes.login,
          screen: AuthScreen(),
          coreTransition: Transition.cupertino,
          coreBindings: [AuthBinding()],
        );
}
