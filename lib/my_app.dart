import 'package:flutter/material.dart';
import 'package:flutter_getx_base_architecture/app/theme/app_theme.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/size_config.dart';
import 'app/translations/translations.dart';
import 'flavors/build_config.dart';
import 'flavors/env_config.dart';
import 'presentation/controllers/initial/initial_binding.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final EnvConfig _envConfig = BuildConfig.instance.config;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        SizeConfig().init(constraints);
        return GetMaterialApp(
          title: _envConfig.appName,
          debugShowCheckedModeBanner: false,
          initialBinding: InitialBinding(),
          theme: appThemeData,
          defaultTransition: Transition.cupertino,
          getPages: AppPages.pages,
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          smartManagement: SmartManagement.full,
          translationsKeys: AppTranslation.translations,
          navigatorKey: Get.key,
        );
      },
    );
  }
}
