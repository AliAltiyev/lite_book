import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_book/data/src/colors.dart';
import 'package:lite_book/data/src/constants.dart';
import 'package:lite_book/data/src/strings.dart';
import 'package:lite_book/screens/registration/registration_controller.dart';
import 'package:lite_book/widgets/button/custom_back_icon_button.dart';
import 'package:lite_book/widgets/button/custom_simple_button.dart';

import '../../widgets/custom_divider.dart';
import '../../widgets/text_field/custom_text_field.dart';

class RegistrationPage extends GetWidget<RegistrationController> {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nav = Navigator.of(context);

//!Listening Getx Rx<bool> isUSerRegisteredValue
    controller.isRegister.listen(
      (isRegistered) {
        if (isRegistered) _navigate(kSignInPageRoID);
      },
    );

    controller.hasError.listen(
      (error) {
        if (error != null) {
          _showSnackBar();
        }
      },
    );

    controller.isLoading.listen(
      (isLoading) {
        if (isLoading) {
          const CircularProgressIndicator();
        }
      },
    );

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
                  onPressed: () => _registerUser(),
                  text: registration,
                  color: mainAppColor),
              const SizedBox(
                height: 10,
              ),
              const CustomDivider(),
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
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    const TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(color: Colors.white24)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          //!Navigation with Getx to Sign in page
                          ..onTap = () {
                            Get.offNamed(kSignInPageRoID);
                          },
                        text: login,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                        )),
                  ]))
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

  void _registerUser() {
    controller.registerUserWithRegisterService(
        controller.userNameTextController.text,
        controller.emailNameTextController.text,
        controller.passwordTextController.text);
  }

  void _navigate(String destination) {
    Get.toNamed(destination);
  }

  void _showSnackBar() {
    Get.snackbar('Try again', 'you have error try again');
  }
}
