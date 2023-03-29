import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lite_book/data/src/constants.dart';
import 'package:lite_book/data/src/strings.dart';
import 'package:lite_book/screens/onboarding/onboarding_second.dart';
import 'package:lite_book/widgets/button/skip_button.dart';
import 'package:lite_book/widgets/image/image.dart';

import '../../widgets/button/back_next_buttons.dart';

class OnBoardingFirst extends StatelessWidget {
  const OnBoardingFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SkipButton(),
            const ImageAsset(imagePath: kOnBoardingFirstImagePath),
            const Text(
              firstOnBoardingTitleText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              firstOnBoardingTitleText,
              textAlign: TextAlign.center,
            ),
            BackAndNextButtons(
              nextCallBAck: () {
                Get.offNamed(kOnBoardindSecondRoID);
              },
            )
          ],
        ),
      ),
    );
  }
}
