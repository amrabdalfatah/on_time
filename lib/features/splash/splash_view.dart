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
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: Image.asset(
          Images.logo,
        ),
      ),
    );
  }
}
