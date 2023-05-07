import 'package:flutter_getx_base_structure/presentation/pages/auth/auth_screen.dart';
import 'package:get/get.dart';
import 'screen.dart';

abstract class Page extends GetPage {
  late final String coreName;
  late final Screen screen;
  late final List<Bindings>? coreBindings;
  late final List<GetMiddleware>? coreMiddlewares;
  late final Transition? coreTransition;
  late final bool? dialog;

  Page(
      {required String coreName,
      Screen? screen,
      List<Bindings>? coreBindings,
      List<GetMiddleware>? coreMiddlewares,
      Transition? coreTransition,
      bool? dialog})
      : super(
          name: coreName,
          page: () {
            print(Get.arguments is Screen);
            if (Get.arguments is Screen) {
              print('here >>');
              return Get.arguments;
            } else {
              print('here >>2');
              return screen!;
            }
          },
          bindings: coreBindings ?? [],
          middlewares: coreMiddlewares,
          transition: coreTransition ?? Transition.fade,
          fullscreenDialog: dialog ?? false,
        );
}
