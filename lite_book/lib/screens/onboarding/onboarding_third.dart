import 'package:flutter/material.dart';
import 'package:lite_book/data/src/constants.dart';
import 'package:lite_book/screens/onboarding/start.dart';
import 'package:lite_book/widgets/button/skip_button.dart';
import 'package:lite_book/widgets/image/image.dart';

import '../../data/src/strings.dart';
import '../../widgets/button/back_next_buttons.dart';

class OnBoardingThird extends StatelessWidget {
  const OnBoardingThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SkipButton(),
            const ImageAsset(imagePath: kOnBoardingThirdImagePath),
            const Text(
              thirdOnBoardingTitleText,
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              thirdOnBoardingSubtitleText,
              textAlign: TextAlign.center,
            ),
            BackAndNextButtons(
              buttonText: getStartedButtonText,
              backCallback: () {
                //!Add navigation
              },
              nextCallBAck: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StartScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
