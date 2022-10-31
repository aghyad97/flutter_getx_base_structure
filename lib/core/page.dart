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
      required Screen screen,
      List<Bindings>? coreBindings,
      List<GetMiddleware>? coreMiddlewares,
      Transition? coreTransition,
      bool? dialog})
      : super(
          name: coreName,
          page: () => screen,
          bindings: coreBindings ?? [],
          middlewares: coreMiddlewares,
          transition: coreTransition ?? Transition.fade,
          fullscreenDialog: dialog ?? false,
        );
}
