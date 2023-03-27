import 'package:flutter/material.dart';
import 'package:lite_book/screens/registration/registration.dart';
import 'package:lite_book/widgets/button/custom_simple_button.dart';

import '../../data/src/colors.dart';
import '../../data/src/strings.dart';
import '../../widgets/button/custom_back_icon_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //! Add onPress
            CustomBackIconButton(
              onPressed: () {},
            ),
            const Text(
              startScreenTitleText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              startScreenSubTitleText,
              textAlign: TextAlign.center,
            ),
            _buildButtons(context)
          ],
        ),
      ),
    );
  }

  Column _buildButtons(BuildContext context) {
    return Column(
      children: [
        SimpleButton(onPressed: () {}, text: login, color: mainAppColor),
        SimpleButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RegistrationPage()));
            },
            text: createAccount,
            color: Colors.white70)
      ],
    );
  }
}
