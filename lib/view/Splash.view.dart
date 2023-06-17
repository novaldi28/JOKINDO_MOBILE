import 'dart:async';

import 'package:jokindo/utils/global.colors.dart';
import 'package:jokindo/view/login/login.view.dart';
import 'package:jokindo/view/regis/regis.view.dart';
import 'package:jokindo/view/homepage/homepage.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Get.to(LoginScreen());
    });
    return Scaffold(
        backgroundColor: GlobalColors.mainColor,
        body: const Center(
            child: Text(
          'Logo',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        )));
  }
}
