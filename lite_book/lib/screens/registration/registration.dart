import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_book/data/src/colors.dart';
import 'package:lite_book/data/src/strings.dart';
import 'package:lite_book/screens/registration/registration_controller.dart';
import 'package:lite_book/screens/sign_in/sign_in.dart';
import 'package:lite_book/widgets/button/custom_back_icon_button.dart';
import 'package:lite_book/widgets/button/custom_simple_button.dart';

import '../../widgets/text_field/custom_text_field.dart';

class RegistrationPage extends GetWidget<RegistrationController> {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomBackIconButton(
                onPressed: () {
                  //!Navigation back
                  if (nav.canPop()) {
                    Navigator.pop(context);
                  }
                },
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      login,
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              _buildTextFields(),
              const SizedBox(
                height: 30,
              ),
              SimpleButton(
                  onPressed: () {
                    //!Add on press
                  },
                  text: registration,
                  color: mainAppColor),
              const SizedBox(
                height: 10,
              ),
              _buildButtonDividers(),
              SimpleButton(
                  onPressed: () {
                    //!Add on press
                  },
                  text: 'With Google',
                  color: Colors.white54),
              SimpleButton(
                  onPressed: () {
                    //!Add on press
                  },
                  text: 'with facebook',
                  color: Colors.white54),

              //? Rich text Already do you have account
              GestureDetector(
                onTap: () {
                  //!Navigation
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignInPage()));
                },
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: alreadyHaveAccount,
                          style: TextStyle(color: Colors.white24)),
                      TextSpan(
                          text: login,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          )),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _buildTextFields() {
    return Column(
      children: [
        CustomTextField(
          labelText: username,
          preffix: Icons.person,
          textEditingController: controller.userNameTextController,
          obsecureText: false,
        ),
        CustomTextField(
          labelText: email,
          preffix: Icons.email,
          textEditingController: controller.emailNameTextController,
          obsecureText: false,
        ),
        CustomTextField(
          labelText: password,
          preffix: Icons.lock,
          textEditingController: controller.passwordTextController,
          obsecureText: true,
        ),
        CustomTextField(
          labelText: confirmPassword,
          preffix: Icons.lock_clock,
          textEditingController: controller.confirmPasswordTextController,
          obsecureText: true,
        ),
      ],
    );
  }

  Row _buildButtonDividers() {
    return Row(
      children: const [
        Expanded(
            child: Divider(
          color: Colors.white,
        )),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(or),
        ),
        Expanded(
            child: Divider(
          color: Colors.white,
        )),
      ],
    );
  }
}
