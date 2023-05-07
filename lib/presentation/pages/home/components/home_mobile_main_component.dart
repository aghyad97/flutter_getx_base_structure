import 'package:flutter/material.dart';
import 'package:flutter_getx_base_structure/app/routes/app_pages.dart';
import 'package:flutter_getx_base_structure/presentation/pages/auth/auth_page.dart';
import 'package:flutter_getx_base_structure/presentation/pages/auth/auth_screen.dart';
import 'package:get/get.dart';

class HomeMobileMainComponent extends StatelessWidget {
  const HomeMobileMainComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                // Get.toNamed(Routes.login, arguments: {'test': "test"});
                Get.toNamed(Routes.login,
                    arguments: AuthScreen(
                      x: "test",
                    ));
              },
              icon: Icon(Icons.abc),
            ),
          ],
        ),
      ),
    );
  }
}
