import 'package:flutter/material.dart';
import 'package:flutter_getx_base_structure/core/component.dart';
import 'package:flutter_getx_base_structure/presentation/controllers/auth/auth_controller.dart';
import 'package:get/get.dart';

class AuthMobileMainComponent extends Component<AuthController> {
  AuthMobileMainComponent({super.key, this.x});

  final String? x;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Builder(
              builder: (context) {
                if (x != null) {
                  return SizedBox(
                    child: Text(x!),
                  );
                } else if (controller.x.value != "") {
                  return SizedBox(
                    child: Text(controller.x.value),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
