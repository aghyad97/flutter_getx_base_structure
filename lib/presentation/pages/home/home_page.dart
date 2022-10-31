import 'package:flutter_getx_base_architecture/app/routes/app_pages.dart';
import 'package:flutter_getx_base_architecture/core/page.dart';
import 'package:flutter_getx_base_architecture/presentation/controllers/home/home_binding.dart';

import 'home_screen.dart';

class HomePage extends Page {
  HomePage()
      : super(
          coreName: Routes.home,
          screen: HomeScreen(),
          coreBindings: [HomeBinding()],
        );
}
