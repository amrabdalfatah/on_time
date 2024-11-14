import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_time_app/core/utils/images.dart';
import 'package:on_time_app/features/auth/login_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int index = 0;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(
                Images.logo,
                height: double.infinity,
                fit: BoxFit.contain,
              ),
              if (index != 2)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 45.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: const Text(
                      'Skip >',
                    ),
                  ),
                ),
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Icon(
                  index == 0
                      ? Icons.macro_off
                      : index == 1
                          ? Icons.media_bluetooth_off
                          : Icons.menu,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  index == 0
                      ? 'Order for Food'
                      : index == 1
                          ? 'Easy Payment'
                          : 'Fast Delivery',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const Text(
                  'lorem text invisible for this website lorem text invisible for this website lorem text invisible for this website lorem text invisible for this website lorem text invisible for this website',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5.0,
                      width: 20,
                      margin: const EdgeInsets.only(right: 5, top: 10),
                      decoration: BoxDecoration(
                        color: index == 0 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    Container(
                      height: 5.0,
                      width: 20,
                      margin: const EdgeInsets.only(right: 5, top: 10),
                      decoration: BoxDecoration(
                        color: index == 1 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    Container(
                      height: 5.0,
                      width: 20,
                      margin: const EdgeInsets.only(right: 5, top: 10),
                      decoration: BoxDecoration(
                        color: index == 2 ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    if (index != 2) {
                      setState(() {
                        index++;
                      });
                    } else {
                      Get.to(() => const LoginView());
                    }
                  },
                  child: Container(
                    height: 40,
                    width: 140,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        index == 2 ? 'Get Started' : 'Next',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}