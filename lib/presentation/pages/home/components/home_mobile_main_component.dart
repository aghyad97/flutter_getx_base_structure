import 'package:flutter/material.dart';
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
        ),
      ),
    );
  }
}
