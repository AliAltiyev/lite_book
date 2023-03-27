import 'package:flutter/material.dart';
import 'package:lite_book/data/src/constants.dart';
import 'package:lite_book/screens/onboarding/onboarding_second.dart';
import 'package:lite_book/screens/registration/registration.dart';
import 'package:lite_book/widgets/button/skip_button.dart';
import 'package:lite_book/widgets/image/image.dart';

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
              'Orgonaize your tasks',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              '''You can organize your daily tasks by adding your tasks into separate categories''',
              textAlign: TextAlign.center,
            ),
            BackAndNextButtons(
              buttonText: 'Get started',
              backCallback: () {
                //!Add navigation
              },
              nextCallBAck: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegistrationPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
