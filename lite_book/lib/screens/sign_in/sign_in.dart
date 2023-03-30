import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_book/data/src/colors.dart';
import 'package:lite_book/data/src/constants.dart';
import 'package:lite_book/screens/sign_in/sign_in_controller.dart';
import 'package:lite_book/widgets/button/custom_simple_button.dart';
import 'package:lite_book/widgets/text_field/custom_text_field.dart';

import '../../data/src/strings.dart';
import '../../widgets/custom_divider.dart';

class SignInPage extends GetWidget<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.isLogin.listen((isLogin) {
      if (isLogin) Get.toNamed(kHomePageRoID);
    });

    controller.hasError.listen(
      (error) {
        if (error != null) {
          _showSnackBar();
        }
      },
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  login,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                _buildTextFields(),
                _buildLoginButton(),
                _buildAnotherLoginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildAnotherLoginButton() {
    return Column(
      children: [
        SimpleButton(
            onPressed: () {},
            text: 'Sign in with google',
            color: Colors.white30),
        SimpleButton(
            onPressed: () {},
            text: 'Sign in with facebook',
            color: Colors.white30),
      ],
    );
  }

  Column _buildLoginButton() {
    return Column(
      children: [
        SimpleButton(
            onPressed: () {
              _login();
            },
            text: login,
            color: mainAppColor),
        const CustomDivider()
      ],
    );
  }

  Column _buildTextFields() {
    return Column(
      children: [
        CustomTextField(
            preffix: Icons.email,
            labelText: email,
            textEditingController: controller.emailTextEditingController,
            obsecureText: true),
        CustomTextField(
            preffix: Icons.lock,
            labelText: password,
            textEditingController: controller.passwordTextEditingController,
            obsecureText: true)
      ],
    );
  }

  void _login() {
    controller.loginUserWithLoginService(
        controller.emailTextEditingController.text,
        controller.passwordTextEditingController.text);
  }

  void _showSnackBar() {
    Get.snackbar('Try again', 'you have error try again');
  }
}
