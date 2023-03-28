import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_book/routes/get_routes.dart';
import 'package:lite_book/screens/add_task/add_task_controller.dart';
import 'package:lite_book/screens/home/home_controller.dart';
import 'package:lite_book/screens/registration/registration.dart';
import 'package:lite_book/screens/registration/registration_controller.dart';
import 'package:lite_book/screens/sign_in/sign_in_controller.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    registerGetControllers();
    return GetMaterialApp(
      theme: ThemeData.dark(),
      getPages: GetPages.getRoutes,
      home: const RegistrationPage(),
      debugShowCheckedModeBanner: false,
    );
  }

  Future<dynamic> registerGetControllers() async {
    Get.create(() => HomeController());
    Get.create(() => SignInController());
    Get.create(() => RegistrationController());
    Get.create(() => AddTAskController());
  }
}
