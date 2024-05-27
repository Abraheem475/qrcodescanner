import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboarding_controller.dart';
import 'onboarding_screen.dart';
import 'onboarding_screen_three.dart';
import 'onboarging_screen_two.dart';


class OnBoardingScreenMain extends StatelessWidget {
  const OnBoardingScreenMain({super.key,});

  @override
  Widget build(BuildContext context) {
    const int totalPages = 3;
    final pageController = Get.put(OnBoardingController(totalPages));

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: pageController.pageController,
              onPageChanged: pageController.updatePageIndicator,
              children: [
                OnBoardingPageOne(),
                OnBoardingPageTwo(),
                OnBoardingPageThree(),
              ],
            ),
        ]
        ),
      ),
    );
  }
}
