import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_time_app/core/utils/colors.dart';
import 'package:on_time_app/core/utils/images.dart';

import 'on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        timer.cancel();
        Get.to(() => const OnBoardingView());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(41, 57, 84, 1),
            Color.fromRGBO(36, 54, 81, 1),
            Color.fromRGBO(12, 16, 27, 1),
            Color.fromRGBO(6, 8, 13, 1),
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          Images.logo,
        ),
      ),
    );
  }
}
