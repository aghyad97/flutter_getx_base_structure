import 'package:flutter_getx_base_structure/app/routes/app_pages.dart';
import 'package:flutter_getx_base_structure/core/page.dart';
import 'package:flutter_getx_base_structure/presentation/controllers/home/home_binding.dart';

import 'home_screen.dart';

class HomePage extends Page {
  HomePage()
      : super(
          coreName: Routes.home,
          screen: HomeScreen(),
          coreBindings: [HomeBinding()],
        );
}
