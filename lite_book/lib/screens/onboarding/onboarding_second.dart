import 'package:flutter/material.dart';
import 'package:lite_book/data/src/constants.dart';
import 'package:lite_book/screens/onboarding/onboarding_third.dart';
import 'package:lite_book/widgets/button/back_next_buttons.dart';

import '../../widgets/button/skip_button.dart';
import '../../widgets/image/image.dart';

class OnBoardingSecond extends StatelessWidget {
  const OnBoardingSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SkipButton(),
            const ImageAsset(
              imagePath: kOnBoardingSecondImagePath,
            ),
            const Text(
              'Create daily routine',
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              'In Uptodo  you can create your personalized routine to stay productive',
              textAlign: TextAlign.center,
            ),
            BackAndNextButtons(
              nextCallBAck: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const OnBoardingThird()));
              },
              backCallback: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
