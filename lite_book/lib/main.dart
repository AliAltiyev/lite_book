import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_book/routes/get_routes.dart';
import 'package:lite_book/screens/registration/registration.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      getPages: GetPages.getRoutes,
      home: const RegistrationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
