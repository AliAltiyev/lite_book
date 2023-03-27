import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_book/screens/registration/registration_controller.dart';

class RegistrationPage extends GetWidget<RegistrationController> {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Registration'),
      ),
    );
  }
}
