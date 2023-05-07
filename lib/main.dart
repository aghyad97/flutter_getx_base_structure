import 'package:flutter/material.dart';
import 'package:flutter_getx_base_structure/flavors/env_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'flavors/build_config.dart';
import 'flavors/environment.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  EnvConfig prodConfig = EnvConfig(
    appName: "",
    baseUrl: "",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.PRODUCTION,
    envConfig: prodConfig,
  );

  runApp(MyApp());
}
