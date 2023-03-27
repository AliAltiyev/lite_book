import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_book/screens/registration/registration_controller.dart';
import 'package:lite_book/widgets/button/custom_back_icon_button.dart';

import '../../widgets/text_field/custom_text_field.dart';

class RegistrationPage extends GetWidget<RegistrationController> {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomBackIconButton(
                onPressed: () {},
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              _buildTextFields()
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
          labelText: 'Username',
          preffix: Icons.person,
          textEditingController: TextEditingController(),
        ),
        CustomTextField(
          labelText: 'Password',
          preffix: Icons.lock,
          textEditingController: TextEditingController(),
        ),
        CustomTextField(
          labelText: 'Confirm password',
          preffix: Icons.lock_clock,
          textEditingController: TextEditingController(),
        )
      ],
    );
  }
}
