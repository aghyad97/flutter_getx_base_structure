import 'package:flutter_getx_base_structure/app/routes/app_pages.dart';
import 'package:flutter_getx_base_structure/core/page.dart';
import 'package:flutter_getx_base_structure/presentation/controllers/home/home_binding.dart';

import 'auth_screen.dart';

class AuthPage extends Page {
  AuthPage()
      : super(
          coreName: Routes.home,
          screen: AuthScreen(),
          coreBindings: [HomeBinding()],
        );
}
